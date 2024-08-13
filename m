Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FB094FC27
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2024 05:18:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E45E310E211;
	Tue, 13 Aug 2024 03:18:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j31KF/pC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B282010E202;
 Tue, 13 Aug 2024 03:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723519112; x=1755055112;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MyEKfow5zirpieuMLUsqkvk2iHk9hd506eabVpN8NKU=;
 b=j31KF/pCsPJWxlqSfEK8mtjJW9tq08uzsMl+UYZjZau/G6EBg7WoAqhI
 +Ja1I4DkYygLfCFmHlvm0wwABkRLYpwENpL1CVIwbV+hb8NN/S58cQC4P
 jMZjBVs+YVZWZZSAW64y23Q7SHa1LEaeRMnAhsuWJ9mIsPBEnlmUS/vMh
 co7FY6DgXf58juqML+n3weJ/QhNkqUDKtwnL0+l3kIW6qTSwNuU1Nmqoc
 ASa5YXzgJu4iWLDhlZK5c+8pA0Om8vw5FjXimvZ8e6ZghKQ1To6o2jckg
 VFAQmJqF/fzo4CU6BVIWbBfzB5t7vnuGbTomXGowEy3k1rQXefn+iToae Q==;
X-CSE-ConnectionGUID: hUo0n5cbQ5ueT7ks2BpfOA==
X-CSE-MsgGUID: q7xyult/QzGg3yF/1X2pXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="33062856"
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="33062856"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 20:18:31 -0700
X-CSE-ConnectionGUID: xPXj2y10RxaKiiNzZQCvOA==
X-CSE-MsgGUID: t5yfgnKQTRWSJDAaW3xcog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="58804778"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 20:18:30 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com
Subject: [PATCH 2/5] drm/i915/snps_phy: Use HDMI PLL algorithm for DG2
Date: Tue, 13 Aug 2024 08:49:35 +0530
Message-ID: <20240813031941.3553574-3-ankit.k.nautiyal@intel.com>
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

Try SNPS_PHY HDMI alogorithm, if there are no pre-computed tables.
Also get rid of the helper to get rate for HDMI snps phy, as we no
longer depend only on pre-computed tables.

v2:
-Prefer pre-computed tables over computed values from algorithm. (Jani)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 -
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 37 +++++--------------
 drivers/gpu/drm/i915/display/intel_snps_phy.h |  1 -
 3 files changed, 9 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 19498ee455fa..bed54a3588d9 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1887,8 +1887,6 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
 	 */
 	if (DISPLAY_VER(dev_priv) >= 14)
 		return intel_cx0_phy_check_hdmi_link_rate(hdmi, clock);
-	else if (IS_DG2(dev_priv))
-		return intel_snps_phy_check_hdmi_link_rate(clock);
 
 	return MODE_OK;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index e6df1f92def5..e01a17be04bd 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -10,6 +10,7 @@
 #include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_snps_hdmi_pll.h"
 #include "intel_snps_phy.h"
 #include "intel_snps_phy_regs.h"
 
@@ -1787,24 +1788,9 @@ intel_mpllb_tables_get(struct intel_crtc_state *crtc_state,
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
@@ -1816,6 +1802,14 @@ int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
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
 
@@ -1981,19 +1975,6 @@ void intel_mpllb_readout_hw_state(struct intel_encoder *encoder,
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

