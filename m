Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AC7C8FC92
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 892B010E891;
	Thu, 27 Nov 2025 17:51:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EpcO4h6m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5BB710E887;
 Thu, 27 Nov 2025 17:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265889; x=1795801889;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=+gNlxTALSRv1bZOHDuHW37N5utGSYBzqC6aT/xepLdk=;
 b=EpcO4h6mUPUE2gqJmhd+599FMoWKPTxvYoKxvK8FlZuupyWrQ6oy8kL6
 1tlW8/f/3aZmnnJO+xCPjxshoXgRdZ+ypw2DFCROuz6NY2xZnoef7okJA
 23ZdV3wI9h5BBiXMwA7IY6+Gad3bkJvm0moSrsWpF7S7JcQkbkx+VccYt
 zOqEuccVA1VGlM80wMNOsLxmpu16g53WYxEJRVFCQhT51T4h3bn7F7KDx
 iB/Ws7tkiiQjOSfwSD0gj3RWQ9yFkXVysK9lQUybdR/xI9JQ/mIiceUKG
 TPDq8a6S2QI/zM9seutL6/SlEWhSz8WI+/kfXFwnJ5ILp9ZMrwpQ7+SVz w==;
X-CSE-ConnectionGUID: 98A380J3TYSMC90nerTl1w==
X-CSE-MsgGUID: QETL0d00RBmx24z3AXZPPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77002997"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77002997"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:29 -0800
X-CSE-ConnectionGUID: +Fsc7Y7AR8mvr5UV1/Ri3A==
X-CSE-MsgGUID: yrUgXZhOSOCCm5cFikazMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453633"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:29 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:27 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:27 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.53) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BuQT09erR7ijp4ngKvcjMxxuWsA48RcQ2Ib14UzyTxfBE6M1YJCLvQHWK3LAj6qGWYTcoTywwi3R4FbVxb8eW1lu7EdXeVne4595aUgzgoOv9f4q2+sIEwA9y956xKkz5XreD6IXl+k6UtwJZ+I454z7ijAK1VYQUIWpG3AaBaH+M9j8WfmZAXlqEwj6mbltHuzG/ckuXRb3L8orBRh2e22CF5G62R5oHO110Xm8tLbw25oZwItNgO3a114XpphX0Yj6GBoIs8dbmrZqHX579PUjNaLhFQcZ4RFMMahMFfScsUXZZn+T/Ha3ABeJNFNFmBKdHcipegVAFWUk4QeYdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c4fr5d0dAM9m0MEWVlZNECvJLrM4xkEW7MShbKPkAh8=;
 b=OcJ9n4/eySCKtI7MvgPa/oxbXWx6+hsr1w9/wUW1os5+GnLkwrEUGT/UKJsWgMiy8EB3ZfIAljswblbXnJ2oXrB3R7Sldwl9H9tbvceTEOJuUC01sC71l/Gkw4VljQ4klEodNSB3w7lzmXiNkStLBB45sZjhnwPo39yGwVoWxADmT5wsab5uRGzmDs+ZclyTF+sAmWyRNvL+ZgE9es1W3FmlyvIrgSaS68Xk9yCyRYl0SajTq4GM2RSOAiXrrr+hhgeWOZOmz7c+5Ak+Fvm++GJJHQm1ZZwKG0hgVi9enqi9g7C7M4lYWshodeLdyUu3si5uc+7IuR/aBbUnlzL7HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB8550.namprd11.prod.outlook.com (2603:10b6:510:30c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Thu, 27 Nov
 2025 17:51:25 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:25 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 28/50] drm/i915/dp: Unify detect and compute time DSC mode BW
 validation
Date: Thu, 27 Nov 2025 19:50:01 +0200
Message-ID: <20251127175023.1522538-29-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-1-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0255.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB8550:EE_
X-MS-Office365-Filtering-Correlation-Id: d07c772b-1dcf-40be-11c7-08de2ddd95b8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?blgHgmf7FoHu2+Pu8aqfrpVNHTfdoxjRWZMU1exntN3YQn+iGY1FTEsvq5fG?=
 =?us-ascii?Q?O25BsV4vfxvU2qCabyafyLjlgXPf8AlKNCX6a5EmUoxL2axTRXY1z8XTZDdq?=
 =?us-ascii?Q?3Rc98w0/P2dA+6TPpYv+b9AfSYFYPto/6RDV2V10yVHEgHrYeIaAWtQDZQcY?=
 =?us-ascii?Q?QkCNLIPg9F75b100/aGgTOOYyROf1puZF1015KUxQTRkVt+vwnlakdo51qOG?=
 =?us-ascii?Q?JlMVPC8xKf+Ky1oMZyInWaVI22/8GN2zi+P/5+DQCV04ZDgSb9ZYHP9FmfLX?=
 =?us-ascii?Q?91utl4vyY8MgE2rwozNKI2EFITRPlKFLxi+v2e9JNlMZkW2DxllEg1v8g/39?=
 =?us-ascii?Q?5gY7rmLOsehOqMGVSX4nH2mc/3F2WouaWe1IeIhHpwdxiLG4514dKAVjzbcW?=
 =?us-ascii?Q?6C/SUhj+vb7Is17lfU+RC9GuiztI/NggTwOFvcZWcpEKVTnpYuqU6zSoANBk?=
 =?us-ascii?Q?//77rxBQlUzwFTiFNhTXRCB28bzEoHIl/8g1HZzdcxuphpSolR8JK55HdaWq?=
 =?us-ascii?Q?hBReXFpyPVagVTiZyKzEI0uyqoZYtc66MhrSd/h4WQeL5LRVETXc+73i+nEM?=
 =?us-ascii?Q?cXwA6vrfgFgFru9Ys7v8ZbTkNWJ2nGRigOTfhGKgRabQieT8tEv8WRF+2xc6?=
 =?us-ascii?Q?ZjRGDxdZ+Pjqvp0i9SyRnk8qlqVmGsLpfRBufUGPVc93nVeZB/Tv7+mfPbnu?=
 =?us-ascii?Q?2700PMUYpNXPKrKZdQEAmlCErS6L8G1BYiCuU08bCzDiDAA+FMa+7ld8JgIl?=
 =?us-ascii?Q?vwSU0MMDypBygveB9z529BGuhBnqg3X/ZJ2Lr2XmTtk6O/u4NSav2HPCCL3C?=
 =?us-ascii?Q?g74Cownekn0VL4VWEzCs53jAxoBFWvY2TKe1lKmmfGJ0Z+g9H+VAndUqzmcx?=
 =?us-ascii?Q?yEeRj9uLs1b+NqonVYA1pa69/kIbkPs0WbPpIYBH9tYcIMZlEdhORkITDsgU?=
 =?us-ascii?Q?9ezIh52KMQwkwIX4yd5yZnnGFnEVK08S3ojMMpudZjsKL6nBsbAKCJ2XQfdj?=
 =?us-ascii?Q?0arZ3a7iMRruL/FmpmX/l9MPSnu5j3gD/giFr5neTQD9egO0KhPtiay6Bk++?=
 =?us-ascii?Q?I2odWHcFbe8M6+NodUd2uqiEO+UurU3MGhbdbIJw9TuSeO69ysa6MLqq3JJi?=
 =?us-ascii?Q?MTIKZ0dRAfe+FtLygSoA3W/J/HvjEAioJgwEsjXJ5eJTIrVyO/UbdWXCEsUI?=
 =?us-ascii?Q?m2asA8UYIY0zHm69GMfL7U9e296YAqFZCfqc+2yqgfDLS1vm3DH79Wu0VVeL?=
 =?us-ascii?Q?4tOWhUkhreQnppklYlunAf9VMN+qAj/okxgTkgZz69NcZr8hW/dv2Sov1yUv?=
 =?us-ascii?Q?6Eh7GI7MdOuTdO/JIl99pf5gyZhtiSO40L+K4YiNouxhF9+o7OXLaSh+UBeX?=
 =?us-ascii?Q?pay41DtB6MLswACmvE3RmYg+n9pblCyvSPj1x5nHcovq0rL3mXH6LbuMk8lo?=
 =?us-ascii?Q?HwO3xv+Wq/EbhT9GbsGyDRksW3CiAI1+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Gl8iH7xyntwUVYFZcY+2JCxk9T9Pds7DsrPOwepqXtA926hmWR2TYFAX14C4?=
 =?us-ascii?Q?mDLh2w6CvEAxnFd1zh8YAfAiEeaGyd+DR1RS4GZCY1Wu8Y5tONSaY8E4jOuv?=
 =?us-ascii?Q?D/iJt9rUQDwYlg7ZHCkW4F70zIl9eWInYKSXADdmscREAF1sPznmoNAgfY/4?=
 =?us-ascii?Q?KVxgX/pLnWzBVCuQR+ABOVnQ6NB7uS2MSFLDodrKmut4slFlnClE8u4GBWAR?=
 =?us-ascii?Q?DmOuOayi4y4pc4bmQ6pP3cgocgvq+Khnt4wmtTcxDX6CqZXP9Ursq5Zu4HB9?=
 =?us-ascii?Q?ClcNdjyuu4fBpzMRfycq0Imf0GzApli+OG4LpEdlwouj8Rfaj5ge+s2glMpX?=
 =?us-ascii?Q?aVPDJXbiAOXEXS1l1VitgxHWK181mxGBarltxMOVXQYcHcrMxff7ETHxNjB0?=
 =?us-ascii?Q?+dJ3BMSX8Lgk0ZE3gC0j0Twb0EtkWf/IHy8AxIrFfr5O6l29HOsNU7eXb9iS?=
 =?us-ascii?Q?H89sj3mNBqGL6PARJKcTHU7kE/eUB3FD+fPA7crhdvtGFlpCr3xDNRa7e0bL?=
 =?us-ascii?Q?i9XFCSkWFcVAbThVf2xqp3P1NP1+gtvU+ILYOqrIf+wKKpV7grCFJ8boJVGK?=
 =?us-ascii?Q?0VVMnC85bAeSb2tBKzXP434qcywTK97KqEyPNoSVLsGIw8iNeNw/spFPwrYZ?=
 =?us-ascii?Q?2SzXhI7yl7coIVUlZgj5v3SES6+9kc2u4lntTX63krajdGMaaFeicxUooq7t?=
 =?us-ascii?Q?HwYEbucdnL98M48X4bgJ2mYFNAopg44vD188sTvmkf2jrg5LJ+L3xJt/rZBt?=
 =?us-ascii?Q?8MfurTKkd9OA1kbUmqBoh00YHFXsK0AhGPd6wvA9h4fCcN0prRZoDdZ91Z3H?=
 =?us-ascii?Q?Km1vQ26oFZRszMJEyJ3bLhMzG0ODk44AhBhrJjI+XP/g2gqXYR0Rul+PUMM6?=
 =?us-ascii?Q?7kDo0yArcXiNM2HXO/x7t3I+y18z2u+cWS9VdtehB2FYafcuA4PhwZNw8L4L?=
 =?us-ascii?Q?taqs/Qe90fyjlvnkDucPh9HT3QmpnEq5diCqPwed39QFDfFl60rI6qmpgvGC?=
 =?us-ascii?Q?R8WCqx1o9GncRV1bnWk5AL6xf2k22/319UCtAaj6V+7o8s+zOb5OCrBz0Tnk?=
 =?us-ascii?Q?A4U9eW/7h4k6TzHZsI5uyn95FiVAuisFCN1CseVNEDJfnKL+EgHsR8OQAFai?=
 =?us-ascii?Q?KkuWl9gxTVtAMGRksHO5Wv0exZ5BSWE53iyJYhy7E/YqWPwqVJ+MjuxVj63G?=
 =?us-ascii?Q?ohW3nHOs4E9ZFZLpRWcRyQfE89Gt1vG+RB3dV7gDBjAN8BGXPXZ/5x5avyLO?=
 =?us-ascii?Q?3lkuzZ16ODQykxPh9ONv/2J6WA5VeW2McNEKMh8/oI1R3WiRGyK65X1SX4hE?=
 =?us-ascii?Q?nSU3qoyukJMU06eFk7gP9eg51gPLeHmPs9tuSHOfJDjGkk+Wnsmu9dCoJ8P6?=
 =?us-ascii?Q?+NL7UgM5Pf5RWuhRHJgcwJq7Y0wQe9pNxQf4JcUOdm30EosGPAbKkKjrPhQ3?=
 =?us-ascii?Q?m5Nwemn0Q4YR64LId3yCdK3mzkrwX6ECKmsfItKOEu6ELRvcdqG+DsDg4Cs2?=
 =?us-ascii?Q?6qJH2jorWggRbsLbRu+9W6xUcZxEtTmN5hQDge9FdzrSS+eEWgCWm1xpeP/T?=
 =?us-ascii?Q?XR7o+K8jwBeNvYplllMH2Jbiod3sPjoPm7mL5CECJojM8Bdi89pSCgjIM45R?=
 =?us-ascii?Q?sNckxEG+o8AqjVwcMSywos+hYNA+/PfPnnRohfUk3xtf?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d07c772b-1dcf-40be-11c7-08de2ddd95b8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:25.8458 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mw5063o3QoWYLchXyy6beDnT7TfQ7GeS4L+hwKvq+kQnxJBYVq8rbbfhtsivXbd2UbHxxoN8D/W7KfUTduBzxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8550
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

Atm, a DP DSC video mode's required BW vs. the available BW is
determined by calculating the maximum compressed BPP value allowed by
the available BW. Doing that using a closed-form formula as it's done
atm (vs. an iterative way) is problematic, since the overhead of the
required BW itself depends on the BPP value being calculated. Instead of
that calculate the required BW for the minimum compressed BPP value
supported both by the source and the sink and check this BW against the
available BW. This change also aligns the BW calculation during mode
validation with how this is done during state computation, calculating
the required effective data rate with the corresponding BW overhead.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 137 ++++--------------------
 drivers/gpu/drm/i915/display/intel_dp.h |   8 --
 2 files changed, 18 insertions(+), 127 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b40edf4febcb7..8b601994bb138 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -895,49 +895,6 @@ static int align_max_vesa_compressed_bpp_x16(int max_link_bpp_x16)
 	return 0;
 }
 
-static u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp, u32 pipe_bpp)
-{
-	u32 bits_per_pixel = bpp;
-
-	/* Error out if the max bpp is less than smallest allowed valid bpp */
-	if (bits_per_pixel < valid_dsc_bpp[0]) {
-		drm_dbg_kms(display->drm, "Unsupported BPP %u, min %u\n",
-			    bits_per_pixel, valid_dsc_bpp[0]);
-		return 0;
-	}
-
-	/* From XE_LPD onwards we support from bpc upto uncompressed bpp-1 BPPs */
-	if (DISPLAY_VER(display) >= 13) {
-		bits_per_pixel = min(bits_per_pixel, pipe_bpp - 1);
-
-		/*
-		 * According to BSpec, 27 is the max DSC output bpp,
-		 * 8 is the min DSC output bpp.
-		 * While we can still clamp higher bpp values to 27, saving bandwidth,
-		 * if it is required to oompress up to bpp < 8, means we can't do
-		 * that and probably means we can't fit the required mode, even with
-		 * DSC enabled.
-		 */
-		if (bits_per_pixel < 8) {
-			drm_dbg_kms(display->drm,
-				    "Unsupported BPP %u, min 8\n",
-				    bits_per_pixel);
-			return 0;
-		}
-		bits_per_pixel = min_t(u32, bits_per_pixel, 27);
-	} else {
-		int link_bpp_x16 = fxp_q4_from_int(bits_per_pixel);
-
-		/* Find the nearest match in the array of known BPPs from VESA */
-		link_bpp_x16 = align_max_vesa_compressed_bpp_x16(link_bpp_x16);
-
-		drm_WARN_ON(display->drm, fxp_q4_to_frac(link_bpp_x16));
-		bits_per_pixel = fxp_q4_to_int(link_bpp_x16);
-	}
-
-	return bits_per_pixel;
-}
-
 static int bigjoiner_interface_bits(struct intel_display *display)
 {
 	return DISPLAY_VER(display) >= 14 ? 36 : 24;
@@ -1001,64 +958,6 @@ u32 get_max_compressed_bpp_with_joiner(struct intel_display *display,
 	return max_bpp;
 }
 
-/* TODO: return a bpp_x16 value */
-u16 intel_dp_dsc_get_max_compressed_bpp(struct intel_display *display,
-					u32 link_clock, u32 lane_count,
-					u32 mode_clock, u32 mode_hdisplay,
-					int num_joined_pipes,
-					enum intel_output_format output_format,
-					u32 pipe_bpp,
-					u32 timeslots)
-{
-	u32 bits_per_pixel, joiner_max_bpp;
-
-	/*
-	 * Available Link Bandwidth(Kbits/sec) = (NumberOfLanes)*
-	 * (LinkSymbolClock)* 8 * (TimeSlots / 64)
-	 * for SST -> TimeSlots is 64(i.e all TimeSlots that are available)
-	 * for MST -> TimeSlots has to be calculated, based on mode requirements
-	 *
-	 * Due to FEC overhead, the available bw is reduced to 97.2261%.
-	 * To support the given mode:
-	 * Bandwidth required should be <= Available link Bandwidth * FEC Overhead
-	 * =>ModeClock * bits_per_pixel <= Available Link Bandwidth * FEC Overhead
-	 * =>bits_per_pixel <= Available link Bandwidth * FEC Overhead / ModeClock
-	 * =>bits_per_pixel <= (NumberOfLanes * LinkSymbolClock) * 8 (TimeSlots / 64) /
-	 *		       (ModeClock / FEC Overhead)
-	 * =>bits_per_pixel <= (NumberOfLanes * LinkSymbolClock * TimeSlots) /
-	 *		       (ModeClock / FEC Overhead * 8)
-	 */
-	bits_per_pixel = ((link_clock * lane_count) * timeslots) /
-			 (intel_dp_mode_to_fec_clock(mode_clock) * 8);
-
-	/* Bandwidth required for 420 is half, that of 444 format */
-	if (output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
-		bits_per_pixel *= 2;
-
-	/*
-	 * According to DSC 1.2a Section 4.1.1 Table 4.1 the maximum
-	 * supported PPS value can be 63.9375 and with the further
-	 * mention that for 420, 422 formats, bpp should be programmed double
-	 * the target bpp restricting our target bpp to be 31.9375 at max.
-	 */
-	if (output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
-		bits_per_pixel = min_t(u32, bits_per_pixel, 31);
-
-	drm_dbg_kms(display->drm, "Max link bpp is %u for %u timeslots "
-				"total bw %u pixel clock %u\n",
-				bits_per_pixel, timeslots,
-				(link_clock * lane_count * 8),
-				intel_dp_mode_to_fec_clock(mode_clock));
-
-	joiner_max_bpp = get_max_compressed_bpp_with_joiner(display, mode_clock,
-							    mode_hdisplay, num_joined_pipes);
-	bits_per_pixel = min(bits_per_pixel, joiner_max_bpp);
-
-	bits_per_pixel = intel_dp_dsc_nearest_valid_bpp(display, bits_per_pixel, pipe_bpp);
-
-	return bits_per_pixel;
-}
-
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
 				int num_joined_pipes)
@@ -2707,26 +2606,26 @@ bool intel_dp_mode_valid_with_dsc(struct intel_connector *connector,
 				  enum intel_output_format output_format,
 				  int pipe_bpp, unsigned long bw_overhead_flags)
 {
-	struct intel_display *display = to_intel_display(connector);
-	int dsc_max_compressed_bpp;
-	int dsc_slice_count;
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int min_bpp_x16 = compute_min_compressed_bpp_x16(connector, output_format);
+	int max_bpp_x16 = compute_max_compressed_bpp_x16(connector,
+							 mode_clock, mode_hdisplay,
+							 num_joined_pipes,
+							 output_format,
+							 pipe_bpp, INT_MAX);
+	int dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
+							   mode_clock,
+							   mode_hdisplay,
+							   num_joined_pipes);
 
-	dsc_max_compressed_bpp =
-		intel_dp_dsc_get_max_compressed_bpp(display,
-						    link_clock,
-						    lane_count,
-						    mode_clock,
-						    mode_hdisplay,
-						    num_joined_pipes,
-						    output_format,
-						    pipe_bpp, 64);
-	dsc_slice_count =
-		intel_dp_dsc_get_slice_count(connector,
-					     mode_clock,
-					     mode_hdisplay,
-					     num_joined_pipes);
+	if (min_bpp_x16 <= 0 || min_bpp_x16 > max_bpp_x16)
+		return false;
 
-	return dsc_max_compressed_bpp && dsc_slice_count;
+	return is_bw_sufficient_for_dsc_config(intel_dp,
+					       link_clock, lane_count,
+					       mode_clock, mode_hdisplay,
+					       dsc_slice_count, min_bpp_x16,
+					       bw_overhead_flags);
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 0ec7baec7a8e8..25bfbfd291b0a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -143,14 +143,6 @@ bool intel_digital_port_connected(struct intel_encoder *encoder);
 bool intel_digital_port_connected_locked(struct intel_encoder *encoder);
 int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 				 u8 dsc_max_bpc);
-u16 intel_dp_dsc_get_max_compressed_bpp(struct intel_display *display,
-					u32 link_clock, u32 lane_count,
-					u32 mode_clock, u32 mode_hdisplay,
-					int num_joined_pipes,
-					enum intel_output_format output_format,
-					u32 pipe_bpp,
-					u32 timeslots);
-
 bool intel_dp_mode_valid_with_dsc(struct intel_connector *connector,
 				  int link_clock, int lane_count,
 				  int mode_clock, int mode_hdisplay,
-- 
2.49.1

