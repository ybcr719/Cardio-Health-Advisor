% BloodPressureAndExerciseMenu

% Predefined values
systolicMenu = {'Less Than 120', '120 - 129', '130 - 139', '140 - 180', 'Over 180'};
diastolicMenu = {'Less Than 80', '80 - 89', '90 - 119', '120 or Higher'};
exerciseMenu = {'0 hours a Week', '1 to 2 hours a Week', '2 to 3 hours  Week', ...
    '3 to 4 hours a Week', '4 to 5 hours a Week', '5 or more Hours a Week'};

% Prompt the user to select predefined systolic and diastolic values
systolicChoice = menu('Select your systolic blood pressure range:', systolicMenu);
diastolicChoice = menu('Select your diastolic blood pressure range:', diastolicMenu);

% Assign predefined values based on user's choices
predefinedValuesSystolic = [120, 130, 140, 180, 180];
predefinedValuesDiastolic = [80, 90, 120, 120];

systolic = predefinedValuesSystolic(systolicChoice);
diastolic = predefinedValuesDiastolic(diastolicChoice);

% Display exercise frequency menu
exerciseChoice = menu('Exercise Frequency Menu:', exerciseMenu);

% Display user choices
disp('Your Choices:');

% Display systolic blood pressure range
disp(['Systolic Blood Pressure: ' systolicMenu{systolicChoice}]);

% Display diastolic blood pressure range
disp(['Diastolic Blood Pressure: ' diastolicMenu{diastolicChoice}]);

% Display exercise frequency
disp(['Exercise Frequency: ' exerciseMenu{exerciseChoice}]);

% Determine blood pressure status
if (systolic <= 120) && (diastolic <= 80)
    status = 'Normal Blood Pressure';
elseif (systolic >= 120 && systolic <= 129) && (diastolic < 80)
    status = 'Elevated Blood Pressure';
elseif (systolic >= 130 && systolic <= 139) && (diastolic >= 80 && diastolic <= 89)
    status = 'Stage 1 Hypertension with High Blood Pressure';
elseif (systolic >= 130 && systolic <= 139) 
    status = 'Stage 1 Hypertension with High Blood Pressure';
elseif (diastolic >= 80 && diastolic <= 89)
    status = 'Stage 1 Hypertension with High Blood Pressure';
elseif (systolic >= 140 && systolic <= 180) && (diastolic >= 90 && diastolic <= 120)
    status = 'Stage 2 Hypertension with High Blood Pressure';
elseif (systolic >= 140 && systolic <= 180)
    status = 'Stage 2 Hypertension with High Blood Pressure';
elseif(diastolic >= 90 && diastolic <= 120)
    status = 'Stage 2 Hypertension with High Blood Pressure';
elseif (systolic > 180) || (diastolic > 120)
    status = 'Hypertensive Crisis - Consult Your Doctor';
elseif (systolic > 180) 
    status = 'Hypertensive Crisis - Consult Your Doctor';
elseif (diastolic > 120)
    status = 'Hypertensive Crisis - Consult Your Doctor';
else
    status = 'Undefined Blood Pressure Status';
end

fprintf('\nBlood Pressure Status: %s\n', status);

% Display exercise frequency based on user's choice
switch exerciseChoice
    case 1
        fprintf('You do not engage in regular exercise.\n');
        disp('Try going for walks, playing sports, or signing up for recreational activities.');
        disp('For more information, visit: <a href="https://www.brampton.ca/EN/residents/Recreation/Programs-Activities/Pages/Welcome.aspx">Recreation Programs and Activities</a>');
    case 2
        fprintf('You exercise 1 to 2 hours a week.\n');
        if strcmp(status, 'Elevated Blood Pressure')|| contains(status, 'Hypertension') || contains(status, 'Crisis') && exerciseChoice > 1
            disp('Consider exercising for another hour by getting involved in extracurricular activities and implementing a good diet.');
            disp('For more information, visit: <a href="https://www.brampton.ca/EN/residents/Recreation/Programs-Activities/Pages/Welcome.aspx">Recreation Programs and Activities</a>');
        elseif strcmp(status, 'Normal Blood Pressure')
            disp('You are doing a good job staying healthy. Keep up the work!');
        end
    case 3
        fprintf('You exercise 2 to 3 hours a week.\n');
        if strcmp(status, 'Normal Blood Pressure')
            disp('You are doing a good job staying healthy. Keep up the work!');
        end
    case 4
        fprintf('You exercise 3 to 4 hours a week.\n');
        if strcmp(status, 'Normal Blood Pressure')
            disp('You are doing a good job staying healthy. Keep up the work!');
        end
    case 5
        fprintf('You exercise 4 to 5 hours a week.\n');
        if strcmp(status, 'Normal Blood Pressure')
            disp('You are doing a good job staying healthy. Keep up the work!');
        end
    case 6
        fprintf('You exercise 5 plus hours a week.\n');
        if strcmp(status, 'Normal Blood Pressure')
            disp('You are doing a good job staying healthy. Keep up the work!');
        end
    otherwise
        fprintf('Invalid choice.\n');
end

% Additional recommendations based on blood pressure status
if (strcmp(status, 'Elevated Blood Pressure') || contains(status, 'Hypertension') || contains(status, 'Crisis'))
    disp('For a healthy diet, consider the following foods:');
    disp('1. Fresh fruit');
    disp('2. Fresh vegetables');
    disp('3. Plant-based sources of protein, like lentils, chickpeas, nuts, and seeds');
    disp('4. Whole grains');
end

if (contains(status, 'Hypertension') || contains(status, 'Crisis'))
    disp('Foods to avoid for high blood pressure:');
    disp('1. Red meat (although it is okay in moderation)');
    disp('2. High-fat dairy');
    disp('3. Processed foods');
    disp('4. Cured meats');
    disp('5. Fast foods');
    disp('6. Salty snack foods');
    disp('7. Limit the use of condiments and sauces');
    disp('For more information, visit: <a href="https://www.heartandstroke.ca/heart-disease/risk-and-prevention/condition-risk-factors/high-blood-pressure?gclid=CjwKCAjw7oeqBhBwEiwALyHLMzQLwIXA209AB9RuNwgA_r7sqVvcpkNSv9NDCfx-jIxUJrBDaR3v8BoCys4QAvD_BwE&gclsrc=aw.ds">HeartandStroke-HighBloodPressure</a>');
end

if strcmp(status, 'HypertensiveCrisis-ConsultYourDoctor')
    disp('Seek medical attention immediately. You are at risk of a heart attack, stroke, or other life-threatening health problems.');
    disp('You are at significantly higher risk of cardiovascular disease, For more information, visit: <a href="https://www.heartandstroke.ca/heart-disease/risk-and-prevention/condition-risk-factors/high-blood-pressure?gclid=CjwKCAjw7oeqBhBwEiwALyHLMzQLwIXA209AB9RuNwgA_r7sqVvcpkNSv9NDCfx-jIxUJrBDaR3v8BoCys4QAvD_BwE&gclsrc=aw.ds">HeartandStroke-HighBloodPressure</a>');
end
