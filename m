Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC7B9CF9C2
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 23:28:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1CB710E8FE;
	Fri, 15 Nov 2024 22:28:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hnso9ZOj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9156110E8F9;
 Fri, 15 Nov 2024 22:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731709712; x=1763245712;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=KuHkMRkDh36bjpgpgU9GugG34Z+Ay/WeNCnuQGfFcgs=;
 b=Hnso9ZOjItyPIlrR+9mqAlhGrnnGNY9RZxvrAYv5yxtbnhJnqyEY8rJM
 X5RbZLttLdup2VtowjJzbLwBYCDuTFYIjOQM/HbU8LIloNhYc/dltSAJ7
 aglx6a5jBi5NE8bY+UDtAXF259JwdIQ+mqq2ZgMO1Hgo+WMA35btE1+fx
 gHKGjGtyM66rD8fEz++H7aLhYHKXce2Y0abwWcGgNGoo//xpR9a4Iyb6Y
 qjHRIutoC77wG3ManQQ+llroEMDMMana+rc4ZOJGQqI/pzHZf+Byo5aHr
 cX8Tz3If5vKe9Qgo/GfCpA6PMObNNkShQaGYfxl5WtVzyYiOUTI2xSdl1 g==;
X-CSE-ConnectionGUID: kK46yciGTUC0DrPoIMa6fA==
X-CSE-MsgGUID: Iwx7HMHETOOr3ApFVdpMZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11257"; a="42368166"
X-IronPort-AV: E=Sophos;i="6.12,158,1728975600"; d="scan'208";a="42368166"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 14:28:32 -0800
X-CSE-ConnectionGUID: iP1Wf84sQn+xRW97Aq5DwA==
X-CSE-MsgGUID: EZ9v9+tMSbidgVxpw5iK4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,158,1728975600"; d="scan'208";a="93135655"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2024 14:28:32 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 15 Nov 2024 14:28:31 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 15 Nov 2024 14:28:31 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 15 Nov 2024 14:28:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MMx1++vN1wc92OBddzMzM7wDLC1zRPm7iLmt3aVLcbGxNpF8YcdE762xfbEL77zcVpe1fgdT3K9eLc0V20BleoQFsrhexqDxSmaTQCE0tDwj4/h6HjRKAZ6sjQRd2M2XEO1KKG0reHG4Exy86Lwn/38w/dxpJFoxkwbUjnGARncm+Qn4pjAbkLjbfbAHVb7TObGY0VI2hhvIT86cJrAcouJnOVJlyMXXGZ2cLJ6Kss8uVORneRBoywDpSkjMUudSCEREtZRt4Q9zHb3MdpGumN/S93MZzp5UNBasJQ9g63SJ9sLRP1xz1Cx+okAoP+mbtz4/ABFxSi1JqlBATulPRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zwKKZeErxRs5bMRpW4uFT6aQc7JxJvJ+BKJanFtImKA=;
 b=P5G2Kkamjqdn+IIVEBwHl5qSvc+WXxLD21Ic+rdE0X3vwDMqj0X1wyEZKmnl2EaukL1YFyeeyGt79G8UzK7C1aOx6XVgIEl36t+QZnbqbpWQQNA6Cqm/nj/PjkEBwvJHf325LGUYmPt4KTberSS/f2uftT7iKIzncWcWJKznVyumSlq1YEiUlI2rOxexWuToMW5bzuD/9M/KXMcBdPFB7YSAlTGWJooHUC5wdv2DVQ5l/rdl1KNNFr1Il8+M5pdjxKytfRxISz3OfdbMw8ALnSC4Ch2XWjEtfYTg6YdRDU3E3lkLhDxTrO33vw/3x9RgARGKu72PExKYfjysJUGHtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB4935.namprd11.prod.outlook.com (2603:10b6:510:35::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.19; Fri, 15 Nov
 2024 22:28:29 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Fri, 15 Nov 2024
 22:28:29 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [PATCH] drm/xe: Use i915-display shutdown sequence directly
Date: Fri, 15 Nov 2024 17:28:24 -0500
Message-ID: <20241115222824.297642-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241114202252.239652-3-rodrigo.vivi@intel.com>
References: <20241114202252.239652-3-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0054.namprd03.prod.outlook.com
 (2603:10b6:303:8e::29) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB4935:EE_
X-MS-Office365-Filtering-Correlation-Id: e8d88551-c4f9-443d-7905-08dd05c4d424
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ja+ZANngxtGQt/xP/VqZyQF4DKLi8sxqazxi9/QMDE6jXmW5x9TclZPPgTka?=
 =?us-ascii?Q?Nnf15KrZush0iSvmZjaUOw3CvE8ZsYCCJrTxwdQV5o4jp+8WLUFco77HeXGX?=
 =?us-ascii?Q?jUZmaE+mfLsGZsLp9m3SuSIbSaFx9LoqiLTdrNfIlmPx2o31fnHowj+XdZV+?=
 =?us-ascii?Q?x/pK0PbqJFnhgoQpfCPy7If/QqwYlvKlz4AuVUwewyiFFUEZQzLCR1688AZd?=
 =?us-ascii?Q?plILeyeDlteipwq6YPMG0d2A3dSI1R2QMNzdNyUi/1f8xA0bjZ5DcnmhDWXx?=
 =?us-ascii?Q?f4WnSBs1NIuOWKXIkAM9nj14oSuGwTl/BQb0HKMpIivu8LfiS563Q7l7JHQ2?=
 =?us-ascii?Q?yF53ZLcnOoVqHCUeyyfakDPeEAJX1a2oGQVGNfVaxIi45A4anIuu/iD+6KIn?=
 =?us-ascii?Q?nEpd93pEq9wXm/GYh9PgB3PYj0QAJVKeDh+DlbGbOK3SUxnNBIF6D9ueQMrY?=
 =?us-ascii?Q?pNyZO1RFvXxvRqZhRUHIgZYipZnXBwDkNgstW4k0Csja1UdaExXj5ZUOIws9?=
 =?us-ascii?Q?kK7vJJa3XDKS9YHF/M1l607uZtGhUL6vWwRz2e22egesuLgJIURJuVflWKsX?=
 =?us-ascii?Q?l8VfubHLK8mwV05FrntXp4DyVwnWGbSMF0OS97s5/+wR3uQ4zqVNzG8RvKy5?=
 =?us-ascii?Q?HDnlLehb8mWPfROSa9UPY1qaWTIr94sM5KjecjBOpGf0J6le1BkNyDhMGV3S?=
 =?us-ascii?Q?CKbY5zzMrhZm2J2fd4OzMXJqAnTKMAbdkMKgpP6F2eGU8AkUkPrsmhXhkdaa?=
 =?us-ascii?Q?8o0JCTQ06FO5jLXcLXLO9B2lleAQHbqFibMpgiVcYrh+re1+OpfgDpf58aJS?=
 =?us-ascii?Q?suiQCGzj86IkBZAyRCSUoePyqubJvzjZ2LfXKGUra+vQmrsgN1/2pDj/M5nN?=
 =?us-ascii?Q?b7X13nro6jg7PYYjKEmPhcFBFi3AxPxNzmIBMOzHg5VZtmnPxq1DCNjGFFT7?=
 =?us-ascii?Q?/X8GNxDScpwu/gMAi4dlYPo3DxFrGkcQSDNQ83zFVNDJre6v4qV5Y21q9bvh?=
 =?us-ascii?Q?cQW9c0bzq2t2bqpJxFQh8aAcnWLoZY1Bvf/uyORImAFp2rLvjLv3uPlSLQtC?=
 =?us-ascii?Q?cMcI33xkEEIC3iFBvMM7chypm4/bP0BytchZmfkVJhBBjE7+6VNWcBQpuxMH?=
 =?us-ascii?Q?+2HSVEDtETkTfG2BGHmpXoLkhv32MGGDttROd9TwGKOdG7FVIDf5HM46oWDE?=
 =?us-ascii?Q?7RmGvyws0/k01EXzL69j0jpGFlTP5pXFVBYNlNek2bTxx7eFrd8HBYJoFwRM?=
 =?us-ascii?Q?zVsbFR5yjwNRJ6REUkAI5AxwbFZ0q1Dgml8s3TpxHGDgHJBXh9jh06MPf5aF?=
 =?us-ascii?Q?RJAwB96F8+LzZ1jLxZck3YV7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TpOd2rC5aUuFbh3va0k/TfeZpeLKjgDSNsrDaMfD5m8fKCUzy07ljWaTFHt2?=
 =?us-ascii?Q?SlB+e5ztXnR8/y4ajZeIhseMFzA0QcPQ1ft07tx15XpkUiRB8UeL5Ai4G3UC?=
 =?us-ascii?Q?xnHDNXEXSrHzp91JBEJvnhXoWs21Q9e94t5wr/Ihb5gjBZdfMN9nzk6Qp3na?=
 =?us-ascii?Q?etV3kh7TZMhpuN6DKU7qv/mcpQOxioQ8nkOHVZM6C1+E1IPlY4IX1tfMf5yb?=
 =?us-ascii?Q?SRhjCB/6mQgOldxyEWbqXmSDzoBO8HVOcw1DClTzV672aHdbYpkpA1zCghbN?=
 =?us-ascii?Q?G8VKerBpMPoHOA6Ondl6tkKZmCEiLDgASqRsUSC6cqx4n8OBq1K0ZJG3mfhy?=
 =?us-ascii?Q?r/wbqZtLB6Fmn/ZEtntAAhLk2Ea7e50mLdkkf+rpQjtz7+bDyW3huyIxTTOQ?=
 =?us-ascii?Q?ouGzslIEeV53s2ZILpV2It8arMZM429xZkDzuqRB9neWKEMMSWfyyZunfSWv?=
 =?us-ascii?Q?7DxcMT36Kei9UjXcUxsi7vVBU/07nXrZtY9KLSLnKmP6j5YRYeAsV/SXplMD?=
 =?us-ascii?Q?yWvOpzEN0INnfJzY7/RtvIhVtR8PvrLs0TjAf9+XyGVp7htT8ElE/dbActKM?=
 =?us-ascii?Q?Dh61sZ2gYgE/fNsXTnLgwLfHfoGsbV1ET/qROShSihHCnzqoYfbO3izzQTRK?=
 =?us-ascii?Q?qKXabjfuPKB4x1Ls3s2iamV5Fa6AZxfMgDHyT0lFXsrUUvuhWBzKKV8MYw4G?=
 =?us-ascii?Q?3L+4DGsvcsuoQrL6bFKjetkz/DFpF2+ouyGll2Pzp7C3DvUeY9PzPPQqbnoq?=
 =?us-ascii?Q?WpXg4DjL+lLx6JQkuUzLLcK0F3a2pCVUdHsk4zDmYPvNPiXtArvywMn3Bcnd?=
 =?us-ascii?Q?e0CdcR14MMuufj2KpDGsRJx4U3mkFTkY42fdZA0V4qMSpWj2QwZHrJrZqJNj?=
 =?us-ascii?Q?HUEay4mw6SMqEWhGw/JhPMKT/usUMDBd78IzQ+wunzvVh2+CL/ZsusIV+Hho?=
 =?us-ascii?Q?V8zGNEx6OFeIKHSjj8bYuMCD6D66Y1PjSfMv+9nkf0r+zNA8k6wn9bwKkw65?=
 =?us-ascii?Q?8Nr82Jxp0qCOT9EDbyU/QVT/PpZPVMLKHsmHbbD4tqVQ1rOBacAYI9lM2b8W?=
 =?us-ascii?Q?VDRU24ErlBaO9NZ6/SAp/Q/b6TzXxq+B1fy/pwokgzihBoqzI5oMjT7XWg9K?=
 =?us-ascii?Q?eODMU3JTF8vbEpFQXaxePcV765WewER8/RFBzGVQ/X0bWLiXOxIWdD+1D9wK?=
 =?us-ascii?Q?sczUxwFUPJ5lSIaMoq5epvYwc09JZcyvhWVWu6DSZT3R8xAllF9/KHqxUj6d?=
 =?us-ascii?Q?xxBK6X3JeJ9cLtl2Go111rCh92d/QBTb9tcMBxcV8MyHBSHm18A75L+DfX4t?=
 =?us-ascii?Q?D9ZCm5vTiJWvkDU2iJ51DYVgJYg1J/gU2gu1o/1vxaAaOAEDrRgcLI4lDoE8?=
 =?us-ascii?Q?gqJ++/wE/DnKmvidc+mn/3tS/UqTnB/2jYNqbShMz6YL7l1u4vW4ZH6AGJ4w?=
 =?us-ascii?Q?RpFuk1oY9FLWlM+HIEahHzmwDmGHgLNb1+YFAbHyLp+hkrwl5L2rWCN5tbWP?=
 =?us-ascii?Q?KSLMn3daBSohrhxfXiNDxw8xlfIkxVzQts5TpunebQvuxLcZ++E5RNEmv2Vt?=
 =?us-ascii?Q?f09w9bCo+p0GKem9UyKwCB+X5VgbtESU2P423KqrnD0GyY6QBnLuiVq5dFfD?=
 =?us-ascii?Q?bQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e8d88551-c4f9-443d-7905-08dd05c4d424
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2024 22:28:29.0216 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bAsfVkI0fBFzqI+Gn8aldYFvixw3PRN3FOYm71Y1huVs0TTM06F+b1/H7KkrF+8obqgvUBKqL68iZ+6X7NS5Ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4935
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

Start the xe-i915-display reconciliation by using the same
shutdown sequences.

v2: include the stubs for !CONFIG_DRM_XE_DISPLAY (Kunit)

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 46 +++++++------------------
 drivers/gpu/drm/xe/display/xe_display.h | 10 +++---
 drivers/gpu/drm/xe/xe_device.c          |  4 ++-
 3 files changed, 22 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 4759c3cf5915..29676652bc54 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -10,7 +10,6 @@
 
 #include <drm/drm_drv.h>
 #include <drm/drm_managed.h>
-#include <drm/drm_atomic_helper.h>
 #include <drm/drm_probe_helper.h>
 #include <uapi/drm/xe_drm.h>
 
@@ -357,32 +356,26 @@ void xe_display_pm_suspend(struct xe_device *xe)
 
 void xe_display_pm_shutdown(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
-
 	if (!xe->info.probe_display)
 		return;
 
-	intel_power_domains_disable(xe);
-	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
-	if (has_display(xe)) {
-		drm_kms_helper_poll_disable(&xe->drm);
-		intel_display_driver_disable_user_access(xe);
-
-		drm_atomic_helper_shutdown(&xe->drm);
-	}
-
-	intel_dp_mst_suspend(xe);
-	intel_hpd_cancel_work(xe);
+	intel_display_driver_shutdown(xe);
+}
 
-	if (has_display(xe))
-		intel_display_driver_suspend_access(xe);
+void xe_display_pm_shutdown_noirq(struct xe_device *xe)
+{
+	if (!xe->info.probe_display)
+		return;
 
-	intel_encoder_suspend_all(display);
-	intel_encoder_shutdown_all(display);
+	intel_display_driver_shutdown_noirq(xe);
+}
 
-	intel_opregion_suspend(display, PCI_D3cold);
+void xe_display_pm_shutdown_noaccel(struct xe_device *xe)
+{
+	if (!xe->info.probe_display)
+		return;
 
-	intel_dmc_suspend(display);
+	intel_display_driver_shutdown_nogem(xe);
 }
 
 void xe_display_pm_runtime_suspend(struct xe_device *xe)
@@ -408,19 +401,6 @@ void xe_display_pm_suspend_late(struct xe_device *xe)
 	intel_display_power_suspend_late(xe, s2idle);
 }
 
-void xe_display_pm_shutdown_late(struct xe_device *xe)
-{
-	if (!xe->info.probe_display)
-		return;
-
-	/*
-	 * The only requirement is to reboot with display DC states disabled,
-	 * for now leaving all display power wells in the INIT power domain
-	 * enabled.
-	 */
-	intel_power_domains_driver_remove(xe);
-}
-
 void xe_display_pm_resume_early(struct xe_device *xe)
 {
 	if (!xe->info.probe_display)
diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
index 17afa537aee5..f139a88da3a5 100644
--- a/drivers/gpu/drm/xe/display/xe_display.h
+++ b/drivers/gpu/drm/xe/display/xe_display.h
@@ -35,9 +35,10 @@ void xe_display_irq_reset(struct xe_device *xe);
 void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt);
 
 void xe_display_pm_suspend(struct xe_device *xe);
-void xe_display_pm_shutdown(struct xe_device *xe);
 void xe_display_pm_suspend_late(struct xe_device *xe);
-void xe_display_pm_shutdown_late(struct xe_device *xe);
+void xe_display_pm_shutdown(struct xe_device *xe);
+void xe_display_pm_shutdown_noirq(struct xe_device *xe);
+void xe_display_pm_shutdown_noaccel(struct xe_device *xe);
 void xe_display_pm_resume_early(struct xe_device *xe);
 void xe_display_pm_resume(struct xe_device *xe);
 void xe_display_pm_runtime_suspend(struct xe_device *xe);
@@ -68,9 +69,10 @@ static inline void xe_display_irq_reset(struct xe_device *xe) {}
 static inline void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt) {}
 
 static inline void xe_display_pm_suspend(struct xe_device *xe) {}
-static inline void xe_display_pm_shutdown(struct xe_device *xe) {}
 static inline void xe_display_pm_suspend_late(struct xe_device *xe) {}
-static inline void xe_display_pm_shutdown_late(struct xe_device *xe) {}
+static inline void xe_display_pm_shutdown(struct xe_device *xe) {}
+static inline void xe_display_pm_shutdown_noirq(struct xe_device *xe) {}
+static inline void xe_display_pm_shutdown_noaccel(struct xe_device *xe) {}
 static inline void xe_display_pm_resume_early(struct xe_device *xe) {}
 static inline void xe_display_pm_resume(struct xe_device *xe) {}
 static inline void xe_display_pm_runtime_suspend(struct xe_device *xe) {}
diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index 0e2dd691bdae..f4ae8e11ac53 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -819,10 +819,12 @@ void xe_device_shutdown(struct xe_device *xe)
 
 		xe_irq_suspend(xe);
 
+		xe_display_pm_shutdown_noirq(xe);
+
 		for_each_gt(gt, xe, id)
 			xe_gt_shutdown(gt);
 
-		xe_display_pm_shutdown_late(xe);
+		xe_display_pm_shutdown_noaccel(xe);
 	} else {
 		/* BOOM! */
 		__xe_driver_flr(xe);
-- 
2.47.0

