Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7735495F58
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 14:00:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1013610E9F5;
	Fri, 21 Jan 2022 13:00:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75C8610EA2E
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642770054; x=1674306054;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UMRWy0s26aqBJmhKyGMaF2uwa+Tj/WwGv2UoH2CB3CU=;
 b=dktpE+6mU7Xihn2oCR3vgsq5uMBcy9jmDPmZAP/3JH6kVd5QTCCo47c9
 THn/+tewH+5t+05gPOaiBKmij5PynGSU5YwS/uPm2l+rOy1ZMeWtJZhL9
 Gzw/LR232tuvshXzHYO0FI+lacx0nxyLMRbZzX2a7wuATuQr26UBZggue
 o1yLHh8RPsi9oSOGeO/ffIPmMQzInSZTpr1zkAVr6KxZ5bvULq7nPh2LZ
 KTbx3f5q5QS7/G6VNkfxUoPfxCkM0DWcV+3erjLr2LFRvpuM8PklQON46
 qBW/OKycOWdzFV4zMlnGOznHjk4it8Qy3Ubqb8RANdc1Dc+sSDYSGaUN3 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="245867029"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="245867029"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:00:54 -0800
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="533265982"
Received: from chandra2-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.104])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:00:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 15:00:30 +0200
Message-Id: <ca6908452a63bd74a9c9d75ecd295182c80c7205.1642769982.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642769982.git.jani.nikula@intel.com>
References: <cover.1642769982.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/9] drm/i915/snps: convert to drm device based
 logging
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prefer drm device based logging. Do some dev_priv->i915 conversions
while at it.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 29 ++++++++++---------
 1 file changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 718bfdbae9c8..8573a458811a 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -24,18 +24,18 @@
  * since it is not handled by the shared DPLL framework as on other platforms.
  */
 
-void intel_snps_phy_wait_for_calibration(struct drm_i915_private *dev_priv)
+void intel_snps_phy_wait_for_calibration(struct drm_i915_private *i915)
 {
 	enum phy phy;
 
 	for_each_phy_masked(phy, ~0) {
-		if (!intel_phy_is_snps(dev_priv, phy))
+		if (!intel_phy_is_snps(i915, phy))
 			continue;
 
-		if (intel_de_wait_for_clear(dev_priv, ICL_PHY_MISC(phy),
+		if (intel_de_wait_for_clear(i915, ICL_PHY_MISC(phy),
 					    DG2_PHY_DP_TX_ACK_MASK, 25))
-			DRM_ERROR("SNPS PHY %c failed to calibrate after 25ms.\n",
-				  phy);
+			drm_err(&i915->drm, "SNPS PHY %c failed to calibrate after 25ms.\n",
+				phy);
 	}
 }
 
@@ -776,6 +776,7 @@ intel_mpllb_tables_get(struct intel_crtc_state *crtc_state,
 int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
 			   struct intel_encoder *encoder)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	const struct intel_mpllb_state * const *tables;
 	int i;
 
@@ -787,8 +788,8 @@ int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
 			 * until we have a proper algorithm under a valid
 			 * license.
 			 */
-			DRM_DEBUG_KMS("Can't support HDMI link rate %d\n",
-				      crtc_state->port_clock);
+			drm_dbg_kms(&i915->drm, "Can't support HDMI link rate %d\n",
+				    crtc_state->port_clock);
 			return -EINVAL;
 		}
 	}
@@ -855,7 +856,7 @@ void intel_mpllb_enable(struct intel_encoder *encoder,
 	 * dp_mpllb_state interface signal.
 	 */
 	if (intel_de_wait_for_set(dev_priv, enable_reg, PLL_LOCK, 5))
-		DRM_ERROR("Port %c PLL not locked\n", phy_name(phy));
+		drm_dbg_kms(&dev_priv->drm, "Port %c PLL not locked\n", phy_name(phy));
 
 	/*
 	 * 11. If the frequency will result in a change to the voltage
@@ -868,8 +869,8 @@ void intel_mpllb_enable(struct intel_encoder *encoder,
 
 void intel_mpllb_disable(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
 	i915_reg_t enable_reg = (phy <= PHY_D ?
 				 DG2_PLL_ENABLE(phy) : MG_PLL_ENABLE(0));
 
@@ -882,21 +883,21 @@ void intel_mpllb_disable(struct intel_encoder *encoder)
 	 */
 
 	/* 2. Software programs DPLL_ENABLE [PLL Enable] to "0" */
-	intel_uncore_rmw(&dev_priv->uncore, enable_reg, PLL_ENABLE, 0);
+	intel_uncore_rmw(&i915->uncore, enable_reg, PLL_ENABLE, 0);
 
 	/*
 	 * 4. Software programs SNPS_PHY_MPLLB_DIV dp_mpllb_force_en to "0".
 	 * This will allow the PLL to stop running.
 	 */
-	intel_uncore_rmw(&dev_priv->uncore, SNPS_PHY_MPLLB_DIV(phy),
+	intel_uncore_rmw(&i915->uncore, SNPS_PHY_MPLLB_DIV(phy),
 			 SNPS_PHY_MPLLB_FORCE_EN, 0);
 
 	/*
 	 * 5. Software polls DPLL_ENABLE [PLL Lock] for PHY acknowledgment
 	 * (dp_txX_ack) that the new transmitter setting request is completed.
 	 */
-	if (intel_de_wait_for_clear(dev_priv, enable_reg, PLL_LOCK, 5))
-		DRM_ERROR("Port %c PLL not locked\n", phy_name(phy));
+	if (intel_de_wait_for_clear(i915, enable_reg, PLL_LOCK, 5))
+		drm_err(&i915->drm, "Port %c PLL not locked\n", phy_name(phy));
 
 	/*
 	 * 6. If the frequency will result in a change to the voltage
-- 
2.30.2

