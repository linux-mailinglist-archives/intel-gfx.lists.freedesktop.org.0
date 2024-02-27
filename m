Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B77869983
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 15:58:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5811A10E8B2;
	Tue, 27 Feb 2024 14:58:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AqC690X6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AE9310E8A0;
 Tue, 27 Feb 2024 14:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709045933; x=1740581933;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=vy0xlBa9nF3yRP+Me3hFIj9yDQpTKTTeU87oRbTsWBg=;
 b=AqC690X6nO6unDy+BcSxjugt7vxwb/OzQ+7ATge+GWEEgdzYqvs5aWhK
 TZn51pAlEMXmHyunljaR/pBIvuIo8lKp1bb7vXiFNoia39gvKyvrnh0f7
 Sj+E0RUfFZPm5e/ZWmW3gM8I/N8ndhaKSwSCV8UEaletjcAD7Z83PjSZW
 3ZHdM8SvPXd0NMMpgm5hcpryW7PPz4r/NpjpN+PLHKdTQol1ex1wRlWy9
 pOdhK15txwU1c1kU2c/yKaO5H4hoslt1n8OYHb6iXy5sn7fGc2tHUIFJM
 UmlZPC9lyZvRBGBeYco09AwXNfowpDsZ7BJnjGWsK/iFBnMQQk5+U1Fe6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="14831146"
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; d="scan'208";a="14831146"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 06:58:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="7421500"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2024 06:58:53 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 27 Feb 2024 06:58:51 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 27 Feb 2024 06:58:51 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 27 Feb 2024 06:58:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KLL+UFE+2uVJrKvUWpQyanmcibquJYJHn9MucJPRJDsZYOqToEsH4izoju/dRzB1YxNKUDZn8ns2bkVQPAuMlqfj2P7VmKmNY6/THLF/km8TluiX1nBNjPcJ7ePPDwL1eCJi2mBIQDlxKr90jjYzu/xqoSQ4cbwn4uZXBzEEfKIEdiV1aH77NcSUlr2sRwrppVenSV1rN+pVZe49I2V2C7yIi/BKyV5xtIBosIGmWzekFLoPlsvCWWDJTQdefVwQ6S2TdOztqfP2gssPqM4DJ6xQ+hSGc/8JDIWzfUww5ewieEshrAthRHICMBxXtrIlWUUwpvS/mcpSgEfZ7BMYIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EmGcY3xkgx5LByy86W0A5HEdiTcrI2GTyxJnoIeRyAU=;
 b=NBhddACLN7egGmFqw5xHlRap3mMXsGFrx5Pwd4Fb2aCYLHIzjJxnEMnfuJ5rslzCLxHMvs/Bxo8VZl27jCUPQ/jXlV5oTzFNelkFbSNUo6RyInnwAlZhsVaoASRPTlX5dbbJ9g/asQGz3zTuQix1LvEq+EGYdQb4Gt2Dnce5ax21ne8GJifx667w6P/tEJC6iSSohRaiuEgkQhIEW5YiT4a8K+nVAbleIt/39NO7LJGvB5C7KkRYTvEnO82FLxp8G3mUszWdNEULOyI5WJlxJn73yBhvOw3We38BhW+rztchFPn7v7MZ7vSQNst2+qUcOmRd7jjxAB/34fuIUgBZUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY5PR11MB6366.namprd11.prod.outlook.com (2603:10b6:930:3a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.13; Tue, 27 Feb
 2024 14:58:47 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7339.024; Tue, 27 Feb 2024
 14:58:47 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <vinay.belgaumkar@intel.com>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jani Nikula
 <jani.nikula@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [RFC 3/3] drm/xe: Add GuC SLPC Display Metrics
Date: Tue, 27 Feb 2024 09:58:31 -0500
Message-ID: <20240227145833.490328-4-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240227145833.490328-1-rodrigo.vivi@intel.com>
References: <20240227145833.490328-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR01CA0022.prod.exchangelabs.com (2603:10b6:a02:80::35)
 To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY5PR11MB6366:EE_
X-MS-Office365-Filtering-Correlation-Id: 9558b8fb-da5b-4962-9dda-08dc37a4996d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TjwhEdMOajWlQqE/rYs1FuI69DkGGjjil0JOcrlIrfjN+fUfZW5AVVPFDSOVw4zGxSfu2lE5oNULa3sK/6IVS5IhSsYmlcrucqgVVKoD6nHlETPS8WRKAeG3KXM7Vf9eGU+KZ9doK3J6CP7A251SJnewshnl2UG1IP1JjxnAFdQil4hwfC+JpkBBl4KPSE+PZYCoix/5zZoW6+edkAUWYcCyHglPzgtPcDnv/JcUzw2K2q0dnGaTX3fGgksOp9sTnRjQV1Kqpfk215dzITMCZ1OpszyXaSjxHrQ91IbU9HH1ha+7Mc/J7xEhTUiLSgOghFJ0b7t/Y5Cf4HtbCI9XHkgoNCU+tymOBlW76NKbSkJmhhG3eDmzQ+SCuYrH58/GoPBVRrc47jDdqOl9SCqHk1av2T91a84cRqYwzFwxRtQdIa39E9nB8LYfPntmnVP2jWPwSSWJ3r7f3fxdlVhegqGTShqLL5xQ4gKb1eR+2gAyS7IhoYo96KyaL+rl7g8E6ogPqp1aeSpEl2LyO6G19oX54VWk3tgsmbW6XVcaDG0UvppF0QLLYjZiNuHRhUfa6YVrLx/XuHYHlvm5WjKaKtm0QYDfS3g3DqNTY5hW+BQ3JgZd7ZnZCqLYurT9C2Ge
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?d+r8HHHRyQJ3B0W6AmtTszvLjhCs76JmkW9VjhA6Xj4vd+S+OybkLwNMSDRr?=
 =?us-ascii?Q?pB1a0y6BTo+XLK3y2PaMlNA5XQV3/VxvHWNSmhqnWuMnFdqHbng5doi0V/di?=
 =?us-ascii?Q?uC6/LOOQ36jus1MNRtPcJyJUyLk4VQ6aLsrm/UN7rNWHhpC7gQHQw+iWZNkj?=
 =?us-ascii?Q?H4hAnb187MLObdl09uZGmh90a4pUK0glrH3DaNp//k61qUE+5jayC2J1jNEl?=
 =?us-ascii?Q?v7YMjope4RW1E95sLdS6e5gIswLMK2No3Ny/kOFQEsYwlrUcE6lu5G+NLqvW?=
 =?us-ascii?Q?PfstShoNAIAFDsmOJ0qgKZoK0mPwF29tLPZ2fOr2IKlodOOB8+bN3xentZUJ?=
 =?us-ascii?Q?nO8vPv+pCCwE3YcIHvtfQUJP1PSJtxmkf8m7bkB22pqTQgw7p6sMJYtp/7la?=
 =?us-ascii?Q?C1uaFcB84G9q7KtWH5lNIxWB9UZ/cKoGRqGtLOP9w+TiUMMVLF0savJ2kpbX?=
 =?us-ascii?Q?AaL2pawq72l1DDiW2qUpDXaPx7XzbzM0oFgjQNpU+RLZn1+8WwpqePPNkPSZ?=
 =?us-ascii?Q?N/SVKwmD0QJb7gKL3CWorwC91Z1CTyU9ebQFj0m+gcdbrLCaGif3z28lOjTf?=
 =?us-ascii?Q?RenjVhexxoThds20id6cLK227fqJ1b9hOpQInOrtRfe+EzdmiNT5A/swBLxg?=
 =?us-ascii?Q?tri6TfBCdQoTUQnqc5OOE6Gi+aTT9JY2kwh94lvfohx5S5Vmgi3QjXjHwxWX?=
 =?us-ascii?Q?r5Wg8KstA6aVy8aZgKEufIt9K7OvJtD1C2U7ZAT4fkkLn8NSxWcAK104cyGG?=
 =?us-ascii?Q?tIDnFx69y5TwG/Wr2Jk2+4n1QemSLpwInDHzcFdln/K6h//OvqxvdqAkqDnj?=
 =?us-ascii?Q?AwJ+zhrBFaZNwOZ1QkcUmeijJo6dYuIloay9kl7kA8Uqc7Yno57dQcPZAIh9?=
 =?us-ascii?Q?gdnvkH8hhPymwiZ3jEyxDG+vtAIHuo6I4wXbjQli8ygfdfPWa2US7Bw6BaFP?=
 =?us-ascii?Q?0pSuLaCGR5FJczlGqT6gcvhWPOXMGodyC+xzO8o2QcRkJ/189/93M6hboA+H?=
 =?us-ascii?Q?FFYd5XEikCmZ6Y/kJKbs8vGwU4ti5mOtOdDN2kkbleN3PriN+ER10sBp305k?=
 =?us-ascii?Q?3xkz5SHMpB3Eo/3M7WeK17jOHbg4OPqqjGz8LzZ12s4yyNdo3ZrpnRd78x8x?=
 =?us-ascii?Q?koZMf4JUsln7goT9DxGYneULjfCmA6Cko0dglMAug1lKK8lxx54q7Opm9vro?=
 =?us-ascii?Q?JnHvfcuebbRNDukNawpn3/Z6kltHvaApBB+8Rvy8NUuwSWhfUW/qa7ChiIvk?=
 =?us-ascii?Q?aPvqH4PxiWQA+e7gmop7X+yBXL2uCslQrM21D56NDxzPJiXEZJ7bhIjtQ7zy?=
 =?us-ascii?Q?PzF8IPS4LHue+PTwtY/DgEpWjAOgS1+CL3Ogbopgvew0pF0eYN3Gyf3HTOGi?=
 =?us-ascii?Q?kshRNuQpBx9QHyxtmrJdtJAJG00/XAGN4Dvd4sesNP2epfct4r9NkshzJ588?=
 =?us-ascii?Q?tUR90Nc8KIt79oZulAHwFHyjilPC4h3WA98BwJPeAmL1OYp/AXoLieyx4yiP?=
 =?us-ascii?Q?p6vxnnMa9xF2ROxapyGRBcqH73gIbr2c4qQ+vjLXHnmfRulHVIpt4BNUHFbw?=
 =?us-ascii?Q?hyTwJC/nTx/uHbdHEj0tGPnnmhPM2tDNd349Agkw?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9558b8fb-da5b-4962-9dda-08dc37a4996d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2024 14:58:46.9673 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BNbYUwt0q4pLJq6alxG1zeCaqp2DCQQoSpF987dSZ8/6MDaZD3RJ6wLfAVLdN+kLdRrQWm+4YNv+9oZfJWLr3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6366
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

Let's register with intel_display to receive display metrics that
we can then send to GuC SLPC through the shared data and let
it to select the optimal frequency.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/abi/guc_actions_slpc_abi.h |  59 +++
 drivers/gpu/drm/xe/xe_gt_debugfs.c            |  11 +
 drivers/gpu/drm/xe/xe_guc_pc.c                | 343 +++++++++++++++++-
 drivers/gpu/drm/xe/xe_guc_pc.h                |   3 +
 drivers/gpu/drm/xe/xe_guc_pc_types.h          |   2 +
 5 files changed, 412 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/xe/abi/guc_actions_slpc_abi.h b/drivers/gpu/drm/xe/abi/guc_actions_slpc_abi.h
index c165e26c0976..e3c7e739af77 100644
--- a/drivers/gpu/drm/xe/abi/guc_actions_slpc_abi.h
+++ b/drivers/gpu/drm/xe/abi/guc_actions_slpc_abi.h
@@ -122,6 +122,11 @@ enum slpc_param_id {
 	SLPC_MAX_PARAM = 32,
 };
 
+#define SLPC_OPTIMIZED_STRATEGIES_COMPUTE	REG_BIT(0)
+#define SLPC_OPTIMIZED_STRATEGIES_ASYNC_FLIP	REG_BIT(1)
+#define SLPC_OPTIMIZED_STRATEGIES_MEDIA		REG_BIT(2)
+#define SLPC_OPTIMIZED_STRATEGIES_VSYNC_FLIP	REG_BIT(3)
+
 enum slpc_media_ratio_mode {
 	SLPC_MEDIA_RATIO_MODE_DYNAMIC_CONTROL = 0,
 	SLPC_MEDIA_RATIO_MODE_FIXED_ONE_TO_ONE = 1,
@@ -207,6 +212,60 @@ struct slpc_shared_data {
 	u8 reserved_mode_definition[4096];
 } __packed;
 
+#define SLPC_MAX_PIPES			8
+#define SLPC_MAX_PLANES_PER_PIPE	8
+
+struct slpc_display_global_info {
+	u32 version:8;
+	u32 num_pipes:4;
+	u32 num_planes_per_pipe:4;
+	u32 reserved_1:16;
+	u32 refresh_count:16;
+	u32 vblank_count:16;
+	u32 flip_count:16;
+	u32 reserved_2:16;
+	u32 reserved_3[13];
+} __packed;
+
+struct slpc_display_refresh_info {
+	u32 refresh_interval:16;
+	u32 is_variable:1;
+	u32 reserved:15;
+} __packed;
+
+/*
+ * The host must update each 32-bit part with a single atomic write so
+ * that SLPC will read the contained bit fields together. The host must
+ * update the two parts in order - total flip count and timestamp first,
+ * vsync and async flip counts second.
+ * Hence, these items are not defined with individual bitfields.
+ */
+#define SLPC_FLIP_P1_LAST		REG_GENMASK(31, 7)
+#define SLPC_FLIP_P1_TOTAL_COUNT	REG_GENMASK(6, 0)
+#define SLPC_FLIP_P2_ASYNC_COUNT	REG_GENMASK(31, 16)
+#define SLPC_FLIP_P2_VSYNC_COUNT	REG_GENMASK(15, 0)
+
+struct slpc_display_flip_metrics {
+	u32 part1;
+	u32 part2;
+} __packed;
+
+/*
+ * The host must update this 32-bit structure with a single atomic write
+ * so that SLPC will read the count and timestamp together.
+ * Hence, this item is not defined with individual bitfields.
+ */
+#define SLPC_VBLANK_LAST	REG_GENMASK(31, 7)
+#define SLPC_VBLANK_COUNT	REG_GENMASK(6, 0)
+
+struct slpc_display_data {
+	struct slpc_display_global_info global_info;
+	struct slpc_display_refresh_info refresh_info[SLPC_MAX_PIPES];
+	u32 vblank_metrics[SLPC_MAX_PIPES];
+	struct slpc_display_flip_metrics
+	flip_metrics[SLPC_MAX_PIPES][SLPC_MAX_PLANES_PER_PIPE];
+} __packed;
+
 /**
  * DOC: SLPC H2G MESSAGE FORMAT
  *
diff --git a/drivers/gpu/drm/xe/xe_gt_debugfs.c b/drivers/gpu/drm/xe/xe_gt_debugfs.c
index c4b67cf09f8f..a8bbf4965c3e 100644
--- a/drivers/gpu/drm/xe/xe_gt_debugfs.c
+++ b/drivers/gpu/drm/xe/xe_gt_debugfs.c
@@ -14,6 +14,7 @@
 #include "xe_gt.h"
 #include "xe_gt_mcr.h"
 #include "xe_gt_topology.h"
+#include "xe_guc_pc.h"
 #include "xe_hw_engine.h"
 #include "xe_lrc.h"
 #include "xe_macros.h"
@@ -103,6 +104,15 @@ static int ggtt(struct seq_file *m, void *data)
 	return xe_ggtt_dump(gt_to_tile(gt)->mem.ggtt, &p);
 }
 
+static int guc_pc(struct seq_file *m, void *data)
+{
+	struct xe_gt *gt = node_to_gt(m->private);
+	struct drm_printer p = drm_seq_file_printer(m);
+
+	xe_guc_pc_print(&gt->uc.guc.pc, &p);
+	return 0;
+}
+
 static int register_save_restore(struct seq_file *m, void *data)
 {
 	struct xe_gt *gt = node_to_gt(m->private);
@@ -197,6 +207,7 @@ static const struct drm_info_list debugfs_list[] = {
 	{"topology", topology, 0},
 	{"steering", steering, 0},
 	{"ggtt", ggtt, 0},
+	{"guc_pc", guc_pc, 0},
 	{"register-save-restore", register_save_restore, 0},
 	{"workarounds", workarounds, 0},
 	{"pat", pat, 0},
diff --git a/drivers/gpu/drm/xe/xe_guc_pc.c b/drivers/gpu/drm/xe/xe_guc_pc.c
index d91702592520..68c4fe6cdd47 100644
--- a/drivers/gpu/drm/xe/xe_guc_pc.c
+++ b/drivers/gpu/drm/xe/xe_guc_pc.c
@@ -11,6 +11,8 @@
 
 #include "abi/guc_actions_abi.h"
 #include "abi/guc_actions_slpc_abi.h"
+#include "intel_display_guc_metrics.h"
+#include "intel_display_guc_metrics_types.h"
 #include "regs/xe_gt_regs.h"
 #include "regs/xe_regs.h"
 #include "xe_bo.h"
@@ -40,6 +42,10 @@
 #define GT_FREQUENCY_MULTIPLIER	50
 #define GT_FREQUENCY_SCALER	3
 
+#define MCHBAR_BCLK_COUNT	XE_REG(MCHBAR_MIRROR_BASE_SNB + 0x5984)
+#define MTL_BCLK_COUNT		XE_REG(0xc28)
+#define   TIMESTAMP_MASK	REG_GENMASK(30, 6)
+
 /**
  * DOC: GuC Power Conservation (PC)
  *
@@ -88,19 +94,36 @@ pc_to_gt(struct xe_guc_pc *pc)
 }
 
 static struct iosys_map *
-pc_to_maps(struct xe_guc_pc *pc)
+pc_to_maps(struct xe_guc_pc *pc, bool display)
 {
-	return &pc->bo->vmap;
+	if (display)
+		return &pc->display_bo->vmap;
+	else
+		return &pc->bo->vmap;
+}
+
+static struct slpc_display_data *
+pc_to_display_data(struct xe_guc_pc *pc)
+{
+	return pc->display_bo->vmap.vaddr;
 }
 
 #define slpc_shared_data_read(pc_, field_) \
-	xe_map_rd_field(pc_to_xe(pc_), pc_to_maps(pc_), 0, \
+	xe_map_rd_field(pc_to_xe(pc_), pc_to_maps(pc_, false), 0, \
 			struct slpc_shared_data, field_)
 
 #define slpc_shared_data_write(pc_, field_, val_) \
-	xe_map_wr_field(pc_to_xe(pc_), pc_to_maps(pc_), 0, \
+	xe_map_wr_field(pc_to_xe(pc_), pc_to_maps(pc_, false), 0, \
 			struct slpc_shared_data, field_, val_)
 
+#define slpc_display_data_read(pc_, field_) \
+	xe_map_rd_field(pc_to_xe(pc_), pc_to_maps(pc_, true), 0, \
+			struct slpc_display_data, field_)
+
+#define slpc_display_data_write(pc_, field_, val_) \
+	xe_map_wr_field(pc_to_xe(pc_), pc_to_maps(pc_, true), 0, \
+			struct slpc_display_data, field_, val_)
+
 #define SLPC_EVENT(id, count) \
 	(FIELD_PREP(HOST2GUC_PC_SLPC_REQUEST_MSG_1_EVENT_ID, id) | \
 	 FIELD_PREP(HOST2GUC_PC_SLPC_REQUEST_MSG_1_EVENT_ARGC, count))
@@ -225,6 +248,144 @@ static int pc_action_setup_gucrc(struct xe_guc_pc *pc, u32 mode)
 	return ret;
 }
 
+static void slpc_display_data_init(struct slpc_display_data *data, int version,
+				   int num_pipes, int num_planes_per_pipe)
+{
+	data->global_info.version = version;
+	data->global_info.num_pipes = num_pipes;
+	data->global_info.num_planes_per_pipe = num_planes_per_pipe;
+}
+
+static void slpc_refresh_info(struct slpc_display_data *data, int pipe,
+			      u32 refresh_interval, bool vrr_enabled)
+{
+	data->refresh_info[pipe].refresh_interval = refresh_interval;
+	data->refresh_info[pipe].is_variable = vrr_enabled;
+	data->global_info.refresh_count += 1;
+}
+
+static void slpc_vblank(struct slpc_display_data *data, int pipe,
+			u32 timestamp)
+{
+	u32 vblank;
+
+	vblank = data->vblank_metrics[pipe];
+
+	vblank = REG_FIELD_GET(SLPC_VBLANK_COUNT, vblank);
+	vblank = REG_FIELD_PREP(SLPC_VBLANK_COUNT, vblank + 1);
+	vblank |= REG_FIELD_PREP(SLPC_VBLANK_LAST, timestamp);
+
+	data->vblank_metrics[pipe] = vblank;
+	data->global_info.vblank_count += 1;
+}
+
+static void slpc_flip(struct slpc_display_data *data, int pipe, int plane,
+		      bool async_flip, u32 timestamp)
+{
+	u32 part1, part2, count;
+
+	part1 = data->flip_metrics[pipe][plane].part1;
+	part2 = data->flip_metrics[pipe][plane].part2;
+
+	part1 = REG_FIELD_GET(SLPC_FLIP_P1_TOTAL_COUNT, part1);
+	part1 = REG_FIELD_PREP(SLPC_FLIP_P1_TOTAL_COUNT, part1 + 1);
+	part1 |= REG_FIELD_PREP(SLPC_FLIP_P1_LAST, timestamp);
+
+	if (async_flip) {
+		count = REG_FIELD_GET(SLPC_FLIP_P2_ASYNC_COUNT, part2);
+		part2 &= ~SLPC_FLIP_P2_ASYNC_COUNT;
+		part2 |= REG_FIELD_PREP(SLPC_FLIP_P2_ASYNC_COUNT, count + 1);
+	} else {
+		count = REG_FIELD_GET(SLPC_FLIP_P2_VSYNC_COUNT, part2);
+		part2 &= ~SLPC_FLIP_P2_VSYNC_COUNT;
+		part2 |= REG_FIELD_PREP(SLPC_FLIP_P2_VSYNC_COUNT, count + 1);
+	}
+
+	data->flip_metrics[pipe][plane].part1 = part1;
+	data->flip_metrics[pipe][plane].part2 = part2;
+
+	data->global_info.flip_count += 1;
+}
+
+static void xe_guc_pc_refresh_info_update(void *gfx_device, int pipe,
+					  u32 refresh_rate, bool vrr_enabled)
+{
+	struct xe_device *xe = gfx_device;
+	struct xe_gt *gt;
+	int i;
+
+	if (pipe > SLPC_MAX_PIPES) {
+		drm_err(&xe->drm, "GuC PC Max display pipe exceeded\n");
+		return;
+	}
+
+	for_each_gt(gt, xe, i)
+		slpc_refresh_info(pc_to_display_data(&gt->uc.guc.pc),
+				  pipe, refresh_rate, vrr_enabled);
+}
+
+static u32 bclk_read_timestamp(struct xe_gt *gt)
+{
+	u32 timestamp;
+
+	if (gt_to_xe(gt)->info.platform == XE_METEORLAKE)
+		timestamp = xe_mmio_read32(gt, MTL_BCLK_COUNT);
+	else
+		timestamp = xe_mmio_read32(gt, MCHBAR_BCLK_COUNT);
+
+	return REG_FIELD_GET(TIMESTAMP_MASK, timestamp);
+}
+
+static void xe_guc_pc_vblank_update(void *gfx_device, int pipe)
+{
+	struct xe_device *xe = gfx_device;
+	struct xe_gt *gt;
+	u32 timestamp;
+	int i;
+
+	if (pipe > SLPC_MAX_PIPES) {
+		drm_err(&xe->drm, "GuC PC Max display pipe exceeded\n");
+		return;
+	}
+
+	for_each_gt(gt, xe, i) {
+		timestamp = bclk_read_timestamp(gt);
+		slpc_vblank(pc_to_display_data(&gt->uc.guc.pc),
+			    pipe, timestamp);
+	}
+}
+
+static void xe_guc_pc_flip_update(void *gfx_device, int pipe, int plane,
+				  bool async_flip)
+{
+	struct xe_device *xe = gfx_device;
+	struct xe_gt *gt;
+	u32 timestamp;
+	int i;
+
+	if (pipe > SLPC_MAX_PIPES) {
+		drm_err(&xe->drm, "GuC PC Max display pipe exceeded\n");
+		return;
+	}
+
+	if (plane > SLPC_MAX_PLANES_PER_PIPE) {
+		drm_err(&xe->drm, "GuC PC Max display planes exceeded\n");
+		return;
+	}
+
+	for_each_gt(gt, xe, i) {
+		timestamp = bclk_read_timestamp(gt);
+		slpc_flip(pc_to_display_data(&gt->uc.guc.pc),
+			  pipe, plane, async_flip, timestamp);
+	}
+}
+
+static struct intel_display_guc_metrics guc_metrics = {
+	.refresh_info_update = xe_guc_pc_refresh_info_update,
+	.vblank_update = xe_guc_pc_vblank_update,
+	.flip_update = xe_guc_pc_flip_update,
+};
+
 static u32 decode_freq(u32 raw)
 {
 	return DIV_ROUND_CLOSEST(raw * GT_FREQUENCY_MULTIPLIER,
@@ -857,6 +1018,17 @@ static int pc_init_freqs(struct xe_guc_pc *pc)
 	return ret;
 }
 
+static void slpc_display_metrics_start(struct xe_guc_pc *pc)
+{
+	struct xe_device *xe = pc_to_xe(pc);
+
+	slpc_display_data_init(pc_to_display_data(pc), 1, SLPC_MAX_PIPES,
+			       SLPC_MAX_PLANES_PER_PIPE);
+	slpc_shared_data_write(pc, header.display_data_addr,
+			       xe_bo_ggtt_addr(pc->display_bo));
+	intel_display_guc_metrics_init(xe, &xe->display, &guc_metrics);
+}
+
 /**
  * xe_guc_pc_start - Start GuC's Power Conservation component
  * @pc: Xe_GuC_PC instance
@@ -888,7 +1060,9 @@ int xe_guc_pc_start(struct xe_guc_pc *pc)
 	}
 
 	memset(pc->bo->vmap.vaddr, 0, size);
+	memset(pc->display_bo->vmap.vaddr, 0, size);
 	slpc_shared_data_write(pc, header.size, size);
+	slpc_display_metrics_start(pc);
 
 	ret = pc_action_reset(pc);
 	if (ret)
@@ -900,6 +1074,12 @@ int xe_guc_pc_start(struct xe_guc_pc *pc)
 		goto out;
 	}
 
+	if (pc_action_set_param(pc, SLPC_PARAM_STRATEGIES,
+				SLPC_OPTIMIZED_STRATEGIES_VSYNC_FLIP |
+				SLPC_OPTIMIZED_STRATEGIES_ASYNC_FLIP))
+		drm_info(&pc_to_xe(pc)->drm, "GuC PC couldn't init Optimized strategies: %pe\n",
+			 ERR_PTR(ret));
+
 	ret = pc_init_freqs(pc);
 	if (ret)
 		goto out;
@@ -973,7 +1153,7 @@ void xe_guc_pc_fini(struct xe_guc_pc *pc)
 	XE_WARN_ON(xe_guc_pc_stop(pc));
 	mutex_destroy(&pc->freq_lock);
 }
-
+#include <linux/iosys-map.h>
 /**
  * xe_guc_pc_init - Initialize GuC's Power Conservation component
  * @pc: Xe_GuC_PC instance
@@ -984,13 +1164,14 @@ int xe_guc_pc_init(struct xe_guc_pc *pc)
 	struct xe_tile *tile = gt_to_tile(gt);
 	struct xe_device *xe = gt_to_xe(gt);
 	struct xe_bo *bo;
-	u32 size = PAGE_ALIGN(sizeof(struct slpc_shared_data));
+	u32 size;
 
 	if (xe->info.skip_guc_pc)
 		return 0;
 
 	mutex_init(&pc->freq_lock);
 
+	size = PAGE_ALIGN(sizeof(struct slpc_shared_data));
 	bo = xe_managed_bo_create_pin_map(xe, tile, size,
 					  XE_BO_CREATE_VRAM_IF_DGFX(tile) |
 					  XE_BO_CREATE_GGTT_BIT);
@@ -998,5 +1179,155 @@ int xe_guc_pc_init(struct xe_guc_pc *pc)
 		return PTR_ERR(bo);
 
 	pc->bo = bo;
+
+	size = PAGE_ALIGN(sizeof(struct slpc_display_data));
+	bo = xe_managed_bo_create_pin_map(xe, tile, size,
+					  XE_BO_CREATE_VRAM_IF_DGFX(tile) |
+					  XE_BO_CREATE_GGTT_BIT);
+	if (IS_ERR(bo))
+		return PTR_ERR(bo);
+
+	pc->display_bo = bo;
+
 	return 0;
 }
+
+static const char *slpc_global_state_to_string(enum slpc_global_state state)
+{
+	switch (state) {
+	case SLPC_GLOBAL_STATE_NOT_RUNNING:
+		return "not running";
+	case SLPC_GLOBAL_STATE_INITIALIZING:
+		return "initializing";
+	case SLPC_GLOBAL_STATE_RESETTING:
+		return "resetting";
+	case SLPC_GLOBAL_STATE_RUNNING:
+		return "running";
+	case SLPC_GLOBAL_STATE_SHUTTING_DOWN:
+		return "shutting down";
+	case SLPC_GLOBAL_STATE_ERROR:
+		return "error";
+	default:
+		return "unknown";
+	}
+}
+
+static const char *pc_get_state_string(struct xe_guc_pc *pc)
+{
+	enum slpc_global_state state;
+
+	state = slpc_shared_data_read(pc, header.global_state);
+	return slpc_global_state_to_string(state);
+}
+
+static void pc_print_display_metrics(struct drm_printer *p,
+				     struct slpc_display_data *data)
+{
+	int pipe, plane;
+	u32 val;
+
+	drm_printf(p, "\nSLPC Display Data - Globals:\n");
+	drm_printf(p, "\tVersion: %d\n", data->global_info.version);
+	drm_printf(p, "\tNum Pipes: %d\n", data->global_info.num_pipes);
+	drm_printf(p, "\tNum Planes per Pipe: %d\n",
+		   data->global_info.num_planes_per_pipe);
+	drm_printf(p, "\tGlobal Refresh Info Count: %d\n",
+		   data->global_info.refresh_count);
+	drm_printf(p, "\tGlobal Vblank Count: %d\n",
+		   data->global_info.vblank_count);
+	drm_printf(p, "\tGlobal Flip Count: %d\n",
+		   data->global_info.flip_count);
+
+	for (pipe = 0; pipe < SLPC_MAX_PIPES; pipe++) {
+
+		if (!data->refresh_info[pipe].refresh_interval)
+			continue;
+
+		drm_printf(p, "\nSLPC Display Data - Refresh Info - Pipe[%d]:\n",
+			   pipe);
+		drm_printf(p, "\tRefresh Interval: %d\n",
+			   data->refresh_info[pipe].refresh_interval);
+		drm_printf(p, "\tIS VRR: %d\n",
+			   data->refresh_info[pipe].is_variable);
+
+		drm_printf(p, "SLPC Display Data - Vblank Info - Pipe[%d]:\n",
+			   pipe);
+		val = data->vblank_metrics[pipe];
+		drm_printf(p, "\tVBlank Last Timestamp: %x\n",
+			   REG_FIELD_GET(SLPC_VBLANK_LAST, val));
+		drm_printf(p, "\tVBlank Count: %d\n",
+			   REG_FIELD_GET(SLPC_VBLANK_COUNT, val));
+
+		drm_printf(p, "SLPC Display Data - Flip Info - Pipe[%d]:\n", pipe);
+		for (plane = 0; plane < SLPC_MAX_PLANES_PER_PIPE; plane++) {
+
+			val = data->flip_metrics[pipe][plane].part1;
+			if (!val)
+				continue;
+
+			drm_printf(p, "\tFlip Info - Plane[%d]:\n", plane);
+			drm_printf(p, "\t\tFlip Last Timestamp: %x\n",
+				   REG_FIELD_GET(SLPC_FLIP_P1_LAST, val));
+			drm_printf(p, "\t\tFlip Total Count: %d\n",
+				   REG_FIELD_GET(SLPC_FLIP_P1_TOTAL_COUNT, val));
+
+			val = data->flip_metrics[pipe][plane].part2;
+
+			drm_printf(p, "\t\tFlip Async Count: %d\n",
+				   REG_FIELD_GET(SLPC_FLIP_P2_ASYNC_COUNT, val));
+			drm_printf(p, "\t\tFlip Vsync Count: %d\n",
+				   REG_FIELD_GET(SLPC_FLIP_P2_VSYNC_COUNT, val));
+		}
+	}
+}
+
+/**
+ * xe_guc_pc_print - Print GuC's Power Conservation information for debug
+ * @pc: Xe_GuC_PC instance
+ * @p: drm_printer
+ */
+void xe_guc_pc_print(struct xe_guc_pc *pc, struct drm_printer *p)
+{
+	struct slpc_display_data *data = pc_to_display_data(pc);
+	u32 display_addr;
+
+	xe_device_mem_access_get(pc_to_xe(pc));
+
+	drm_printf(p, "SLPC Shared Data Header:\n");
+	drm_printf(p, "\tSize: %x\n", slpc_shared_data_read(pc, header.size));
+	drm_printf(p, "\tGlobal State: %s\n", pc_get_state_string(pc));
+	display_addr = slpc_shared_data_read(pc, header.display_data_addr);
+	drm_printf(p, "\tDisplay Data Addr: %x\n", display_addr);
+
+	if(pc_action_query_task_state(pc))
+		goto out;
+
+	drm_printf(p, "\nSLPC Tasks Status:\n");
+	drm_printf(p, "\tGTPERF enabled: %s\n",
+		   str_yes_no(slpc_shared_data_read(pc, task_state_data.status) &
+			      SLPC_GTPERF_TASK_ENABLED));
+	drm_printf(p, "\tDCC enabled: %s\n",
+		   str_yes_no(slpc_shared_data_read(pc, task_state_data.status) &
+			      SLPC_DCC_TASK_ENABLED));
+	drm_printf(p, "\tDCC in: %s\n",
+		   str_yes_no(slpc_shared_data_read(pc, task_state_data.status) &
+			      SLPC_IN_DCC));
+	drm_printf(p, "\tBalancer enabled: %s\n",
+		   str_yes_no(slpc_shared_data_read(pc, task_state_data.status) &
+			      SLPC_BALANCER_ENABLED));
+	drm_printf(p, "\tIBC enabled: %s\n",
+		   str_yes_no(slpc_shared_data_read(pc, task_state_data.status) &
+			      SLPC_IBC_TASK_ENABLED));
+	drm_printf(p, "\tBalancer IA LMT enabled: %s\n",
+		   str_yes_no(slpc_shared_data_read(pc, task_state_data.status) &
+			      SLPC_BALANCER_IA_LMT_ENABLED));
+	drm_printf(p, "\tBalancer IA LMT active: %s\n",
+		   str_yes_no(slpc_shared_data_read(pc, task_state_data.status) &
+			      SLPC_BALANCER_IA_LMT_ACTIVE));
+
+	if (display_addr)
+		pc_print_display_metrics(p, data);
+
+out:
+	xe_device_mem_access_put(pc_to_xe(pc));
+}
diff --git a/drivers/gpu/drm/xe/xe_guc_pc.h b/drivers/gpu/drm/xe/xe_guc_pc.h
index cecad8e9300b..6fa2f110d652 100644
--- a/drivers/gpu/drm/xe/xe_guc_pc.h
+++ b/drivers/gpu/drm/xe/xe_guc_pc.h
@@ -8,11 +8,14 @@
 
 #include "xe_guc_pc_types.h"
 
+struct drm_printer;
+
 int xe_guc_pc_init(struct xe_guc_pc *pc);
 void xe_guc_pc_fini(struct xe_guc_pc *pc);
 int xe_guc_pc_start(struct xe_guc_pc *pc);
 int xe_guc_pc_stop(struct xe_guc_pc *pc);
 int xe_guc_pc_gucrc_disable(struct xe_guc_pc *pc);
+void xe_guc_pc_print(struct xe_guc_pc *pc, struct drm_printer *p);
 
 u32 xe_guc_pc_get_act_freq(struct xe_guc_pc *pc);
 int xe_guc_pc_get_cur_freq(struct xe_guc_pc *pc, u32 *freq);
diff --git a/drivers/gpu/drm/xe/xe_guc_pc_types.h b/drivers/gpu/drm/xe/xe_guc_pc_types.h
index 2afd0dbc3542..78b69c2071d2 100644
--- a/drivers/gpu/drm/xe/xe_guc_pc_types.h
+++ b/drivers/gpu/drm/xe/xe_guc_pc_types.h
@@ -15,6 +15,8 @@
 struct xe_guc_pc {
 	/** @bo: GGTT buffer object that is shared with GuC PC */
 	struct xe_bo *bo;
+	/** @display_bo: GGTT buffer object that is shared with GuC PC for display metricts */
+	struct xe_bo *display_bo;
 	/** @rp0_freq: HW RP0 frequency - The Maximum one */
 	u32 rp0_freq;
 	/** @rpe_freq: HW RPe frequency - The Efficient one */
-- 
2.43.2

