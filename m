Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E2C56B49B
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 10:41:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CC11112898;
	Fri,  8 Jul 2022 08:41:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2384112896
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 08:41:21 +0000 (UTC)
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 2687ELbs020796;
 Fri, 8 Jul 2022 08:41:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=e+ZHwjaPE3a2Tcj/P7rj5l9DG8YOAIkbDr0+fKmrqz0=;
 b=n7t4LXcR02Ggtb6gGeHnTMhiLcGtUstvrOt5cka4E+I/ZYaowcbUhg1vuJBTx9Q+WLqA
 LfRmUrfjXmGUXYDbJ/EEHwFm7n7NwPrebdWbIcIh/DqMvzxBLf6H0OjYpyZAh0vMIDrl
 QFYg3n7BZ4/x55L1dA6YWLDX/cTmszjw0ukyayRmzo9t+mLI6CKAB5QlHaD+aIYfQQEh
 XGolMPle9jDYxQBk4Y/9RGfPy/CK+9TfSpLL9UTixZq+NhUbYj0KPJ645JL9CZjU1HUu
 I4o6GALNS/vbs9RlE6c+/sMqupUWLGcm2c/HUzq5KkNXy86ZBAqb5JxdElmcb5P8KQQE Sw== 
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3h4uby7g2j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 08 Jul 2022 08:41:16 +0000
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.16.1.2/8.16.1.2)
 with SMTP id 2688ZMn6035007; Fri, 8 Jul 2022 08:41:15 GMT
Received: from nam02-sn1-obe.outbound.protection.outlook.com
 (mail-sn1anam02lp2049.outbound.protection.outlook.com [104.47.57.49])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com with ESMTP id
 3h4ud6jdgg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 08 Jul 2022 08:41:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OCd9l8akRfTZcSDOShrx6IX3JXUxTL/LWI2IL3McuBYGP17y3k5GNlOwdNPVa32c7GDRIXXlY3U/b/Z2VNZh4BaBF3bm/oFMwAdjg84HYu7paL5NO+YW9a7vrGKC/apzuYxV9ogVHs4SvPExqBQC6R6hFEtmikbFydjRTi1Ka0+QNvCYh+J1XhqOeLhvkwDEaRfjkXlLV36AzxJ0cwBSkeWzHSW3DyLXR9IfodLqlmN1T30IW8cbCiNEYasUXTwiNZxRPa9p10nnMRxZDACLDi22JnhD4mXNeshTAAviNnzZ7Wn/5rWZPLjYgwrj4vWrPfBwXW10T4Fvfmy6MsjcJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e+ZHwjaPE3a2Tcj/P7rj5l9DG8YOAIkbDr0+fKmrqz0=;
 b=N1/AzhFRAHI0kdvns9MLDNJkrmt79CJ/eFI/Sq+Z5Nwy2kKIyIMnnchrA2dFlPAnaeMQKR4CF7El801vLVy0SyqT6WUDpCDWGbg41ws1yEYGSyBkdjEoigMOu9qkRhN0UjyqrW2zSgA6W+5Y1gkuWUdLpeg8IwzBz1NocJpQfBTU9suDGCXjoTOHWoh15Dkkpf7Gpg50V7varuU2rmlL1pniRY+gTM7bYmIbmktzFI+UlQBkrNwtcdv+F8WVgAaPtzBDeMuWbx/51HmFeFrZd7xrBl3izVD2TvBwKCYPFEVuCY7z+Miw7yqUW6AsPTum8z6yNxBeka7t47Hwq4kkTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e+ZHwjaPE3a2Tcj/P7rj5l9DG8YOAIkbDr0+fKmrqz0=;
 b=fW/V0sGTc1F2Ap0vVJLyk0WLoXYJNPjLGMeICaYeaqxEGfDRxqUeOs7hBKam6iQ73mIabwJDI7BvSSC3lOPertQUceDdxn9fTgQQs238nqqvIDYfCrtXUFFaG8Ck3HnlxRSSvj4PMDyUjrZ40R0BuTG0d+SNjhvwdDrqYjQqaYE=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by IA1PR10MB6123.namprd10.prod.outlook.com
 (2603:10b6:208:3a9::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.14; Fri, 8 Jul
 2022 08:41:12 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5020:9b82:5917:40b]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5020:9b82:5917:40b%6]) with mapi id 15.20.5417.016; Fri, 8 Jul 2022
 08:41:12 +0000
Date: Fri, 8 Jul 2022 11:40:58 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>
Message-ID: <Ysftmk147JdS1gVu@kili>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-ClientProxiedBy: ZR0P278CA0104.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:23::19) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7b6cdcad-bdc4-4f69-2b37-08da60bd9cd2
X-MS-TrafficTypeDiagnostic: IA1PR10MB6123:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Z5klmC7RP+xlD5YsIn0zHRHnDNVMVmINV6Jk2rn8b9KKF2ngQMFjI8htjphXwDJiyhw+4h3EwQkZ+JYfCIzgY55y7TzuFm8gHtLRNRoiutUSS4nfVz9AGvpGCrVeAlpHFJ5cSRf6wd3XHr4S+C+Z5n07tO0YZxbtyaGkW9y3nfqZ7AEuMf7MqSvUUlH05dCFpBqx9i2m7fEHFpqf8ovneOKdtFgNKwvr/ZGh5zISh/aPCvDf6fvqSLWLKSM0vsk4MrY0g3TxdVlIs7yLmYcgCNZ7pklXSyXJksAOrfT0sL2icLEGg8n1BMvceqKzGd7MxNbE9alq5cSDQYariNn6PheBuRskb1RBhT0A7iqyTqPkpXpEYZ++h0z+p/o1tDouznjj7dLvoOUyjDmY1vISkpUqSoNSV5wQhbEl5eYQvL6newd4TX8LzRkS6fpT4f7mEHicKBUvc+5cN/u0S6RJF/yXnVRP8VPQqBux7xxQOAWIi7FKvra4jf1O3S0vmtnoeDHxbqyiq2r2koE/IPv43WD/OmHPRqXdeXfw8vbtvayH+aZCcR7PVPXe+Dh0FUDgAgapKLZrbx9EMO558H/kqh8a+uAG3Y4A058Pdv+CAM6OqwBrIvcogcownTeFN2mjEnBzH8y2KiRcgtSXA3TZdqqSR7YF8mTD3sTTsYzvXKW+/6jXeU0PFdDsDLjb5UehWPgEVDa3SNYGvb5swkzmtwLWQ2EW9Al3wDMPKLn7M49i0qJ94UljNtFc8HQQt/nj+Drj2xmvmQswqoVewgB4TTibASkLaQzVZRQEZ3rtLbKkXkMGoc5kPWhcdC9t2EPs
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(396003)(39860400002)(346002)(366004)(136003)(376002)(478600001)(2906002)(5660300002)(6666004)(8936002)(52116002)(44832011)(33716001)(6506007)(7416002)(86362001)(26005)(6512007)(66556008)(54906003)(41300700001)(110136005)(316002)(38350700002)(8676002)(38100700002)(66476007)(6486002)(4326008)(83380400001)(9686003)(186003)(66946007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?s2ovINPfDX94jm/ofkCnlVLpksSjj828zbCRj7w3vfLg6aHHFpKwvS6qZ9T2?=
 =?us-ascii?Q?uzyc3vAjhJwBbtLavDjlkuziCrDnyqhj/AZPRKjihpNeZop8TfheMVhexp8l?=
 =?us-ascii?Q?fI0+07cBZRGLCwVNaNVqd1AfKzUGPs1DsRIzgRQ2w4kEKgtL1ul7jZDByZ9c?=
 =?us-ascii?Q?heocWpgL9tY4QWUU2BtmzyKpwEVpa4kfQA6SAxBm5C/sUOc9NurdGVRdB2Ff?=
 =?us-ascii?Q?2C5yaa+ASvieTCvrzb3Nf/vmAMqgrMdA+1fjdvYx4pQryPDxXnQfC8eWWtWi?=
 =?us-ascii?Q?ajeeClSJzsvAX9XMlYF/ujAbKby/Zr2AnVGzJ223Gqd2dfxYDf8hMyfmSc5E?=
 =?us-ascii?Q?btqXJs7Z4rOSDw83eSw38kjaeB7yFOy01iyZDOVK37N6OGnefFTJaBD/Xfcm?=
 =?us-ascii?Q?lRpeW0pyBThrslZ5q31EfNMyIA0LMyTF6xwch/B/t3Zyob3VVrbEw0CFL0HG?=
 =?us-ascii?Q?WDuvGjbg9GX3bZftpjnhnUefmHNfSZVH4QxENGkiV4C8o3i7/tS4ExwPBMRC?=
 =?us-ascii?Q?X9Me08qwNsTWt3Tj7Rq4qBxGFaJ/pSuFMSBtByaZkxwFVNNagwnlYMOEKJ9H?=
 =?us-ascii?Q?9ke6uKk61wrUsq5YOXxm2FJjys+vvZ5AE8rlVftsN/M/UJCRCTk5eErSQtvH?=
 =?us-ascii?Q?hqpiBiV75S7ajNeFL3wfnQcVPiILXD+2MAKHg3vY16HNXr2eE7wrQgRI/Sx5?=
 =?us-ascii?Q?wMEXWET06Rr5BGEVZ2lmFZHU6hh2TEm0DmJj35hWCaMkCRGE0fXE3iW5iH/h?=
 =?us-ascii?Q?RXYTN0/tTXd7ZJc4y5GCPLOJO2Ln/gEmDUb/IywNvy83yS2R5ZywLFim1Xud?=
 =?us-ascii?Q?wRZfv5mX3vwBqUZ8gBUO6OcW97koM9nsWtl+k1wUN600jQVOonhR+V6JmqXI?=
 =?us-ascii?Q?hYo34ky4E2EwXgOpPpdgwEcsKoF5h8cTU5Cn86tSKdL6g7NET3s3fZPhoDPn?=
 =?us-ascii?Q?xz12Y+caXEovC7uSu/9ddD7jvBpCTLY9WbwvdcDBfi5pBBYsQ1S5O+S1iUX0?=
 =?us-ascii?Q?kVld8VQy5Ibn9vysjpbOdwn5hwu2nxuWfJ1wuU3TXKVzqDay0GSJZLTS59fo?=
 =?us-ascii?Q?HrBtflemaFyIeNeMApzvw3VHY/4ftD1lqgwO382PfzgdXx4ARdtHQpyHmSh9?=
 =?us-ascii?Q?0BnkgAWaMqSHbA3iEplMxjt9ybooWp8EPnG4ihvq856iZKDbm02kEl/bM/x/?=
 =?us-ascii?Q?JepiV9Y8gp5xYhyE9IFLPlXRiS3UQPxX3BX4GOrSY5zJu1SdE69DwZK/XtMD?=
 =?us-ascii?Q?czNDdZ2MxoDm9BOY0ddzbZvc7uotmS0ytBSBDyAeanlYphKKBmZF4CFtN4GS?=
 =?us-ascii?Q?Oh7ip70EfBFtKBHL/AVnZwiqeDOHiA+p/Stxc3foRud74q+XUvicIhPOZYpl?=
 =?us-ascii?Q?sTwt9rVrYn+pjhEeKrlDI5hrPorEpZfbMnYid432vLhV4zDYebmovP+oDGDG?=
 =?us-ascii?Q?M/d2S+QIIW25lC9Wh//txyJ3v4BL1WIgx0Ocz98cvjKTKuac6i2Kpwq0/xKP?=
 =?us-ascii?Q?Va2WW8Smm1p+Z2qNLSJaqc+Rln0hXxT1mswZi50jeDzIA1klTrTSu52ForF9?=
 =?us-ascii?Q?axPvxhytLyHJeAyeDfVmRp/uUcOv8ZLRCef43kuxib0GYbz3enf/w05f8oxD?=
 =?us-ascii?Q?ng=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b6cdcad-bdc4-4f69-2b37-08da60bd9cd2
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2022 08:41:12.3857 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L+dNtprJDvlhySESmtxBCr9KuCFT9O8TG37wlSRAUd6B28doRNKrtTb5/7bAF5//HZuJeGuOxSHCd5F8/9OHhiEQoPlX/8iJM5k5dvMV6tM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6123
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.517, 18.0.883
 definitions=2022-07-08_06:2022-06-28,
 2022-07-08 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 suspectscore=0 spamscore=0
 mlxlogscore=999 phishscore=0 malwarescore=0 mlxscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2206140000
 definitions=main-2207080032
X-Proofpoint-ORIG-GUID: OLnmYl50SkF6pT_ruwl7HJhfj9xTbt2A
X-Proofpoint-GUID: OLnmYl50SkF6pT_ruwl7HJhfj9xTbt2A
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: fix a couple IS_ERR() vs
 NULL tests
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: =?utf-8?Q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 kernel-janitors@vger.kernel.org, Matthew Auld <matthew.auld@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The shmem_pin_map() function doesn't return error pointers, it returns
NULL.

Fixes: a0d3fdb628b8 ("drm/i915/gt: Split logical ring contexts from execlist submission"
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 8b2c11dbe354..1109088fe8f6 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -176,8 +176,8 @@ static int live_lrc_layout(void *arg)
 			continue;
 
 		hw = shmem_pin_map(engine->default_state);
-		if (IS_ERR(hw)) {
-			err = PTR_ERR(hw);
+		if (!hw) {
+			err = -ENOMEM;
 			break;
 		}
 		hw += LRC_STATE_OFFSET / sizeof(*hw);
@@ -365,8 +365,8 @@ static int live_lrc_fixed(void *arg)
 			continue;
 
 		hw = shmem_pin_map(engine->default_state);
-		if (IS_ERR(hw)) {
-			err = PTR_ERR(hw);
+		if (!hw) {
+			err = -ENOMEM;
 			break;
 		}
 		hw += LRC_STATE_OFFSET / sizeof(*hw);
-- 
2.35.1

