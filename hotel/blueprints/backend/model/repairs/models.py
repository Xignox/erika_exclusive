from extension import db                

class Repair(db.Model):
    __tablename__ = 'repairs'
    id = db.Column(db.Integer, primary_key=True)
    mechanic_id = db.Column(db.Integer, db.ForeignKey('users.id'))
    bus_id = db.Column(db.Integer, db.ForeignKey('busses.id'))
    longitude = db.Column(db.String(59))
    latitude = db.Column(db.String(50))
    description = db.Column(db.String(50))
    type = db.Column(db.String(50))
    status = db.Column(db.String(50))


    def __init__(self, mechanic_id, bus_id, longitude, latitude, description, type, status):
        self.mechanic_id = mechanic_id
        self.bus_id = bus_id
        self.longitude = longitude
        self.latitude = latitude
        self.description = description
        self.type= type
        self.status = status


    def store(self):
        db.session.add(self)
        return db.session.commit()

    def update(self, mechanic_id, bus_id, longitude, latitude, description, type, status):
        self.mechanic_id = mechanic_id
        self.bus_id = bus_id
        self.longitude = longitude
        self.latitude = latitude
        self.description = description
        self.type = type
        self.status = status

        return db.session.commit()

    def delete(self):
        db.session.delete(self)
        return db.session.commit()



