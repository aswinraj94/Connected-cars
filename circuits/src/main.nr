fn main(
    junctions: [[u32; 4]; 4],    // List of junction IDs visited by the vehicles
    timestamps: [[u32; 4]; 4],  // Corresponding timestamps of the visits
)-> pub bool {

    let mut ret=true;

    // Loop through the vehicle's 
    for car in 0..4 {

        for route in 0..4 {

            let current_junction = junctions[car][route];
            let current_time = timestamps[car][route];

            for car_loop in 0..4 {

                for route_loop in 0..4 {
                
                    if current_junction == junctions[car_loop][route_loop]{

                        if current_time == timestamps[car_loop][route_loop]{
                            ret =false;
                        }

                    }

                }

            }

        }

    }

    ret
}



