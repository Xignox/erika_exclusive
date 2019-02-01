from extension import db
                

class Schedule(db.Model):
    __tablename__ = 'schedules'
    id = db.Column(db.Integer, primary_key=True)
    departured_at = db.Column(db.DateTime)
    arrived_at = db.Column(db.DateTime)
    driver_id = db.Column(db.Integer, db.ForeignKey('users.id'))
    bus_id = db.Column(db.Integer, db.ForeignKey('busses.id'))
    conductor_id = db.Column(db.Integer)
    origin = db.Column(db.String(20))
    destination = db.Column(db.String(255))
    status = db.Column(db.String(20))
    amount = db.Column(db.Float)
    duration = db.Column(db.String(20))    
    reservations = db.relationship('Reservation', backref="schedule",lazy=True)


    def __init__(self, departured_at, arrived_at, driver_id, bus_id, conductor_id, origin, destination, status,amount,duration):
        self.departured_at = departured_at
        self.arrived_at = arrived_at
        self.driver_id = driver_id
        self.bus_id = bus_id
        self.conductor_id = conductor_id
        self.origin = origin
        self.destination = destination
        self.status = status
        self.amount = amount
        self.duration = duration

    def store(self):
        db.session.add(self)
        return db.session.commit()



    def update(self, departured_at, arrived_at, driver_id, bus_id, conductor_id, origin, destination, status,amount,duration):
        self.departured_at = departured_at
        self.arrived_at = arrived_at
        self.driver_id = driver_id
        self.bus_id = bus_id
        self.conductor_id = conductor_id
        self.origin = origin
        self.destination = destination
        self.status = status
        self.amount = amount
        self.duration = duration
        
        return db.session.commit()

    def delete(self):
        db.session.delete(self)
        return db.session.commit()


    def update1(self, status):
        self.status = status
        return db.session.commit()


