Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF6CBDC69B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 06:08:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BEEE10E714;
	Wed, 15 Oct 2025 04:08:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CU357oH/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4F8E10E71D;
 Wed, 15 Oct 2025 04:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760501334; x=1792037334;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sgjqA1uNNGJVqUC5Lntp8mKMyl9I3rybrWARsv6UGJY=;
 b=CU357oH/vDVx85Eyvi0EhoK/o+173YI4NqcP8F9+0ZJk70n+2s3Rnipa
 19phJF7hGoYy0pC2Xgaq5uvA8dRwHIV6VkWEAc4zsksNssVt5WMToL2ES
 n7SnxVRLxJFiO33qAtMYYWqJ+55sZipeycg+HhdBc0c1T7tmoNMJ2HaKd
 vL2T7WFKo7dVuaoNrNAl5dzxd4DxXVST9Ox2ma4FfkfZaDlf0tENGfW9u
 OZNwMrdDaa2rdRPtAko8Zg+0uAAyLp/xOkxIYP3rzgif4/VDTBQDtj2ej
 A8IXcHMY0VA4fLKsVoGpr2ECs6jIEdbqOsFvHNskYNn0Rpv2IaM5jE+/H A==;
X-CSE-ConnectionGUID: XgfYpBGbQcyBBdrtCvKWQg==
X-CSE-MsgGUID: dM+u89msTtaV+DiAH3qFUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="66318960"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="66318960"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 21:08:54 -0700
X-CSE-ConnectionGUID: zFVhm8YCQmCE64cL3UlTSw==
X-CSE-MsgGUID: sx+clwAJSN+XzrURHCfwbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="219196136"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 14 Oct 2025 21:08:52 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 10/25] drm/i915/ltphy: Enable SSC during port clock programming
Date: Wed, 15 Oct 2025 09:38:02 +0530
Message-Id: <20251015040817.3431297-11-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251015040817.3431297-1-suraj.kandpal@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

We enable SSC when we program PORT_CLOCK_CTL register. We logically
determine if ssc is enabled or not while we calculate our state.

Bspec: 74492, 74667
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 26 +++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 8cd0009609d4..6ee785fbcad2 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -15,6 +15,7 @@
 #include "intel_dpll_mgr.h"
 #include "intel_lt_phy.h"
 #include "intel_lt_phy_regs.h"
+#include "intel_panel.h"
 #include "intel_psr.h"
 #include "intel_tc.h"
 
@@ -1109,6 +1110,12 @@ intel_lt_phy_program_port_clock_ctl(struct intel_encoder *encoder,
 	else
 		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
 
+	 /* DP2.0 10G and 20G rates enable MPLLA*/
+	if (crtc_state->port_clock == 1000000 || crtc_state->port_clock == 2000000)
+		val |= XELPDP_SSC_ENABLE_PLLA;
+	else
+		val |= crtc_state->dpll_hw_state.ltpll.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
+
 	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
 		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
 		     XELPDP_DDI_CLOCK_SELECT_MASK(display) | XELPDP_SSC_ENABLE_PLLA |
@@ -1212,6 +1219,23 @@ intel_lt_phy_pll_tables_get(struct intel_crtc_state *crtc_state,
 	return NULL;
 }
 
+static bool
+intel_lt_phy_pll_is_ssc_enabled(struct intel_crtc_state *crtc_state,
+				struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(encoder);
+
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		if (intel_panel_use_ssc(display)) {
+			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+			return (intel_dp->dpcd[DP_MAX_DOWNSPREAD] & DP_MAX_DOWNSPREAD_0_5);
+		}
+	}
+
+	return false;
+}
+
 int
 intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder)
@@ -1230,6 +1254,8 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 				if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
 					crtc_state->dpll_hw_state.ltpll.config[2] = 1;
 			}
+			crtc_state->dpll_hw_state.ltpll.ssc_enabled =
+				intel_lt_phy_pll_is_ssc_enabled(crtc_state, encoder);
 			return 0;
 		}
 	}
-- 
2.34.1

