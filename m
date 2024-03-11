Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB038788D7
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 20:23:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28B46112C29;
	Mon, 11 Mar 2024 19:23:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LFv/z1d2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74C30112C2A
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 19:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710185015; x=1741721015;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=SLAy7xb0kIdLBGA8KH7TIdD31kWZ8RwTKjj2aRORC4Q=;
 b=LFv/z1d2ZYmvAUw905F5wii2NlVFBglnHWyLlLmhVbrV6Sgv5TOBfgOK
 EAKEutP1LwiIlqPLNQmogl4FblWMoU+3Mj9hdItt2KftInQorgwDXY57J
 fxG7Je6Y4mN4nk11lOspk2z9BEMMlT3XfpE1h0aVQe/K10qd4sw70nTeH
 F3Dlv5vkMcQj3aDaHTlwymmavFmP4BTEy1F6ej376yJvm0QENFiCdb8V7
 fgB0xDklVvMa9uVHVAlSH1Yr92grhR4TXHbKpgzrRRZolDBE0JMIFYImt
 wB2LNn+bLvDl2tWh415YD9+3qi615J4ftr62zKsTiWeMok3t/t5xuIHe3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="8627096"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; 
   d="scan'208";a="8627096"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 12:23:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="11344350"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 12:23:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:33 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 12:23:33 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lIRsYvdM33qGcAh9ne5GX0pU2cXUkq7uPwMhi11Dj2o5UwH+gkLJN2bVG5I/ljLpNny5shRClA2TcCfWNFyP50jtrTyuXY7YzD6vL/Af14DMnfJeAgl/lJpPRiXHSjoV+MB2/z5umYRDaeS3MADYI67Gy845Ivty+P2LE44MWUbRsJXxcfypfHKMiojZvMRhxgYXfbwt8BO/Us1tIoyruHz0GXHJinOADl0t5802kN1nC+0fdfrkOv3Gsj63KeuK2UUpJLRk8CXSdqT4KdiNk/CxUYUbMhkyEDO0taChHRMKBMb3nfQOR+0R/SvAeV0pDWo684qLHjiJDlcCxpYMwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wbneBIyhKiLdNGjTGM9EQMuGfLWJx4uRR5IX+6rj/ak=;
 b=ky1NkllNQoarBLRDcWvg7UdJng/YK4gJ8pDnqkeKFE0Xpw2MNHF1kO+btCEubTAmdsFvr9rq++ro/lTHh2yrx0nH2WDiA31vjv7X7lz6RVByq0Vveh3tcuL0HEFzCRUG+Y2Qj6G+Y7uv508hTvMesmMnEjk0qAfBFLvvkZqyBrT41wr6JVPFfEX+N3CbflLlpiP82UuQqoP5OLBG5LxE0PLBLJsSYLC4J3a4KF39Wg5VO2uM3xsP8GrwkI3dBhqDu12WfrnFJDqWZL3yl51yKHT39X0e7uuQZ64/WelRIJ3ohBUZ6B6YEzDNiJDCqnrgoJ4Zqc3ol6nCKn2LVhisbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB8253.namprd11.prod.outlook.com (2603:10b6:806:250::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.14; Mon, 11 Mar
 2024 19:23:28 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.016; Mon, 11 Mar 2024
 19:23:28 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Matthew Auld
 <matthew.auld@intel.com>
Subject: [PATCH 07/11] drm/xe: Convert xe_gem_fault to use direct
 xe_pm_runtime calls
Date: Mon, 11 Mar 2024 15:22:59 -0400
Message-ID: <20240311192303.33961-7-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311192303.33961-1-rodrigo.vivi@intel.com>
References: <20240311192303.33961-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR05CA0029.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::42) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB8253:EE_
X-MS-Office365-Filtering-Correlation-Id: a87ce7f1-7623-4674-aa71-08dc4200babe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EuOb+rrwIumGG9N1ic7J2+RhWd8HZhgudfKksOEaGVMVUVPCbdsDmFagmk+++hN7LmfWJ77GaKpqu0MkqmTUQhVdI/IjGQ6u+DkpIHVNdmVO5Rlywwqv6WkNEYPk91R/fxHSkpmOTRulTwF11yVvoBeMsBkOe40eYvQnL94mG/cbGTP3x0sFJ1P0XOqJ/YjICybx/IcphsSDOZ/fdvPOnMmm6Wb92S3CIj9AVsTdNxK3mqXuJaXszg9TsBln5yVdb0ykASd838VyXge/uQIguFzEm11nNd1kyR5KvooWHgLQLglOA2uqDKJPmbGkxfavjP2sVj2RGifPPf7p+eNtiUGDLi5HxJ69Oo04Jl5pAioqgDbOK690FDfQ/mFgHFdRnsAjLAw3zyvtBFHBTLMx0ZN1F5Kb23UxYkC+8AxJMb6beaa7q2aV55J4YC0JDI5WgRpq9whowvejUIQsf+fIjrd3c3+20wiWleeZ2F93HU3U+ud3kep22ZiqWiYT5oDcqP3qzOKCfx3x6nA1hVVVmE1D2V4sl+PS8JXj3TdmhJYOzOsBdelaqDjDLlCjvMxGn8Sds/ypp0p+WPDHG2u251S/3KLZEOcYDbVTaV+25TRgMQ8vTfEVyd5hvdsW/JuLsppfsoDStgS55HYt1f1kOD67CeHjc6rnsKe9HJc1r/Q=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?T/aAU8xfSputppDiFxz380LofuSx254zsJEdOyX/+xKmto2XqOkR8QNuDy6d?=
 =?us-ascii?Q?Ip0H0b2p6GdsXDqPuRkJ9bW3Q5WNPYClnUNhou3MrVUEjmjoMxqmnyqvhPWa?=
 =?us-ascii?Q?VEEc/aBhDRAXUjh8iiiBpdd2QJDiDjkCS7B7vwtaFDKMfeBO4qcJ9ohRjVme?=
 =?us-ascii?Q?F6eUW2VaDf6v25kSQB0zbCx4mFiqeiA5t4wS56ieglicgrG3hvqxuOtJOqJO?=
 =?us-ascii?Q?wfffAoPgBGTvMcM4NJs+fbLz3bYTicrvWojkIjIo9BDpZtZvug0TAJafYnf9?=
 =?us-ascii?Q?D+hcddkTxaGPBP+KqTISDnd6DF99oxKEe7fIB4oWy4tKJJNnm8vfqdnhe5CP?=
 =?us-ascii?Q?wKGWFsTua+mNsfHYA4p1rHmAqeHkbN1laf4T9N5p4n61V3tcjDMspmwz+IqJ?=
 =?us-ascii?Q?nwIaKkkXIo6AP4BkAjT8d+OekkPyrbMaMP4ILwfB7FX3it1wUsF3weglJ42R?=
 =?us-ascii?Q?hUkUnuN0Ba/eaLGx+UPE56Qds/upJKFcZQMPBGOsnSJL9abEK1Y2uyWwMR7N?=
 =?us-ascii?Q?XJoTWrpWHKh4sdCduMQiN+f6CaXaPlpGw/c+YoUZ9m1HLWF65+4yxXQXKJtO?=
 =?us-ascii?Q?/aO8AOcvsxR08ZbHymn049BFLotdy1lMhUJ03owGt4uqxjiOckmTb5tptpLn?=
 =?us-ascii?Q?wRYjXz2+pBqL8fNT8pfcJB92xvmQsa7to4G7BRUQTjrKDZfaUevth5TmRldQ?=
 =?us-ascii?Q?K9dCLwwXSh7fA1vxLQr7jZymNN4wJp63HRW4fv1AFAo3VyWD2I+xyYYo11jT?=
 =?us-ascii?Q?2HY+yBZy7v2gg6Hy8mdtOITJ27sYSNWH3Sq/GOI+0IDriTsxBsRD9DnAI2ux?=
 =?us-ascii?Q?ebhqJqhna9lJ8qLe+MWeJHa0LA57f133WqbetvtnMt998PS0tLcCaxGpcVfS?=
 =?us-ascii?Q?cyBlo/pOqcOhtr2ien0pYKFGNSGi9MCtNfT7+pGwJJfU49EbXTD9P/5lGv2h?=
 =?us-ascii?Q?Ux5ybXlvuAmnnuBss0+VDQ+jaSEZwrAfBOFSCpU0zJMkUxyeaTdA027SRU6+?=
 =?us-ascii?Q?JqoBTVcl583v2YJXbC/Vtjo9/mrw8cKF2cSDuzw+9Ajw46KUpI6jMmXa39+P?=
 =?us-ascii?Q?+QGrtZeyaiQSx1BqQGjwKHxxpC2lp0ZuHg/oVjTFXlAPY79wOhpGOkLdiAV2?=
 =?us-ascii?Q?VEKtlO6rs6bL0xMiPFqEtjoo7w4xLYRtAUPL7c+ykwhkjJ6KDcFFsi21A3J7?=
 =?us-ascii?Q?lhNd7LvQyzpu0pJNq/KIB6XR3IW5aKHTDk/VaRt8Kn/q98h/sXJtpQkf99cI?=
 =?us-ascii?Q?reDBUAro/5tuEENjTzLRFibdTgwsm2RSna7TTlo4+B4YCG/fJHnFikxV/2Xv?=
 =?us-ascii?Q?itFB3i/ShTegdtJDRoc5dbKJJ66XiFmOweU7Qve6mmtC16m/8fG/NFXesdXK?=
 =?us-ascii?Q?cMw/RFhufwCn697qWCRIlIvuElOVI1E0L4txBiuJlm4mcrIU7rjIQw+rY+8Y?=
 =?us-ascii?Q?bD+mTH9TQiUm1/IgIDCSIR3ba0eYldw2Au9mstd/8TaJ/ym5c7n3zJeJACt4?=
 =?us-ascii?Q?QSwPRq0bSjdjPxUTWFRNWOjYt8BPVEqysmXeEft5Un08+iilFJxNP52JZAPP?=
 =?us-ascii?Q?yCYdKh6kZ9eGgWtedrkn0UG5yHM4FTLNdU3cFAopq+uJZrzIjCobcAYKV3WF?=
 =?us-ascii?Q?AA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a87ce7f1-7623-4674-aa71-08dc4200babe
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 19:23:28.2695 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Weog+BztyzmIGpz6KkJ2dtFSn3mAcKhNzXhO6asu375G0yIt2lXZbQsd17YnOKNgPjdX7TCY5IYUE9d8xoSJFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8253
X-OriginatorOrg: intel.com
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The gem page fault is one of the outer bound protections where
we want to ensure that the hardware is in D0 before proceeding
with memory access. Let's convert it towards the xe_pm_runtime
functions directly so we can then convert the mem_access to be
inner protection only and then Kill it for good.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/xe/xe_bo.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
index b89ac6db68a1..bc0cc5edc533 100644
--- a/drivers/gpu/drm/xe/xe_bo.c
+++ b/drivers/gpu/drm/xe/xe_bo.c
@@ -22,6 +22,7 @@
 #include "xe_gt.h"
 #include "xe_map.h"
 #include "xe_migrate.h"
+#include "xe_pm.h"
 #include "xe_preempt_fence.h"
 #include "xe_res_cursor.h"
 #include "xe_trace.h"
@@ -1136,7 +1137,7 @@ static vm_fault_t xe_gem_fault(struct vm_fault *vmf)
 	int idx, r = 0;
 
 	if (needs_rpm)
-		xe_device_mem_access_get(xe);
+		xe_pm_runtime_get(xe);
 
 	ret = ttm_bo_vm_reserve(tbo, vmf);
 	if (ret)
@@ -1176,7 +1177,7 @@ static vm_fault_t xe_gem_fault(struct vm_fault *vmf)
 	dma_resv_unlock(tbo->base.resv);
 out:
 	if (needs_rpm)
-		xe_device_mem_access_put(xe);
+		xe_pm_runtime_put(xe);
 
 	return ret;
 }
-- 
2.44.0

