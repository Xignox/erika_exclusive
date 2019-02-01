from extension import db
                

class Reservation(db.Model):
    __tablename__ = 'reservations'
    id = db.Column(db.Integer, primary_key=True)
    schedule_id = db.Column(db.Integer, db.ForeignKey('schedules.id'))
    passenger_id = db.Column(db.Integer, db.ForeignKey('users.id'))
    route_id = db.Column(db.Integer, db.ForeignKey('bus.id'))
    datetime = db.Column(db.DateTime)
    quantity = db.Column(db.Integer)
    amount = db.Column(db.Float)
    discount = db.Column(db.Integer)
    status = db.Column(db.String(20))


    def __init__(self, schedule_id, passenger_id, route_id, datetime, quantity, amount, discount, status):
        self.schedule_id = schedule_id
        self.passenger_id = passenger_id
        self.route_id = route_id
        self.datetime = datetime
        self.quantity = quantity
        self.amount = amount
        self.discount = discount
        self.amount = amount
        self.status = status


    def store(self):
        db.session.add(self)
        return db.session.commit()


    def update(self, schedule_id, passenger_id, route_id, datetime, quantity, amount, discount, status):
        self.schedule_id = schedule_id
        self.passenger_id = passenger_id
        self.route_id = route_id
        self.datetime = datetime
        self.quantity = quantity
        self.amount = amount
        self.discount = discount
        self.amount = amount
        self.status = status
        return db.session.commit()

    def delete(self):
        db.session.delete(self)
        return db.session.commit()



