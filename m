Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E052452560D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 May 2022 21:51:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D509610F092;
	Thu, 12 May 2022 19:51:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C3CA10F092
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 May 2022 19:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652385074; x=1683921074;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RHB4E3GjWajuuQcWPG/DjWtCnUS2ZqxuCmNqjQ57si8=;
 b=DUG5RCOpCirkooV1McdnwRUCb9mM9sThx5UoOcu2CVn306xqD2ZBw1ar
 ucFgqrAuZL0AM0/TaznY5zGYMsDPjt2SlkkHIhdf6A3x3JvmWdEWRD55d
 cPaxcQQDyG/qQYM9CZUMxcb3rpjjtR7lOr8/ITEI4PghE4ZfeeoTgUvvK
 iWT0yEHrL2AeR7rLasCmndqI5QydV0fOduFsGfUJgnwYRMjuwEyzdOi8m
 TvZwbf0IaVopr7dpnzhMnlztK7MEVeZT65xE4rYIeme35suI338sN3EhI
 2UCJLNNoVy8lRYGnDDb7Ce8cl0J/sKnav8OjZjC76vc3ifsFtqq3oqkWL Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="330722861"
X-IronPort-AV: E=Sophos;i="5.91,220,1647327600"; d="scan'208";a="330722861"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 12:51:13 -0700
X-IronPort-AV: E=Sophos;i="5.91,220,1647327600"; d="scan'208";a="658750902"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.211])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 12:51:12 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 May 2022 12:52:04 -0700
Message-Id: <20220512195204.472582-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220511224728.459724-1-manasi.d.navare@intel.com>
References: <20220511224728.459724-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Add a separate crtc_enable
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

v2: Cleanup hsw_crtc_enable (Jani N)

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 64 ++++++++++++++++----
 1 file changed, 52 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 806d50b302ab..70cde34aca10 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1895,13 +1895,13 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 	hsw_set_transconf(crtc_state);
 }
 
-static void hsw_crtc_enable(struct intel_atomic_state *state,
+static void skl_crtc_enable(struct intel_atomic_state *state,
 			    struct intel_crtc *crtc)
 {
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe, hsw_workaround_pipe;
+	enum pipe pipe = crtc->pipe;
 	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 	bool psl_clkgate_wa;
 
@@ -1925,8 +1925,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		intel_uncompressed_joiner_enable(new_crtc_state);
 
 	intel_set_pipe_src_size(new_crtc_state);
-	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
-		bdw_set_pipemisc(new_crtc_state);
+	bdw_set_pipemisc(new_crtc_state);
 
 	if (!intel_crtc_is_bigjoiner_slave(new_crtc_state) &&
 	    !transcoder_is_dsi(cpu_transcoder))
@@ -1940,10 +1939,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	if (psl_clkgate_wa)
 		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
 
-	if (DISPLAY_VER(dev_priv) >= 9)
-		skl_pfit_enable(new_crtc_state);
-	else
-		ilk_pfit_enable(new_crtc_state);
+	skl_pfit_enable(new_crtc_state);
 
 	/*
 	 * On ILK+ LUT must be loaded before the pipe is running but with
@@ -1952,9 +1948,6 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	intel_color_load_luts(new_crtc_state);
 	intel_color_commit_noarm(new_crtc_state);
 	intel_color_commit_arm(new_crtc_state);
-	/* update DSPCNTR to configure gamma/csc for pipe bottom color */
-	if (DISPLAY_VER(dev_priv) < 9)
-		intel_disable_primary_plane(new_crtc_state);
 
 	hsw_set_linetime_wm(new_crtc_state);
 
@@ -1972,6 +1965,53 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		intel_crtc_wait_for_next_vblank(crtc);
 		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, false);
 	}
+}
+
+static void hsw_crtc_enable(struct intel_atomic_state *state,
+			    struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe hsw_workaround_pipe;
+	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
+
+	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
+		return;
+
+	intel_encoders_pre_pll_enable(state, crtc);
+
+	if (new_crtc_state->shared_dpll)
+		intel_enable_shared_dpll(new_crtc_state);
+
+	intel_encoders_pre_enable(state, crtc);
+
+	intel_set_pipe_src_size(new_crtc_state);
+	if (IS_BROADWELL(dev_priv))
+		bdw_set_pipemisc(new_crtc_state);
+
+	if (!transcoder_is_dsi(cpu_transcoder))
+		hsw_configure_cpu_transcoder(new_crtc_state);
+
+	crtc->active = true;
+
+	ilk_pfit_enable(new_crtc_state);
+
+	/*
+	 * On ILK+ LUT must be loaded before the pipe is running but with
+	 * clocks enabled
+	 */
+	intel_color_load_luts(new_crtc_state);
+	intel_color_commit_noarm(new_crtc_state);
+	intel_color_commit_arm(new_crtc_state);
+	/* update DSPCNTR to configure gamma/csc for pipe bottom color */
+	intel_disable_primary_plane(new_crtc_state);
+
+	hsw_set_linetime_wm(new_crtc_state);
+
+	intel_initial_watermarks(state, crtc);
+
+	intel_encoders_enable(state, crtc);
 
 	/* If we change the relative order between pipe/planes enabling, we need
 	 * to change the workaround. */
@@ -9231,7 +9271,7 @@ static const struct drm_mode_config_funcs intel_mode_funcs = {
 
 static const struct drm_i915_display_funcs skl_display_funcs = {
 	.get_pipe_config = hsw_get_pipe_config,
-	.crtc_enable = hsw_crtc_enable,
+	.crtc_enable = skl_crtc_enable,
 	.crtc_disable = hsw_crtc_disable,
 	.commit_modeset_enables = skl_commit_modeset_enables,
 	.get_initial_plane_config = skl_get_initial_plane_config,
-- 
2.35.1

