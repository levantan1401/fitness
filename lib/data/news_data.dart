import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness/data/exercise_data.dart';

class NewsData {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final String image_Intro;
  final int views;
  final DateTime createAt;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  NewsData({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.imageUrl,
    required this.image_Intro,
    required this.views,
    required this.createAt,
  });

  static List<NewsData> newsData = [
    NewsData(
      id: '1',
      title: "How to Burn Fat at Home",
      subtitle:
          "You don’t need a ton of fancy gym equipment or an expensive meal plan to burn fat and lose weight. You can get started right at home! The key is to make gradual changes that you can stick to consistently.",
      body:
          "You don’t need a ton of fancy gym equipment or an expensive meal plan to burn fat and lose weight. You can get started right at home! The key is to make gradual changes that you can stick to consistently. To help you out, we’ve put together a nifty list of exercises and dietary changes you can do to start burning fat in the comfort of your own home. Drinking 3-5 cups a day may increase the fat your body burns. Green tea is loaded with antioxidants that are good for your health in general, but it also contains a compound called EGCG, which can help reduce fat absorption from your diet. Green tea can also help increase the fat that your body burns. Ditch the coffee and reach for the green tea if you need a little pick-me-up.[1] Green tea does have some caffeine in it, which is great if you need a little energy burst, but may cause you to have trouble getting to sleep if you drink it late at night.",
      author: "Co-authored by Shira Tsvi",
      authorImageUrl:
          "https://nerdhits.com.br/wp-content/uploads/2023/01/zoro-one-piece.jpg",
      category: "News",
      imageUrl:
          "https://www.wikihow.com/images/thumb/e/eb/Burn-Fat-at-Home-Step-4-Version-3.jpg/aid557677-v4-728px-Burn-Fat-at-Home-Step-4-Version-3.jpg.webp",
      image_Intro:
          "https://img.freepik.com/free-photo/young-fitness-man-studio_7502-5008.jpg",
      views: 210,
      createAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    NewsData(
      id: '2',
      title: "Exercise Using Your Stairs",
      subtitle:
          "You don’t even have to leave your home to use them, and there are a ton of different exercises you can do on stairs. ",
      body:
          "Step up to more intense cardio if you’re able to do stair sprints. This one’s pretty straightforward: run up the stairs as fast as you can, walk briskly (or jog) back down, then run back up again. Keep going up as fast as you can for as long as you can—this may only be for 1-2 minutes or even less. Stay loose during a 1-2 minute break and then do 1 or 2 more sets of sprints.[1] Sprinting up the stairs really gets your heart pumping. Keep in mind that this can be dangerous if you’re not yet in shape for such an intense workout. Use caution and increase your speed gradually—you don't want to risk either a cardiac episode or an injury due to a fall.[2] To help keep your pace, pump your arms back and forth. This helps keep you going and works your body harder.Avoid taking the stairs two at a time while doing stair sprints unless you feel really comfortable and safe doing so. Also, avoid this exercise if you have knee problems.",
      author: "Co-authored by Brendon Rearick",
      authorImageUrl:
          "https://nerdhits.com.br/wp-content/uploads/2023/01/zoro-one-piece.jpg",
      category: "News",
      imageUrl:
          "https://www.wikihow.com/images/thumb/0/0f/Exercise-Using-Your-Stairs-Step-1-Version-2.jpg/-crop-375-300-375px-nowatermark-Exercise-Using-Your-Stairs-Step-1-Version-2.jpg.webp",
      image_Intro:
          "https://www.wikihow.com/images/thumb/0/0f/Exercise-Using-Your-Stairs-Step-1-Version-2.jpg/-crop-375-300-375px-nowatermark-Exercise-Using-Your-Stairs-Step-1-Version-2.jpg.webp",
      views: 22,
      createAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    NewsData(
      id: '3',
      title: "Do Fitness Yoga",
      subtitle: "Yoga is known for its mental and physical health benefits. ",
      body:
          " Practice yoga as part of your whole fitness regimen. Adults require 150 minutes of moderate aerobic activity plus two muscle strengthening workouts each week to achieve physical fitness.[3] Moderate aerobic activity includes things like walking, running, biking, and swimming. Yoga combines physical strength exercises with breathing and stretching exercises, so it is not quite the same as aerobic exercise.[4] Try to incorporate yoga as a strengthening exercise a couple of days per week or use it as a way to stretch and reduce stress before or after a workout. Image titled Do Fitness Yoga Step 2 2Choose yoga poses that meet your fitness needs. Yoga poses can target almost any area of your body. They can strengthen your legs, increase flexibility in your arms, and improve breath control.[5] Choose poses that will help you to work on specific fitness goals. For example, if you want to increase flexibility in your legs, then you might try downward facing dog pose. If you want to improve balance, then you might try a half moon pose.",
      author: "Brendon ",
      authorImageUrl:
          "https://nerdhits.com.br/wp-content/uploads/2023/01/zoro-one-piece.jpg",
      category: "News",
      imageUrl:
          "https://www.wikihow.com/images/thumb/4/42/Do-Fitness-Yoga-Step-18.jpg/-crop-375-300-375px-nowatermark-Do-Fitness-Yoga-Step-18.jpg.webp",
      image_Intro:
          "https://www.wikihow.com/images/thumb/b/ba/Do-Fitness-Yoga-Step-16.jpg/aid2380644-v4-728px-Do-Fitness-Yoga-Step-16.jpg.webp",
      views: 210,
      createAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    NewsData(
      id: '4',
      title: "Build Muscle at Home",
      subtitle:
          "Building muscle at home is surprisingly straightforward and doesn't require any fancy gym equipment.",
      body:
          "Perform bodyweight exercises like pushups, squats, planks, and lunges to build muscle mass without weights or gym equipment.Use household objects like gallons of milk, heavy books, or home dumbbells (if you have them) to aid with upper body and arm workouts.Hit every muscle group twice a week and focus on good form to gain muscle quickly and safely. Eat a high-protein, low-fat diet.",
      author: "Francisco Gomez",
      authorImageUrl:
          "https://nerdhits.com.br/wp-content/uploads/2023/01/zoro-one-piece.jpg",
      category: "News",
      imageUrl:
          "https://www.wikihow.com/images/thumb/0/0e/Build-Muscle-at-Home-Step-1-Version-10.jpg/550px-nowatermark-Build-Muscle-at-Home-Step-1-Version-10.jpg.webp",
      image_Intro:
          "https://www.wikihow.com/images/thumb/0/0e/Build-Muscle-at-Home-Step-1-Version-10.jpg/550px-nowatermark-Build-Muscle-at-Home-Step-1-Version-10.jpg.webp",
      views: 210,
      createAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    NewsData(
      id: '5',
      title: "Top Exercises and Health Habits to Improve Digestion",
      subtitle:
          "Ugh, we’ve all been there—eating so much you feel bloated and like you can’t move. You may even undo a pants button or two to get a little extra breathing room.",
      body:
          "Walking: Take a 15-minute walk after a meal to help aid digestion by stimulating peristalsis, which is the process of moving food through your digestive system. Research also suggests that a short post-meal walk can help lower blood sugar. Walk on a treadmill or around your neighborhood to get some fresh air.[1]Italians have been walking after meals for centuries. Looks like they were on to something!Image titled Exercise to Improve Digestion Step 22Jump rope skips: Jump rope is a great cardio exercise that will help improve your digestion. Grab a jump rope that fits you (it should reach your shoulders when it’s folded in half), and shoot for about 15 minutes of skips.[2]If you’re new to jump rope, don’t be afraid to take breaks if you need a rest!Cardio exercises get your heart rate up and are one of the best ways to boost your digestion.Image titled Exercise to Improve Digestion Step 33Full-body roll-ups: Lie down flat on the ground or on a yoga mat. Take a deep breath and raise your arms up so they’re perpendicular to the floor. Breathe out and sit all the way up. When you’re sitting up, reach up overhead and lean forward to reach toward your toes. Then, slowly roll back down until you’re lying flat on the ground in the starting position. Use this exercise to work your core and help boost your digestion.[3]Focus on your breathing while you perform the exercise.Shoot for 10 reps of this movement.Image titled Exercise to Improve Digestion Step 44Avoid high-intensity exercises and weight lifting. Sprinting, gymnastics, weight lifting, and other intense forms of exercise can cause indigestion and acid reflux, so steer clear of them if you’re having digestion problems. Stick with moderate to low impact exercises like walking, light jogging, and jump rope to help improve your digestion.[4]Method2StretchesDownload ArticleImage titled Exercise to Improve Digestion Step 51Seated forward folds: Take a seated position on the floor or on a yoga mat. Take a breath and lift both arms up over your head. Exhale and lean forward, bringing your nose to your knees. Reach your arms as far forward as you can. Hold the position for 3 breaths and then unfold and return to the starting position to massage your abdominal region and improve digestion.[5]Repeat the movement 3 times to help stimulate your entire abdominal and pelvic region.Image titled Exercise to Improve Digestion Step 62Crescent lunge with a twist: Stand up tall, take a big step forward with 1 leg, bend your knees, and sink your hips down so you’re in a stable lunch position. Bring your palms together in front of your chest. Then, rotate your upper body towards your bent leg and rest your elbow on your bent leg. Hold the twist for 3-4 breaths, then slowly release it and return to the starting position. Repeat the exercise on the other leg to improve blood flow in your abdominal region.[6]Aim for 2-3 reps on each leg.When you’re in the twisted position, blood flow is temporarily cut off to your abdominal region. When you return to the normal position, the increased blood flow can help improve digestion.Image titled Exercise to Improve Digestion Step 73Bellows pose: Lie flat on your back and take a big breath as you raise your arms above your head. Exhale and bring your right knee to your chest. Interlace your fingers and hug your knee to your chest for 3 breaths. Then, release your knee and return to the starting position. Repeat the movement with your other leg.[7]Do the exercise 3 times on each leg to help relieve gas, constipation, and indigestion.Image titled Exercise to Improve Digestion Step 84Cat-cow: Get down on your hands and knees so your hands are even with your shoulders and your knees are even with your hips. Keep your back nice and flat. Exhale and round your back up as much as you can to do a cat stretch. Then, take a big breath as you drop your spine and open up your chest to do a cow stretch. Alternate back and forth between cat and cow for 10 breaths to flex and relax your ab muscles, which can help with digestion.[8]The action of your breathing and activating your diaphragm boosts your oxygen levels and helps with digestion.Image titled Exercise to Improve Digestion Step 95Child’s pose: Kneel down so your knees are open and your toes are touching. Bend your body forward so your forehead is resting on the floor. Stretch your arms above your head and allow your stomach to relax as you take 10 breaths in the position to help boost digestion.[9]Use this pose to finish your exercise.After your 10 breaths, you should feel better and more relaxed.",
      author: "L.VTan",
      authorImageUrl:
          "https://nerdhits.com.br/wp-content/uploads/2023/01/zoro-one-piece.jpg",
      category: "News",
      imageUrl:
          "https://www.wikihow.com/images/thumb/3/33/Exercise-to-Improve-Digestion-Step-14-Version-2.jpg/-crop-375-300-375px-nowatermark-Exercise-to-Improve-Digestion-Step-14-Version-2.jpg.webp",
      image_Intro:
          "https://www.wikihow.com/images/thumb/3/33/Exercise-to-Improve-Digestion-Step-14-Version-2.jpg/-crop-375-300-375px-nowatermark-Exercise-to-Improve-Digestion-Step-14-Version-2.jpg.webp",
      views: 210,
      createAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
// NEW BODY
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        image_Intro,
        views,
        createAt
      ];
  void addDataToFirestore(Map<String, dynamic> jsonData) async {
    try {
      CollectionReference collectionRef = firestore.collection('news');
      await collectionRef.add(jsonData);
      print(
          '>>>>>>>>>>>>>>>>>>>>>>Dữ liệu đã được thêm vào Firestore thành công.');
    } catch (e) {
      print('Lỗi khi thêm dữ liệu vào Firestore: $e');
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    
    data['id'] = id;
    data['title'] = title;
    data['subtitle'] = subtitle;
    data['body'] = body;
    data['author'] = author;
    data['authorImageUrl'] = authorImageUrl;
    data['category'] = category;
    data['imageUrl'] = imageUrl;
    data['image_Intro'] = image_Intro;
    data['views'] = views;
    data['createAt'] = createAt;
    addDataToFirestore(data);
    return data;
  }
}

class NewsDataBody {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final String image_Intro;
  final int views;
  final DateTime createAt;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  NewsDataBody({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.imageUrl,
    required this.image_Intro,
    required this.views,
    required this.createAt,
  });

  static List<NewsDataBody> newsData = [
// NEW BODY
    NewsDataBody(
      id: '6',
      title: "How to Burn Fat at Home",
      subtitle:
          "You don’t need a ton of fancy gym equipment or an expensive meal plan to burn fat and lose weight. You can get started right at home! The key is to make gradual changes that you can stick to consistently.",
      body:
          "You don’t need a ton of fancy gym equipment or an expensive meal plan to burn fat and lose weight. You can get started right at home! The key is to make gradual changes that you can stick to consistently. To help you out, we’ve put together a nifty list of exercises and dietary changes you can do to start burning fat in the comfort of your own home. Drinking 3-5 cups a day may increase the fat your body burns. Green tea is loaded with antioxidants that are good for your health in general, but it also contains a compound called EGCG, which can help reduce fat absorption from your diet. Green tea can also help increase the fat that your body burns. Ditch the coffee and reach for the green tea if you need a little pick-me-up.[1] Green tea does have some caffeine in it, which is great if you need a little energy burst, but may cause you to have trouble getting to sleep if you drink it late at night.",
      author: "Co-authored by Shira Tsvi",
      authorImageUrl:
          "https://nerdhits.com.br/wp-content/uploads/2023/01/zoro-one-piece.jpg",
      category: "News_Body",
      imageUrl:
          "https://img.freepik.com/free-photo/young-fitness-man-studio_7502-5008.jpg",
      image_Intro:
          "https://img.freepik.com/premium-photo/shirtless-male-bodybuilder-holding-dumbbells_7502-3559.jpg?size=626&ext=jpg",
      views: 210,
      createAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    NewsDataBody(
      id: '7',
      title: "Exercise Using Your Stairs",
      subtitle:
          "You don’t even have to leave your home to use them, and there are a ton of different exercises you can do on stairs. ",
      body:
          "Step up to more intense cardio if you’re able to do stair sprints. This one’s pretty straightforward: run up the stairs as fast as you can, walk briskly (or jog) back down, then run back up again. Keep going up as fast as you can for as long as you can—this may only be for 1-2 minutes or even less. Stay loose during a 1-2 minute break and then do 1 or 2 more sets of sprints.[1] Sprinting up the stairs really gets your heart pumping. Keep in mind that this can be dangerous if you’re not yet in shape for such an intense workout. Use caution and increase your speed gradually—you don't want to risk either a cardiac episode or an injury due to a fall.[2] To help keep your pace, pump your arms back and forth. This helps keep you going and works your body harder.Avoid taking the stairs two at a time while doing stair sprints unless you feel really comfortable and safe doing so. Also, avoid this exercise if you have knee problems.",
      author: "Co-authored by Brendon Rearick",
      authorImageUrl:
          "https://nerdhits.com.br/wp-content/uploads/2023/01/zoro-one-piece.jpg",
      category: "News_Body",
      imageUrl:
          "https://prod-ne-cdn-media.puregym.com/media/815182/energy-boosting-workout.jpg?quality=80&mode=pad&width=600",
      image_Intro:
          "https://img.freepik.com/free-photo/young-man-sportswear-exercise-class-gym_1150-12369.jpg?size=626&ext=jpg",
      views: 22,
      createAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    NewsDataBody(
      id: '8',
      title: "Do Fitness Yoga",
      subtitle: "Yoga is known for its mental and physical health benefits. ",
      body:
          " Practice yoga as part of your whole fitness regimen. Adults require 150 minutes of moderate aerobic activity plus two muscle strengthening workouts each week to achieve physical fitness.[3] Moderate aerobic activity includes things like walking, running, biking, and swimming. Yoga combines physical strength exercises with breathing and stretching exercises, so it is not quite the same as aerobic exercise.[4] Try to incorporate yoga as a strengthening exercise a couple of days per week or use it as a way to stretch and reduce stress before or after a workout. Image titled Do Fitness Yoga Step 2 2Choose yoga poses that meet your fitness needs. Yoga poses can target almost any area of your body. They can strengthen your legs, increase flexibility in your arms, and improve breath control.[5] Choose poses that will help you to work on specific fitness goals. For example, if you want to increase flexibility in your legs, then you might try downward facing dog pose. If you want to improve balance, then you might try a half moon pose.",
      author: "Brendon ",
      authorImageUrl:
          "https://nerdhits.com.br/wp-content/uploads/2023/01/zoro-one-piece.jpg",
      category: "News_Body",
      imageUrl:
          "https://img.freepik.com/free-photo/young-man-sportswear-exercise-class-gym_1150-12372.jpg?size=626&ext=jpg",
      image_Intro:
          "https://img.freepik.com/free-photo/young-man-sportswear-exercise-class-gym_1150-12372.jpg?size=626&ext=jpg",
      views: 210,
      createAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    NewsDataBody(
      id: '9',
      title: "Build Muscle at Home",
      subtitle:
          "Building muscle at home is surprisingly straightforward and doesn't require any fancy gym equipment.",
      body:
          "Perform bodyweight exercises like pushups, squats, planks, and lunges to build muscle mass without weights or gym equipment.Use household objects like gallons of milk, heavy books, or home dumbbells (if you have them) to aid with upper body and arm workouts.Hit every muscle group twice a week and focus on good form to gain muscle quickly and safely. Eat a high-protein, low-fat diet.",
      author: "Francisco Gomez",
      authorImageUrl:
          "https://nerdhits.com.br/wp-content/uploads/2023/01/zoro-one-piece.jpg",
      category: "News_Body",
      imageUrl:
          "https://img.freepik.com/free-photo/full-shot-couple-doing-workout-exercises_23-2150470970.jpg?size=626&ext=jpg",
      image_Intro:
          "https://img.freepik.com/free-photo/weights-exercise-weightlifter-strong-athletic_1139-709.jpg?size=626&ext=jpg",
      views: 210,
      createAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    NewsDataBody(
      id: '10',
      title: "Top Exercises and Health Habits to Improve Digestion",
      subtitle:
          "Ugh, we’ve all been there—eating so much you feel bloated and like you can’t move. You may even undo a pants button or two to get a little extra breathing room.",
      body:
          "Walking: Take a 15-minute walk after a meal to help aid digestion by stimulating peristalsis, which is the process of moving food through your digestive system. Research also suggests that a short post-meal walk can help lower blood sugar. Walk on a treadmill or around your neighborhood to get some fresh air.[1]Italians have been walking after meals for centuries. Looks like they were on to something!Image titled Exercise to Improve Digestion Step 22Jump rope skips: Jump rope is a great cardio exercise that will help improve your digestion. Grab a jump rope that fits you (it should reach your shoulders when it’s folded in half), and shoot for about 15 minutes of skips.[2]If you’re new to jump rope, don’t be afraid to take breaks if you need a rest!Cardio exercises get your heart rate up and are one of the best ways to boost your digestion.Image titled Exercise to Improve Digestion Step 33Full-body roll-ups: Lie down flat on the ground or on a yoga mat. Take a deep breath and raise your arms up so they’re perpendicular to the floor. Breathe out and sit all the way up. When you’re sitting up, reach up overhead and lean forward to reach toward your toes. Then, slowly roll back down until you’re lying flat on the ground in the starting position. Use this exercise to work your core and help boost your digestion.[3]Focus on your breathing while you perform the exercise.Shoot for 10 reps of this movement.Image titled Exercise to Improve Digestion Step 44Avoid high-intensity exercises and weight lifting. Sprinting, gymnastics, weight lifting, and other intense forms of exercise can cause indigestion and acid reflux, so steer clear of them if you’re having digestion problems. Stick with moderate to low impact exercises like walking, light jogging, and jump rope to help improve your digestion.[4]Method2StretchesDownload ArticleImage titled Exercise to Improve Digestion Step 51Seated forward folds: Take a seated position on the floor or on a yoga mat. Take a breath and lift both arms up over your head. Exhale and lean forward, bringing your nose to your knees. Reach your arms as far forward as you can. Hold the position for 3 breaths and then unfold and return to the starting position to massage your abdominal region and improve digestion.[5]Repeat the movement 3 times to help stimulate your entire abdominal and pelvic region.Image titled Exercise to Improve Digestion Step 62Crescent lunge with a twist: Stand up tall, take a big step forward with 1 leg, bend your knees, and sink your hips down so you’re in a stable lunch position. Bring your palms together in front of your chest. Then, rotate your upper body towards your bent leg and rest your elbow on your bent leg. Hold the twist for 3-4 breaths, then slowly release it and return to the starting position. Repeat the exercise on the other leg to improve blood flow in your abdominal region.[6]Aim for 2-3 reps on each leg.When you’re in the twisted position, blood flow is temporarily cut off to your abdominal region. When you return to the normal position, the increased blood flow can help improve digestion.Image titled Exercise to Improve Digestion Step 73Bellows pose: Lie flat on your back and take a big breath as you raise your arms above your head. Exhale and bring your right knee to your chest. Interlace your fingers and hug your knee to your chest for 3 breaths. Then, release your knee and return to the starting position. Repeat the movement with your other leg.[7]Do the exercise 3 times on each leg to help relieve gas, constipation, and indigestion.Image titled Exercise to Improve Digestion Step 84Cat-cow: Get down on your hands and knees so your hands are even with your shoulders and your knees are even with your hips. Keep your back nice and flat. Exhale and round your back up as much as you can to do a cat stretch. Then, take a big breath as you drop your spine and open up your chest to do a cow stretch. Alternate back and forth between cat and cow for 10 breaths to flex and relax your ab muscles, which can help with digestion.[8]The action of your breathing and activating your diaphragm boosts your oxygen levels and helps with digestion.Image titled Exercise to Improve Digestion Step 95Child’s pose: Kneel down so your knees are open and your toes are touching. Bend your body forward so your forehead is resting on the floor. Stretch your arms above your head and allow your stomach to relax as you take 10 breaths in the position to help boost digestion.[9]Use this pose to finish your exercise.After your 10 breaths, you should feel better and more relaxed.",
      author: "L.VTan",
      authorImageUrl:
          "https://nerdhits.com.br/wp-content/uploads/2023/01/zoro-one-piece.jpg",
      category: "News_Body",
      imageUrl:
          "https://img.freepik.com/free-photo/young-fitness-man-studio_7502-5005.jpg?size=626&ext=jpg",
      image_Intro:
          "https://img.freepik.com/free-photo/young-fitness-man-studio_7502-5005.jpg?size=626&ext=jpg",
      views: 210,
      createAt: DateTime.now().subtract(const Duration(hours: 5)),
    )
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        image_Intro,
        views,
        createAt
      ];

  void addDataToFirestore(Map<String, dynamic> jsonData) async {
    try {
      CollectionReference collectionRef = firestore.collection('newsBody');
      await collectionRef.add(jsonData);
      print(
          '>>>>>>>>>>>>>>>>>>>>>>Dữ liệu đã được thêm vào Firestore thành công.');
    } catch (e) {
      print('Lỗi khi thêm dữ liệu vào Firestore: $e');
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    
    data['id'] = id;
    data['title'] = title;
    data['subtitle'] = subtitle;
    data['body'] = body;
    data['author'] = author;
    data['authorImageUrl'] = authorImageUrl;
    data['category'] = category;
    data['imageUrl'] = imageUrl;
    data['image_Intro'] = image_Intro;
    data['views'] = views;
    data['createAt'] = createAt;
    addDataToFirestore(data);
    return data;
  }
}
