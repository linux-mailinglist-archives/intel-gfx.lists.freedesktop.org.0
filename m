Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF2AA6FC95
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 13:37:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F11410E55C;
	Tue, 25 Mar 2025 12:37:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JOK8y8B+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B0E110E536;
 Tue, 25 Mar 2025 12:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742906220; x=1774442220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1tOaNaY8UCiX2hjsSbYBbc0H11K5zVX2LxqpW16VvAs=;
 b=JOK8y8B+ziWGCtZaOWNUKazxkpGD3pHSnIjjuAdW72wWZIpSKCeEwuvp
 iZwfGMZcWWjxY+a4p8NJlt/585/9B6G2sVtHOsZ07Asn7LT7JWcj+jtpD
 GO7dUYmMBOVibDF8t0JNb3aWdb7uD3rD5e4f9Kf6dH2+Wz2h/41/2co3B
 UCmBvez0yz0WTJUJW87V0J1JP/upDrbJ1mnSFd3O3hcS3Mx3c7k57nG25
 DEBb+HM/K02U49ayjY/BihCFJTkMVet2GEmT4E1VnTiL78NruiHkZbxG/
 mjm22FGHxBRlr0sstbKsGCh5gxHvVlgFU2zcP/HzAKK513vS3S6WfFJvW g==;
X-CSE-ConnectionGUID: xCUNwpv5TSOR9YHmwTL+yA==
X-CSE-MsgGUID: sgiYmExfTziqYM5GqEMIag==
X-IronPort-AV: E=McAfee;i="6700,10204,11384"; a="47933218"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="47933218"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 05:37:00 -0700
X-CSE-ConnectionGUID: +gp5hp/IRL2xf0Aqj9N0PA==
X-CSE-MsgGUID: LyewmK+eRG6mFIWZTm1iHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="155274830"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.134])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 05:36:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/6] drm/i915/crc: convert intel_pipe_crc.c to struct
 intel_display
Date: Tue, 25 Mar 2025 14:36:35 +0200
Message-Id: <9bb18395d57d5353535e0d385119366821162a86.1742906146.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742906146.git.jani.nikula@intel.com>
References: <cover.1742906146.git.jani.nikula@intel.com>
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

Going forward, struct intel_display is the main display device data
pointer. Convert as much as possible of intel_pipe_crc.c to struct
intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pipe_crc.c | 137 +++++++++---------
 1 file changed, 68 insertions(+), 69 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
index 65f60615f387..6182f484b5bd 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
@@ -75,7 +75,7 @@ static int i8xx_pipe_crc_ctl_reg(enum intel_pipe_crc_source *source,
 	return 0;
 }
 
-static void i9xx_pipe_crc_auto_source(struct drm_i915_private *dev_priv,
+static void i9xx_pipe_crc_auto_source(struct intel_display *display,
 				      enum pipe pipe,
 				      enum intel_pipe_crc_source *source)
 {
@@ -85,8 +85,8 @@ static void i9xx_pipe_crc_auto_source(struct drm_i915_private *dev_priv,
 
 	*source = INTEL_PIPE_CRC_SOURCE_PIPE;
 
-	drm_modeset_lock_all(&dev_priv->drm);
-	for_each_intel_encoder(&dev_priv->drm, encoder) {
+	drm_modeset_lock_all(display->drm);
+	for_each_intel_encoder(display->drm, encoder) {
 		if (!encoder->base.crtc)
 			continue;
 
@@ -113,7 +113,7 @@ static void i9xx_pipe_crc_auto_source(struct drm_i915_private *dev_priv,
 				*source = INTEL_PIPE_CRC_SOURCE_DP_D;
 				break;
 			default:
-				drm_WARN(&dev_priv->drm, 1, "nonexisting DP port %c\n",
+				drm_WARN(display->drm, 1, "nonexisting DP port %c\n",
 					 port_name(dig_port->base.port));
 				break;
 			}
@@ -122,10 +122,10 @@ static void i9xx_pipe_crc_auto_source(struct drm_i915_private *dev_priv,
 			break;
 		}
 	}
-	drm_modeset_unlock_all(&dev_priv->drm);
+	drm_modeset_unlock_all(display->drm);
 }
 
-static int vlv_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
+static int vlv_pipe_crc_ctl_reg(struct intel_display *display,
 				enum pipe pipe,
 				enum intel_pipe_crc_source *source,
 				u32 *val)
@@ -133,7 +133,7 @@ static int vlv_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
 	bool need_stable_symbols = false;
 
 	if (*source == INTEL_PIPE_CRC_SOURCE_AUTO)
-		i9xx_pipe_crc_auto_source(dev_priv, pipe, source);
+		i9xx_pipe_crc_auto_source(display, pipe, source);
 
 	switch (*source) {
 	case INTEL_PIPE_CRC_SOURCE_PIPE:
@@ -148,7 +148,7 @@ static int vlv_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
 		need_stable_symbols = true;
 		break;
 	case INTEL_PIPE_CRC_SOURCE_DP_D:
-		if (!IS_CHERRYVIEW(dev_priv))
+		if (!display->platform.cherryview)
 			return -EINVAL;
 		*val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_DP_D_VLV;
 		need_stable_symbols = true;
@@ -170,7 +170,7 @@ static int vlv_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
 	 *   - DisplayPort scrambling: used for EMI reduction
 	 */
 	if (need_stable_symbols) {
-		u32 tmp = intel_de_read(dev_priv, PORT_DFT2_G4X(dev_priv));
+		u32 tmp = intel_de_read(display, PORT_DFT2_G4X(display));
 
 		tmp |= DC_BALANCE_RESET_VLV;
 		switch (pipe) {
@@ -186,26 +186,26 @@ static int vlv_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
 		default:
 			return -EINVAL;
 		}
-		intel_de_write(dev_priv, PORT_DFT2_G4X(dev_priv), tmp);
+		intel_de_write(display, PORT_DFT2_G4X(display), tmp);
 	}
 
 	return 0;
 }
 
-static int i9xx_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
+static int i9xx_pipe_crc_ctl_reg(struct intel_display *display,
 				 enum pipe pipe,
 				 enum intel_pipe_crc_source *source,
 				 u32 *val)
 {
 	if (*source == INTEL_PIPE_CRC_SOURCE_AUTO)
-		i9xx_pipe_crc_auto_source(dev_priv, pipe, source);
+		i9xx_pipe_crc_auto_source(display, pipe, source);
 
 	switch (*source) {
 	case INTEL_PIPE_CRC_SOURCE_PIPE:
 		*val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_PIPE_I9XX;
 		break;
 	case INTEL_PIPE_CRC_SOURCE_TV:
-		if (!SUPPORTS_TV(dev_priv))
+		if (!SUPPORTS_TV(display))
 			return -EINVAL;
 		*val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_TV_PRE;
 		break;
@@ -229,10 +229,10 @@ static int i9xx_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
 	return 0;
 }
 
-static void vlv_undo_pipe_scramble_reset(struct drm_i915_private *dev_priv,
+static void vlv_undo_pipe_scramble_reset(struct intel_display *display,
 					 enum pipe pipe)
 {
-	u32 tmp = intel_de_read(dev_priv, PORT_DFT2_G4X(dev_priv));
+	u32 tmp = intel_de_read(display, PORT_DFT2_G4X(display));
 
 	switch (pipe) {
 	case PIPE_A:
@@ -249,7 +249,7 @@ static void vlv_undo_pipe_scramble_reset(struct drm_i915_private *dev_priv,
 	}
 	if (!(tmp & PIPE_SCRAMBLE_RESET_MASK))
 		tmp &= ~DC_BALANCE_RESET_VLV;
-	intel_de_write(dev_priv, PORT_DFT2_G4X(dev_priv), tmp);
+	intel_de_write(display, PORT_DFT2_G4X(display), tmp);
 }
 
 static int ilk_pipe_crc_ctl_reg(enum intel_pipe_crc_source *source,
@@ -282,18 +282,17 @@ static void
 intel_crtc_crc_setup_workarounds(struct intel_crtc *crtc, bool enable)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_crtc_state *pipe_config;
 	struct drm_atomic_state *state;
 	struct drm_modeset_acquire_ctx ctx;
 	int ret;
 
-	if (IS_I945GM(dev_priv) || IS_I915GM(dev_priv))
+	if (display->platform.i945gm || display->platform.i915gm)
 		i915gm_irq_cstate_wa(display, enable);
 
 	drm_modeset_acquire_init(&ctx, 0);
 
-	state = drm_atomic_state_alloc(&dev_priv->drm);
+	state = drm_atomic_state_alloc(display->drm);
 	if (!state) {
 		ret = -ENOMEM;
 		goto unlock;
@@ -312,7 +311,7 @@ intel_crtc_crc_setup_workarounds(struct intel_crtc *crtc, bool enable)
 	pipe_config->uapi.mode_changed = pipe_config->has_psr;
 	pipe_config->crc_enabled = enable;
 
-	if (IS_HASWELL(dev_priv) &&
+	if (display->platform.haswell &&
 	    pipe_config->hw.active && crtc->pipe == PIPE_A &&
 	    pipe_config->cpu_transcoder == TRANSCODER_EDP)
 		pipe_config->uapi.mode_changed = true;
@@ -328,13 +327,13 @@ intel_crtc_crc_setup_workarounds(struct intel_crtc *crtc, bool enable)
 
 	drm_atomic_state_put(state);
 unlock:
-	drm_WARN(&dev_priv->drm, ret,
+	drm_WARN(display->drm, ret,
 		 "Toggling workaround to %i returns %i\n", enable, ret);
 	drm_modeset_drop_locks(&ctx);
 	drm_modeset_acquire_fini(&ctx);
 }
 
-static int ivb_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
+static int ivb_pipe_crc_ctl_reg(struct intel_display *display,
 				enum pipe pipe,
 				enum intel_pipe_crc_source *source,
 				u32 *val)
@@ -362,7 +361,7 @@ static int ivb_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
 	return 0;
 }
 
-static int skl_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
+static int skl_pipe_crc_ctl_reg(struct intel_display *display,
 				enum pipe pipe,
 				enum intel_pipe_crc_source *source,
 				u32 *val)
@@ -405,22 +404,22 @@ static int skl_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
 	return 0;
 }
 
-static int get_new_crc_ctl_reg(struct drm_i915_private *dev_priv,
+static int get_new_crc_ctl_reg(struct intel_display *display,
 			       enum pipe pipe,
 			       enum intel_pipe_crc_source *source, u32 *val)
 {
-	if (DISPLAY_VER(dev_priv) == 2)
+	if (DISPLAY_VER(display) == 2)
 		return i8xx_pipe_crc_ctl_reg(source, val);
-	else if (DISPLAY_VER(dev_priv) < 5)
-		return i9xx_pipe_crc_ctl_reg(dev_priv, pipe, source, val);
-	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		return vlv_pipe_crc_ctl_reg(dev_priv, pipe, source, val);
-	else if (IS_IRONLAKE(dev_priv) || IS_SANDYBRIDGE(dev_priv))
+	else if (DISPLAY_VER(display) < 5)
+		return i9xx_pipe_crc_ctl_reg(display, pipe, source, val);
+	else if (display->platform.valleyview || display->platform.cherryview)
+		return vlv_pipe_crc_ctl_reg(display, pipe, source, val);
+	else if (display->platform.ironlake || display->platform.sandybridge)
 		return ilk_pipe_crc_ctl_reg(source, val);
-	else if (DISPLAY_VER(dev_priv) < 9)
-		return ivb_pipe_crc_ctl_reg(dev_priv, pipe, source, val);
+	else if (DISPLAY_VER(display) < 9)
+		return ivb_pipe_crc_ctl_reg(display, pipe, source, val);
 	else
-		return skl_pipe_crc_ctl_reg(dev_priv, pipe, source, val);
+		return skl_pipe_crc_ctl_reg(display, pipe, source, val);
 }
 
 static int
@@ -448,7 +447,7 @@ void intel_crtc_crc_init(struct intel_crtc *crtc)
 	spin_lock_init(&pipe_crc->lock);
 }
 
-static int i8xx_crc_source_valid(struct drm_i915_private *dev_priv,
+static int i8xx_crc_source_valid(struct intel_display *display,
 				 const enum intel_pipe_crc_source source)
 {
 	switch (source) {
@@ -460,7 +459,7 @@ static int i8xx_crc_source_valid(struct drm_i915_private *dev_priv,
 	}
 }
 
-static int i9xx_crc_source_valid(struct drm_i915_private *dev_priv,
+static int i9xx_crc_source_valid(struct intel_display *display,
 				 const enum intel_pipe_crc_source source)
 {
 	switch (source) {
@@ -473,7 +472,7 @@ static int i9xx_crc_source_valid(struct drm_i915_private *dev_priv,
 	}
 }
 
-static int vlv_crc_source_valid(struct drm_i915_private *dev_priv,
+static int vlv_crc_source_valid(struct intel_display *display,
 				const enum intel_pipe_crc_source source)
 {
 	switch (source) {
@@ -488,7 +487,7 @@ static int vlv_crc_source_valid(struct drm_i915_private *dev_priv,
 	}
 }
 
-static int ilk_crc_source_valid(struct drm_i915_private *dev_priv,
+static int ilk_crc_source_valid(struct intel_display *display,
 				const enum intel_pipe_crc_source source)
 {
 	switch (source) {
@@ -502,7 +501,7 @@ static int ilk_crc_source_valid(struct drm_i915_private *dev_priv,
 	}
 }
 
-static int ivb_crc_source_valid(struct drm_i915_private *dev_priv,
+static int ivb_crc_source_valid(struct intel_display *display,
 				const enum intel_pipe_crc_source source)
 {
 	switch (source) {
@@ -516,7 +515,7 @@ static int ivb_crc_source_valid(struct drm_i915_private *dev_priv,
 	}
 }
 
-static int skl_crc_source_valid(struct drm_i915_private *dev_priv,
+static int skl_crc_source_valid(struct intel_display *display,
 				const enum intel_pipe_crc_source source)
 {
 	switch (source) {
@@ -536,21 +535,21 @@ static int skl_crc_source_valid(struct drm_i915_private *dev_priv,
 }
 
 static int
-intel_is_valid_crc_source(struct drm_i915_private *dev_priv,
+intel_is_valid_crc_source(struct intel_display *display,
 			  const enum intel_pipe_crc_source source)
 {
-	if (DISPLAY_VER(dev_priv) == 2)
-		return i8xx_crc_source_valid(dev_priv, source);
-	else if (DISPLAY_VER(dev_priv) < 5)
-		return i9xx_crc_source_valid(dev_priv, source);
-	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		return vlv_crc_source_valid(dev_priv, source);
-	else if (IS_IRONLAKE(dev_priv) || IS_SANDYBRIDGE(dev_priv))
-		return ilk_crc_source_valid(dev_priv, source);
-	else if (DISPLAY_VER(dev_priv) < 9)
-		return ivb_crc_source_valid(dev_priv, source);
+	if (DISPLAY_VER(display) == 2)
+		return i8xx_crc_source_valid(display, source);
+	else if (DISPLAY_VER(display) < 5)
+		return i9xx_crc_source_valid(display, source);
+	else if (display->platform.valleyview || display->platform.cherryview)
+		return vlv_crc_source_valid(display, source);
+	else if (display->platform.ironlake || display->platform.sandybridge)
+		return ilk_crc_source_valid(display, source);
+	else if (DISPLAY_VER(display) < 9)
+		return ivb_crc_source_valid(display, source);
 	else
-		return skl_crc_source_valid(dev_priv, source);
+		return skl_crc_source_valid(display, source);
 }
 
 const char *const *intel_crtc_get_crc_sources(struct drm_crtc *crtc,
@@ -563,16 +562,16 @@ const char *const *intel_crtc_get_crc_sources(struct drm_crtc *crtc,
 int intel_crtc_verify_crc_source(struct drm_crtc *crtc, const char *source_name,
 				 size_t *values_cnt)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
+	struct intel_display *display = to_intel_display(crtc->dev);
 	enum intel_pipe_crc_source source;
 
 	if (display_crc_ctl_parse_source(source_name, &source) < 0) {
-		drm_dbg(&dev_priv->drm, "unknown source %s\n", source_name);
+		drm_dbg_kms(display->drm, "unknown source %s\n", source_name);
 		return -EINVAL;
 	}
 
 	if (source == INTEL_PIPE_CRC_SOURCE_AUTO ||
-	    intel_is_valid_crc_source(dev_priv, source) == 0) {
+	    intel_is_valid_crc_source(display, source) == 0) {
 		*values_cnt = 5;
 		return 0;
 	}
@@ -584,7 +583,6 @@ int intel_crtc_set_crc_source(struct drm_crtc *_crtc, const char *source_name)
 {
 	struct intel_crtc *crtc = to_intel_crtc(_crtc);
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_pipe_crc *pipe_crc = &crtc->pipe_crc;
 	enum intel_display_power_domain power_domain;
 	enum intel_pipe_crc_source source;
@@ -595,14 +593,14 @@ int intel_crtc_set_crc_source(struct drm_crtc *_crtc, const char *source_name)
 	bool enable;
 
 	if (display_crc_ctl_parse_source(source_name, &source) < 0) {
-		drm_dbg(&dev_priv->drm, "unknown source %s\n", source_name);
+		drm_dbg_kms(display->drm, "unknown source %s\n", source_name);
 		return -EINVAL;
 	}
 
 	power_domain = POWER_DOMAIN_PIPE(pipe);
 	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Trying to capture CRC while pipe is off\n");
 		return -EIO;
 	}
@@ -611,17 +609,17 @@ int intel_crtc_set_crc_source(struct drm_crtc *_crtc, const char *source_name)
 	if (enable)
 		intel_crtc_crc_setup_workarounds(crtc, true);
 
-	ret = get_new_crc_ctl_reg(dev_priv, pipe, &source, &val);
+	ret = get_new_crc_ctl_reg(display, pipe, &source, &val);
 	if (ret != 0)
 		goto out;
 
 	pipe_crc->source = source;
-	intel_de_write(dev_priv, PIPE_CRC_CTL(dev_priv, pipe), val);
-	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(dev_priv, pipe));
+	intel_de_write(display, PIPE_CRC_CTL(display, pipe), val);
+	intel_de_posting_read(display, PIPE_CRC_CTL(display, pipe));
 
 	if (!source) {
-		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-			vlv_undo_pipe_scramble_reset(dev_priv, pipe);
+		if (display->platform.valleyview || display->platform.cherryview)
+			vlv_undo_pipe_scramble_reset(display, pipe);
 	}
 
 	pipe_crc->skipped = 0;
@@ -637,7 +635,7 @@ int intel_crtc_set_crc_source(struct drm_crtc *_crtc, const char *source_name)
 
 void intel_crtc_enable_pipe_crc(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	struct intel_pipe_crc *pipe_crc = &crtc->pipe_crc;
 	enum pipe pipe = crtc->pipe;
 	u32 val = 0;
@@ -645,19 +643,20 @@ void intel_crtc_enable_pipe_crc(struct intel_crtc *crtc)
 	if (!crtc->base.crc.opened)
 		return;
 
-	if (get_new_crc_ctl_reg(dev_priv, pipe, &pipe_crc->source, &val) < 0)
+	if (get_new_crc_ctl_reg(display, pipe, &pipe_crc->source, &val) < 0)
 		return;
 
 	/* Don't need pipe_crc->lock here, IRQs are not generated. */
 	pipe_crc->skipped = 0;
 
-	intel_de_write(dev_priv, PIPE_CRC_CTL(dev_priv, pipe), val);
-	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(dev_priv, pipe));
+	intel_de_write(display, PIPE_CRC_CTL(display, pipe), val);
+	intel_de_posting_read(display, PIPE_CRC_CTL(display, pipe));
 }
 
 void intel_crtc_disable_pipe_crc(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_pipe_crc *pipe_crc = &crtc->pipe_crc;
 	enum pipe pipe = crtc->pipe;
 
@@ -666,7 +665,7 @@ void intel_crtc_disable_pipe_crc(struct intel_crtc *crtc)
 	pipe_crc->skipped = INT_MIN;
 	spin_unlock_irq(&pipe_crc->lock);
 
-	intel_de_write(dev_priv, PIPE_CRC_CTL(dev_priv, pipe), 0);
-	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(dev_priv, pipe));
+	intel_de_write(display, PIPE_CRC_CTL(display, pipe), 0);
+	intel_de_posting_read(display, PIPE_CRC_CTL(display, pipe));
 	intel_synchronize_irq(dev_priv);
 }
-- 
2.39.5

