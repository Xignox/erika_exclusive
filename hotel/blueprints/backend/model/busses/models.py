from extension import db


class Bus(db.Model):
    __tablename__ = 'busses'
    id = db.Column(db.Integer, primary_key=True)
    model = db.Column(db.String(255))
    plate_number = db.Column(db.String(255))
    arrival = db.Column(db.String(20))
    departure = db.Column(db.String(20))
    type = db.Column(db.String(255))
    seats = db.Column(db.Integer)
    registered_at = db.Column(db.DateTime)
    image = db.Column(db.String(255))
    schedules = db.relationship('Schedule', backref="bus",lazy=True)
    repairs = db.relationship('Repair', backref="bus",lazy=True)
    

    def __init__(self, model, plate_number, arrival, departure, type, seats, registered_at,image):
        self.model = model 
        self.plate_number = plate_number
        self.arrival = arrival
        self.departure = departure
        self.type = type
        self.seats = seats
        self.registered_at = registered_at
        self.image = image


    def store(self):
        db.session.add(self)
        return db.session.commit()


    def update(self, model, plate_number, arrival, departure, type, seats, registered_at,image):
        self.model = model
        self.plate_number = plate_number
        self.arrival = arrival
        self.departure = departure
        self.type = type
        self.seats = seats
        self.registered_at = registered_at
        self.image = image

        return db.session.commit()

    def delete(self):
        db.session.delete(self)
        return db.session.commit()