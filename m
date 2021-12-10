Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E274701B6
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 14:35:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7389210E3D9;
	Fri, 10 Dec 2021 13:35:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71FCB10E3D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 13:35:51 +0000 (UTC)
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1BACxdkT031667; 
 Fri, 10 Dec 2021 13:35:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=3oVQVcU/9KODlNWsUxuIA5MGhHgnidix37nk/vZVp/A=;
 b=wm858iYg73scY71Vnrbsoj6uAZQIhmYOKIlsi91Iv685Zxmn+iehYi6vzAXlnFE+BmIa
 XdPDkj3BOMTysIcJgcHoEKVw1/xDgEZOIxbkG+HpZhWJAB09voo1M9svf+x1eHhCvI7Q
 8cT4gjHsrz0HCE86bHVolixRYrdpsVDxT91rj5zBLixi3QodIh8C2fj1w4L8HfuwyIFd
 06vPFcRkTQPNPXXH8iW9saPD/CN/NZ/49wG0zJ+5AYOa2FaaK68dbjJ+lq2gpNYcBSaa
 dqcrC3dYmKByELE3dpPnuoDiLqg/OMdhWydXnfi05QfbBbpZ/wGhivCRMz7ORsXG725Q kg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by mx0b-00069f02.pphosted.com with ESMTP id 3ctse1p35g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 10 Dec 2021 13:35:45 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 1BADVKpf147429;
 Fri, 10 Dec 2021 13:35:44 GMT
Received: from nam04-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam08lp2172.outbound.protection.outlook.com [104.47.73.172])
 by userp3030.oracle.com with ESMTP id 3cqwf41vs3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 10 Dec 2021 13:35:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O0vliRsFRVVAsdexqDTtXukQNbBPiLhWESlyBFEV2G6aau7SzzFD40eY5a+rMRJS5OiXpE76eqCK44fLgjiL5gP95dZezkZCT4gBNpSVgyhh+cBlIBmqOTsXEOmID7HJF+qfzyIBVhiB+Oh+bcFRJB8w5ibLzIDN/lgsGweWQO1c+FAhD9mhwH0mU7A5BrraFE3qGtRKs1Vm9mpwcb+F6yAoeUyEya7zYkkc9T3hcG8AfYJesgHmOYua7xekosWvNNVYKZ47nqNHzirccZ+LDng9ZCDYEPX19fkKYtxNZYqvr1W11pwGf1rZmC1vLUaFc91AjssO/LF7FMozWAFFxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3oVQVcU/9KODlNWsUxuIA5MGhHgnidix37nk/vZVp/A=;
 b=PC4+8VYPCTwekVuM1A2PfHuop0Q6W+0hEmVZ8NwPZ0/2IUylhUBKjRMciKVqjrpII/ijthODMs9Nu9L7cIXqmRUuHZjkgkYR+PmVLWiCnJ9j2W5TF+uWh/iUskyzz/Urk9QqmOkc1BgSsD3sVyERRp/vn0hDqcmBw2OYRCyHqGlB1o1SmW7/J+gcC4PfKB/cEBQNjho7NsoNLSza1l1QBs73dlKJTbVlDaXkVQASHkwe5OS02JNKGnWoSY0KW6MFQAC0FA1z3vojoGO4FQojUGtp/FGgd/ISzSqbzawTeI4W3RiR/Iaaf/u/r1RpVRsqEXMYeNQtYEF/WLDka+chzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3oVQVcU/9KODlNWsUxuIA5MGhHgnidix37nk/vZVp/A=;
 b=yh4rysWfr7YbqlAuYdDGV0V+StfPs4P8iu56UtmpPXFREJpQJIi4CwyvqwHxoLw2yFMKsvJJ9XYsioHCxxw5SCp5IWHhd+T/k7AwMhUlM5jWjLLHMXxaKQFlXS4372PervMn1ZcKRQl4/wzCtpWiZ1Z874t+gnDokXKRKBhzZkg=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MW4PR10MB5864.namprd10.prod.outlook.com
 (2603:10b6:303:18f::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.21; Fri, 10 Dec
 2021 13:35:40 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::7194:c377:36cc:d9f0]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::7194:c377:36cc:d9f0%6]) with mapi id 15.20.4755.026; Fri, 10 Dec 2021
 13:35:40 +0000
Date: Fri, 10 Dec 2021 16:35:20 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: chris@chris-wilson.co.uk
Message-ID: <20211210133520.GA14557@kili>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: JN2P275CA0043.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:2::31)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kili (102.222.70.114) by JN2P275CA0043.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:0:2::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.17 via Frontend
 Transport; Fri, 10 Dec 2021 13:35:36 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f835a4d0-7a09-4495-5cc0-08d9bbe1f4fc
X-MS-TrafficTypeDiagnostic: MW4PR10MB5864:EE_
X-Microsoft-Antispam-PRVS: <MW4PR10MB58647C8B8A1219ADF5CDF3368E719@MW4PR10MB5864.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:454;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X7QyOkGyfQg5qdIv62rNt6Gpc7Qr3GcpO9Qdxh+YZb1h+WeJrXz+CdDDteObq/8H9tRjXjMzqdRWCfmpIu0lvjXilwCVAYZFgWlh838uM6MBwi9a/kfJr1IhJqqoWkXLeJhHHkOt6lOeDLXWGDgo8QWKk7qf2p8y4TP3QpiE05jTxhqHC75hzG52c85+gdEBeZ5BN94/txB3ct4epcKqRPoTOauf2YpaHhxpaJ5mRnNFb/0fOVWIw+rBmVJQjmFWckboVKe9c3/JxCrcga/B5UrKyNU+TmXpcsdxefqhKYVyltJp6cIpbizs2oi5I50cDyj5H8WHPXKgYUaVbJtpD7CMMjry496nQygzFV8R+1czkgGhEd77g9JavJlTt1TaF0p0qEhGcSi/HVhah24+wVFaz5jjbwENEY2klIL2PNXX3iLlEb2gayM7DH1uKVi5CfJVn4TCNTfbl6UbAM6dtLAdMvkFa1Y7zx5QD/M+ri4YNpzGpt1RfZL+dCPsFRq++frJ4EGhvbwhRhCr4NNZQwTtiuh79qF8SyGo3tefsGGxULT2sQJK4FANWkHNHpsF+M6VL6bm7CGZN80ErbPPqmkUvAfsWi6jqnGKUWbqCDtOqEztqXwraWfeEH2kTmpwEilE6HVon3SiQWcdOLimEBa76nFDEJjvvYigkmi+eWa2EtMrlpvH8HyfHyybIXLz08voXT8GTI+m9PJ1TaIZFg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(52116002)(44832011)(66476007)(66556008)(55016003)(316002)(38100700002)(6496006)(83380400001)(186003)(33656002)(9686003)(8676002)(66946007)(5660300002)(956004)(6916009)(1076003)(9576002)(2906002)(508600001)(33716001)(4326008)(8936002)(6666004)(26005)(86362001)(38350700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jstsanYWdtXBsrpx01ogpaQd7c/VKHLolOiTJUSi6coQXSloDu7rPhUZk84A?=
 =?us-ascii?Q?vjc8T5OkExdnHQwS/gHQjks7GzzdEtDtWn74jndYwiLMsDTu59HPD243WqJw?=
 =?us-ascii?Q?MmzbBFsAAj72xRGiqGSaYjhf+01CX+OXhbSFh8Gdy3lyGF5lmeUSSLUPBeWD?=
 =?us-ascii?Q?E5T5GV0C9B1bNuKJeo3rrYlBfUPWN/nVX2Ls9ch2ZgrbIAbP4XwGAXknP8sL?=
 =?us-ascii?Q?ydDWjVIbPM18IsMPFm+Tb0/Yhjrq/oGTkBqfVKbXq409/D4viGMz9oYfHUYy?=
 =?us-ascii?Q?5AyTBR6fT///2sa5dQrNKf8DzikN5yhUP1Tfir+wntaRGtGlNg//xFStKOdZ?=
 =?us-ascii?Q?hZlt24AinLos9gOJvvPohT4Kp4IPRIPofVL4lB8nUa/nIPXA69ohkE8g7CHx?=
 =?us-ascii?Q?Bgrw8UmkpOELPNrQjUA7g7n0naJ25TuqhglC68r1njoBHCn3geQpvj3TpPqQ?=
 =?us-ascii?Q?3UHr5PKuMb7CmmEY2Wsipw3ckkx+a3IZlldfw9c08tGfHpMCau3ETDBfd/3t?=
 =?us-ascii?Q?e/ReUWPPkb88qthi1VwsCep4dK9dy9L4Gh5pgCJfSa73Sr0Vn4eguyWbaWIR?=
 =?us-ascii?Q?AdTCpBpBaeZf4ldd2+ojrtEky19b6rc1YQoiFeBlYAngq7/R4dN9jTj4Yiwb?=
 =?us-ascii?Q?KrRjUwgZC1OJzJwEV5WmA7Mci1A7hGdso/V4thNoA0BVblVFUyr+UKBvTePR?=
 =?us-ascii?Q?NoiawDBHSZ+HWiL9Kq8k3+535Uzz1y4HOKVlWRVgWvlZRN6Efrf2B906Yhg4?=
 =?us-ascii?Q?MeUVI3y4o6iJhF2bv4lYci23+N/DCV8osec5VFGt2BOsWx0TLRT20G3JuSUp?=
 =?us-ascii?Q?gkutk9RTrKoT4vx2FES0TIoI2n2lTc7YS+rib7eX90/nm+O+3JkotpFR3TAV?=
 =?us-ascii?Q?HPj7+0zbFYZ/TSFUkHqfK2dsAUrE3PDf8uND/WLJsg0SzOy58S/8xeE3mr06?=
 =?us-ascii?Q?cWkUQdhRkHec+kSEOAOR1B/1zOwvXDvEQqMcAcfqOh9XJTV7Yjvtaop97g2P?=
 =?us-ascii?Q?WSHxkfRgcn3h15qiK0c9/DXlMGmsq+IhC8mIJe3YgYDRC7PURj14H19uGbP6?=
 =?us-ascii?Q?O8O374xNCCQRWgvaCe2rFm2Q02LaVb1MBmZ8lFD6AO22X3dXCAilbCdaqf1m?=
 =?us-ascii?Q?6Q5DHSFx5xG5sjFqLGCYsMDOyZCPM/typSq0OpvUyi7Y0vzcEYQfDMtM6C2t?=
 =?us-ascii?Q?yQkFW0N5FYBNhKch42RsRonvzqlQeSzUjU/DxCGgP8GC5tUjwhExX+xi2lkO?=
 =?us-ascii?Q?1E6+CMp2gh+lDRh9DYWU7zGjXb6Xew+cIJCY+64roRx5n151M+SbqSw4hy32?=
 =?us-ascii?Q?jGqi6SKp03KA2iw4lGwhT7xyqArodUND6rSYgGrA3qcvpb9NryIVnHgv+Eml?=
 =?us-ascii?Q?8LZ3iYs3Ghwo/wti+HoFdS7TlBUJMO2TO9eURTnomtoVr1vMOrW9YlkiRDf0?=
 =?us-ascii?Q?AmlUAQ8HiyJBBKZjdCzBSRZMBfP7WF1XsiZfnRJ1DX3yRZv00ucVH+4ub5fk?=
 =?us-ascii?Q?khQs9tOajsgd9jRfR+O34F+jcVpGbIbmZd/GGguKQoVMburU6N9yOH6gnmO7?=
 =?us-ascii?Q?oTBRaSmd8NnbYrNW6yrJxSntk2AsExbmufLqUCiKWOiPB8qFSB1jb4++WS5j?=
 =?us-ascii?Q?D/0C14NFn+EIXlbZ/4Fyesg8OLrF+rplzGdrR4qdmTmcESk8e0pJ/VtXaR1t?=
 =?us-ascii?Q?PnQ0iPsrAgArh7CgF7XkE4aa8ac=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f835a4d0-7a09-4495-5cc0-08d9bbe1f4fc
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2021 13:35:40.3400 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QcC9TM0H+yLd4G7ZTH2BXOjZnNcPCttcWOlqC581VwnuvB0V5+9fFzGSNs7e8Hw4JiD9f92HGIp4KQHgStNddmLaPYYA9GdJ1ivSQv2Sxyc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR10MB5864
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10193
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 suspectscore=0
 adultscore=0 mlxlogscore=649 bulkscore=0 malwarescore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2112100077
X-Proofpoint-GUID: F20YUcaoxp8MyNAgWoUAYCBep9J0dZbA
X-Proofpoint-ORIG-GUID: F20YUcaoxp8MyNAgWoUAYCBep9J0dZbA
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Chris Wilson,

The patch 16f2941ad307: "drm/i915/gt: Replace direct submit with
direct call to tasklet" from Dec 24, 2020, leads to the following
Smatch static checker warning:

	drivers/gpu/drm/i915/gt/selftest_lrc.c:1616 garbage_reset()
	warn: sleeping in atomic context

drivers/gpu/drm/i915/gt/selftest_lrc.c
    1608 static void garbage_reset(struct intel_engine_cs *engine,
    1609                           struct i915_request *rq)
    1610 {
    1611         const unsigned int bit = I915_RESET_ENGINE + engine->id;
    1612         unsigned long *lock = &engine->gt->reset.flags;
    1613 
    1614         local_bh_disable();
                 ^^^^^^^^^^^^^^^^^^
Disables preempt

    1615         if (!test_and_set_bit(bit, lock)) {
--> 1616                 tasklet_disable(&engine->sched_engine->tasklet);
                         ^^^^^^^^^^^^^^^
This calls tasklet_unlock_wait() which is a sleeping function

    1617 
    1618                 if (!rq->fence.error)
    1619                         __intel_engine_reset_bh(engine, NULL);
    1620 
    1621                 tasklet_enable(&engine->sched_engine->tasklet);
    1622                 clear_and_wake_up_bit(bit, lock);
    1623         }
    1624         local_bh_enable();
    1625 }

regards,
dan carpenter
