Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 901008788D1
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 20:23:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E0E6112C22;
	Mon, 11 Mar 2024 19:23:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bwHVUbyx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF60F112C20
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 19:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710185002; x=1741721002;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=KhqWmD8qlozfu1bc1oCAIXvYQreVkTMp66V3YFFvhr0=;
 b=bwHVUbyxJPKmwm0kTuOf//WDtLaSEeq5YF3o9I5MOwmlS1IWdXKn4SBQ
 RwJ4+LSrq/hdc4mXGDnrqBMU+FGXg2OkqG/6vpbtrc+poTQSHxHub1nc+
 ui8c/5jE5kNhhJ86JiMwRnvhnsjwmi9bpU70UyU9SNyH5diNLpnBjKJYu
 /BQFf77DIE6jPa5+bivz7gkMNXrqeRSLW7vbtk7AUXEpOg1JqQ0B2ERe1
 MbtOsp0eYcWZFlSHFt3ebGAuPlZnnppFxd4LirrREiYgfOdCJblRcvMBb
 RlFnE34A4cFMNYtw/3kvM1pzcg0kcRft2b+HLumalMV+rFxCTibsGuSYT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="16270822"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="16270822"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 12:23:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="15762106"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 12:23:20 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:19 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 12:23:14 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fP34+cduDfjgePir76HTnXUdgDJmABbixFXWTIG3N7t7Vh0prPbCY7IRKRdVTpsKLiB4phWktpPLOiphGPW6tckul7ycLik83W1i6YK7rgE37qTnCyyzKoS87sKvnOcOPxjNxnSt/LspeT+A+gO11unpCVW9FENT5hW6DN6jjppR/+QBlba/w4cttSG6I0aRY/pgD35K3S4NpWkkAZy3tJfUd0o2UuJmGrlCxLgL7Ipjmhf5SvQXf8DQ/bzdS8fTjpimtbcYrEVpGc4pXEnrzwEIGhzJzr42CR9AC8DH0yu2olK62CDSeVCEg2cfRRSdGhN/LLFz6Xw3pcfNIa9Xtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b1WWAD7UnCdGDidhQw2rN/uK6XfBrAwCZCcUw7E2EkU=;
 b=k18BjzsQB51AkrxZeg+toS5/Aw+LANK9w3bpAzIOzQ5w0+tDgmYqxCQp26mzJjFbrUbQweLZ2dRbCbEEChG657j9iIROU/ruqaLo7Nsk2Rw17b3x1Bc7TU35PKVEvyfrRtN2ZtAN+rZvHbFJ1i0e3cWaT/ukTo+YifE5nJPp1jJ6aS/JqR/ExYp5TYL46yrJSgMXUsC5V3hC1valZf+SoD/ZZ6/Dq9Bx8nyI5SzMheS02QP1e2FmVIa2y1e0KQHYer/ykx6fFmQogdpJkRq+dzS6RUWNt4mkuBqrcn6vFzm21q4lkJc9ErPQE5cvNYOlv8VAkoXO1h12+eBBlPT6TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA0PR11MB4526.namprd11.prod.outlook.com (2603:10b6:806:96::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.16; Mon, 11 Mar
 2024 19:23:07 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.016; Mon, 11 Mar 2024
 19:23:07 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Matthew Auld
 <matthew.auld@intel.com>
Subject: [PATCH 01/11] drm/xe: Introduce xe_pm_runtime_get_noresume for inner
 callers
Date: Mon, 11 Mar 2024 15:22:53 -0400
Message-ID: <20240311192303.33961-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0198.namprd05.prod.outlook.com
 (2603:10b6:a03:330::23) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA0PR11MB4526:EE_
X-MS-Office365-Filtering-Correlation-Id: 9fd93e34-8f18-467e-ecef-08dc4200ae75
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K5ctWqczbRGmMr5LQuZLbDm0ZILz73gpev7rmBSceg0NEdonz8l+Ve267i/w6FSZ14kC0Hb3BVQaMjcg3HTpo2PAA756WfNoVe5W0NU2XRsmyI9wP4/e/pfonc+UsvzI1CrRMtDsXjSi2T8Iqezi3xZSItPJ1yRW40Di4TpZwvkE1QpfsnTLqoLsT9uzC2vO7z3cJ8HgqkS7XTCdgunGVQD1pPTINBaM+txB7e0UD4MkZT8MDfdtNWkGQeIrKzUwwquzu9ZHmg8pzlXPj/S8Dp7Yragl2NiI00ZQxtt2qX4GibZgwZJrm1X/P9gcGJy7WTLriTNke8G5POYPOOctYL02CaWubt1G6y86eIgv4Rvz0V6FBwsSzad50Mv/2VG2yay6uBuEcOALYO7rsKPk2+cpAlzOu9i2YXkInJS0s0xUMtGcKpL4ao+UB/VVr7GwXyJbvsSsYJm09+AB+btsHWrc83MyLxFtfUsjHxRAR+V/cdEc7QOytKj+pccF86Yc3IGIA8ctmhdrA95EIZEKpNMYOuYuojUek+mdRiCY+PSMOv4S4YVnNBL4HMrK0b3aUzNR3CJHesvhg4KTGWJQ4F8n8rzGRp+eoj6Ukdj7bRqItn+m0LhYvGMSUjPIPLp+lnizmIR1iMZPPkSzxJnAxaWbrtJ/QxtBQZN+74yzgsA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WtqJCG0PumRcUsv4Q2+bBkJb2lp/S4tDEXkJUSE+1eB7fAyCOHwsPXZVcVeh?=
 =?us-ascii?Q?3vEnZj7soBll1SOo0DDdhapPEIW5UZ7kzIigqHn6Vf7VCw3BoF4UczqJIy5j?=
 =?us-ascii?Q?sUzzPVLO4BZbRn8MFm7rGppVm5nYTVKm5i5lG2KJn7gJgs1K2LqG6js7EL88?=
 =?us-ascii?Q?qQUYWccwF+t99r+v1l0TetRR9djkxPmDG5pS0Z22l2RJudgm7G6SMXKsp5Xh?=
 =?us-ascii?Q?1vLdfxTSt4v+rmj9Q/WdovAzA8AICjoyYzZ42wF3AzhEz+TePbt5PYHjhBB8?=
 =?us-ascii?Q?IeivETtPbw7aoAIVGFWVQLJAtOJHSIRj2GKRCbdkAMaiEkcYmpjAmQjJCT4n?=
 =?us-ascii?Q?eDvNudHPaZCxFjdycsRPiXQ29EYYHmYiq5nlFRxwwbSciwa3b81eqVuTZyfQ?=
 =?us-ascii?Q?y4ytnAYCx+FHrENg086jPy0DllRYTpADtsKcPWpCheHL4wQG8cg7ZxHAG6YI?=
 =?us-ascii?Q?QjY5SERJijo86rT6IUXcXtg0BKyLZuHM6O3azyoe0kmqIaKqu75KqmiuJbwO?=
 =?us-ascii?Q?2U01yvsOf4d/PTNkqP1MNuqAxg41Xf10iekmjBnMO6+vh2y/5Yl/JuzhgbzA?=
 =?us-ascii?Q?s+IXo7XvFLVx8xQO+QSMYLtGPcJk0QqF8ZMPSsALQg0+5zDC+jLDkWNzrJau?=
 =?us-ascii?Q?d/Kga+Chz29mN+TIjdPbqZzwCHyC95PdBuNl/GQFPUGI2TCA/6HjVxsI93os?=
 =?us-ascii?Q?UsiDTtf1M5Hai8KkfoagqTRLrg9NhRJhzvWF3FleSH6pnoC3O7u2erChbAxS?=
 =?us-ascii?Q?pLKt3pjLhMqVxTp4zHK3tbhVsGdkD1UVT38AmcchyEW8IdgaHjckf2qOD509?=
 =?us-ascii?Q?rxDnygl4gTeD+N+KoFoHoul14/S0LqxDK+nEfOmH01jyTbpSDqhrtjZSPPA7?=
 =?us-ascii?Q?q+UhgsQCs8Wh4ZSlEldigFkkbwZXcYLn+Yv1jyB/2QoItT27DRnjiEIhbfSq?=
 =?us-ascii?Q?KpOH+I91ZTIQgGy46t2HCFPBbvZ9YESSpgXuHYAOZJdQ4l0yHkeGtoss3nO+?=
 =?us-ascii?Q?g8v1E8g7lh6ZlaiTQlbdVpIwTYhAmkMifCWMnfGsA0nGBrA5ec3eDyLOqqqr?=
 =?us-ascii?Q?0ezJoyKtx151fYXsh5HdXwUqT4guTv7/t7h5FCH3L8cGLKTdG90dyw3Ye/d4?=
 =?us-ascii?Q?JEDlkri+dLzkpIIzqUzyUOqVzGVnCYZ1WerOkDocxVzsQZ570BSI8d15wR+/?=
 =?us-ascii?Q?P0oXbV2t3fhh8+vZ3edJ0zThj0b51e+3Xw0eRkv/56MmgN8LS5U9jorBYi7j?=
 =?us-ascii?Q?j0xR/IfOJVyE47TVoVZFGDHdho2rQzF27EZuSKH0MzJ5cu8xZx2SlYFWtSqH?=
 =?us-ascii?Q?4uY0zmRG8nj4R4K/VE8pFPbGeXvHVsJf/PFjqJ3hDIcf9Tnfw4G00oqBKLdo?=
 =?us-ascii?Q?isAYu3vP7fZXaCEA50XQrfVuKV5IisqCe7alKZs9MAU8jOqLlzuCSMwhTeTE?=
 =?us-ascii?Q?YKmbIdxBgNrCOmyXrbYeapWMxl+oS8yD7QcsjdOrYljRlw53RtKFQMck1uNu?=
 =?us-ascii?Q?iLAsOsEv4T3llFGvjzbM2W9G27BI+a5lUbm5P2OOiGHFEBgiL11YqlyEIJ+F?=
 =?us-ascii?Q?t45Tdm4zePz47fGd0rnbANlXatG/nY2OD14l39FeXYuIEMFoxXub9aN0Cpl9?=
 =?us-ascii?Q?ag=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fd93e34-8f18-467e-ecef-08dc4200ae75
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 19:23:07.6475 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dSYSOtJ4KJWGxOCIgB1huqmmi9CZVT4/Om7/uMMe1w4t+QelQiVitsWbEtLhTIwL/j/XylmNKok5m9genDAxMw==
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

Let's ensure that we have an option for inner callers that will
raise WARN if device is not active and not protected by outer callers.

Make this also a void function forcing every caller to unconditionally
put the reference back afterwards.

This will be very important for cases where we want to hold the
reference before scheduling a work in a queue. Then the work job
will be responsible for putting it back.

While at this, already convert a case from mem_access_ongoing where
it is not checking for the reference and put it back, what would
cause the underflow.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/xe/xe_exec_queue.c |  2 +-
 drivers/gpu/drm/xe/xe_pm.c         | 20 ++++++++++++++++++++
 drivers/gpu/drm/xe/xe_pm.h         |  1 +
 3 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_exec_queue.c b/drivers/gpu/drm/xe/xe_exec_queue.c
index 6a83bc57826a..f69a9c99329c 100644
--- a/drivers/gpu/drm/xe/xe_exec_queue.c
+++ b/drivers/gpu/drm/xe/xe_exec_queue.c
@@ -128,7 +128,7 @@ static int __xe_exec_queue_init(struct xe_exec_queue *q)
 	 * already grabbed the rpm ref outside any sensitive locks.
 	 */
 	if (!(q->flags & EXEC_QUEUE_FLAG_PERMANENT) && (q->flags & EXEC_QUEUE_FLAG_VM || !q->vm))
-		drm_WARN_ON(&xe->drm, !xe_device_mem_access_get_if_ongoing(xe));
+		xe_pm_runtime_get_noresume(xe);
 
 	return 0;
 
diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
index 9fbb6f6c598a..847b263afe70 100644
--- a/drivers/gpu/drm/xe/xe_pm.c
+++ b/drivers/gpu/drm/xe/xe_pm.c
@@ -477,6 +477,26 @@ bool xe_pm_runtime_get_if_in_use(struct xe_device *xe)
 	return pm_runtime_get_if_in_use(xe->drm.dev) > 0;
 }
 
+/**
+ * xe_pm_runtime_get_noresume - Bump runtime PM usage counter without resuming
+ * @xe: xe device instance
+ *
+ * This function should be used in inner places where it is surely already
+ * protected by outer-bound callers of `xe_pm_runtime_get`.
+ * It will warn if not protected.
+ * The reference should be put back after this function regardless, since it
+ * will always bump the usage counter, regardless.
+ */
+void xe_pm_runtime_get_noresume(struct xe_device *xe)
+{
+      bool ref;
+
+      ref = xe_pm_runtime_get_if_in_use(xe);
+
+      if (drm_WARN(&xe->drm, !ref, "Missing outer runtime PM protection\n"))
+	      pm_runtime_get_noresume(xe->drm.dev);
+}
+
 /**
  * xe_pm_runtime_resume_and_get - Resume, then get a runtime_pm ref if awake.
  * @xe: xe device instance
diff --git a/drivers/gpu/drm/xe/xe_pm.h b/drivers/gpu/drm/xe/xe_pm.h
index 0cb38ca244fe..119b630ad1d1 100644
--- a/drivers/gpu/drm/xe/xe_pm.h
+++ b/drivers/gpu/drm/xe/xe_pm.h
@@ -31,6 +31,7 @@ int xe_pm_runtime_get_ioctl(struct xe_device *xe);
 void xe_pm_runtime_put(struct xe_device *xe);
 int xe_pm_runtime_get_if_active(struct xe_device *xe);
 bool xe_pm_runtime_get_if_in_use(struct xe_device *xe);
+void xe_pm_runtime_get_noresume(struct xe_device *xe);
 bool xe_pm_runtime_resume_and_get(struct xe_device *xe);
 void xe_pm_assert_unbounded_bridge(struct xe_device *xe);
 int xe_pm_set_vram_threshold(struct xe_device *xe, u32 threshold);
-- 
2.44.0

