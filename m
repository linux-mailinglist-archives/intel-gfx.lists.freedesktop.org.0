Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E493D71AB
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 11:03:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1387D6E828;
	Tue, 27 Jul 2021 09:03:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA4A06E828
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 09:03:22 +0000 (UTC)
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 16R90lmf009239; Tue, 27 Jul 2021 09:03:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=eeDbmwMxFLQ06pMfLq/YxyJkRhzA653LbySCamN/N7c=;
 b=S5PIyhbL4ELVzrEQmR8MCsZ9zkHbD7MX6DEdF5oH6iw6u+lkkv/kkBiXpFft/Z/EJQJO
 0mv7VvwNaHv/Y+yFSj2gUxRAolcEpzUMQfa2GMLH6NET96TYFRM/0P+KGrhPzsIex/OM
 E/mMyImmR9+/glv0I3nbaZMpBHoceit+ob//UrSjFZfceNbrk+/AGiOkUDh2IfCLVtlh
 2Fyfl6bXpwmNOhv08ydNQUc/VALLTnyvF/6E8+ahHh411ZMGrzw0fK6JJcf1OplvkNB/
 wHXOIZAHv1jKbKZ6WSuSor6nlmKFwiDGBiDGlYpBzP23yv2eRHJghnrlojkePRuinzVL /w== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2020-01-29;
 bh=eeDbmwMxFLQ06pMfLq/YxyJkRhzA653LbySCamN/N7c=;
 b=fAQTl0Cxzbx/niPthLNB7rzLadDKM5QIhwCGoWWoLOrV4YOP+KRQSnhc/U3ES3ZNHW5g
 o1/0xxOo3+YTklPvM3LrUTnzHWoOpQJr/InRmkWLzd+BRBHe/tNnNixFzGn61aCP/pO5
 wqzcO83Qj7siB/GGbYIq0f4SIcbBdtUB3AXvaphHRKZDVrsnmghNNV4Fs8hSbAmDEmEl
 ciAOG8Bx07hueg/hhGxpwCsfVAVXjpXoZL+RzxU7CiUSZG2BJq+CAD48fw8VCCOfQAyu
 f9nifumwHAnHLavuEfJqQohq0/qHkXgr5h84Ab7dv51E/PJk+vwVHzlp3/RChtd6xmXA iQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by mx0b-00069f02.pphosted.com with ESMTP id 3a234n17fd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Jul 2021 09:03:16 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 16R90r2x106915;
 Tue, 27 Jul 2021 09:03:15 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2177.outbound.protection.outlook.com [104.47.59.177])
 by userp3030.oracle.com with ESMTP id 3a2352kjf1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Jul 2021 09:03:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oRpP0StazztkiL/JeLoEf36FKx9zE4hbynXLvRKHIEM0IflH8QRTRk0NeeJgc3UZXe4/Lubh8S7AaawOYBRUZG7U0H6JnC5TzkVxZfihW/Gf/uamRFQgkbFMGWUKlaZziSkxBNaOJAoJIdDzBpWxKWTqPbFwobZ17uKPS6YqJWjL/HubZ1gMSYBqzPN4svN3yVd3f0FuyPbXWuDrjzbQ5wCcM0BdyFqpUhFw1hXJloB9uJkvhq3mA65iSqT/J9dycV0hCuNN83KPgXtL+xodKRk5MJjd+naKb019ybYRYNIhKQZ8nutWmJIU/xHClrEGjKjZuyhXXoPDGsS7i/9zYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eeDbmwMxFLQ06pMfLq/YxyJkRhzA653LbySCamN/N7c=;
 b=KT1dEs/g1hIqgfwqT7Y7rm6ixE1iu5VEiIc+phfX5UXNPQF4spEpbLehZVGHdoX0sgCVi68dnMgiL20kco0L7fJ8FusfPYKwKCyGg0v+K7+34uo4LQEIaGfYR2eNyFBsCh5DaA9Lr2rEB6Y4Ikfk8EJ6jzgp66P29GkrxCyD50ktXfZLH12Rjfa6CUPk04gSETc86An84PIC0DOEYOhkpHpOSM5SxKty/fXNSXS/bUHkMbIN4ivm/VHpgTvWvHRZs6moVivG1xMKT+fyXqujuMyKLFbcpcsBPk7342LXqmPE5pumUmoibvG2XE5bppTuvFdW2Xz0lW89Ge006s8p6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eeDbmwMxFLQ06pMfLq/YxyJkRhzA653LbySCamN/N7c=;
 b=w2wFcUCgvNkYw/NoItZVJllE34knoRhHIVZRL3oya0UMypEfXibFBXBG7PrObxgOaz07uUxj8/0LofbSU39GS4gwyvhSXljR6sX2zQCPiVS1RJm4rfKgBEQwEPX3km0ukL+rtw03ttT8WBRH8tlENTAl+yC/DeqADN5C1VB4m34=
Authentication-Results: chris-wilson.co.uk; dkim=none (message not signed)
 header.d=none;chris-wilson.co.uk; dmarc=none action=none
 header.from=oracle.com;
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by CO6PR10MB5555.namprd10.prod.outlook.com
 (2603:10b6:303:142::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.17; Tue, 27 Jul
 2021 09:03:13 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268%7]) with mapi id 15.20.4352.031; Tue, 27 Jul 2021
 09:03:13 +0000
Date: Tue, 27 Jul 2021 12:03:04 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: chris@chris-wilson.co.uk
Message-ID: <20210727090304.GA23612@kili>
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: ZR0P278CA0148.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:41::23) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from kili (102.222.70.252) by ZR0P278CA0148.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:41::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18 via Frontend
 Transport; Tue, 27 Jul 2021 09:03:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1522f6fb-9600-4d9d-d7ce-08d950dd5d4b
X-MS-TrafficTypeDiagnostic: CO6PR10MB5555:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CO6PR10MB5555A9C8FAA0AD65253441CF8EE99@CO6PR10MB5555.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:632;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PIOmXwQ/KyCvaLI4QnDWGvk+L4uJH+GZ0gCBH+ROFtx4HC9oFod1utnoY5SyiayVGq8remQS3lUZ64BQoVNLl7M8ymzzXcepi8XNQfSg3iBoQNjbQ0+Mspya+jKoU+CfqMR1wLEEj0qFf+wv9E9tG/Aa1C0yxj5yCelThwTQDWR1t7dhqYbTCdZjknGn7ZbTi57hdqOOCdynqREIV49pUrt+czw12UKqCM+mBQtdf0lv5FGl69zZ2C+KBeoUWKGEndhhx93zcjwA66K5bjHe5iIf4wrjvvQrN1fTM+enkPQPfRIkCVya+R7Inyl0ZeEIeE9ep1B0koG9WEmaAsQKGJJ5xbusY2Q23V4FZFO076GX0MtnbyrfIrZ2KGtVbYlTCKPdxh5vS/VjTDxPJNqfp5upvRou98xepZkgVZVxnWcyTSVT8m2YbFUrSL3tW9NCR0E6Ud4/1/rDSCbEuQ61I0BnobTx4+HxSnKo0s9TzkFExLbPuNxUop/xlLA2TZuBPomK53tOIM5BDZgK5mUGB01eIpTbRannnoihv9okMcSILygxGVPHVMa8MG1p+3TCrj6MLOPAMzx5SXtSfsOQOIU5+KpjID7AiZrjVDFNL5KgoMkDytoGzhqmHV2KuNhu6tKZ6bNSyqbBdUp+1G8NOimkW1SNm3AqivFYzC/EBpJ/5GKIQZ+vroCNhyRIuxxbw4Ye4x7Q7VXxB9ouydfDyw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(186003)(66556008)(66946007)(66476007)(26005)(508600001)(52116002)(5660300002)(9686003)(55016002)(8676002)(2906002)(38100700002)(83380400001)(33716001)(8936002)(38350700002)(86362001)(316002)(956004)(6916009)(9576002)(33656002)(6496006)(6666004)(4326008)(44832011)(1076003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BQAdkGVxwE8ev9LZ2SagZlv6G/1ooU6LADToPkbTegO4affKFn9jw3PywuAe?=
 =?us-ascii?Q?QIwH/0R73AJL9B9lzJQMvVckX5aZRwJq8RH8cx0s+dSjjUtMcCGZDsw+IP09?=
 =?us-ascii?Q?y78zPx7C3mYPBDNrHR8LI/yYH39GGg6jz6LPpOlN+7h9c7WRRnu1F1NgD6ia?=
 =?us-ascii?Q?GU1IFckHlUibpyq9NbyhZ8b/RwtTOmT84Ok85S+mvUTYnStjYYz7Th/KL43o?=
 =?us-ascii?Q?jK0xdkk2Lpxc83LK1tdGNmEUKj9m+DDoN9j6XUBrRYOF3KPnxV3h9uQAQmTc?=
 =?us-ascii?Q?sC3vF9IlcxC8s/lInVZIwR3sBlzYTM97N8x4xov1JVndGXzlECOsOEJyQZ+W?=
 =?us-ascii?Q?vYmN3gF0rQ9AQ7sOioVX3h1iIlzzbEvu6NMhf1EZqJ3hYKcuoafLe4/TJ/tf?=
 =?us-ascii?Q?sF54NE/e10857XEXzvjhCf0mnxYInA4aO7EH0EW13nx5V+taaQD5lLiTxH5/?=
 =?us-ascii?Q?9JSyvSKKiKfZeS8VSrP5BTlLtkDacIVHAG5jQLMIn9vUzgDNZzEoWcyN5I5E?=
 =?us-ascii?Q?YitTLZWG8TTH6irDl81lpBfqaoPnIcpsaon/NVhfBVnZwt5J9cdayf2I5ZKR?=
 =?us-ascii?Q?DbKtFwdsnW6HQCsG+HoYFmIa1rk1IP/+dm0wdRtNXsPw09kI3cMsZ9XEtIUa?=
 =?us-ascii?Q?RUPJSxd5BNWPBwaU+FS/txV1Sd2t0LgnmAlOX3r8/3HwIjbKFHhXNNkoU+ft?=
 =?us-ascii?Q?KhcO/x/jK84ojfKSlcSO1wulaHRxCudl9ku7eVTL3VSEQYLO96ws98nH5MiP?=
 =?us-ascii?Q?RpirIXmVMZU89httd2/vwNIPw/bwhTiCTSkZS7Z7byRoPp6XfThRT/UjgGLg?=
 =?us-ascii?Q?4pUfdMMSpABJ4VtE2Xd3NQdTRGBUbhK3/7rwUrn/XJjephLKSqOgF1bVs+Xj?=
 =?us-ascii?Q?wV4wGqiwafVYj3i0uged5Yp3HoS8gTjx15DJvnqsThuH/z+9aM1AwSuPF1O6?=
 =?us-ascii?Q?cgolNySZt3O3CkgX4+AMlNW+tTe0LCxAA/c/gyKRTb0z4j6HU3efnP8A9E/N?=
 =?us-ascii?Q?c8teud4GVB21uqRH5j9qgEND0JHPjTzq0XNYnYNk+GTBKWkiOtrUOIjOyU0V?=
 =?us-ascii?Q?pVWI9nuDDeCK3VKyFjqEDBo5BCqRJsEWvxtjXvWsK6hmq/Pme3M/nER1HOoT?=
 =?us-ascii?Q?RnJ9hC09w4AcID7GB9ig1IWSnd0C3WH2JhwK7BUdtsaqx787p22OgzCVnQlc?=
 =?us-ascii?Q?lMmcdv2RMHD/2ooJgPlMErOfybGmE4eMU1Z61S2GQOXdC+s90Ej0JxHRd51a?=
 =?us-ascii?Q?PQIFSlUBOJrco9E1BPOcLpJmY0iC5HYJBpEEcr7PzeXv0sVjWXHdAru8MpI3?=
 =?us-ascii?Q?rJmK+LpK1pN6zeuOFYa7XP9T?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1522f6fb-9600-4d9d-d7ce-08d950dd5d4b
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2021 09:03:13.5750 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1e2h8hDqa2edTY2sDFFOZ3Hp0tc4pkYWWgCQMq3L5cmmu5lNhY+zc/jiyOiVy40VPOgANQuHzOueV5wJu5frK1nv5R3e9iHSpu4JJBcRPGc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR10MB5555
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10057
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0
 suspectscore=0 phishscore=0 mlxscore=0 bulkscore=0 mlxlogscore=766
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2107270052
X-Proofpoint-ORIG-GUID: _tbWqe8KE7-7qSQfHqXXfZXjjt3LhIhG
X-Proofpoint-GUID: _tbWqe8KE7-7qSQfHqXXfZXjjt3LhIhG
Subject: [Intel-gfx] [bug report] drm/i915/gt: Replace direct submit with
 direct call to tasklet
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Chris Wilson,

The patch 16f2941ad307: "drm/i915/gt: Replace direct submit with
direct call to tasklet" from Dec 24, 2020, leads to the following
static checker warning:

	kernel/softirq.c:887 tasklet_unlock_wait()
	warn: sleeping in atomic context

drivers/gpu/drm/i915/gt/selftest_lrc.c
  1608  static void garbage_reset(struct intel_engine_cs *engine,
  1609                            struct i915_request *rq)
  1610  {
  1611          const unsigned int bit = I915_RESET_ENGINE + engine->id;
  1612          unsigned long *lock = &engine->gt->reset.flags;
  1613  
  1614          local_bh_disable();
                ^^^^^^^^^^^^^^^^^^
This bumps the preempt_count.

  1615          if (!test_and_set_bit(bit, lock)) {
  1616                  tasklet_disable(&engine->execlists.tasklet);
                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
tasklet_disable calls tasklet_unlock_wait() which can sleep.

  1617  
  1618                  if (!rq->fence.error)
  1619                          __intel_engine_reset_bh(engine, NULL);
  1620  
  1621                  tasklet_enable(&engine->execlists.tasklet);
  1622                  clear_and_wake_up_bit(bit, lock);
  1623          }
  1624          local_bh_enable();
  1625  }

regards,
dan carpenter
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
