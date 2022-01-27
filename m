Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9981449DCF6
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 09:52:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B9A210E53F;
	Thu, 27 Jan 2022 08:52:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BD3D10E224
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 08:52:43 +0000 (UTC)
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 20R6ffN1022462; 
 Thu, 27 Jan 2022 08:51:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=rj2mmsoQQ8b6L/xwPrXTgcx+SWFdfJxDNlMVumlF3f4=;
 b=vDJcZkFSGA8D7gjRNbuihiBr9v0GKQ4a3lS8ce2HuHEatoVn4XiQcF67UiUOWXcAf+Lz
 ME6LflxyEiAdB/OM5qJ1sYR2hP+lWQLffz3neWH59CucCsbPitiBAcaBwGnrZS9/kjA6
 aK6G+WJvdCdK29/IrDXfUQYA/ycLXSBIW/RsvPM2eGmV7PX9xHlf593a1DNLraCMBUzv
 9cX1f8nPmNYVmOuF5JCd4BJKfosElwO4t8lL9wya3d/7qwShyiAOsHBpMopohHxhbOdn
 vsGcTHYSjTprbgqtWgVqtnlH/kK9caXVLY2C2zDJgmNV16+ZC+2J4hT6lvagh0cNyO6W jA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by mx0b-00069f02.pphosted.com with ESMTP id 3dsxvfrb8c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 27 Jan 2022 08:51:40 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 20R8pNmW126703;
 Thu, 27 Jan 2022 08:51:39 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2044.outbound.protection.outlook.com [104.47.66.44])
 by aserp3030.oracle.com with ESMTP id 3dr7yk9p9a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 27 Jan 2022 08:51:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UbYUsjLfzMmbAqlXi7DTgXD5mgmCNt/YZZQop0+2JvqNxCy0BiPqtzifsd5VTaMuYeq0ip9Tvf6jOVdjhfl5dfFox991URJu310vFadFCnmf6IHAVDGa4ERI5wC1YH4nlBMwxHd+Efw/OiaoILGZLiNwecAsmsErxqJjfW82MpodynWUPeJ2Jrk16/MPHL0ISTsx5ioBNix8G2OmdLLoadlwwDkiYimBLaU94rK3sBYoPKdbsAeaxZ/I5XwxhNkQas/stD39DPv47qtIptC6zvTIMBy6BA1GfK4qZavi/OxGvB2CSWEqZJtZ+adNwtwpExch0JzvhwzCU7a0fKg1kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rj2mmsoQQ8b6L/xwPrXTgcx+SWFdfJxDNlMVumlF3f4=;
 b=Qo9+nT+klz7boBoZA9dAGSKOr5J05vmNUtVgeokW18srF7DPqtmXPVqtIQ7/xtZXoBqQTeZd6cyhBQ7lniMme3Jggp6RYE+NX8D2VzZWI9GwTJBCqvlG59u4gC6+lj1vGDuhy6ZIkaFByABREXQIfTOTQeHPCq98E0ir1akpukrhW9A/oPvyvJunlY4RF4Ez6PgIlRiQCSMmFkUs1HutHyOLUMDZlzTkdcQg7nHPIjCjTtDOCtV1RM9yeMEix4+YOMcsnK55UMtfUXZSfRXfrUH0pQCR8iTQcVKD0CnihM2/Zvn2OYz0Va7v5z2o0SIJZfSSeK5vZZldbZQYKs0T2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rj2mmsoQQ8b6L/xwPrXTgcx+SWFdfJxDNlMVumlF3f4=;
 b=RsATRJn7oLuhR4NOhrBaYS2QW+sTx+ooXIM8qsGByB32m2frLy1nzKB8/HqxVwCB5eCpXQuC5aLX7ERgUUmell2/JJwmASAxkzYGiaigJJ0Ib5aK0yQ0RJqsnWxs7wMO55EgBms1YVxH9SG3+sMC8LZE9CuuIhYgBPDLKo9Zrvo=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by BY5PR10MB3889.namprd10.prod.outlook.com
 (2603:10b6:a03:1b1::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.12; Thu, 27 Jan
 2022 08:51:37 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::c13b:5812:a403:6d96]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::c13b:5812:a403:6d96%6]) with mapi id 15.20.4909.019; Thu, 27 Jan 2022
 08:51:37 +0000
Date: Thu, 27 Jan 2022 11:51:15 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <20220127085115.GD25644@kili>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: JN2P275CA0006.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:3::18)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ea44e89f-e777-4974-ffaa-08d9e1723a25
X-MS-TrafficTypeDiagnostic: BY5PR10MB3889:EE_
X-Microsoft-Antispam-PRVS: <BY5PR10MB388967A9C5F613EEB10C9FE48E219@BY5PR10MB3889.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2276;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4AAp9Bxrc5o2o3vop9Jp3u2H/OylGhN8kfQRxYCClUWBqIvvQuafbtV2T3GoMTApzFxKu8K1Up0Ell2iViuBXzCWKIFfMgkaXlnMcTyUOt1NrhM0MRukWzv2RLXbl3Wom8Hga5TJ9Bf3LzShkHUWiLC0zw6H4vvsxE+ilGIDzU9JhXAef748qMVdbAJkZPjsCkpOVFFPtir2LKLQfVxysPsLR8+7SaHTd+916zU0DWaCH5hr3dkFykK/3CIjsO2Ds5NNNaALFBxPjlgF0x40ZgYLs+ip1I9rFmnE2dh16skn+HvSxgGiiSQEKHb4ZOal0EO7MiPR0IfYlRdsGNQnpByegDz/1p6n41cvwCUD4i5RuNmjNpyI0gfZSG0HYYkCKV3RENsQ3vARCT/+UctVOEwxlV4/euJwWD7Sr6LH+P2V1VDm2WrI8TWRL/89r/hyBzXTthI2k7SWKl0frVuIyuaend8V+xRttfq6kedeMtIsSKogjc9c3EPcS/BgBOX9ux19JTay335s/YQ/8jXaQUC6nLJzi5gbpCQXbJTY9CA/erJCSEviCEw4qX8uNiItO2kn9jUOLyMOENUfIQVaXP1jH1WRlKiWphr2A/dy4IN7NhjenGwf1xulVBaG1Fbxn1Vemh7O9k6VwBsszfqFvK7n4wo6Jb9TrFM5pNgduEWweW5PounY4t31TgCXMZtAjoZ5wO/DTWb/L36lCR+2NA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(7916004)(366004)(4326008)(6666004)(38350700002)(8676002)(52116002)(44832011)(508600001)(6486002)(5660300002)(66946007)(38100700002)(186003)(33716001)(2906002)(316002)(6506007)(33656002)(4744005)(8936002)(86362001)(110136005)(1076003)(6512007)(66476007)(54906003)(9686003)(66556008)(83380400001)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dExgnbMreemnfYVj2ATOYIQVYeqDvhpoC7f1gzDJzEk/4wl+1uL9DvPcqwpf?=
 =?us-ascii?Q?eDq+2TmzDAEk8JFeqfJf7N+qMwKQ3SOAjj8m6AgD/OgzCgf8IUmSdfTKI5uZ?=
 =?us-ascii?Q?0RzbqOIEyS+sd+0y05unJo4UYkUs05p6BbIhfQqD9Fcu0Z4qwO8i9t8SbZM0?=
 =?us-ascii?Q?zrw9aBErFJm4kiSVzpJqB8aTy77HPgh6K1ETM3akXZ+b+8RMU2w+lklMKEpx?=
 =?us-ascii?Q?fCkNaSlmy4HecuIvnWphxgged0Z5tnCjthQ0a8Fchp/RzivWkcPOEqGsYMhh?=
 =?us-ascii?Q?Tt37Nl9Wl/aH4oZJRqkG1Ze4r1uDvL6BkGlDWtSYWrteapXvayA5YHuepaI4?=
 =?us-ascii?Q?BeeR+qjT4NrkK5e2R+kpCrhYlz1kB56/4S+HjbOcbhj8RCI3YqdKalkcI+mK?=
 =?us-ascii?Q?xaYm1k9C7J+zlosblU6s0TNqcBc7SOG6WqT2FQfzGBiV8NkCMz3ObOVfp1HR?=
 =?us-ascii?Q?OBgqalTk+zT6bfo54/KbynEAt06/ODyHjQZXwNeGet75kzz7lI/UvphpqAAz?=
 =?us-ascii?Q?mgWhGIjNv/chCcvmaB+5glp8XCow4/046QPxxZ0uu5drEURENABgFMzZhOS3?=
 =?us-ascii?Q?e4yRjW2D0Qd8OFhXG7hrWMaHdQY9hQISNfvt7PL9QbfMfVNP7Pw5OulYj9dh?=
 =?us-ascii?Q?Lw+1/pXKSgmF4sezvRqKi3JMR46PA5vyaMwvFUqiN/1geOW2BmgA1itQRjbu?=
 =?us-ascii?Q?quUtOAKh9xVPmihHVLPTUbYeVfgfgxqGhmiQDl7wHOFOCMdSKY1LE+Q2TDH3?=
 =?us-ascii?Q?i+n77zxhteADAVtAR6blQZW+a/FBsoDRXw3R/uwNnHr/o/bsTnTY2vDAuFsa?=
 =?us-ascii?Q?KfKT8jBVh54j3ZtL39RFlD68l7IqADlPYs8MOvRXfmdMlcJj9lr411a6J1ek?=
 =?us-ascii?Q?HG3XEPJQxZxzrGQrcBN+Q748pKxx1ufqQpru+aZ/ek4De/tFdHDriZnzoU78?=
 =?us-ascii?Q?ey09pPpnhtTFaoS1vR892BUH3FZHvdoTX6s9nkOUbT1Zo7pAHW474PgXUnfM?=
 =?us-ascii?Q?G7FtC0WqhcDpuGxrjXr/vXcFONjL/zwmx2Gn9WcEHJt+mhetHMdx4+Dwry1A?=
 =?us-ascii?Q?sDMjOZvhHGJmN6fPVutxB+gibDl/L+knvKFOi83UxRA8Avnoy4o7a1hdVHEy?=
 =?us-ascii?Q?u4wY5xODLdks/Pz3X13a3Wfu/X5bhFho8d8/KxYvY6V6A7aFEU3YEFGhFSTX?=
 =?us-ascii?Q?Ietube/OX5B0E64AnEm0DFpsQmvQDO+RXoUnlsH680rzuok0LOrD/GLngNE/?=
 =?us-ascii?Q?y8YPeZ2aXofc53cEU+kmXSDI6wyM1LfZLjOZQOXfaM/4MFXDXmUFzX09xWkx?=
 =?us-ascii?Q?+4JOeVJdnUsM/aNjGbkX1urXnSHmGfM3E/GsZxaUMK+U/nii+QqlpJoF55Eq?=
 =?us-ascii?Q?eOZjrpbn5/G3khAOddVR2liZtXidlwJTJHbslpzNpdaSmRKE2AcDNXQu/DKk?=
 =?us-ascii?Q?vHA3tdxA9rlZTRMtzlJyGnvnspGsCkV9SpQqXRBfnmdpV4o3X4vgJH1flClH?=
 =?us-ascii?Q?F8A2zCFB+N0Z+WTkUbEqRJbOnxvL+nKYlHLT9VaRJRsUcWTAuwxIiTmKh2OJ?=
 =?us-ascii?Q?8+vi+LMn+ZZSYgT85HrYjP8Hm3pbJlZCwS1Ie9WifHjaNcrJPh1JIbUbS6Y4?=
 =?us-ascii?Q?xIHm9HMvKVm9gpBie1O11x3KLitlvwSOpTOliUfsamrLBTkgXddWdC+3oBjK?=
 =?us-ascii?Q?YVjmeqBkVIp4PAbwDSCpRJPv6CY=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea44e89f-e777-4974-ffaa-08d9e1723a25
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2022 08:51:36.8819 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IFO2kgyoWPHOb4DZGe+7UrcJmTtOYlIxslDb6cGdhl1kHIe6hP54UGwCEB7D8PRqkTUhVcDYjcNjEWCMqWdLjgx+UAqt2Fyxutmk6cH8iSE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR10MB3889
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10239
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 bulkscore=0
 suspectscore=0 malwarescore=0 adultscore=0 mlxlogscore=999 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2201110000
 definitions=main-2201270052
X-Proofpoint-GUID: GgFYEIz__aDtuZzSQ_IxbReOJEOHrib5
X-Proofpoint-ORIG-GUID: GgFYEIz__aDtuZzSQ_IxbReOJEOHrib5
Subject: [Intel-gfx] [PATCH] drm/i915: delete shadow "ret" variable
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 kernel-janitors@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This "ret" declaration shadows an existing "ret" variable at the top of
the function.  Delete it.

Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 0026e85a0a0d..b66591d6e436 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -505,8 +505,6 @@ int i915_vma_bind(struct i915_vma *vma,
 			work->pinned = i915_gem_object_get(vma->obj);
 	} else {
 		if (vma->obj) {
-			int ret;
-
 			ret = i915_gem_object_wait_moving_fence(vma->obj, true);
 			if (ret) {
 				i915_vma_resource_free(vma->resource);
-- 
2.20.1

