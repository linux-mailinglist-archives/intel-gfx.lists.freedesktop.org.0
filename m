Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6590E524062
	for <lists+intel-gfx@lfdr.de>; Thu, 12 May 2022 00:46:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5488510E203;
	Wed, 11 May 2022 22:46:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8E1F10E203
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 22:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652309207; x=1683845207;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yBk1wUv2WP5pqCu3bduC8o86mS+Fqdq/2Qv5NEp9nVw=;
 b=PkyK/BOQNUFq3c6ya6JcIFDRN2zkq/1wcPnVDZndti17OwL4tNJVsVYC
 wX9u7ePYa5x902YWMBXwKI2CF5M+qOv/kYBaDGmY4FzrcaOOYg7n2uWuG
 cV5lvUjr4xb7ycerkEq7SJtf8AvfSIakc7I16rNDxiq6gNyTyT8hEBFfY
 PxHMN4oNJFbsA5abCaz48Jr9DllIk0QARo20U9MZmH5BssUYgfD5fytob
 9gJB+dJM55k90FpYBdVqnJcploJ27M3CdcIwCL8qTV4nivNRzLTbidwAz
 gFy7eFpFvfE40h2wZsc+L4PHukIJLCELgp6zCrsxOJ8yH01+Yinz0Zmwm Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="249728061"
X-IronPort-AV: E=Sophos;i="5.91,218,1647327600"; d="scan'208";a="249728061"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 15:46:47 -0700
X-IronPort-AV: E=Sophos;i="5.91,218,1647327600"; d="scan'208";a="658350483"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.211])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 15:46:47 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 May 2022 15:47:28 -0700
Message-Id: <20220511224728.459724-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Add a separate crtc_enable
 hook for SKL+
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

Currently we reuse hsw_crtc_enable for SKL+ platforms.
But this has added a lot of platform checks for SKL+ platforms.
So its time to move the code to a separate crtc_enable hook
for SKL+ platforms.

No functional changes here.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 74 +++++++++++++++++++-
 1 file changed, 73 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 806d50b302ab..e2e228073e2e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1895,6 +1895,78 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 	hsw_set_transconf(crtc_state);
 }
 
+static void skl_crtc_enable(struct intel_atomic_state *state,
+			    struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
+	bool psl_clkgate_wa;
+
+	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
+		return;
+
+	if (!new_crtc_state->bigjoiner_pipes) {
+		intel_encoders_pre_pll_enable(state, crtc);
+
+		if (new_crtc_state->shared_dpll)
+			intel_enable_shared_dpll(new_crtc_state);
+
+		intel_encoders_pre_enable(state, crtc);
+	} else {
+		icl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
+	}
+
+	intel_dsc_enable(new_crtc_state);
+
+	if (DISPLAY_VER(dev_priv) >= 13)
+		intel_uncompressed_joiner_enable(new_crtc_state);
+
+	intel_set_pipe_src_size(new_crtc_state);
+	bdw_set_pipemisc(new_crtc_state);
+
+	if (!intel_crtc_is_bigjoiner_slave(new_crtc_state) &&
+	    !transcoder_is_dsi(cpu_transcoder))
+		hsw_configure_cpu_transcoder(new_crtc_state);
+
+	crtc->active = true;
+
+	/* Display WA #1180: WaDisableScalarClockGating: glk */
+	psl_clkgate_wa = DISPLAY_VER(dev_priv) == 10 &&
+		new_crtc_state->pch_pfit.enabled;
+	if (psl_clkgate_wa)
+		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
+
+	skl_pfit_enable(new_crtc_state);
+
+	/*
+	 * On ILK+ LUT must be loaded before the pipe is running but with
+	 * clocks enabled
+	 */
+	intel_color_load_luts(new_crtc_state);
+	intel_color_commit_noarm(new_crtc_state);
+	intel_color_commit_arm(new_crtc_state);
+
+	hsw_set_linetime_wm(new_crtc_state);
+
+	if (DISPLAY_VER(dev_priv) >= 11)
+		icl_set_pipe_chicken(new_crtc_state);
+
+	intel_initial_watermarks(state, crtc);
+
+	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
+		intel_crtc_vblank_on(new_crtc_state);
+
+	intel_encoders_enable(state, crtc);
+
+	if (psl_clkgate_wa) {
+		intel_crtc_wait_for_next_vblank(crtc);
+		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, false);
+	}
+}
+
 static void hsw_crtc_enable(struct intel_atomic_state *state,
 			    struct intel_crtc *crtc)
 {
@@ -9231,7 +9303,7 @@ static const struct drm_mode_config_funcs intel_mode_funcs = {
 
 static const struct drm_i915_display_funcs skl_display_funcs = {
 	.get_pipe_config = hsw_get_pipe_config,
-	.crtc_enable = hsw_crtc_enable,
+	.crtc_enable = skl_crtc_enable,
 	.crtc_disable = hsw_crtc_disable,
 	.commit_modeset_enables = skl_commit_modeset_enables,
 	.get_initial_plane_config = skl_get_initial_plane_config,
-- 
2.35.1

