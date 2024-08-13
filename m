Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FB394FC2A
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2024 05:18:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C3EC10E21F;
	Tue, 13 Aug 2024 03:18:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XOoRiY4V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EE5610E20D;
 Tue, 13 Aug 2024 03:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723519116; x=1755055116;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3SOM5EBgXYNaCPhdI8wks1IOzq5dn7dE5aH67KpV7CU=;
 b=XOoRiY4VMaiEO7PXxQL43s31etKSbnZiCXhPzOyJGNBdgB72Sq8Zs/b7
 41HUr+UcaznoO2n7KVjipKHkUF0ytM5dmP/jAH92/u0OBhuQY3gPtK/Am
 JkNzcQLkrpvvQJArR/lwxauAQqv9c6+S3ATsksaYqoz/0s5RAXFazMt0Y
 q+6ABKoUJta0pVob8YdzTljvYXrnhDKuN1rxw+aY8yCtzaIjPg2OhcJ+y
 KXnVv2apLNuE4gONk0fBy/RG1Y04NScra2ig8/boEz7ULfzOKauGv/N9r
 w97Jg5vsbR6RfSKToHvFMyNo0hMqouPmP9+42ZfWxQaCm5hOQlISStSmI A==;
X-CSE-ConnectionGUID: xK1whfKTQZqfeWXXFOE5iA==
X-CSE-MsgGUID: 5WCFjO8aQyGbFlliYmXcfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="33062865"
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="33062865"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 20:18:36 -0700
X-CSE-ConnectionGUID: NghOF5ecReSoc+pCec+AUg==
X-CSE-MsgGUID: fKXrQEXBTGmskqn8bm1Y9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="58804784"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 20:18:35 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com
Subject: [PATCH 5/5] drm/i915/cx0_phy: Use HDMI PLL algorithm for C10 PHY
Date: Tue, 13 Aug 2024 08:49:38 +0530
Message-ID: <20240813031941.3553574-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240813031941.3553574-1-ankit.k.nautiyal@intel.com>
References: <20240813031941.3553574-1-ankit.k.nautiyal@intel.com>
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
index 4a6c3040ca15..2fee6baaa2ed 100644
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

