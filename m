Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D8787363C
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 13:25:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D940113117;
	Wed,  6 Mar 2024 12:25:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nLrwWJ/W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FC41113117;
 Wed,  6 Mar 2024 12:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709727910; x=1741263910;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=anSG/MocK/iIyxIG97PaM59GjMENjATGAmU13joIFuY=;
 b=nLrwWJ/WJntI1PVAL+s3tbc1/K7S9WCDt4gAS9x1lVQ1u94r4gX92yfN
 Lb2beotudSPEJbBqna9+F/+ZzbXiGQR41ogKmFpffJIDtFxwkmqGmhOhY
 3OiKigAX1NbE27eqggqwFsuPTwPiY7xl+qflLAp40oxsKvDJuqzePrKMF
 08hMNQLABWrFsSYu7u4EZl90VpcSErqDguimsmsS8O5z02n/iUBN3DSEI
 Q9q9KJcxjMVy13bOiSC7XrAqANNpnIzGrWrLuAhUoNE65xdQfnQ+hSfVk
 lV/Qq8PSqmJ/gErX4nB1DLlCQtQM0mzuPiKwSJOxy/6UCzVHqYmjKrzAf A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="4919521"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="4919521"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 04:25:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="14415879"
Received: from rjongalo-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.211])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 04:25:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [RFC v2 4/4] drm/i915/display: test various to_intel_display()
 scenarios
Date: Wed,  6 Mar 2024 14:24:38 +0200
Message-Id: <1d505a515dd666cad3171e2ff9e14f70ea9c64c0.1709727127.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1709727127.git.jani.nikula@intel.com>
References: <cover.1709727127.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Drafting and testing various cases for switching to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c   |  6 +++---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 13 +++++++------
 2 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f0c3ed37b350..20eb5590c18a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -426,12 +426,12 @@ int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
 
 bool intel_dp_can_bigjoiner(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &intel_dig_port->base;
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	return DISPLAY_VER(dev_priv) >= 12 ||
-		(DISPLAY_VER(dev_priv) == 11 &&
+	return DISPLAY_VER(display) >= 12 ||
+		(DISPLAY_VER(display) == 11 &&
 		 encoder->port != PORT_A);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 90d2236fede3..66a15e4c3d4f 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1242,16 +1242,16 @@ static void hsw_set_infoframes(struct intel_encoder *encoder,
 
 void intel_dp_dual_mode_set_tmds_output(struct intel_hdmi *hdmi, bool enable)
 {
-	struct drm_i915_private *dev_priv = intel_hdmi_to_i915(hdmi);
+	struct intel_display *display = to_intel_display(hdmi);
 	struct i2c_adapter *ddc = hdmi->attached_connector->base.ddc;
 
 	if (hdmi->dp_dual_mode.type < DRM_DP_DUAL_MODE_TYPE2_DVI)
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "%s DP dual mode adaptor TMDS output\n",
+	drm_dbg_kms(display->drm, "%s DP dual mode adaptor TMDS output\n",
 		    enable ? "Enabling" : "Disabling");
 
-	drm_dp_dual_mode_set_tmds_output(&dev_priv->drm,
+	drm_dp_dual_mode_set_tmds_output(display->drm,
 					 hdmi->dp_dual_mode.type, ddc, enable);
 }
 
@@ -2058,6 +2058,7 @@ static bool hdmi_bpc_possible(const struct intel_crtc_state *crtc_state, int bpc
 {
 	struct drm_i915_private *dev_priv =
 		to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
@@ -2066,7 +2067,7 @@ static bool hdmi_bpc_possible(const struct intel_crtc_state *crtc_state, int bpc
 
 	/* Display Wa_1405510057:icl,ehl */
 	if (intel_hdmi_is_ycbcr420(crtc_state) &&
-	    bpc == 10 && DISPLAY_VER(dev_priv) == 11 &&
+	    bpc == 10 && DISPLAY_VER(display) == 11 &&
 	    (adjusted_mode->crtc_hblank_end -
 	     adjusted_mode->crtc_hblank_start) % 8 == 2)
 		return false;
@@ -2591,9 +2592,9 @@ static const struct drm_connector_funcs intel_hdmi_connector_funcs = {
 static int intel_hdmi_connector_atomic_check(struct drm_connector *connector,
 					     struct drm_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->dev);
+	struct intel_display *display = to_intel_display(state->dev);
 
-	if (HAS_DDI(i915))
+	if (HAS_DDI(display))
 		return intel_digital_connector_atomic_check(connector, state);
 	else
 		return g4x_hdmi_connector_atomic_check(connector, state);
-- 
2.39.2

