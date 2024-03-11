Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC038788D6
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 20:23:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5897D112C2A;
	Mon, 11 Mar 2024 19:23:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A+lCz8dp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A23D1112C2B
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 19:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710185015; x=1741721015;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=zlu1RWDfn/nNMQBT7TscusInSrYqBmN4s0Nwr2cYktA=;
 b=A+lCz8dpy9iLpVUsYvdOP5p0X3INm+3jrjR9u62Q74RO7+713gE9I1WA
 x2tdl/gnDMMvzpDY3PuhSbDdglT60BUTLWHwxs8mKlQA4Aq4gG+RQXbCU
 UIBWfU1t6q9bRamXD9J+hm9AQi/vksz4hUqDyD0dE8bho9gwyPg83xyj3
 WNWw2qD3+rpFxQgAtH/TDaxKawmUOzHTSSKKfKVPMFhUxf1Qgs37tSJw6
 qtYwRaYPSp8/G+1wOOuwX2ZGmnDNg122lAJQBM2kIn+NSys9pwbcASQfH
 NXeLW1m6kSm1L7z0G7ov7Qbu3ZHuuLdMndiWM4aZhVguU0KOWOXvcr1S0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="8627097"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; 
   d="scan'208";a="8627097"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 12:23:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="11344352"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 12:23:35 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 12:23:34 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OtZlHLx9EltcdcPcxExoFz1UCfynG/DHnHx8zjAWoRF1wlHOrHfDOJLtbmVa0lWWiswtNWO58rmdx9/p1QomWHdBzZFqawZEShz3iYw9m+MQXJgy39Ue8g4+huK4sMBYUIcU7li8Clf9OZHDm/WUhCG9EXNbR/b7Ty78/kybc9dR15qvo21PRJ0DBkskKz1YL4BA6rY4DJtUIp+0BbSeeOxmnCUGA7Z+6698e7I/PyLpEYAJ8eBgxXMVlG5OGYhGgmNk0E8FQEkzibu2aE3QFN1AeftDku42yRYXWLq774A0oMV/u/mTpP+X30qx9SuXicvJOwDlbwqj5Rcypw2R3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wuNcwmGliE5s4pR8T2OX5oSKXcK4n/S8N9PD+v73ang=;
 b=eKZYzE1Ph5EBNelIvuJ2By6zuWXug88vIXeD10+KVhrafSTJ7SVTvp9dLU6FeR4rslGHaSyiR2ySmMPOJNz7rT6TW9xQDmdFeWf14c1Eh/4p+LUQvQUBvdbuY9yotvARAMmcp/NyeQvX/XYTvjUODU+gKfzmmtdrrOgjx0IAa/XJ5nbz/M7jgZqfRUN9chEfkbPQm++HNYkmgUkr7j6Us2REIsiQQdIndqg//frLjHok1xWRtLqZ1LgxHrfwfj44n5GdPhJzSfMfmg6j3b4cu4HABDgQnjXSTs9qqgjhzS7Pa3Mg+gXZtZOSmz2aCZq4KThNU/Y5QNyxjxR8ykXwHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB8253.namprd11.prod.outlook.com (2603:10b6:806:250::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.14; Mon, 11 Mar
 2024 19:23:31 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.016; Mon, 11 Mar 2024
 19:23:31 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Matthew Auld
 <matthew.auld@intel.com>
Subject: [PATCH 08/11] drm/xe: Removing extra mem_access protection from
 runtime pm
Date: Mon, 11 Mar 2024 15:23:00 -0400
Message-ID: <20240311192303.33961-8-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311192303.33961-1-rodrigo.vivi@intel.com>
References: <20240311192303.33961-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY5PR17CA0012.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::25) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB8253:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a59d53b-f09f-4678-f93c-08dc4200bcb9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: v4Lr73xxIJOofG+CJlF4wj6t4W6Vz2Whud6028v3/P/vv0S0tmlzqsEWXl7i+51O47h12A8YTVeEpRSYPhDCVkXsWY+h0fPEvemFvenf2ysCD2fy9EaDtQWkX3pm04aU2Z3F9cIgrGRxjXLb6S2KOH0120PvkIj4vIRQF+bpHjqjIB6+PBsJFxxlNCA/p9+xYLo1hh8B9KgVMC1Xg2yCTzCpkOqRIE6lbwEEtop5MvyRfjetvbwNWpWW2tOtM3VEoJFT5bSSGTnuDPwqG6/9Eva1/44vLtKyZVp63vmbT5ChiQTv0nuERKZPAxzmVvVx7GoKpSHx9VvjfP2BQ+Zq/T/zBD1PKYsJlhNzN2Z9uNBCzJHgeIRb43yNOwtcH2feC8LtkLyI1sf+JzM5g+3cTOjeiQnx97Y1/NnMsAAfQU16u/v/v9GrwJdI+vd7DzYz8dW50vO38zoEnF1+vtsJ8pjJL+DtN8NoiNbVnQy1efN27Edwh9Gobr2EArvV3EerpUvb8vGDw2lg7XcYVrWMIdPHRKjjLPSZhoBlkGvm9jlsgV3qw1rnMKrre2jWeUObnCOnSLptkz13XBsGrJjtqCp+zJYGoSoix1dWmOU3D6RPHwkr5dZ+xHqVl1TmtNhQ+CYgp7PEJAufMMoMxaBmg1thpTDTMKymlSAvSaUeclQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6rlsl4KC1B5FO4Im6SeB0nOczj9NKtM2CsBjDCDdPKbFKTXANrll7oQHY5yq?=
 =?us-ascii?Q?ouihPbFTn9h9raEtQAqwRFbNhd5kl2GuX0Dc6WGowKDcn/4xRTlHMZbH/A6i?=
 =?us-ascii?Q?KqXCJ+JCIjMI9WkEOlvHL39Lp4v0tfEq1fBu9nwyiOfm8/hP/S/yG3Mr1AIx?=
 =?us-ascii?Q?k09pFcTF7F9jIMBPQVwZzKag3FPsoWICRS3n7CuarMOET1VeLl+4NbtnhTun?=
 =?us-ascii?Q?GVUTry2f3NRf55IFVBx7jJpIdNXjAWoWV2aC99+wgyHy/8yPD4jBM3dkrLyT?=
 =?us-ascii?Q?M2T7o0W4rNqXScNDmgHYNFCbcw78Bd3RRQ3+TAk/mqmR9e2JqZXb61UqJz+O?=
 =?us-ascii?Q?dHdK4WToP+/+SCIifthe7+Qh1ywKlZKKz0kF0sNFFKLBR230I/Klv5VzKrLc?=
 =?us-ascii?Q?1cNwVQXIiIMz6efNXgUl30qqDhns901ISiJ3fABsZypU7adoBQWy5FLhgPxy?=
 =?us-ascii?Q?+5ZUUE8I7yttbDMxPHS+ANH6YZfkSSkfQTGtTweO+ZuhrYCREJeZOJLbBP8z?=
 =?us-ascii?Q?Zt9WarvRCWVkt0WwU4Ffd1HhE8t75GVq4LyjWY+fa0tiXLhwQjfyJhq9QOkb?=
 =?us-ascii?Q?2U0cFT8VlHm9zFcKdzrnCNn+RU7Wy/KkciN5X7JFwXvm2XEGBSLPjrVLe3pq?=
 =?us-ascii?Q?PQj97z6+qy3RZPIGweif6aBumwGOEJxI8GpA7aSpcccYs+L9/V4gLp32pTEh?=
 =?us-ascii?Q?mUtiMwye2hYk1sz+JEIOXkB7D4tWGyFqLHuUfEQQqPWc7Ej3DN/ti8FFpiHB?=
 =?us-ascii?Q?VNC8JuzlHPvv3qqZhNWK0Sfi5SJGyAQba+rv0ejVoW0F5Em1kq5MvXwVtP0C?=
 =?us-ascii?Q?m4cd/txy1URU0SyvvxnT7l6s+yM3+KfAXyh3GAlD7GvaLdfJ/n0EMeJTJage?=
 =?us-ascii?Q?wcSpI6U9w0y9nGb6GIMyX3vopj1CdW5fsYryGIiBkUInwP9V0f6T0oGdJy/Y?=
 =?us-ascii?Q?y1fXg0q7ycCB2isg9Gg59gOeIoSf/09MuzSIUYBlHz1A6d3AaJ4SLDNECE3M?=
 =?us-ascii?Q?cOE0nNouGp36usoo0+zalYfwOSnERFQeUP9sDVlPCu40TGNZzRCoIhgEJElP?=
 =?us-ascii?Q?fM5dCVqp+djEkiXT5v6i9aC1VxutoulQ+Ce9I3mxEV1qTbYMwHrVyag4iuZc?=
 =?us-ascii?Q?fg404ePbgcQisxpcY45IinenVsxvDURfmjgTw1tiyAgNC3p5uSrjW0/DCBbP?=
 =?us-ascii?Q?rY6KzJtwHK5+bAeg7UrDE2Wx9TOPY5DJMuPXiuP92lODFYO+6M2drHo5leQU?=
 =?us-ascii?Q?M4WhoHqnDrU9vl+w2EV59WOXrcXOla1cQcBVqqgGvs/m9hyogyf2mDD3DUiJ?=
 =?us-ascii?Q?cfYLKnqzXStHAulDF6UqKAqLH+nqdF2iw+CCFh0vUyGmxUs/OKgM3T3ZH+/8?=
 =?us-ascii?Q?M3xYJRqFAfGLTf+znZej6ICnWQ0emN2FKNp+SqCY0wHCkDSi0naMbzWVS3fv?=
 =?us-ascii?Q?zmQonzeGAfnKM4cVtrs14qFHxd89FhInVz0KTNH17b0lqUTgw0087dDbJjpo?=
 =?us-ascii?Q?uPV0zfHtZp35b5Z7C93qEx3WNYkKlMh9jyWolbGoAIDeYPLSPwY8jhmtDwd9?=
 =?us-ascii?Q?Jx1DnVRRY6itRbupMhv2xYgt2+EivbOF2mFkcwsiP2SfmmuWypEdsxvYf0pu?=
 =?us-ascii?Q?Xw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a59d53b-f09f-4678-f93c-08dc4200bcb9
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 19:23:31.6290 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dneVBUi0mAicTineUFwmbg7fDZDSQCLT6yboukDvyzQZh5gI/HfhmEX/GkTQEjZiT+4Fxt8GMMwoYNi94uP6Uw==
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

This is not needed any longer, now that we have all the protection
in place with the runtime pm itself.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/xe/xe_device.c | 8 --------
 drivers/gpu/drm/xe/xe_device.h | 1 -
 drivers/gpu/drm/xe/xe_pm.c     | 3 ---
 3 files changed, 12 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index 49a413725c8f..a9128bde85c1 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -639,14 +639,6 @@ u32 xe_device_ccs_bytes(struct xe_device *xe, u64 size)
 		DIV_ROUND_UP_ULL(size, NUM_BYTES_PER_CCS_BYTE(xe)) : 0;
 }
 
-bool xe_device_mem_access_ongoing(struct xe_device *xe)
-{
-	if (xe_pm_read_callback_task(xe) != NULL)
-		return true;
-
-	return atomic_read(&xe->mem_access.ref);
-}
-
 /**
  * xe_device_assert_mem_access - Inspect the current runtime_pm state.
  * @xe: xe device instance
diff --git a/drivers/gpu/drm/xe/xe_device.h b/drivers/gpu/drm/xe/xe_device.h
index 2653f53bee4e..2327b6c0ae6a 100644
--- a/drivers/gpu/drm/xe/xe_device.h
+++ b/drivers/gpu/drm/xe/xe_device.h
@@ -138,7 +138,6 @@ bool xe_device_mem_access_get_if_ongoing(struct xe_device *xe);
 void xe_device_mem_access_put(struct xe_device *xe);
 
 void xe_device_assert_mem_access(struct xe_device *xe);
-bool xe_device_mem_access_ongoing(struct xe_device *xe);
 
 static inline bool xe_device_in_fault_mode(struct xe_device *xe)
 {
diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
index 393f14411ae0..3e92f09b8d83 100644
--- a/drivers/gpu/drm/xe/xe_pm.c
+++ b/drivers/gpu/drm/xe/xe_pm.c
@@ -296,9 +296,6 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
 	u8 id;
 	int err = 0;
 
-	if (xe->d3cold.allowed && xe_device_mem_access_ongoing(xe))
-		return -EBUSY;
-
 	/* Disable access_ongoing asserts and prevent recursive pm calls */
 	xe_pm_write_callback_task(xe, current);
 
-- 
2.44.0

