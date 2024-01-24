function giveDietaryRecommendations(status)
    if (strcmp(status, 'Elevated Blood Pressure') || contains(status, 'Hypertension') || contains(status, 'Crisis'))
        
        disp('For a healthy diet, consider the following foods:');
        disp('1. Fresh fruit');
        disp('2. Fresh vegetables');
        disp('3. Plant-based sources of protein, like lentils, chickpeas, nuts, and seeds');
        disp('4. Whole grains');
        disp(' '); 
    end

    if (contains(status, 'Stage') || contains(status, 'Crisis'))
        disp('Foods to avoid for high blood pressure:');
        disp('1. Red meat (although it is okay in moderation)');
        disp('2. High-fat dairy');
        disp('3. Processed foods');
        disp('4. Cured meats');
        disp('5. Fast foods');
        disp('6. Salty snack foods');
        disp('7. Limit the use of condiments and sauces');
        disp('For more information, visit: <a href="https://cardi.health/home?utm1=&gc_id=18787188473&gclid=Cj0KCQjw0PWRBhDKARIsAPKHFGjuTtuOUmhsJmE-kboK9E0Ab_wFpzrJkAjK-OATVj8xog9Bk2XQXEsaAujQEALw_wcB">CardiHealth Website</a>');
        disp(' '); 
    elseif strcmp(status, 'Normal Blood Pressure')
        disp('Your blood pressure status is normal. Continue eating a balanced diet and engaging in regular exercise.');
        disp(' '); 
    end

    if strcmp(status, 'Hypertensive Crisis - Consult Your Doctor')
        disp('You should also seek medical attention immediately as you are at risk of a heart attack, stroke, or other life-threatening health problems.');
        disp('For more information, visit: <a href="https://www.heartandstroke.ca/heart-disease/risk-and-prevention/condition-risk-factors/high-blood-pressure?gclid=CjwKCAjw7oeqBhBwEiwALyHLMzQLwIXA209AB9RuNwgA_r7sqVvcpkNSv9NDCfx-jIxUJrBDaR3v8BoCys4QAvD_BwE&gclsrc=aw.ds">Heart and Stroke - High Blood Pressure</a>');
    end
end

