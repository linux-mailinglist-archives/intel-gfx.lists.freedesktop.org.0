Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5218788D8
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 20:23:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1A0A112C2B;
	Mon, 11 Mar 2024 19:23:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FYeJMIFF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF4B1112C2B
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 19:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710185019; x=1741721019;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=ySxvZZ+cW22f2GyBxGYYq6Kb0eVtvM99yxptmTTQWFU=;
 b=FYeJMIFFt9Ky5NiU3CNZ0UO+uyTOrir62W6y5kUB3U3ktPPi4QJpYxN9
 nu6MWvGDWLa+gEGMHGvVWsjnd2WwZLOlPXixnhOHXxAaIWFxsErQzzA+X
 7h9maj/CMpIdFiAFhbIyjT8Ku99ZypFdaun0ADRLohQqLZ/sZTctLeWsm
 WFao4k0JABBSBVm+1NWGhlEJBVJ8aU7L8m4lPf6I6oEOFKamEE/7HpBng
 cNIWYGrX5qahnMplqHkC3/uHqtqbWOIAN9ZNSxK0jGZgdztqdRm+9meqR
 l7tYICTs2cGKr2n8eTRThJwVI0qD/boMZFgS3dcRMT0eVNor0ArGUbhyD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="4725830"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; 
   d="scan'208";a="4725830"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 12:23:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="11856956"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 12:23:38 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 12:23:37 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E0pDe3blDzYLx/+vxxi0AMhGJA/2Vd4U085iBB725ju/FFpWou2SNy8paWQcEzrIwMRe3IwA3VMbpAxhDDAscugmZhVdZYUiIx8mWUzjsF3OyMyVF5o5XtCiO7/lPXZ7c/4frCNad/99fs5R2sCZ6jtDWaLNv4dSRJ+KCl5h9toqSiOpTTALBTgusKedewHh8/Vlbwa/58kvtft8Qspli7UysZQCM4tgpZ/HcXBI0S7RjuXbKD8JzAVF7f4UXrjpuK+G3vkE5QdVLuOwCotUScUQiNiT0Tul+IPCs6mnmntlQ+9RoZTh7nb3mW+6RL6HRm6TZ6ryUaDr9DnGe8kmyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=was4OWZ1w3G1oWq++TCMl0dY2SrQOSGQk1Ex/5rwt4A=;
 b=fySpHSXy9gOw2jJXyixKUUg2B1UKs1dGcp/ZCnMEWmz5KepJP0DQbXhZCxPifIWSxlVbu3xVNJRoiSG3QFnKPIF9n9YktLp0Kwf3i3N+IaUC2iCKOyCUWrr5Ph1om10na6dXT5tnhPC+4hBFCTiCpI/0NgZu25hvfoF39pi+d1hGjBbyz7yXQHNnvAKDDPMKOzWS0LjN41K9KBn7O/XHPUJ16tAhKVlydaAu0YtPgpYE1dfaR+tNmVGOgNrrQBDDWq9wCL2mI9wfuVSoJTelblO8qLv8IioAosdxKi59uVeuc+jvWV5Ke7PS3SGGVderuovNpjoCDsbPiLu0kkbl8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB8253.namprd11.prod.outlook.com (2603:10b6:806:250::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.14; Mon, 11 Mar
 2024 19:23:35 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.016; Mon, 11 Mar 2024
 19:23:35 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Matthew Auld
 <matthew.auld@intel.com>
Subject: [PATCH 09/11] drm/xe: Convert mem_access_if_ongoing to direct
 xe_pm_runtime_get_if_active
Date: Mon, 11 Mar 2024 15:23:01 -0400
Message-ID: <20240311192303.33961-9-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311192303.33961-1-rodrigo.vivi@intel.com>
References: <20240311192303.33961-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0106.namprd05.prod.outlook.com
 (2603:10b6:a03:334::21) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB8253:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b810e19-9a8b-47d4-de64-08dc4200bed3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bjyoFMsjVlU6jYY6uje7o9XP8Ek7kNzaibqlU3YnE0TvxgDwftZU2T8DbA824bfShXHAce202YK7XxklwiVjqRuwaf52cVYzEJ+rs806JK+SH2ASsa0aSCykx2hLfmK5KdM31o9mjn7H+x/yFC2Us65LtGRtlj+H+bFc/1ojea+811jY0E1sd2KNacBDZfyOil2WVubKCJbuZFs+F1al2kNRS2xbUmYMpdF5XgIzKiqA5MNpFKNYwvm8d5WAfMnEyRJZqXuyGe4s33rYigS6Se6AJKGLscwxSzOUgzGYybIP3H8NR5bxgIcEMjK0ufVf8s6s6gan2pebfjy8rE545JmGo0qQntDrrmykQnebA17uq7foHxsCyR1jVg53WXD4YKoGNlt3dqmYjFbvJ5FNu80k1fc25nbPHElc9/LT+nP9PMZWU6Xzzo/chgs1BbhS5JO8h4sM+wRY3LOcjH+/EAurGvXNoxiVq+LUcI9Sk6DlPbQc1Hl44GaNX1+EypRvghp+WgSpHwUp7gIQ6Un/sUPRsm5O/9Jr3mliXASGKdZHv9Vgoi1OGvuvhyT9UnusVkwmTZ/Jw6Gs0PgZlYLhe6mEqjF/MBur/f+7Mp0n8tjV1XzINU5z8JD/Hkqxqv9by5n7/P0b85/IwqgJ8L/QWbuHuXCKYQKpuKy02GBAgfA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4M7JweIa86ezWcPvgRknbtJYF5QCOugi6lSSAHX2vndjyQ+ezWH/1dczAq1d?=
 =?us-ascii?Q?s5y8luLBRSV4faptbr8J9yh8hY+cbFDX4y2c6MgV5LoTsvwRDPI76k6c33L6?=
 =?us-ascii?Q?s14L9H+m7yrG+kutPV09evczCk+W1bkoqAYmJOADasDoxDQykaYp5nnPoaHF?=
 =?us-ascii?Q?vPBrvCZzQu6100SUxc2eUE1Af2wlfD2EcxEPGosfMQqvHmZdoomMsChyvxU8?=
 =?us-ascii?Q?uAwxXxXt6ssZwgebsuMOZ2t+7kwT2tzynV+CrbAuwgEXPxh45YbONKz6Ev8v?=
 =?us-ascii?Q?Io0c+AjfPyxixQnrwPGSHhzQo7oG2UV/v/Ud0ovk1tLj8rPqndUeYr34j2uH?=
 =?us-ascii?Q?CpGRetrfq9tI16xHoxxpE/PnlELjnTdblbOtzHaGruklX61wEGcPynjuPA/4?=
 =?us-ascii?Q?l/GDNnCVL+k9PbRlvikBfjPetVXoh0oSba2P4kYOVJ6zYEb7iyZlCnhkz6qP?=
 =?us-ascii?Q?xD6aCga4SL0RV+I/T3aacikaIrnWiVV6tYjCBuqObuxIca1LKJMKfNiXaQ5V?=
 =?us-ascii?Q?4tYcPUrx7jRxGpGSByeIfVzUkdPafgBQqcf4AITbLzDciBh7gPx4+xS1FT6a?=
 =?us-ascii?Q?iPwzR65Vj0Y3v5qLQ290JL6M+tIABZztH+sEZCWCnxhdUGhn4EtgnQEL0tPN?=
 =?us-ascii?Q?YIXcqAoMlghp0TmAONRjxk1MU30oSvsdwdpoeWMnugs99o2NfirgVTM6EJkV?=
 =?us-ascii?Q?oc1l1Z6yQZISqlPuXnvozf0x/DQ7nw3lfu5lNkcuxazAtQvcEPYwdJKTB7Eu?=
 =?us-ascii?Q?ipQxwmUBGxuXPqcHy1wNiigpcJvl4h/9jK204TwKsrXAvX6jCk8q44RsZSo/?=
 =?us-ascii?Q?FXJiIsBB4zzma1wgQxzgfJdg6fv8PpGoPNTTe7+d7ZTiNfuOuHZR4W5E/f31?=
 =?us-ascii?Q?+hhGfyaa7rFV2+fCELQVBo3bIjW1OPLBmRENhb4NfUOWT8LIOq/WpU+zOh2J?=
 =?us-ascii?Q?SM6jzdkrLWeecHbJU+2kWY9UYfKPomKd7r62Oh8NL4QzdDZmlWM8rIMRPoua?=
 =?us-ascii?Q?D1WjuB4X8Ai/0ByuGf6AlJ7LOJ3NykrwhiyFLcXEr6K2XNYEqLyNg40NpE+K?=
 =?us-ascii?Q?n77e+X41fCm9S8Mxr2Dty5o0/Rr2G8dsAvJ3NylAEuaQKX8V55kD0papax+A?=
 =?us-ascii?Q?bZTyvqblWUGdsnnfmDKAh2mBixtz/HTsu2Q7Tgp8PKqv3HyaxcD/hpUvtUgy?=
 =?us-ascii?Q?Cq6eZaiYE9xTmsuWxiPdfEsG17ZZjnELUzEEjsL7vXWduxmXFhK2EfLFiBM+?=
 =?us-ascii?Q?pesmh5nL8OfA2l/9S4f2UWWHJWRyOAs/F3qDpLYrXvT5v7pUddADh4pZDH6a?=
 =?us-ascii?Q?1R2r2U0tXhPg6nyeDfz9Nrj3gkXncCMGEADUPmQnxxE0GGCkIK8AEA/PNAU5?=
 =?us-ascii?Q?KVZFTmGmQwlNmDjgGVkqeY9QcZtl3w1eF7siGXWUmZ3jNZ/HNBu91hBUbvU+?=
 =?us-ascii?Q?dlnE9h2n3gDjrT36+AJMqdPyGjvk90DuMOVNBXQS4joinyJe+c/Rob28GmEZ?=
 =?us-ascii?Q?6K4MZjMAs+KDCzLqXMlQCZmwp7SiYo0BWXznWlkonP26yjT9B8DL41Ue8GlD?=
 =?us-ascii?Q?sX/jVkQyfnTcccMKWMiaLoTCjzP4W89BWzCcvf+uhmR+UNfPB0B6QyjEfT8Q?=
 =?us-ascii?Q?DQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b810e19-9a8b-47d4-de64-08dc4200bed3
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 19:23:35.4846 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FMpaBJnOh7f+CiizyA9edEfgRpHemxEAxhceClIcj+mQY/IlumbhO4F/cEOxcb8NNlm6x87qlJdVwbZcC0fQIw==
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

Now that assert_mem_access is relying directly on the pm_runtime state
instead of the counters, there's no reason why we cannot use
the pm_runtime functions directly.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/xe/xe_device.c | 17 -----------------
 drivers/gpu/drm/xe/xe_device.h |  1 -
 drivers/gpu/drm/xe/xe_guc_ct.c |  8 ++++----
 3 files changed, 4 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index a9128bde85c1..6c7850dd70b5 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -655,23 +655,6 @@ void xe_device_assert_mem_access(struct xe_device *xe)
 	XE_WARN_ON(xe_pm_runtime_suspended(xe));
 }
 
-bool xe_device_mem_access_get_if_ongoing(struct xe_device *xe)
-{
-	bool active;
-
-	if (xe_pm_read_callback_task(xe) == current)
-		return true;
-
-	active = xe_pm_runtime_get_if_active(xe);
-	if (active) {
-		int ref = atomic_inc_return(&xe->mem_access.ref);
-
-		xe_assert(xe, ref != S32_MAX);
-	}
-
-	return active;
-}
-
 void xe_device_mem_access_get(struct xe_device *xe)
 {
 	int ref;
diff --git a/drivers/gpu/drm/xe/xe_device.h b/drivers/gpu/drm/xe/xe_device.h
index 2327b6c0ae6a..b45592b0bf19 100644
--- a/drivers/gpu/drm/xe/xe_device.h
+++ b/drivers/gpu/drm/xe/xe_device.h
@@ -134,7 +134,6 @@ static inline struct xe_force_wake *gt_to_fw(struct xe_gt *gt)
 }
 
 void xe_device_mem_access_get(struct xe_device *xe);
-bool xe_device_mem_access_get_if_ongoing(struct xe_device *xe);
 void xe_device_mem_access_put(struct xe_device *xe);
 
 void xe_device_assert_mem_access(struct xe_device *xe);
diff --git a/drivers/gpu/drm/xe/xe_guc_ct.c b/drivers/gpu/drm/xe/xe_guc_ct.c
index 355edd4d758a..8d7b1b42b2e6 100644
--- a/drivers/gpu/drm/xe/xe_guc_ct.c
+++ b/drivers/gpu/drm/xe/xe_guc_ct.c
@@ -1203,7 +1203,7 @@ void xe_guc_ct_fast_path(struct xe_guc_ct *ct)
 	bool ongoing;
 	int len;
 
-	ongoing = xe_device_mem_access_get_if_ongoing(ct_to_xe(ct));
+	ongoing = xe_pm_runtime_get_if_active(ct_to_xe(ct));
 	if (!ongoing && xe_pm_read_callback_task(ct_to_xe(ct)) == NULL)
 		return;
 
@@ -1216,7 +1216,7 @@ void xe_guc_ct_fast_path(struct xe_guc_ct *ct)
 	spin_unlock(&ct->fast_lock);
 
 	if (ongoing)
-		xe_device_mem_access_put(xe);
+		xe_pm_runtime_put(xe);
 }
 
 /* Returns less than zero on error, 0 on done, 1 on more available */
@@ -1273,7 +1273,7 @@ static void g2h_worker_func(struct work_struct *w)
 	 * responses, if the worker here is blocked on those callbacks
 	 * completing, creating a deadlock.
 	 */
-	ongoing = xe_device_mem_access_get_if_ongoing(ct_to_xe(ct));
+	ongoing = xe_pm_runtime_get_if_active(ct_to_xe(ct));
 	if (!ongoing && xe_pm_read_callback_task(ct_to_xe(ct)) == NULL)
 		return;
 
@@ -1292,7 +1292,7 @@ static void g2h_worker_func(struct work_struct *w)
 	} while (ret == 1);
 
 	if (ongoing)
-		xe_device_mem_access_put(ct_to_xe(ct));
+		xe_pm_runtime_put(ct_to_xe(ct));
 }
 
 static void guc_ctb_snapshot_capture(struct xe_device *xe, struct guc_ctb *ctb,
-- 
2.44.0

