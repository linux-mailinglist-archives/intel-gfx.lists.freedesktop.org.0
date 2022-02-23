Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A934C13B8
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 14:13:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86DF010F38F;
	Wed, 23 Feb 2022 13:13:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 345E010F384
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 13:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645622011; x=1677158011;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RBInWKOshOELhfv+98uwtSNLQtYHf+c6vUZcFAp3YNA=;
 b=LYsIF4a05t83DOlyFAnT6P2Y1VXOzB2Apia2byQhDdDxCJvxxmvQa9KV
 QIYQWRXyFoBUCtbOmX9JRwPN+HnrEpBAUAD9ZBOI7QJ/mhKUO9zZrE9L+
 vxNep+9fls0YQOoHsGD/cWgCYQiuH2wcgOVCSUxkpPhTcwU1DKP8yuBkl
 A9TMYWQcoM/xO8EOrUa1XRhJDII1oZZSlWI0HwqjhdlwG2xBajtBHHUcw
 1UUTsR48bPluacQfgt/9u7Xb7EzaSoMkUUpsaG0eP9zhs6urEzSgh6rcT
 lrgxsmzV3qmRhDkJq/C8WweSPuHlODM6v3UrwQ+7E+gyrKLfSDLBY3ZtS Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="338395513"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="338395513"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 05:13:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="573814668"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 23 Feb 2022 05:13:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Feb 2022 15:13:27 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 15:13:06 +0200
Message-Id: <20220223131315.18016-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
References: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/13] drm/i915: Rename variables in
 intel_crtc_compute_config()
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

Do the s/dev_priv/i915/ and s/pipe_config/crtc_state/ renames
to intel_crtc_compute_config(). I want to start splitting this
up a bit and doing the renames now avoids spreading these old
nameing conventions elsewhere. No functional changes.

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 50 ++++++++++----------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8c61a8190c64..c7339764f3d2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2791,16 +2791,16 @@ static void intel_encoder_get_config(struct intel_encoder *encoder,
 }
 
 static int intel_crtc_compute_config(struct intel_crtc *crtc,
-				     struct intel_crtc_state *pipe_config)
+				     struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct drm_display_mode *pipe_mode = &pipe_config->hw.pipe_mode;
-	int clock_limit = dev_priv->max_dotclk_freq;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
+	int clock_limit = i915->max_dotclk_freq;
 
-	drm_mode_copy(pipe_mode, &pipe_config->hw.adjusted_mode);
+	drm_mode_copy(pipe_mode, &crtc_state->hw.adjusted_mode);
 
 	/* Adjust pipe_mode for bigjoiner, with half the horizontal mode */
-	if (pipe_config->bigjoiner) {
+	if (crtc_state->bigjoiner) {
 		pipe_mode->crtc_clock /= 2;
 		pipe_mode->crtc_hdisplay /= 2;
 		pipe_mode->crtc_hblank_start /= 2;
@@ -2808,12 +2808,12 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 		pipe_mode->crtc_hsync_start /= 2;
 		pipe_mode->crtc_hsync_end /= 2;
 		pipe_mode->crtc_htotal /= 2;
-		pipe_config->pipe_src_w /= 2;
+		crtc_state->pipe_src_w /= 2;
 	}
 
-	if (pipe_config->splitter.enable) {
-		int n = pipe_config->splitter.link_count;
-		int overlap = pipe_config->splitter.pixel_overlap;
+	if (crtc_state->splitter.enable) {
+		int n = crtc_state->splitter.link_count;
+		int overlap = crtc_state->splitter.pixel_overlap;
 
 		pipe_mode->crtc_hdisplay = (pipe_mode->crtc_hdisplay - overlap) * n;
 		pipe_mode->crtc_hblank_start = (pipe_mode->crtc_hblank_start - overlap) * n;
@@ -2826,8 +2826,8 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 
 	intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
 
-	if (DISPLAY_VER(dev_priv) < 4) {
-		clock_limit = dev_priv->max_cdclk_freq * 9 / 10;
+	if (DISPLAY_VER(i915) < 4) {
+		clock_limit = i915->max_cdclk_freq * 9 / 10;
 
 		/*
 		 * Enable double wide mode when the dot clock
@@ -2835,16 +2835,16 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 		 */
 		if (intel_crtc_supports_double_wide(crtc) &&
 		    pipe_mode->crtc_clock > clock_limit) {
-			clock_limit = dev_priv->max_dotclk_freq;
-			pipe_config->double_wide = true;
+			clock_limit = i915->max_dotclk_freq;
+			crtc_state->double_wide = true;
 		}
 	}
 
 	if (pipe_mode->crtc_clock > clock_limit) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "requested pixel clock (%d kHz) too high (max: %d kHz, double wide: %s)\n",
 			    pipe_mode->crtc_clock, clock_limit,
-			    yesno(pipe_config->double_wide));
+			    yesno(crtc_state->double_wide));
 		return -EINVAL;
 	}
 
@@ -2854,25 +2854,25 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 	 * - LVDS dual channel mode
 	 * - Double wide pipe
 	 */
-	if (pipe_config->pipe_src_w & 1) {
-		if (pipe_config->double_wide) {
-			drm_dbg_kms(&dev_priv->drm,
+	if (crtc_state->pipe_src_w & 1) {
+		if (crtc_state->double_wide) {
+			drm_dbg_kms(&i915->drm,
 				    "Odd pipe source width not supported with double wide pipe\n");
 			return -EINVAL;
 		}
 
-		if (intel_crtc_has_type(pipe_config, INTEL_OUTPUT_LVDS) &&
-		    intel_is_dual_link_lvds(dev_priv)) {
-			drm_dbg_kms(&dev_priv->drm,
+		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS) &&
+		    intel_is_dual_link_lvds(i915)) {
+			drm_dbg_kms(&i915->drm,
 				    "Odd pipe source width not supported with dual link LVDS\n");
 			return -EINVAL;
 		}
 	}
 
-	intel_crtc_compute_pixel_rate(pipe_config);
+	intel_crtc_compute_pixel_rate(crtc_state);
 
-	if (pipe_config->has_pch_encoder)
-		return ilk_fdi_compute_config(crtc, pipe_config);
+	if (crtc_state->has_pch_encoder)
+		return ilk_fdi_compute_config(crtc, crtc_state);
 
 	return 0;
 }
-- 
2.34.1

