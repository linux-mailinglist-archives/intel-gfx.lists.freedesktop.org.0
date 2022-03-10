Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E43FF4D3E6E
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 01:48:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4962C10E625;
	Thu, 10 Mar 2022 00:48:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0842F10E636
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 00:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646873327; x=1678409327;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MMRkQGOoRlpuWe8pGhD5NkRoPXsCDMefi8UgYsQT3gc=;
 b=H9uDa/X9YSu1FfrfcQ8a3amaYFh+2YgqtNLdkfH3K17Oz6jfMEGi6WX+
 h9e5/R42UY50ahtZ/Pb/oW1pXjUmiBvpqG3HDQjO5eoqZey2OChiahDGV
 dAShnhOrMSmzdaFAn5cT7kYU3DeYMqh4iU+uM5x50txubK8EolgG4znEV
 DHIgDWxoZtPM4R0M9dr4D+8UszXZMROfBx4L172KBc0CALnFmk1BpwG8p
 e+DOG+nnflm8Mv4NDhsv3iblLmmMMQwDERXeZcnsv90vI255Mq5bNF8Jg
 uFjaSFhA92GTN3YPvgJsaNCxBccYxI7LKRdiGiLaT8luEsFVwNxYsgqEo w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="235076192"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="235076192"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 16:48:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="510700875"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 09 Mar 2022 16:48:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Mar 2022 02:48:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Mar 2022 02:48:01 +0200
Message-Id: <20220310004802.16310-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/13] drm/i915: Introduce intel_panel_{fixed,
 downclock}_mode()
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Absract away the details on where we store the fixed/downclock modes,
and also how we select them. Will be useful for static DRRS (aka.
allowing the user to select the refresh rate for the panel).

Only hooked these up into the DP code for now since that's
the only one that can do DRRS atm.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c    |  7 +++++--
 drivers/gpu/drm/i915/display/intel_drrs.c  | 11 +++++++----
 drivers/gpu/drm/i915/display/intel_panel.c | 20 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_panel.h |  8 ++++++--
 4 files changed, 36 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 725c3350c923..af659320c02e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -918,8 +918,8 @@ intel_dp_mode_valid(struct drm_connector *connector,
 {
 	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
 	struct intel_connector *intel_connector = to_intel_connector(connector);
-	struct drm_display_mode *fixed_mode = intel_connector->panel.fixed_mode;
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
+	const struct drm_display_mode *fixed_mode;
 	int target_clock = mode->clock;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
 	int max_dotclk = dev_priv->max_dotclk_freq;
@@ -934,6 +934,7 @@ intel_dp_mode_valid(struct drm_connector *connector,
 	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
 		return MODE_H_ILLEGAL;
 
+	fixed_mode = intel_panel_fixed_mode(intel_connector, mode);
 	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
 		status = intel_panel_mode_valid(intel_connector, mode);
 		if (status != MODE_OK)
@@ -1797,6 +1798,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	const struct drm_display_mode *fixed_mode;
 	enum port port = encoder->port;
 	struct intel_connector *intel_connector = intel_dp->attached_connector;
 	struct intel_digital_connector_state *intel_conn_state =
@@ -1823,7 +1825,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	else
 		pipe_config->has_audio = intel_conn_state->force_audio == HDMI_AUDIO_ON;
 
-	if (intel_dp_is_edp(intel_dp) && intel_connector->panel.fixed_mode) {
+	fixed_mode = intel_panel_fixed_mode(intel_connector, adjusted_mode);
+	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
 		ret = intel_panel_compute_config(intel_connector, adjusted_mode);
 		if (ret)
 			return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index dcbbd9c48458..5b2eb55c1340 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -48,7 +48,8 @@
  */
 
 static bool can_enable_drrs(struct intel_connector *connector,
-			    const struct intel_crtc_state *pipe_config)
+			    const struct intel_crtc_state *pipe_config,
+			    const struct drm_display_mode *downclock_mode)
 {
 	const struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
@@ -64,7 +65,7 @@ static bool can_enable_drrs(struct intel_connector *connector,
 	if (pipe_config->has_psr)
 		return false;
 
-	return connector->panel.downclock_mode &&
+	return downclock_mode &&
 		i915->vbt.drrs_type == DRRS_TYPE_SEAMLESS;
 }
 
@@ -74,9 +75,11 @@ intel_drrs_compute_config(struct intel_crtc_state *pipe_config,
 			  int output_bpp, bool constant_n)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	const struct drm_display_mode *downclock_mode =
+		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
 	int pixel_clock;
 
-	if (!can_enable_drrs(connector, pipe_config)) {
+	if (!can_enable_drrs(connector, pipe_config, downclock_mode)) {
 		if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu_transcoder))
 			intel_zero_m_n(&pipe_config->dp_m2_n2);
 		return;
@@ -87,7 +90,7 @@ intel_drrs_compute_config(struct intel_crtc_state *pipe_config,
 
 	pipe_config->has_drrs = true;
 
-	pixel_clock = connector->panel.downclock_mode->clock;
+	pixel_clock = downclock_mode->clock;
 	if (pipe_config->splitter.enable)
 		pixel_clock /= pipe_config->splitter.link_count;
 
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 6cd6d4fdd5ad..127ad9643360 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -45,10 +45,25 @@ bool intel_panel_use_ssc(struct drm_i915_private *i915)
 		&& !(i915->quirks & QUIRK_LVDS_SSC_DISABLE);
 }
 
+const struct drm_display_mode *
+intel_panel_fixed_mode(struct intel_connector *connector,
+		       const struct drm_display_mode *mode)
+{
+	return connector->panel.fixed_mode;
+}
+
+const struct drm_display_mode *
+intel_panel_downclock_mode(struct intel_connector *connector,
+			   const struct drm_display_mode *fixed_mode)
+{
+	return connector->panel.downclock_mode;
+}
+
 int intel_panel_compute_config(struct intel_connector *connector,
 			       struct drm_display_mode *adjusted_mode)
 {
-	const struct drm_display_mode *fixed_mode = connector->panel.fixed_mode;
+	const struct drm_display_mode *fixed_mode =
+		intel_panel_fixed_mode(connector, adjusted_mode);
 
 	if (!fixed_mode)
 		return 0;
@@ -508,7 +523,8 @@ enum drm_mode_status
 intel_panel_mode_valid(struct intel_connector *connector,
 		       const struct drm_display_mode *mode)
 {
-	const struct drm_display_mode *fixed_mode = connector->panel.fixed_mode;
+	const struct drm_display_mode *fixed_mode =
+		intel_panel_fixed_mode(connector, mode);
 
 	if (!fixed_mode)
 		return MODE_OK;
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index d50b3f7e9e58..6d4df0e54ef2 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -24,8 +24,12 @@ void intel_panel_fini(struct intel_panel *panel);
 enum drm_connector_status
 intel_panel_detect(struct drm_connector *connector, bool force);
 bool intel_panel_use_ssc(struct drm_i915_private *i915);
-void intel_panel_fixed_mode(const struct drm_display_mode *fixed_mode,
-			    struct drm_display_mode *adjusted_mode);
+const struct drm_display_mode *
+intel_panel_fixed_mode(struct intel_connector *connector,
+		       const struct drm_display_mode *mode);
+const struct drm_display_mode *
+intel_panel_downclock_mode(struct intel_connector *connector,
+			   const struct drm_display_mode *fixed_mode);
 enum drm_mode_status
 intel_panel_mode_valid(struct intel_connector *connector,
 		       const struct drm_display_mode *mode);
-- 
2.34.1

