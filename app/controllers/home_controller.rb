class HomeController < ApplicationController

  def index
    
    @@human_birthday = "#{params[:human_birthday]}"
    @@dog_birthday = "#{params[:dog_birthday]}"

    if params[:breed] == "small_medium_breed"
      redirect_to small_medium_breed_path
    elsif params[:breed] == "large_breed"
      redirect_to large_breed_path
    elsif params[:breed] == "xlarge_breed"
      redirect_to xlarge_breed_path
    end

  end

  def about_us
  end


  def xlarge_breed

    human_birthday = @@human_birthday.to_time
    dog_birthday = @@dog_birthday.to_time

    human_age = TimeDifference.between(human_birthday, Time.now()).in_days
    dog_age = TimeDifference.between(dog_birthday, Time.now()).in_days 

    h_counter = human_age - dog_age
    d_counter = 0

    while d_counter <= h_counter do
      
      if d_counter <= 5480
        h_counter += 1
        d_counter +=16
      elsif d_counter > 5480 && d_counter <= 8760
        h_counter +=1
        d_counter +=8
      else 
        h_counter +=1
        d_counter +=7
      end
    end

    @dog_day = human_birthday + (h_counter * (60*60*24) )

    puts @dog_day.strftime("%A %b %d %Y")

    respond_to do |format|
      format.js
    end
  end

  def large_breed
    
    human_birthday = @@human_birthday.to_time
    dog_birthday = @@dog_birthday.to_time

    human_age = TimeDifference.between(human_birthday, Time.now()).in_days
    dog_age = TimeDifference.between(dog_birthday, Time.now()).in_days 

    h_counter = human_age - dog_age
    d_counter = 0

    while d_counter <= h_counter do
      
      if d_counter <= 5480
        h_counter += 1
        d_counter +=16
      elsif d_counter > 5480 && d_counter <= 8760
        h_counter +=1
        d_counter +=8
      else 
        h_counter +=1
        d_counter +=6
      end
    end

    @dog_day = human_birthday + (h_counter * (60*60*24) )

    puts @dog_day.strftime("%A %b %d %Y")

    respond_to do |format|
      format.js
    end
  end

  def small_medium_breed
    human_birthday = @@human_birthday.to_time
    dog_birthday = @@dog_birthday.to_time

    human_age = TimeDifference.between(human_birthday, Time.now()).in_days
    dog_age = TimeDifference.between(dog_birthday, Time.now()).in_days 

    h_counter = human_age - dog_age
    d_counter = 0

    while d_counter <= h_counter do
      
      if d_counter <= 5480
        h_counter += 1
        d_counter +=16
      elsif d_counter > 5480 && d_counter <= 8760
        h_counter +=1
        d_counter +=8
      else 
        h_counter +=1
        d_counter +=5
      end
    end

    @dog_day = human_birthday + (h_counter * (60*60*24) )

    puts @dog_day.strftime("%A %b %d %Y")

    respond_to do |format|
      format.js
    end
  end
end