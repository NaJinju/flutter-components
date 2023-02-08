import 'package:flutter/material.dart';

class VerticalCardList extends StatelessWidget {
  VerticalCardList({super.key});
  final List<Map<String, dynamic>> data = [
    {
      'title': '고양이는 정말 귀여워',
      'content':
          '고양이는 정말 귀여워 (일반 도감 - 고양이 & 건물) <복덩이네> 건물이 높에서 바깥 경치가 좋은 복덩이네 집. 정원 가꾸는 걸 좋아하던 전 집주인 덕분에 꽃과 나무로 가득한 집이 되었다!',
      'regdate': '2023.01.03',
      'isFree': true,
      'likeCount': 78,
      'commentCount': 5,
      'imageUrl':
          'https://blogthumb.pstatic.net/MjAyMjA4MDdfMzkg/MDAxNjU5ODc5NjczNTU2.LiYJIgfPfdjrsWPU7jVatRPW0cFpXsvMS-4syGCo5_Ag.kt9j4AXyeFmflgiRWOYiEWTqQcuJWMprfUM5EdA_Rngg.JPEG.welovenana/IMG_9526.JPG?type=s2',
    },
    {
      'title': '고양이 귀여워',
      'content': '너무 귀엽다. 열심히 자라나고 있다. 키도, 몸무게도 하루가 다르게 쑥쑥 늘어나고..',
      'regdate': '2023.01.03',
      'isFree': false,
      'likeCount': 42,
      'commentCount': 1,
      'imageUrl':
          'https://blogthumb.pstatic.net/MjAyMjA0MTZfMTEy/MDAxNjUwMTE4NjU3MTYx.ZnZ6bQ8I1aPM52Eo6VOZnz094L4KzlEnx20_dI5Q80Ig.WyU4hQM-SSQiQk43e3hOIdla-0bH4YCmqbzSZMEXOpcg.JPEG.zzjworld/1650118114422%A3%AD0.jpg?type=s2',
    },
    {
      'title': '[반려동물]일년 내내 귀여운 "우리은행 펫모델 고양이 달력" | 고양이 귀여워 | 고양이가...',
      'content':
          '작년에 신청해서 올해 받구 한달이나 지나서 올리는 포슷힝 ~ 작년 #우리은행 에서 #우리펫모델선발대회 를 개최했는데 우리별이두 참가했다가 똑 떨어졌당 ㅋ 우리고양이 !!! 이렇게 귀여운데 !!!! 왜 !!!!! 우리고양이는 잘못이 없습니다. 게을러서 팔로우를 늘리지 못한 언니의 잘못입니다 흑흑...',
      'regdate': '2023.01.03',
      'isFree': true,
      'likeCount': 35,
      'commentCount': 8,
      'imageUrl':
          'https://blogthumb.pstatic.net/MjAyMzAyMDdfMjk5/MDAxNjc1NzM1Mzk3MjA4.sOpAJ2T-QXTqKve4KYTFUDHYr_3Sy0R58FqwaorQM4sg.A41qJgjQK07_CaxXW6PRqJ0u14vAclEolx4RnPLuamAg.PNG.jamongzzi_/%C1%A6%B8%F1%C0%BB_%C0%D4%B7%C2%C7%D8%C1%D6%BC%BC%BF%E4_-001.png?type=s2',
    },
    {
      'title': '[인사이트] 초보 투자자를 위한 제언 ‘CES2023셀온 주의’',
      'content': '5일(현지시각) 개최를 앞둔 CES2023과 관련한 기사들이 삼성, LG를 비롯해 다양한 기업..',
      'regdate': '2023.01.03',
      'isFree': true,
      'likeCount': 10,
      'commentCount': 20,
      'imageUrl':
          'https://s3.ap-northeast-2.amazonaws.com/com.liveschole/common/1675817532572.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: data.length,
      itemBuilder: (context, index) {
        final item = data[index];
        // return Text(item['title']);
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 12,
            right: 16,
            left: 16,
          ),
          margin: const EdgeInsets.only(
            bottom: 12,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['title'],
                          style: const TextStyle(
                            color: Color(0XFF72777B),
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          item['content'],
                          style: const TextStyle(
                            color: Color(0XFFBBBFC3),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    clipBehavior: Clip.hardEdge,
                    width: 82,
                    height: 82,
                    child: Image.network(item['imageUrl']),
                  )
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item['regdate'],
                    style: const TextStyle(
                      color: Color(0XFFBBBFC3),
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.favorite,
                        color: Color(0XFFCFD2D6),
                      ),
                      Text(
                        item['likeCount'].toString(),
                        style: const TextStyle(
                          color: Color(0XFFCFD2D6),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const Icon(
                        Icons.sms_rounded,
                        color: Color(0XFFCFD2D6),
                      ),
                      Text(
                        item['commentCount'].toString(),
                        style: const TextStyle(
                          color: Color(0XFFCFD2D6),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
