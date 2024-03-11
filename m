Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA6F8788D4
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 20:23:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37880112C25;
	Mon, 11 Mar 2024 19:23:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XpVTfd+1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF028112C25
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 19:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710185008; x=1741721008;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=D+RihmXYC+bAQsE4LJEaV9QlNfMYv6I2owL6UZ7uuqY=;
 b=XpVTfd+1y2lbsBPuVV2kxwsptzxokTnUdk7NiBgVXiFTm5SXlGtjFzSV
 5DezIMn0YZf5gBzkz3YYZVUvPA8qDjkd+rJ6PUnNxJHaa2EN2eFdTJk4w
 UnNo6JMbn961kprNG72EHzrpEidvV25t4yrIXABmYcDMOv9FOJO+UB1Ww
 J4unWEZRZq35SB4IR5FQ8gJO+a9ijKxlj53BJsGu4Z9ql5LE+tDYaUIye
 lzRMjgbksFr3APaGFPUBhfVWKsQF7Pt7AEqQz4YESGxhDdG93Ec1bSAxw
 9DwlUsqN7C+59Mtemm1OiOd/AyFMHZbznsWtAVSsZIdjcXfjr8u2nCsdb Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="8627090"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; 
   d="scan'208";a="8627090"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 12:23:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="11344297"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 12:23:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:27 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 12:23:27 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bmNmAoPesbGDnSAg4/JQV/WiwaSX+JrPP0jzTsi61mrjzLNNS+Qr0GriNeMRIzI3eHupXpF3UJyTbW/fTQmt2yoLp++Y+P0sc+xVaySP0mBmmsZ93sn5aB1M581g6ph87ZIJWUy7L5H93Z8ZdE4nPtkNOGyY94RGHWxmAgLmf1ijRQwjJufc2/Pl1dbgOZJlwQGmDuAH+Lfs9T1YDIapZZaUBhOYFufsBDeAEe8ZrGgcacsviS1Lnl+oMLQltSzzAPuFYEwgTFlN41qQGEO7QmQudexTkPxbKDrvB1CdmPp2lG/kvahGHhkStjymP/Cd7rNnE15IvPAG2V1hvS7R3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=24zD2mAbeMS+ji9nUAohFYLguz2LBzIyZuIrnbwaUs4=;
 b=hI25wljb3tVF0N2qnQa0ikurVKq638I/ldLiAJuEwsfACaPytnRpCqEamOUczj9ZhWc23FP9oYqoRB4aFtQABRjwzQg81PaRtdW/sinrBGMDEDhEOqhFG/8DXayMcs472WFpvFHHPEMnaeiazFkB7T3y/zVdGKWVj3q8p8xhLjigUMmn8ufOJCKUj1dTTcNn2ZohfjbIl8u4N5oh6JczGpR8pVGy8HgTYMuGgUIBNRiaUKrdvB6QIJmbH7zCZOLvcXlSqF1PE3gr3zAoftCjVi21zeTZmn1dMb2oB+YbzMcs2CUrL2Q5DAAlIIIODpqZ5nkijONGIFXbGQUxvV69oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA0PR11MB4526.namprd11.prod.outlook.com (2603:10b6:806:96::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.16; Mon, 11 Mar
 2024 19:23:25 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.016; Mon, 11 Mar 2024
 19:23:25 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Matthew Auld
 <matthew.auld@intel.com>
Subject: [PATCH 06/11] drm/xe: Remove useless mem_access during probe
Date: Mon, 11 Mar 2024 15:22:58 -0400
Message-ID: <20240311192303.33961-6-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311192303.33961-1-rodrigo.vivi@intel.com>
References: <20240311192303.33961-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0210.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::35) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA0PR11MB4526:EE_
X-MS-Office365-Filtering-Correlation-Id: efe6835a-34e5-4f79-dbaa-08dc4200b8c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TsYfl0q3NNLMEQInE2nzeAzs8rp2WnBMxbnY9zVHjNrTZ+uaUNaSa4BWw9lYwHYiRZy2A/K1+1u0+kNFK5ipnq+ti+BZ1zS4Zcz1Y/0s696E0+vcKHkssECnLpiQ/eiGLSVtg456ui/0fIahHfcqZlDIg+z4jBffHosU27wLGcWjkz+5OfAl/cyRZT9YLT9ZTOyH/aQ6UICQfJmMPVNnt2ns7tBc7DjuYGz1IT7nCak5Uocmr5mh4Apuot6ssLnQjzK11Ezimm/C4FUUACxf0bW/alH+l1PKDzLe41gkI6CZrzbFhS0BkAXIDLMM382MgI01DKO4r9IjxtuiMoTlO7ozTXZnT9a4lEWjr6bbOIvt2xYs5b64Gj5Yl+f17EIsyfe6gcGdZTMUivCYSd7h3pyVwsCBgtzk+CfjaZRdt0ecHhOK32rMurs97uQ9omtDh5JdgorR0xJ2q7hUN4wCX+bW0lByVPxKiNal2LrifYETn404on8XT/jaLTLGFluOLkcXZelZux4wrudo5nAMWWA2vQOo17E4RUal8B94zJOk6smLm/S3QqaEDLc2rQxzUQJKUG00dWRgpxJ8LTQWmhym8aBiZKJJZpa2zwh21wFN4btdryx0fOMLK697gRGjwLmBLRsThGpQ6a5XVPTnT1X0DA8lwg+pLAJZn84Ovu8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?A7M8MZ073fmEl+z8ImG8Ro5uRP1zwOIclat9+FV5vZ8zIOtqa+x+/iy1pO08?=
 =?us-ascii?Q?rsHwWdYsAzETjD7uZoGQdJJcHo7Wttgyy6lW1hpFOVBk72mTnYyq7ol4X9ps?=
 =?us-ascii?Q?td5wpLaQfcyyZkMTrIucLLF/8bZGMjabg7kXwD4I71bO/unFbeLKC2fH1ZcP?=
 =?us-ascii?Q?XXy28FDsNEPgBvpWVIB+dEhDU+2q/5z9gokDCKY/JvYZllwcsSZbV87XoykM?=
 =?us-ascii?Q?x1WlM9+GUtzDv74aNWMK2uRP/pvtXxyrbfUnoH+yX93r+EqMbYJiNEO79vXJ?=
 =?us-ascii?Q?9H7q/BA6I6D6uSRuQxouTpI3NGEqk7sBJDjPiNY0XTf5IXOmjh0AoDIDYhoB?=
 =?us-ascii?Q?sJgh3w6V1CzhssG0iGAwHQ/iwtvyB9s0tal/WwJY7DQNqME+MkZnKDDFaJNI?=
 =?us-ascii?Q?cs9P4kWdJSbWkS4ZA6fiQ9L5GHKrRmCucPTiU30EXho55zhNyTGUx5xwkPPo?=
 =?us-ascii?Q?Ps+qtWiHL6j3+EfCCfUEwiJMJX1eBeUbDbRbVXn9FcyEaNPf+VHr36PAHeI1?=
 =?us-ascii?Q?3NKunfX8FoM6K+9GI+o/oq6ZH480nxMBnlUhumponi/kTzqF79CG8QiMCMVr?=
 =?us-ascii?Q?4qkA+t2McHiyKbrV5AVRoj3ikEBbptvWL2T3Y5J0fbWJ5Nb7qm/S3v2cS9Ig?=
 =?us-ascii?Q?c+BoPKRdY3LKIamBY5aKJ8SCHKx4TSX7vgZNvKop7GUtQXDSTqJH7J55giM7?=
 =?us-ascii?Q?tEIHYHTI4rytT8EdfyW8eHg37eGKjeEwEL6r4LaDrfxcG/Rp7HDrYr62LKFJ?=
 =?us-ascii?Q?eeVfZsCkO3YmcUi9I1U+yFUpCZcUeMvC36LfYR3ueO+tCztm/U1VRtjm2YG4?=
 =?us-ascii?Q?gjBqdO0DUY4a1reRiWv3jDYAlE06HlE8m2yT3iUtGMdEfITjO+klZCv85Tk7?=
 =?us-ascii?Q?ckkEEBTvvGCCHuLk683cyKX9rSAMYfUuuq/VWZYdHsKACbVNM4yeOhThQn1k?=
 =?us-ascii?Q?sg/BiJmIFQW2Ni8KF3HiJoUcDvPrdvZgScRnPFGV1u90fQBWPngM5s4ZoobJ?=
 =?us-ascii?Q?GfJu9q+5XcrDDgQKsgDTOG7RkbSaBPxI42X0pCaj3pEK8u0wP+vyzbssMOL/?=
 =?us-ascii?Q?/ykmuK3LGqgH+BgK3sq1Ms6EOzkETQaq8Iq3O16SoXJhuciDqFe6r0WSZ+LZ?=
 =?us-ascii?Q?jL5c5GxHzZ0nwl7KSrb6Q3ThvuveShBJyyNV3xfbRsNqc8pubbXER+sKqU/F?=
 =?us-ascii?Q?5IOPgXXvhFN1gH4L7pRJ20eNe2KgKGHQ7ga6dwv01Mc18ZvxY/Tx4lzYrhyV?=
 =?us-ascii?Q?uohsOZRnc0rgrwiPOpiJl7XwCMDO2V3hikfI8cZvxm5KbFIWg10WOnG5t6Gf?=
 =?us-ascii?Q?R1NPZnqEvnFuYtNVBA3RfXWZ+e1qEj1z+0yBWFfPNw2d0kMQ1AjMHSalzSpk?=
 =?us-ascii?Q?8CT8e38C4govkASttreMbYOEqpLWqRRiqbqYWKQOSOmTmzZ/NgiiyyBfa8Dd?=
 =?us-ascii?Q?cN14b2edpMhlIdk+kTayRhZqtIECH6xEZkS+Ec3tfPzfX0rbdqSVKVbqx4Vx?=
 =?us-ascii?Q?uM16RmRa4KcuW9r/iQJRypCnVzoKA5WlEm8pF0eC/o8xAF740h+2KEJs68+3?=
 =?us-ascii?Q?oDgcYzUhk8lgBSS6eXkNCT6SrVJUBkt1ZWh65eBvTyCTCvftJ3skEVvM6A+W?=
 =?us-ascii?Q?og=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: efe6835a-34e5-4f79-dbaa-08dc4200b8c4
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 19:23:24.9244 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hJZf12zJiwLBvEMrhjgdHpLe1b5MyaA79S83j3qoewyYj7NLGIjK/vUaB4Xa9b+VmQSX9w2rQJ9q0ByhDznhnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4526
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

xe_pm_init is the very last thing during the xe_pci_probe(),
hence these protections are useless from the point of view
of ensuring that the device is awake.

Let's remove it so we continue towards the goal of killing
xe_device_mem_access.

v2: Adding more cases
v3: Provide a separate fix for xe_tile_init_noalloc return (Matt)
    Adding a new case where display HDCP init calls which
    are also called at display probe time.

Cc: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c |  2 --
 drivers/gpu/drm/xe/xe_ggtt.c             |  2 --
 drivers/gpu/drm/xe/xe_gt.c               |  9 ---------
 drivers/gpu/drm/xe/xe_tile.c             | 15 +++++----------
 drivers/gpu/drm/xe/xe_uc.c               | 11 -----------
 5 files changed, 5 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index a221f0cf4bac..b2bd56a9b76d 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -70,7 +70,6 @@ static int intel_hdcp_gsc_initialize_message(struct xe_device *xe,
 	int ret = 0;
 
 	/* allocate object of two page for HDCP command memory and store it */
-	xe_device_mem_access_get(xe);
 	bo = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe), NULL, PAGE_SIZE * 2,
 				  ttm_bo_type_kernel,
 				  XE_BO_CREATE_SYSTEM_BIT |
@@ -90,7 +89,6 @@ static int intel_hdcp_gsc_initialize_message(struct xe_device *xe,
 	hdcp_message->hdcp_cmd_in = cmd_in;
 	hdcp_message->hdcp_cmd_out = cmd_out;
 out:
-	xe_device_mem_access_put(xe);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
index 325337c38961..0f96b7db6dcc 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.c
+++ b/drivers/gpu/drm/xe/xe_ggtt.c
@@ -206,14 +206,12 @@ static void xe_ggtt_initial_clear(struct xe_ggtt *ggtt)
 	u64 start, end;
 
 	/* Display may have allocated inside ggtt, so be careful with clearing here */
-	xe_device_mem_access_get(tile_to_xe(ggtt->tile));
 	mutex_lock(&ggtt->lock);
 	drm_mm_for_each_hole(hole, &ggtt->mm, start, end)
 		xe_ggtt_clear(ggtt, start, end - start);
 
 	xe_ggtt_invalidate(ggtt);
 	mutex_unlock(&ggtt->lock);
-	xe_device_mem_access_put(tile_to_xe(ggtt->tile));
 }
 
 int xe_ggtt_init(struct xe_ggtt *ggtt)
diff --git a/drivers/gpu/drm/xe/xe_gt.c b/drivers/gpu/drm/xe/xe_gt.c
index 85408e7a932b..063b710a8c7b 100644
--- a/drivers/gpu/drm/xe/xe_gt.c
+++ b/drivers/gpu/drm/xe/xe_gt.c
@@ -347,7 +347,6 @@ static int gt_fw_domain_init(struct xe_gt *gt)
 {
 	int err, i;
 
-	xe_device_mem_access_get(gt_to_xe(gt));
 	err = xe_force_wake_get(gt_to_fw(gt), XE_FW_GT);
 	if (err)
 		goto err_hw_fence_irq;
@@ -389,7 +388,6 @@ static int gt_fw_domain_init(struct xe_gt *gt)
 
 	err = xe_force_wake_put(gt_to_fw(gt), XE_FW_GT);
 	XE_WARN_ON(err);
-	xe_device_mem_access_put(gt_to_xe(gt));
 
 	return 0;
 
@@ -399,7 +397,6 @@ static int gt_fw_domain_init(struct xe_gt *gt)
 err_hw_fence_irq:
 	for (i = 0; i < XE_ENGINE_CLASS_MAX; ++i)
 		xe_hw_fence_irq_finish(&gt->fence_irq[i]);
-	xe_device_mem_access_put(gt_to_xe(gt));
 
 	return err;
 }
@@ -408,7 +405,6 @@ static int all_fw_domain_init(struct xe_gt *gt)
 {
 	int err, i;
 
-	xe_device_mem_access_get(gt_to_xe(gt));
 	err = xe_force_wake_get(gt_to_fw(gt), XE_FORCEWAKE_ALL);
 	if (err)
 		goto err_hw_fence_irq;
@@ -474,7 +470,6 @@ static int all_fw_domain_init(struct xe_gt *gt)
 
 	err = xe_force_wake_put(gt_to_fw(gt), XE_FORCEWAKE_ALL);
 	XE_WARN_ON(err);
-	xe_device_mem_access_put(gt_to_xe(gt));
 
 	return 0;
 
@@ -483,7 +478,6 @@ static int all_fw_domain_init(struct xe_gt *gt)
 err_hw_fence_irq:
 	for (i = 0; i < XE_ENGINE_CLASS_MAX; ++i)
 		xe_hw_fence_irq_finish(&gt->fence_irq[i]);
-	xe_device_mem_access_put(gt_to_xe(gt));
 
 	return err;
 }
@@ -496,7 +490,6 @@ int xe_gt_init_hwconfig(struct xe_gt *gt)
 {
 	int err;
 
-	xe_device_mem_access_get(gt_to_xe(gt));
 	err = xe_force_wake_get(gt_to_fw(gt), XE_FW_GT);
 	if (err)
 		goto out;
@@ -519,8 +512,6 @@ int xe_gt_init_hwconfig(struct xe_gt *gt)
 out_fw:
 	xe_force_wake_put(gt_to_fw(gt), XE_FW_GT);
 out:
-	xe_device_mem_access_put(gt_to_xe(gt));
-
 	return err;
 }
 
diff --git a/drivers/gpu/drm/xe/xe_tile.c b/drivers/gpu/drm/xe/xe_tile.c
index 0650b2fa75ef..74ecb5f39438 100644
--- a/drivers/gpu/drm/xe/xe_tile.c
+++ b/drivers/gpu/drm/xe/xe_tile.c
@@ -160,24 +160,19 @@ int xe_tile_init_noalloc(struct xe_tile *tile)
 {
 	int err;
 
-	xe_device_mem_access_get(tile_to_xe(tile));
-
 	err = tile_ttm_mgr_init(tile);
 	if (err)
-		goto err_mem_access;
+		return err;
 
 	tile->mem.kernel_bb_pool = xe_sa_bo_manager_init(tile, SZ_1M, 16);
-	if (IS_ERR(tile->mem.kernel_bb_pool)) {
-		err = PTR_ERR(tile->mem.kernel_bb_pool);
-		goto err_mem_access;
-	}
+	if (IS_ERR(tile->mem.kernel_bb_pool))
+		return PTR_ERR(tile->mem.kernel_bb_pool);
+
 	xe_wa_apply_tile_workarounds(tile);
 
 	xe_tile_sysfs_init(tile);
 
-err_mem_access:
-	xe_device_mem_access_put(tile_to_xe(tile));
-	return err;
+	return 0;
 }
 
 void xe_tile_migrate_wait(struct xe_tile *tile)
diff --git a/drivers/gpu/drm/xe/xe_uc.c b/drivers/gpu/drm/xe/xe_uc.c
index 7033f8c1b431..4feb35c95a1c 100644
--- a/drivers/gpu/drm/xe/xe_uc.c
+++ b/drivers/gpu/drm/xe/xe_uc.c
@@ -32,11 +32,8 @@ uc_to_xe(struct xe_uc *uc)
 /* Should be called once at driver load only */
 int xe_uc_init(struct xe_uc *uc)
 {
-	struct xe_device *xe = uc_to_xe(uc);
 	int ret;
 
-	xe_device_mem_access_get(xe);
-
 	/*
 	 * We call the GuC/HuC/GSC init functions even if GuC submission is off
 	 * to correctly move our tracking of the FW state to "disabled".
@@ -65,16 +62,8 @@ int xe_uc_init(struct xe_uc *uc)
 		goto err;
 
 	ret = xe_guc_db_mgr_init(&uc->guc.dbm, ~0);
-	if (ret)
-		goto err;
-
-	xe_device_mem_access_put(xe);
-
-	return 0;
 
 err:
-	xe_device_mem_access_put(xe);
-
 	return ret;
 }
 
-- 
2.44.0

