Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9831A16615
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 05:32:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4682010E29F;
	Mon, 20 Jan 2025 04:32:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MmhMhe9l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D55C10E29D;
 Mon, 20 Jan 2025 04:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737347562; x=1768883562;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zUuKf4AeyqqmMzajQWZxpMdPsKbB7kBb1JA28H1sejM=;
 b=MmhMhe9lklgrrmhFJ1+ovwGpVq5Ysjn3Zr1tJDIBNBB77mKiRpiN4QgU
 ffu6UOB5y/CLGEINFw+9rLTafSH6Vkz9j5J11yymyN1XSgCjNpduq0gB5
 I8VnDkmOScoNrZTHsSRfk6g92ry5NB+wVIekjjZqoxK1svFw+SiMsJgE7
 BsQmFZJqMLqkn8su0y/HJVbq5DimpDu3nJW9h7YJXwq2Ky5P+Tg+P55ds
 jR8tDnV2A4hoj6XBjHf9REzsC6HQV3tubAeNMQbZ2r3iWX3qPkeC4qGZ2
 5k9utyvP51msesIz5P8RkPXlqxmzQvWw/zgd8soegPSxFQyDIx3Qnvrsl A==;
X-CSE-ConnectionGUID: jLO99syKQZyPCkoaG885Xw==
X-CSE-MsgGUID: UxVhKRosSICAihUaBkeIpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11320"; a="48700026"
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="48700026"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2025 20:32:42 -0800
X-CSE-ConnectionGUID: CPqAIeZxRr6bl7tK8NlBQA==
X-CSE-MsgGUID: i77oN4E9TsqcQt6Ojy83kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="106315678"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2025 20:32:40 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	suraj.kandpal@intel.com
Subject: [PATCH 2/5] drm/i915/snps_phy: Use HDMI PLL algorithm for DG2
Date: Mon, 20 Jan 2025 09:51:18 +0530
Message-ID: <20250120042122.1029481-3-ankit.k.nautiyal@intel.com>
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

Try SNPS_PHY HDMI alogorithm, if there are no pre-computed tables.
Also get rid of the helper to get rate for HDMI snps phy, as we no
longer depend only on pre-computed tables.

v2:
-Prefer pre-computed tables over computed values from algorithm. (Jani)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 -
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 37 +++++--------------
 drivers/gpu/drm/i915/display/intel_snps_phy.h |  1 -
 3 files changed, 9 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 5ae678f4eaa7..9a4bc3c4611d 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1918,8 +1918,6 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
 	 */
 	if (DISPLAY_VER(display) >= 14)
 		return intel_cx0_phy_check_hdmi_link_rate(hdmi, clock);
-	else if (IS_DG2(dev_priv))
-		return intel_snps_phy_check_hdmi_link_rate(clock);
 
 	return MODE_OK;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 41fe26dc200b..ec3c0ea2f4cb 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -11,6 +11,7 @@
 #include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_snps_hdmi_pll.h"
 #include "intel_snps_phy.h"
 #include "intel_snps_phy_regs.h"
 
@@ -1788,24 +1789,9 @@ intel_mpllb_tables_get(struct intel_crtc_state *crtc_state,
 int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
 			   struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	const struct intel_mpllb_state * const *tables;
 	int i;
 
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
-		if (intel_snps_phy_check_hdmi_link_rate(crtc_state->port_clock)
-		    != MODE_OK) {
-			/*
-			 * FIXME: Can only support fixed HDMI frequencies
-			 * until we have a proper algorithm under a valid
-			 * license.
-			 */
-			drm_dbg_kms(&i915->drm, "Can't support HDMI link rate %d\n",
-				    crtc_state->port_clock);
-			return -EINVAL;
-		}
-	}
-
 	tables = intel_mpllb_tables_get(crtc_state, encoder);
 	if (!tables)
 		return -EINVAL;
@@ -1817,6 +1803,14 @@ int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
 		}
 	}
 
+	/* For HDMI PLLs try SNPS PHY algorithm, if there are no precomputed tables */
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		intel_snps_hdmi_pll_compute_mpllb(&crtc_state->dpll_hw_state.mpllb,
+						  crtc_state->port_clock);
+
+		return 0;
+	}
+
 	return -EINVAL;
 }
 
@@ -1982,19 +1976,6 @@ void intel_mpllb_readout_hw_state(struct intel_encoder *encoder,
 	pll_state->mpllb_div &= ~SNPS_PHY_MPLLB_FORCE_EN;
 }
 
-int intel_snps_phy_check_hdmi_link_rate(int clock)
-{
-	const struct intel_mpllb_state * const *tables = dg2_hdmi_tables;
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
 void intel_mpllb_state_verify(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.h b/drivers/gpu/drm/i915/display/intel_snps_phy.h
index bc08b92a7cd9..1dd564ed9fa8 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.h
@@ -30,7 +30,6 @@ void intel_mpllb_readout_hw_state(struct intel_encoder *encoder,
 int intel_mpllb_calc_port_clock(struct intel_encoder *encoder,
 				const struct intel_mpllb_state *pll_state);
 
-int intel_snps_phy_check_hdmi_link_rate(int clock);
 void intel_snps_phy_set_signal_levels(struct intel_encoder *encoder,
 				      const struct intel_crtc_state *crtc_state);
 void intel_mpllb_state_verify(struct intel_atomic_state *state,
-- 
2.45.2

