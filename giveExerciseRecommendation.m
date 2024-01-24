function giveExerciseRecommendation(exerciseChoice, status)
    switch exerciseChoice
        case 1
            disp(' '); 
            fprintf('You do not engage in regular exercise.\n');
            disp('Try going for walks, playing sports, or signing up for recreational activities.');
            disp('For more information, visit: <a href="https://www.brampton.ca/EN/residents/Recreation/Programs-Activities/Pages/Welcome.aspx">Recreation Programs and Activities</a>');
        case 2
            disp(' ');
            fprintf('You exercise 1 to 2 hours a week.\n');
            if strcmp(status, 'Elevated Blood Pressure') || contains(status, 'Hypertension') || contains(status, 'Crisis') && exerciseChoice > 1
                disp('Consider exercising for another hour by getting involved in extracurricular activities and implementing a good diet.');
                disp('For more information, visit: <a href="https://www.brampton.ca/EN/residents/Recreation/Programs-Activities/Pages/Welcome.aspx">Recreation Programs and Activities</a>');
            elseif strcmp(status, 'Normal Blood Pressure')
                disp('You are doing a good job staying healthy. Keep up the work!');
            end
        case 3
            disp(' '); 
            fprintf('You exercise 2 to 3 hours a week.\n');
            if strcmp(status, 'Normal Blood Pressure')
                disp('You are doing a good job staying healthy. Keep up the work!');
            end
        case 4
            disp(' '); 
            fprintf('You exercise 3 to 4 hours a week.\n');
            if strcmp(status, 'Normal Blood Pressure')
                disp('You are doing a good job staying healthy. Keep up the work!');
            end
        case 5
            disp(' '); 
            fprintf('You exercise 4 to 5 hours a week.\n');
            if strcmp(status, 'Normal Blood Pressure')
                disp('You are doing a good job staying healthy. Keep up the work!');
            end
        case 6
            disp(' ');
            fprintf('You exercise 5 plus hours a week.\n');
            if strcmp(status, 'Normal Blood Pressure')
                disp('You are doing a good job staying healthy. Keep up the work!');
            end
    end
end

