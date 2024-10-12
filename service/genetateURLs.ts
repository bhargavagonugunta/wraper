
// Geographic center (latitude and longitude)
const Lat = 17.397097 // Example: Latitude of San Francisco
const Lon = 78.469528 // Example: Longitude of San Francisco
const radiusInDegrees = 0.3; // Radius of the circle in degrees (about 11km radius)

// Circle parameters for canvas

const dotRadius = 5; // radius of each dot
const spacing = 0.02; // spacing between dots in degrees

// Function to convert geographic (lat, lon) to canvas (x, y) coordinates

// Function to check if a point (lat, lon) is inside the circle in geographic space
function isInsideCircle(lat:number, lon:number,centerLat:number,centerLon:number) {
    const dLat = lat - centerLat;
    const dLon = lon - centerLon;
    return dLat * dLat + dLon * dLon <= radiusInDegrees * radiusInDegrees;
}

// Function to plot the circle and equidistant points in geographic coordinates
function plotEquidistantDotsInGeoCircle(centerLat:number,centerLon:number) {
    // Draw the circle outline in canvas

    // Calculate points using a hexagonal grid pattern in geographic coordinates
    const hexHeight = (Math.sqrt(3) * spacing) / 2; // Vertical spacing for hexagonal grid in degrees

    // Loop over rows of latitude
    for (
        let lat = centerLat - radiusInDegrees;
        lat <= centerLat + radiusInDegrees;
        lat += hexHeight
    ) {
        // Loop over columns of longitude
        for (
            let lon = centerLon - radiusInDegrees;
            lon <= centerLon + radiusInDegrees;
            lon += spacing
        ) {
            // Offset every other row for the hexagonal grid
            const lonOffset =
                Math.abs(lat - centerLat) % (2 * hexHeight) ? spacing / 2 : 0;
            const adjustedLon = lon + lonOffset;

            // Only plot points inside the geographic circle
            if (isInsideCircle(lat, adjustedLon,centerLat,centerLon)) {
                console.log(lat, adjustedLon); //
            }
        }
    }
}
plotEquidistantDotsInGeoCircle(Lat,Lon);
