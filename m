Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1CBC057F5
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 12:07:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D1B310EA1C;
	Fri, 24 Oct 2025 10:07:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CeWxm51a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2BF210EA20;
 Fri, 24 Oct 2025 10:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761300471; x=1792836471;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dRT9Jd9RuY/0NNfAUSDpmo1JnC/u55oK87jVTPgN2ms=;
 b=CeWxm51awkrv/svHuB71d/KzBgoSkgFXH/h+83n4sy6gS3ksnac1kidq
 W5BMNYNOnD5VGjHOQC9uKDNBTAwIqNfxf4I9D/0lGYshimR1Uw8v27nJx
 4MCCciGs2EPfB/p7JPlTTlP9u7JZ5ajxh8gOwpzb/ZJorA1IvZKX7qAB6
 oYhAxj37mDJJ6gE/2PLB23IKe6EoD0n8tK5km+NJ+JIv2ndlHoW0ckope
 2Jt9AVdbr4rKqEj1qCbv66g6IJ6Avhw8ibJYeRpgrxObMejm+wEURSspI
 Btf6YRYDmOhreUNC5S/jAByf1Vla97SQ4V+1jiITtlgvZZ25WT7XbclBs A==;
X-CSE-ConnectionGUID: 5HAMi9LmRWCVZH9rSvWHGw==
X-CSE-MsgGUID: rRRslmWNT0Sbe+0CBacneg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67346813"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="67346813"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 03:07:50 -0700
X-CSE-ConnectionGUID: oJ0OHZamRsucDTrHfuoRPg==
X-CSE-MsgGUID: DpCPFR/uTzikML/TcFwC1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="208039247"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa002.fm.intel.com with ESMTP; 24 Oct 2025 03:07:48 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 11/26] drm/i915/ltphy: Enable SSC during port clock
 programming
Date: Fri, 24 Oct 2025 15:36:57 +0530
Message-Id: <20251024100712.3776261-12-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251024100712.3776261-1-suraj.kandpal@intel.com>
References: <20251024100712.3776261-1-suraj.kandpal@intel.com>
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
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 26 +++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index c790fe652aa0..0b1b320f5c3a 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -16,6 +16,7 @@
 #include "intel_hdmi.h"
 #include "intel_lt_phy.h"
 #include "intel_lt_phy_regs.h"
+#include "intel_panel.h"
 #include "intel_psr.h"
 #include "intel_tc.h"
 
@@ -1110,6 +1111,12 @@ intel_lt_phy_program_port_clock_ctl(struct intel_encoder *encoder,
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
@@ -1213,6 +1220,23 @@ intel_lt_phy_pll_tables_get(struct intel_crtc_state *crtc_state,
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
@@ -1231,6 +1255,8 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
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

