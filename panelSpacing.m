% declare measurements and specifications
strokeLength = 8; % inches
retractionSize = 15.87; % inches
extendedSize = retractionSize + strokeLength; % inches
rows = 5;
columns = 13;
panelLength = 49.69; % inches
panelWidth = 30.08; % inches
panelThickness = 1.18; % inches
solarElevationAngle = deg2rad(30); % radians, found from external software graph
azimuthCorrectionAngle = deg2rad(20); % degrees, found from external software graph
correctionFactor = 2;
actuatorDistance = 1;
maxAngleAttackLong = deg2rad(40); % radians, based on CAD
maxAngleAttackShort = deg2rad(40); % radians, based on CAD
% find height difference
heightLong = sin(maxAngleAttackLong)*panelLength; % inches
heightShort = sin(maxAngleAttackShort)*panelWidth; % inches
% find distance between rows
distanceLong = ((heightLong / tan(solarElevationAngle))*cos(azimuthCorrectionAngle)) /
correctionFactor % inches
distanceShort = (heightShort / tan(solarElevationAngle))*cos(azimuthCorrectionAngle) %
inches
