Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF93EA87EC2
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 13:16:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0F4610E583;
	Mon, 14 Apr 2025 11:16:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F7qwGav4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26D2910E583
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Apr 2025 11:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744629377; x=1776165377;
 h=resent-to:resent-from:resent-date:resent-message-id:from:
 to:cc:subject:date:message-id:content-transfer-encoding:
 mime-version; bh=c0OB9f8nbKMf2pPUgdi+MkTOOqVKTQsbBny0tbhqXlw=;
 b=F7qwGav4LlxbuirSZr2UxfcApSD9upgot7OkQPpYhr9lK1VLyUkk7EQB
 N+dQsDlUZCy1zw8FXr/cKw4n3LIpUT6wHvd3H1ww2lZzp1k4HQ5xdXNCF
 zzkOzkBQbrp+WH4l1XlXmejGkawg1hx9whZGIuIGgHMXylVYLijCrekG5
 4feQGTRTEk38fNI3hl09S2dZnQqhxIGBz2AUu5QGDyKjpp5VCul76FHqA
 MxSUYREQNrZ2MSx1cCsD2j8R7FH23WcltDy8oUE6JSQION6afU2K8+Cg4
 bOMDWnz4cnG5M+2/7cEJyOmtrK2WYMdJliUsgzoOTkXE/fY18/YGaCQCR g==;
X-CSE-ConnectionGUID: bJlU2VY7Rkmqj+yB6v57yA==
X-CSE-MsgGUID: Az5SBa3VSxasiuLTV6TVVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="57459551"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="57459551"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 04:16:17 -0700
X-CSE-ConnectionGUID: kczCinVeTDCKFxVg+n8CWQ==
X-CSE-MsgGUID: /oDakUgoQrCqqNBUz5ATrA==
X-ExtLoopCount2: 2 from 10.245.246.205
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="130766191"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 04:16:16 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Mon, 14 Apr 2025 14:16:12 +0300
Resent-Message-ID: <87a58jt2mb.fsf@intel.com>
Received: from PH7PR11MB8124.namprd11.prod.outlook.com (2603:10b6:510:237::9)
 by PH7PR11MB6428.namprd11.prod.outlook.com with HTTPS;
 Fri, 11 Apr 2025 10:27:27 +0000
Received: from BN9PR03CA0876.namprd03.prod.outlook.com (2603:10b6:408:13c::11)
 by PH7PR11MB8124.namprd11.prod.outlook.com (2603:10b6:510:237::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.27; Fri, 11 Apr
 2025 10:27:26 +0000
Received: from MN1PEPF0000F0E3.namprd04.prod.outlook.com
 (2603:10b6:408:13c:cafe::a3) by BN9PR03CA0876.outlook.office365.com
 (2603:10b6:408:13c::11) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8632.26 via Frontend Transport; Fri,
 11 Apr 2025 10:27:25 +0000
Authentication-Results: spf=fail (sender IP is 192.55.55.70)
 smtp.mailfrom=intel.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=intel.com;
Received: from edgegateway.intel.com (192.55.55.70) by
 MN1PEPF0000F0E3.mail.protection.outlook.com (10.167.242.41) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8655.12 via Frontend Transport; Fri, 11 Apr 2025 10:27:25 +0000
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 edgegateway.intel.com (10.1.192.135) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 11 Apr 2025 03:27:20 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 11 Apr 2025 03:27:20 -0700
Received: from fmviesa005.fm.intel.com (10.60.135.145) by
 FMSMSX902.amr.corp.intel.com (10.18.84.215) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 11 Apr 2025 03:27:20 -0700
X-CSE-ConnectionGUID: LKa6L1QwQzuIzrROZL1zoA==
X-CSE-MsgGUID: PGW89wy8StSNiZ9RwpRmLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="133918728"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.115]) by fmviesa005-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Apr 2025 03:27:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <jani.nikula@intel.com>
Subject: [PATCH] drm/i915/dpio: have chv_data_lane_soft_reset() get/put dpio
 internally
Date: Fri, 11 Apr 2025 13:27:15 +0300
Message-ID: <20250411102715.613082-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-OrganizationHeadersPreserved: fmsmsx903.amr.corp.intel.com
X-MS-Exchange-Organization-ExpirationStartTime: 11 Apr 2025 10:27:25.9690 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: 9246affc-e545-4d33-404c-08dd78e3743f
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-MS-Exchange-Organization-AuthSource: fmsmsx902.amr.corp.intel.com
X-MS-Exchange-Organization-AuthAs: Internal
X-MS-Exchange-Organization-AuthMechanism: 10
X-MS-Exchange-Organization-SCL: 1
X-CrossPremisesHeadersPromoted: MN1PEPF0000F0E3.namprd04.prod.outlook.com
X-CrossPremisesHeadersFiltered: MN1PEPF0000F0E3.namprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN1PEPF0000F0E3:EE_|PH7PR11MB8124:EE_|PH7PR11MB6428:EE_
X-OriginatorOrg: intel.onmicrosoft.com
X-MS-Office365-Filtering-Correlation-Id: 9246affc-e545-4d33-404c-08dd78e3743f
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|82310400026|366016|7053199007|41050700001; 
X-Forefront-Antispam-Report: CIP:192.55.55.70; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:edgegateway.intel.com; PTR:edgegateway.intel.com;
 CAT:NONE; SFS:(13230040)(82310400026)(366016)(7053199007)(41050700001);
 DIR:INT; 
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2025 10:27:25.7815 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9246affc-e545-4d33-404c-08dd78e3743f
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=46c98d88-e344-4ed4-8496-4ed7712e255d; Ip=[192.55.55.70];
 Helo=[edgegateway.intel.com]
X-MS-Exchange-CrossTenant-AuthSource: fmsmsx902.amr.corp.intel.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8124
X-MS-Exchange-Transport-EndToEndLatency: 00:00:01.9237246
X-MS-Exchange-Processed-By-BccFoldering: 15.20.8606.026
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; auth:0; dest:I;
 ENG:(910005)(944506478)(944626604)(920097)(425001)(930097)(140003); 
X-Microsoft-Antispam-Message-Info: GXPoBeQ/zKFP+76alRr/NWqtjBVaeA3TF7sYQVxB+1yqzqTj/zQl8bGg3mhs6RccOe3HVfrCBMcqHdPsfzqyX8GIYH8gUcG6ZTWJ6oyKKC1Rv5gBKIRNPK4J0GIf7hDePV4Wyx3bMp2GdmSXmply6EdRB7JowVmLe9Jgq4cuF0MTt0YvD9i+qmYNgTntOFWTqLZYgWmuX+DNfO252JB70iPHaMuJWcimoe1nfVUliLAi5ORVAaJAQouQyqbrxEshdq+uUX0md7CFVZJOscdhMn+XnVU87y2N3WGr8o2AIwL1AZuqj/NmYufCjf3dHRAq59Nx87L6uxHmdVh9ZsIg3TLrcMhrN9tUrviPAH0KijJekIpkTPqS12o5oSRdFHiWH51GbuiiM1hmS7LXMic7ZJ+9vIPL+EqwTekopP+AmVkaaychX2NpyAIcr+QjVImQiDExEvX3AUTwToam2o3iq8kWlMcgXrdVwWtHY0t/8DExJxYEZqYjTfw2PTlXCwQgloNA9Ngw/5LzdBPVjoIqPgjR71jMbkXu1cfZc7y7VTxhLBJcAmOBxx71sEFJz46K3xtrxKS4CnBsQGt/4gxJwZUJ+jpYCVOKNEKasRZJvor0DuAVb/TFXxaQBZNQkDvikuzgm1Umqmilu8k5hED20yzqxYMqSUJbZlWxQtbbIdNwIGQ6uHwjf7npQvfSPcLUvBPxxA9BYJRSXWQ+WEGLsq5x8UZyNpwhTblbkV5Uvo/q5btVv91d3GGh69jyQpK6dCJLluHx2L3B5qL0LWsDnV5uUke1UxResCY+tiEcDybNH27OrkMR7qIuU9zGieVHTBK6xRdkvgOXCQ+UC3kgPQ==
MIME-Version: 1.0
X-TUID: j/Kpvpo7VE69
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

Have chv_data_lane_soft_reset() get/put dpio internally, and use a
locked version of it within intel_dpio_phy.c. This drops the dependency
on vlv sideband from g4x_dp.c and g4x_hdmi.c, and makes that a DPIO PHY
implementation detail.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |  7 -------
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  8 -------
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 21 ++++++++++++++-----
 3 files changed, 16 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index b39aae9165df..18e51799d2a6 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -28,7 +28,6 @@
 #include "intel_hotplug.h"
 #include "intel_pch_display.h"
 #include "intel_pps.h"
-#include "vlv_sideband.h"
 
 static const struct dpll g4x_dpll[] = {
 	{ .dot = 162000, .p1 = 2, .p2 = 10, .n = 2, .m1 = 23, .m2 = 8, },
@@ -581,16 +580,10 @@ static void chv_post_disable_dp(struct intel_atomic_state *state,
 				const struct intel_crtc_state *old_crtc_state,
 				const struct drm_connector_state *old_conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-
 	intel_dp_link_down(encoder, old_crtc_state);
 
-	vlv_dpio_get(dev_priv);
-
 	/* Assert data lane reset */
 	chv_data_lane_soft_reset(encoder, old_crtc_state, true);
-
-	vlv_dpio_put(dev_priv);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 3dc2c59a3df0..21b5db2fa203 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -22,7 +22,6 @@
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
 #include "intel_sdvo.h"
-#include "vlv_sideband.h"
 
 static void intel_hdmi_prepare(struct intel_encoder *encoder,
 			       const struct intel_crtc_state *crtc_state)
@@ -539,15 +538,8 @@ static void chv_hdmi_post_disable(struct intel_atomic_state *state,
 				  const struct intel_crtc_state *old_crtc_state,
 				  const struct drm_connector_state *old_conn_state)
 {
-	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
-	vlv_dpio_get(dev_priv);
-
 	/* Assert data lane reset */
 	chv_data_lane_soft_reset(encoder, old_crtc_state, true);
-
-	vlv_dpio_put(dev_priv);
 }
 
 static void chv_hdmi_pre_enable(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 429f89543789..1e1af7150723 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -808,9 +808,9 @@ void chv_set_phy_signal_level(struct intel_encoder *encoder,
 	vlv_dpio_put(dev_priv);
 }
 
-void chv_data_lane_soft_reset(struct intel_encoder *encoder,
-			      const struct intel_crtc_state *crtc_state,
-			      bool reset)
+static void __chv_data_lane_soft_reset(struct intel_encoder *encoder,
+				       const struct intel_crtc_state *crtc_state,
+				       bool reset)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
@@ -853,6 +853,17 @@ void chv_data_lane_soft_reset(struct intel_encoder *encoder,
 	}
 }
 
+void chv_data_lane_soft_reset(struct intel_encoder *encoder,
+			      const struct intel_crtc_state *crtc_state,
+			      bool reset)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	vlv_dpio_get(i915);
+	__chv_data_lane_soft_reset(encoder, crtc_state, reset);
+	vlv_dpio_put(i915);
+}
+
 void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state)
 {
@@ -880,7 +891,7 @@ void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
 	vlv_dpio_get(dev_priv);
 
 	/* Assert data lane reset */
-	chv_data_lane_soft_reset(encoder, crtc_state, true);
+	__chv_data_lane_soft_reset(encoder, crtc_state, true);
 
 	/* program left/right clock distribution */
 	if (pipe != PIPE_B) {
@@ -1008,7 +1019,7 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 	}
 
 	/* Deassert data lane reset */
-	chv_data_lane_soft_reset(encoder, crtc_state, false);
+	__chv_data_lane_soft_reset(encoder, crtc_state, false);
 
 	vlv_dpio_put(dev_priv);
 }
-- 
2.39.5

