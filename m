Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE9C948FC6
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 14:57:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2848B10E365;
	Tue,  6 Aug 2024 12:57:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LLXKAils";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B199810E367;
 Tue,  6 Aug 2024 12:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722949041; x=1754485041;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K49QUZ7c/wBLECYVYX6YFsWbazoR+STKljVi1BfB+Yc=;
 b=LLXKAilsIMPKdxJsERnaaNn/mGY3fZQ2//kdDrGSgNN/7X2h6zwZLcIe
 z8Ype9TqcTGwIiZygv2aNVlzASRB392lCADgH/LN8ZLHUFxRv2kCkKk4o
 mzGPADO0gZFc3xQEpEAJ5rHoiQ0WN4asosjNGHEWCn0Nj7HA3x0X1eXY0
 +JyvTo3+VmYM+HsfVvEFCGIZKig/wvzYZ/ME54pqFjmSlFOFBA8rG5Kd2
 QpKD9gwAZ33sUUGCidNbqiGALiwSylroVwsiRCzD/1dbrGWNWjxnS10N0
 StYLQkG2CRvFas/XFytSSfbtj6YdNNZ4V7YvWcP99RT2Vg+O+jdilYKeE w==;
X-CSE-ConnectionGUID: w0sRS69TR0WsI2BXkCnDMQ==
X-CSE-MsgGUID: XtClBFH3TwuyHGElgQnEHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="21142087"
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="21142087"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 05:57:21 -0700
X-CSE-ConnectionGUID: lYI2SIOXS7akS9OVSMN22A==
X-CSE-MsgGUID: NMZe+NJ1SkiZNsgDcYFe7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="79762954"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 05:57:20 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com
Subject: [PATCH 5/5] drm/i915/cx0_phy: Use HDMI PLL algorithm for C10 PHY
Date: Tue,  6 Aug 2024 18:28:26 +0530
Message-ID: <20240806125827.2183899-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240806125827.2183899-1-ankit.k.nautiyal@intel.com>
References: <20240806125827.2183899-1-ankit.k.nautiyal@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 49 +++++---------------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  1 -
 drivers/gpu/drm/i915/display/intel_hdmi.c    | 10 ----
 3 files changed, 11 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 4a6c3040ca15..8ae290268233 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -16,6 +16,7 @@
 #include "intel_hdmi.h"
 #include "intel_panel.h"
 #include "intel_psr.h"
+#include "intel_snps_hdmi_pll.h"
 #include "intel_tc.h"
 
 #define MB_WRITE_COMMITTED      true
@@ -1970,19 +1971,6 @@ static const struct intel_c20pll_state * const mtl_c20_hdmi_tables[] = {
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
@@ -2044,6 +2032,16 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
 		}
 	}
 
+	/* For HDMI PLLs try SNPS PHY algorithm, if there are no precomputed tables */
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		intel_c10_phy_compute_hdmi_tmds_pll(&crtc_state->dpll_hw_state.cx0pll.c10,
+						    crtc_state->port_clock);
+		intel_c10pll_update_pll(crtc_state, encoder);
+		crtc_state->dpll_hw_state.cx0pll.use_c10 = true;
+
+		return 0;
+	}
+
 	return -EINVAL;
 }
 
@@ -2210,31 +2208,6 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_
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
index 9004b99bb51f..2e3076261d30 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -43,7 +43,6 @@ bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
 				   const struct intel_cx0pll_state *b);
 void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state);
-int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
 
 #endif /* __INTEL_CX0_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index bed54a3588d9..4706adf54dfa 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1878,16 +1878,6 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
 	if (intel_encoder_is_tc(encoder) && clock > 500000 && clock < 532800)
 		return MODE_CLOCK_RANGE;
 
-	/*
-	 * SNPS PHYs' MPLLB table-based programming can only handle a fixed
-	 * set of link rates.
-	 *
-	 * FIXME: We will hopefully get an algorithmic way of programming
-	 * the MPLLB for HDMI in the future.
-	 */
-	if (DISPLAY_VER(dev_priv) >= 14)
-		return intel_cx0_phy_check_hdmi_link_rate(hdmi, clock);
-
 	return MODE_OK;
 }
 
-- 
2.45.2

