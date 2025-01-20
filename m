Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BD5A16618
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 05:32:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 503E710E2BF;
	Mon, 20 Jan 2025 04:32:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TLeCVQwO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0520210E2A2;
 Mon, 20 Jan 2025 04:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737347568; x=1768883568;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wOXzlAnMVakXiydBFiTCENUgEUQQcORz/5Q+OnSuMoY=;
 b=TLeCVQwOybJYsiZCaY+A1CLf180gqcYm2MPF1qL9MBf/JnRsWEMer820
 KlIkH2KOmz37oMx6fDnUx20t2gQ3oJUABoo5EHXofbUGUyeucqizPVLEl
 s2BsfacVDtV8Txc2sub6854PMAGBOObJsPGalu4sfTr8LsRLj61Xsfa8i
 r3XMnV81d8JQiowRQZk1vfDdZaj3eK22BvUERuovYS5B39+0EK6V/PULE
 ULOYyNxM4tq/PpMMAe9GGkv9iWhuwoqpDUniarAs2CR+9dy07KDxraBRW
 jkJvAU6pGHp2+dBJVZnNEZ8huQEoooslPRInzwxI5xuqoVBQxAEeZ/73e Q==;
X-CSE-ConnectionGUID: BFqkj6vNTiKnrd4FTOCuSw==
X-CSE-MsgGUID: Lst5k9SkSfqLScTPnrtGbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11320"; a="48700061"
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="48700061"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2025 20:32:48 -0800
X-CSE-ConnectionGUID: yEmjtv5ZSqG8Hto4WkyaPw==
X-CSE-MsgGUID: PMKPaOUpRrG+granplJAhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="106315701"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2025 20:32:46 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	suraj.kandpal@intel.com
Subject: [PATCH 5/5] drm/i915/cx0_phy: Use HDMI PLL algorithm for C10 PHY
Date: Mon, 20 Jan 2025 09:51:21 +0530
Message-ID: <20250120042122.1029481-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250120042122.1029481-1-ankit.k.nautiyal@intel.com>
References: <20250120042122.1029481-1-ankit.k.nautiyal@intel.com>
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

Try HDMI PLL alogorithm for C10 PHY, if there are no pre-computed tables.
Also get rid of the helpers to get rate for HDMI for C10/20 PHY, as we no
longer depend only on pre-computed tables.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 49 +++++---------------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  1 -
 drivers/gpu/drm/i915/display/intel_hdmi.c    | 10 ----
 3 files changed, 11 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 058013c74991..1c7d9467e81c 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -18,6 +18,7 @@
 #include "intel_hdmi.h"
 #include "intel_panel.h"
 #include "intel_psr.h"
+#include "intel_snps_hdmi_pll.h"
 #include "intel_tc.h"
 
 #define MB_WRITE_COMMITTED      true
@@ -2003,19 +2004,6 @@ static const struct intel_c20pll_state * const mtl_c20_hdmi_tables[] = {
 	NULL,
 };
 
-static int intel_c10_phy_check_hdmi_link_rate(int clock)
-{
-	const struct intel_c10pll_state * const *tables = mtl_c10_hdmi_tables;
-	int i;
-
-	for (i = 0; tables[i]; i++) {
-		if (clock == tables[i]->clock)
-			return MODE_OK;
-	}
-
-	return MODE_CLOCK_RANGE;
-}
-
 static const struct intel_c10pll_state * const *
 intel_c10pll_tables_get(struct intel_crtc_state *crtc_state,
 			struct intel_encoder *encoder)
@@ -2077,6 +2065,16 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
 		}
 	}
 
+	/* For HDMI PLLs try SNPS PHY algorithm, if there are no precomputed tables */
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		intel_snps_hdmi_pll_compute_c10pll(&crtc_state->dpll_hw_state.cx0pll.c10,
+						   crtc_state->port_clock);
+		intel_c10pll_update_pll(crtc_state, encoder);
+		crtc_state->dpll_hw_state.cx0pll.use_c10 = true;
+
+		return 0;
+	}
+
 	return -EINVAL;
 }
 
@@ -2281,31 +2279,6 @@ static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
-static int intel_c20_phy_check_hdmi_link_rate(int clock)
-{
-	const struct intel_c20pll_state * const *tables = mtl_c20_hdmi_tables;
-	int i;
-
-	for (i = 0; tables[i]; i++) {
-		if (clock == tables[i]->clock)
-			return MODE_OK;
-	}
-
-	if (clock >= 25175 && clock <= 594000)
-		return MODE_OK;
-
-	return MODE_CLOCK_RANGE;
-}
-
-int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock)
-{
-	struct intel_digital_port *dig_port = hdmi_to_dig_port(hdmi);
-
-	if (intel_encoder_is_c10phy(&dig_port->base))
-		return intel_c10_phy_check_hdmi_link_rate(clock);
-	return intel_c20_phy_check_hdmi_link_rate(clock);
-}
-
 static const struct intel_c20pll_state * const *
 intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
 			 struct intel_encoder *encoder)
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 711168882684..573fa7d3e88f 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -41,7 +41,6 @@ bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
 				   const struct intel_cx0pll_state *b);
 void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state);
-int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
 
 #endif /* __INTEL_CX0_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 9a4bc3c4611d..3b51238022f4 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1909,16 +1909,6 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
 	if (intel_encoder_is_tc(encoder) && clock > 500000 && clock < 532800)
 		return MODE_CLOCK_RANGE;
 
-	/*
-	 * SNPS PHYs' MPLLB table-based programming can only handle a fixed
-	 * set of link rates.
-	 *
-	 * FIXME: We will hopefully get an algorithmic way of programming
-	 * the MPLLB for HDMI in the future.
-	 */
-	if (DISPLAY_VER(display) >= 14)
-		return intel_cx0_phy_check_hdmi_link_rate(hdmi, clock);
-
 	return MODE_OK;
 }
 
-- 
2.45.2

