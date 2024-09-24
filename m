Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64438984C4F
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:43:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FF1E10E752;
	Tue, 24 Sep 2024 20:43:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D3u7f5U4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7291910E749;
 Tue, 24 Sep 2024 20:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210601; x=1758746601;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=DqEbZ8j+ghJOBO1OTz2MOzuHDYu20pU9AA4qNfPCp/w=;
 b=D3u7f5U4uSwRhgGSsITzQ0Hkc+6PLrh5GhPOf4kRvc5RK/uooYXP2iFq
 drgDWJzeezaFqn44MSwmy6aRvUaSuZVclMf1pg70arh23ZDpQfV/YcRtP
 KNRH51Oqes0JPxRzFN7nhzny6Uv/o7pflECXBre9tIic/oTfmxwjZMQTw
 GdbRKiUCnxh4GPZadznc16YC3QDGblaK16c5KvSPoE+YbbvTlwOHJXdVo
 PvHvWigLUVD1EhHXiJwfbUiPH7RXOhG7bhm/VQoNczUPsHx8dES7ojOWM
 UFIiKAs5ARWucnHjco/JUEUb9cSq0S6lWEjJE5R5dOtWfLnsh6WZ/j00y g==;
X-CSE-ConnectionGUID: 3WRUMB/hT0aNe/UKHFpS8w==
X-CSE-MsgGUID: yTglE42sTsKwmfWDmxwHsw==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="43751544"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="43751544"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:43:20 -0700
X-CSE-ConnectionGUID: X2WBxTmGSFuXKeU3J03lGA==
X-CSE-MsgGUID: 5zuiy0i7RDW6vEwLeDc2SQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76298791"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:43:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:19 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:43:19 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ls1/9xo+/oXCPDQSDlx/AnoA9b3+2LUr8OA6JHPjjba684fqrX7bAMXORGpNK3+7Y+EAl0RLe4C77vK0Ozi0ELGer35idRGwOrcy4lud4RjImxWs0DvnNAGSv/gthFeakmHRPhEmUzl8bUSXHNciA73BlfHHeh+UNriGkwNJN4k1Oy8Uokl+I1d0V11CDGDEHdDaCDPKM/ZCu47axNFR7wN905tR6gy9YFGHlyYDFLfMM1CtsXbtnrK0kFQgKRorb78AQijiDAsJky6BxMJLhLCAl7/OjAvQ7xul3tiY7RufVQr8vPifPw4q18M5T53/sF20PkabooDXLD2n5BaJDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VrySffvbNFv8AarKvoY2IhCsggK+5CxmO2Lfq3nPwZ4=;
 b=Hbe3gS4E/VO9H55mMkrMn9YTqM1tbHAXOgskiQffGukqMFGj9unTT2EVHHVYfHUFIbqx+rcMttEwveEunUVPX5wqqCWZYVBGAN7+D2r9pMVdlYFuJMDbAOq5EAiS7yGfZ9sI+srcvKn+7mE80N9lR1FVyPV8CTUfh0uZfCtBswaJl+1TnYt3Vp+SCHM5jpHwM0DDKYZpUwfJtaZwJyE+15lgNlnTEc2UyufjpX0xz6CmsIZPerANoSdSrYHOrKGJXaMiBhUmQRUCpCPdml3o4je7cANoUOPz3uW6pikSRzMvgwGySViBQpbV8OjrVT6Ge+O6YPv8miX3JHAg4yC7bA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 20:43:16 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:43:15 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 14/31] drm/i915/display: Move resume sequences to
 intel_display_driver
Date: Tue, 24 Sep 2024 16:35:35 -0400
Message-ID: <20240924204222.246862-15-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR02CA0013.namprd02.prod.outlook.com
 (2603:10b6:303:16d::13) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB4965:EE_
X-MS-Office365-Filtering-Correlation-Id: c33f8944-7ae0-44c0-3ccf-08dcdcd983b4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?j2fXi0taPjqsRUPp5G2oHtYSNIXD8BP1xDFgEZgPfgG1A/UxqfOtaxVtSV/p?=
 =?us-ascii?Q?GMQsZgotWM/UzGub3zYjbSdAp20JPgchM3XxFMtaAL0eHXDM8/MYDxnG0VkC?=
 =?us-ascii?Q?SgKy3eA07PDMJ5V1t0HxE/5NgdV7OQBIHS/fPja+c+/6czDLXBqDmG9z48bq?=
 =?us-ascii?Q?E20WPkjhoX1AFNEHgyPqfku+CoNB4AkskkpdzhWYJiqdpYrlm6TaeN8HwE0U?=
 =?us-ascii?Q?zMShVqqW0JUQ1ZXuOkHW4kbTo1RXPsbWPoiBkJadgwlYmcIB6S8aebWp0Tks?=
 =?us-ascii?Q?puL5NMf8r61y7cg5TsCueheY2T7gBain7i7Ys31L2EgjAlaGCGbmyWJZknHf?=
 =?us-ascii?Q?OELeRSoM3N3N/KaZB8Gaq6j9JMHmPeLzt0z7Hruzq3JOzZBDkfm2HvVISC8r?=
 =?us-ascii?Q?JueiJRAlfEzJjRMFvQybhyn+ajNPdA9P8hzGEXfS4TIesL2Vh3ziTMX5ugK/?=
 =?us-ascii?Q?OFmdKF/csBlhVD8HnPvsDI4Ze/x8R2Oj4K5t4rxwEyfPTSs5Ds/2vTp/ZeRp?=
 =?us-ascii?Q?CQbP6V/jdfoMNJPON5bYOatSX9UrTtJAMJQrrbFbwD9K0CLflRP207zMW8wb?=
 =?us-ascii?Q?I6BzmaQYOAKiVXE3J0PB6V1q3JOlKvSO3t26qYg3RLRSH062ucQ2vdlHhas5?=
 =?us-ascii?Q?8XaB4ijJ2C7uP8XoCLBspvvBkgPKvW0NNqNNrely3YGNWm5gGPT63RQmjT/T?=
 =?us-ascii?Q?v8kF48d4bT6GLHcFMGWQJ+Gn3LdcTGVDZCVn8YGGEX2mO9Hi9lhiUmrdFvWL?=
 =?us-ascii?Q?iflFz8xc7ZVqte6vgqe474JJaNeupWF4dTUwbCfIyybfhPB/ZkalpIhH0Q3k?=
 =?us-ascii?Q?NQH56DOoLFoAXNebHjIhIhMJxFRpSn5C+e6BU2GWWHas+1Wc10oZ3WPU9ha1?=
 =?us-ascii?Q?ySnCuLAXW8CEKeK9r0elO6VairQyOHNMPBnrqB35l2LueAfK+DLQ2jJaXvoe?=
 =?us-ascii?Q?2axXjwbrplyUwQyUw2i4RmKmUJj+YoUdLZl936kEFq0j15bgirDLaGrBvvdH?=
 =?us-ascii?Q?H562hBoSvO8QqHc/5ehD3I4nZjCWH1Xt6seFQgbGTtCvPs0yqssMC+jHPs0K?=
 =?us-ascii?Q?fetUy/r5J10X+MYw2nfaw99N5G82Z+myejvuMKpgIfAGHSUQ/NBRVn0D2VKz?=
 =?us-ascii?Q?5GDn+NbGRaUNLmXPFoYpabkybSSvf0EAfYnfuajdmQC5m1LK/kXXTFpgbycz?=
 =?us-ascii?Q?XRLjpqGCQ/LG+tpVe4XSBDdk3VORpfV19GLiWIMXXzCOonyTKVh+vft6X/lr?=
 =?us-ascii?Q?/iZh7P7T7Dpt4gJ4tgv++jRQQQPC40nf9FlxBT7yNg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PuOteCvJLJgQIa9Whi2y6lQZ87NzDLHEii5jyxu9bH4VB+pbgxxZcZI4pgiZ?=
 =?us-ascii?Q?tIB+QDAQJh1JTDHNndIcFuHrMTXlMO6DFp5RETVgekArLfeTiYXSgjc+5u/U?=
 =?us-ascii?Q?LL3HcgEwmDiB6es09uv3UjOo9gEj3R0a4Irc6gtscwYNwQSVxO3O1Jb8HPs3?=
 =?us-ascii?Q?HXeIuSjo0jkespot/UQqYjM1RPyq09Ub+wLYKGVsoSa4bm2aSUK1kZEDRMro?=
 =?us-ascii?Q?4HLZ7yh0gk5CETXLOCPmJ/OXAcMMP925C3N46vWFtJa9dbfni6+s61VVeLrj?=
 =?us-ascii?Q?JTMj5nMDh3A95VXqJdONnncHCsQQJSPqf0BYMDLk0eElXXExu9qJWiaQmR0y?=
 =?us-ascii?Q?97NG+x8j59X4d75Lpv3p5AOgz4PmFPnASW2yVrOujXiIoefDGq5DjJ5Rdqee?=
 =?us-ascii?Q?4+MdzKl0eu3gxRyKQs22+ZQ5alrcCHH2MMpp8NkjjhrOk/2zlA3G4SuFWVhV?=
 =?us-ascii?Q?uX2XJO7Cj1NGwo+usOtz0wJ4JJlRuh5wHpen5OpghnXHKh54PPdxU/EYPGO+?=
 =?us-ascii?Q?UrkaeFUC49csQ2hVU8338tVJy128IbqybyOakgUNEEDchep6GrG/PibG9etr?=
 =?us-ascii?Q?6II+89hsctmNH+OWSy/mCBI9hXV9gpax46YcYd6qS6UrQuM1cmduymHX0ZsH?=
 =?us-ascii?Q?r4sgtiWF3Ubn4q2fyi6kM8ZUWzR33B5hBF3HjetX5sBHHgXM/lPDJn5u417g?=
 =?us-ascii?Q?pYJ5YQeb6fPTdAi0DzWazpYtGTrTlbmNxIP42GHoqrD2HZQgOBUOYPCQKKtt?=
 =?us-ascii?Q?Fr3h7A/ka5XddwEPV5F82i+46W3qVC2zQBbBKndYHiTBBPwvEd0uqEsYebkR?=
 =?us-ascii?Q?FflQnUX/esI1DUjkqmPuJzvJHo1uSBOY4oCcl4aLFLtsO3V3FnmW1lVcC3Hs?=
 =?us-ascii?Q?q+egzmq29FuYdWUbt2ZiE9c633BF7S/+RORdrywNWvplcTB/xsBUQWlxpcdA?=
 =?us-ascii?Q?gxaWfz67Ypl1LFRYiwCjvMr7XmJkKLLSvwFb7QVb1bBkQFulhaPsrm0P1CUI?=
 =?us-ascii?Q?FL7klmodRM2NjNC7aVaRsfMreSaFzMvBbJZWftFN9eHZspy/rztA3KXlLyfd?=
 =?us-ascii?Q?MYN6V1RzzH8yHM1dBVmbGO0U3/fSCQUbaR/BrJcyc6DJw6yqFZy12yH8jgyu?=
 =?us-ascii?Q?I5rJitIq6AEMH0Oz3rQQzh8HZ8JZiJ4GZzMyOPUhfdO3tvw/l7QWZJobpxth?=
 =?us-ascii?Q?qzpiarXFqDmSoWm3/avNTM8PR9gVPI18x5uD4HcudttlEZAHeYg5/O0KUw/c?=
 =?us-ascii?Q?AjTp6a8jYJdYWCuxe/D7OfNsokknmHRGR70IvqoCzk9mqtcnwLoo6zgruEV3?=
 =?us-ascii?Q?PP+LskWKCfTT31FX9LW8lpuQcydfh9/cXXbQfSex7g/iUkwNREYgi/fPnOaY?=
 =?us-ascii?Q?QsE6nEfKSX51fmzZpV+6TOdO05dkvoK9XneLBMDzkJH5JAZY+DhNYoGEW1Pq?=
 =?us-ascii?Q?QMKPvDPjI0L7rmrO7JGW0Eq+zo+me5xLLUpJzp2qSPZtZgyQfrlH5ZYuGzAk?=
 =?us-ascii?Q?Z6fwI2Ttbo66geuNgOeONaJ1kpTJjWiKD6lZVorLjLuxd9YDIBjzhR2MXvqk?=
 =?us-ascii?Q?4JDayXTTBXt+UCKbXzEMEW4GTAdeqZ6yshr3l7WnSya8hSKARBFtvqyslfK3?=
 =?us-ascii?Q?9A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c33f8944-7ae0-44c0-3ccf-08dcdcd983b4
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:43:15.8250 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S8DTQX2qZxMNEsceZoJMM6qMXmk+oAizC1/X0tcNj/M9P6f7VOBOrDcoMBaPSXPAtTPZ7lBZQhY1/6+Qj+YDJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4965
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

The goal is to reconcile the Xe and i915 PM functions.
Continue by moving the display sequences related to system
resume from i915_drv towards intel_display_driver.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   | 25 +++++++++++++++++++
 .../drm/i915/display/intel_display_driver.h   |  2 ++
 drivers/gpu/drm/i915/i915_driver.c            | 17 ++-----------
 drivers/gpu/drm/xe/display/xe_fb_pin.c        |  4 +++
 4 files changed, 33 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index f509ed1503c1..2a171cb2613a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -53,6 +53,7 @@
 #include "intel_modeset_setup.h"
 #include "intel_opregion.h"
 #include "intel_overlay.h"
+#include "intel_pch_refclk.h"
 #include "intel_plane_initial.h"
 #include "intel_pmdemand.h"
 #include "intel_pps.h"
@@ -711,6 +712,30 @@ void intel_display_driver_suspend_noggtt(struct intel_display *display, bool s2i
 	intel_dmc_suspend(display);
 }
 
+void intel_display_driver_resume_noirq(struct drm_i915_private *i915)
+{
+	struct intel_display *display = &i915->display;
+
+	/* Must be called after GGTT is resumed. */
+	intel_dpt_resume(i915);
+
+	intel_dmc_resume(display);
+
+	intel_vga_redisable(display);
+
+	intel_gmbus_reset(i915);
+
+	intel_pps_unlock_regs_wa(display);
+
+	intel_init_pch_refclk(i915);
+}
+
+void intel_display_driver_resume_nogem(struct intel_display *display)
+{
+	if (HAS_DISPLAY(display))
+		drm_mode_config_reset(display->drm);
+}
+
 int
 __intel_display_driver_resume(struct drm_i915_private *i915,
 			      struct drm_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index 179fbb86923a..dec93f2f37c6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -29,6 +29,8 @@ int intel_display_driver_suspend(struct drm_i915_private *i915);
 void intel_display_driver_suspend_noirq(struct drm_i915_private *i915);
 void intel_display_driver_suspend_noggtt(struct intel_display *display, bool s2idle);
 void intel_display_driver_resume(struct drm_i915_private *i915);
+void intel_display_driver_resume_noirq(struct drm_i915_private *i915);
+void intel_display_driver_resume_nogem(struct intel_display *display);
 void intel_display_driver_shutdown(struct drm_i915_private *i915);
 void intel_display_driver_shutdown_noirq(struct drm_i915_private *i915);
 void intel_display_driver_shutdown_nogem(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 12639fa232b3..c9df361f898f 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -56,7 +56,6 @@
 #include "display/intel_encoder.h"
 #include "display/intel_hotplug.h"
 #include "display/intel_overlay.h"
-#include "display/intel_pch_refclk.h"
 #include "display/intel_pps.h"
 #include "display/intel_sprite_uapi.h"
 #include "display/intel_vga.h"
@@ -1115,20 +1114,9 @@ static int i915_drm_resume(struct drm_device *dev)
 		if (GRAPHICS_VER(gt->i915) >= 8)
 			setup_private_pat(gt);
 
-	/* Must be called after GGTT is resumed. */
-	intel_dpt_resume(dev_priv);
-
-	intel_dmc_resume(display);
-
 	i9xx_display_sr_restore(dev_priv);
 
-	intel_vga_redisable(display);
-
-	intel_gmbus_reset(dev_priv);
-
-	intel_pps_unlock_regs_wa(display);
-
-	intel_init_pch_refclk(dev_priv);
+	intel_display_driver_resume_noirq(dev_priv);
 
 	/*
 	 * Interrupts have to be enabled before any batches are run. If not the
@@ -1142,8 +1130,7 @@ static int i915_drm_resume(struct drm_device *dev)
 	 */
 	intel_irq_resume(dev_priv);
 
-	if (HAS_DISPLAY(dev_priv))
-		drm_mode_config_reset(dev);
+	intel_display_driver_resume_nogem(display);
 
 	i915_gem_resume(dev_priv);
 
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 49dc91bdbcb0..c26a47dac332 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -412,3 +412,7 @@ u64 intel_dpt_offset(struct i915_vma *dpt_vma)
 void intel_dpt_suspend(struct xe_device *xe)
 {
 }
+
+void intel_dpt_resume(struct xe_device *xe)
+{
+}
-- 
2.46.0

