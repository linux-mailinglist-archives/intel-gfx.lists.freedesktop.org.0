Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E565C70684F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 14:38:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69D8A10E41B;
	Wed, 17 May 2023 12:38:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D30F410E41B
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 12:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684327135; x=1715863135;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c2cszby03IwHQ/KYKoEozAuL6sov+W5ouGNyhWgsmao=;
 b=H5KkUtFeA6dV+cJZNWQEONZiagThe9PU2dj/c+Vf9McbbVEixEeBjIdC
 tObL4o0WDvVsaUBudfIBo4kkiB4uauOvoIrXfIUs+SLbWwvX6onXNdlW3
 wCm2rFFIRVBOGaYFF2uoCcjk93+DPphL8nky8yjo6ZrCMzrPKjMABb8TR
 GlymvMXKKGwpXPocC2xi1eGxM+LUtWXUlJHRHi6hiXkIBuSdng3ti6A5L
 Rp5Uyq/POE3X7TEMU+/WdlU5t4N250HPHXDTAW+o9O1mIxO0Oz8e8kYdY
 n5yIow7ZSWS7rHUAiZlqRPJn5k6rSGvxlZs0CosE7NEgGLf8LxSHq7ISJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="417402154"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="417402154"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 05:38:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="695850538"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="695850538"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 05:38:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 May 2023 15:38:21 +0300
Message-Id: <783fa511898f956e5c25afe6206eb6f993e58102.1684327004.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1684327004.git.jani.nikula@intel.com>
References: <cover.1684327004.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/color: move pre-SKL gamma and CSC
 enable read to intel_color
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Abstract the register access better. The DSPCNTR read could be moved to
either i9xx_plane.c or intel_color.c. The latter feels better, even if
the register is written in the former.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 25 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c | 23 ------------------
 2 files changed, 25 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 882536b372e0..6c9086dfce8f 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -916,12 +916,31 @@ static u32 ilk_read_csc_mode(struct intel_crtc *crtc)
 	return intel_de_read(i915, PIPE_CSC_MODE(crtc->pipe));
 }
 
+static void i9xx_get_config(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
+	u32 tmp;
+
+	tmp = intel_de_read(dev_priv, DSPCNTR(i9xx_plane));
+
+	if (tmp & DISP_PIPE_GAMMA_ENABLE)
+		crtc_state->gamma_enable = true;
+
+	if (!HAS_GMCH(dev_priv) && tmp & DISP_PIPE_CSC_ENABLE)
+		crtc_state->csc_enable = true;
+}
+
 static void hsw_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	crtc_state->gamma_mode = hsw_read_gamma_mode(crtc);
 	crtc_state->csc_mode = ilk_read_csc_mode(crtc);
+
+	i9xx_get_config(crtc_state);
 }
 
 static void skl_get_config(struct intel_crtc_state *crtc_state)
@@ -3057,6 +3076,8 @@ static void chv_get_config(struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
 	crtc_state->cgm_mode = intel_de_read(i915, CGM_PIPE_MODE(crtc->pipe));
+
+	i9xx_get_config(crtc_state);
 }
 
 static void chv_read_luts(struct intel_crtc_state *crtc_state)
@@ -3127,6 +3148,8 @@ static void ilk_get_config(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	crtc_state->csc_mode = ilk_read_csc_mode(crtc);
+
+	i9xx_get_config(crtc_state);
 }
 
 static void ilk_read_luts(struct intel_crtc_state *crtc_state)
@@ -3436,6 +3459,7 @@ static const struct intel_color_funcs i965_color_funcs = {
 	.load_luts = i965_load_luts,
 	.read_luts = i965_read_luts,
 	.lut_equal = i965_lut_equal,
+	.get_config = i9xx_get_config,
 };
 
 static const struct intel_color_funcs i9xx_color_funcs = {
@@ -3444,6 +3468,7 @@ static const struct intel_color_funcs i9xx_color_funcs = {
 	.load_luts = i9xx_load_luts,
 	.read_luts = i9xx_read_luts,
 	.lut_equal = i9xx_lut_equal,
+	.get_config = i9xx_get_config,
 };
 
 static const struct intel_color_funcs tgl_color_funcs = {
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b17279ddc409..568cf74fb07a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2865,24 +2865,6 @@ bdw_get_pipe_misc_output_format(struct intel_crtc *crtc)
 	}
 }
 
-static void i9xx_get_pipe_color_config(struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
-	u32 tmp;
-
-	tmp = intel_de_read(dev_priv, DSPCNTR(i9xx_plane));
-
-	if (tmp & DISP_PIPE_GAMMA_ENABLE)
-		crtc_state->gamma_enable = true;
-
-	if (!HAS_GMCH(dev_priv) &&
-	    tmp & DISP_PIPE_CSC_ENABLE)
-		crtc_state->csc_enable = true;
-}
-
 static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 				 struct intel_crtc_state *pipe_config)
 {
@@ -2934,7 +2916,6 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 
 	pipe_config->framestart_delay = REG_FIELD_GET(TRANSCONF_FRAME_START_DELAY_MASK, tmp) + 1;
 
-	i9xx_get_pipe_color_config(pipe_config);
 	intel_color_get_config(pipe_config);
 
 	if (DISPLAY_VER(dev_priv) < 4)
@@ -3328,7 +3309,6 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 
 	pipe_config->msa_timing_delay = REG_FIELD_GET(TRANSCONF_MSA_TIMING_DELAY_MASK, tmp);
 
-	i9xx_get_pipe_color_config(pipe_config);
 	intel_color_get_config(pipe_config);
 
 	pipe_config->pixel_multiplier = 1;
@@ -3719,9 +3699,6 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 
 	pipe_config->sink_format = pipe_config->output_format;
 
-	if (DISPLAY_VER(dev_priv) < 9)
-		i9xx_get_pipe_color_config(pipe_config);
-
 	intel_color_get_config(pipe_config);
 
 	tmp = intel_de_read(dev_priv, WM_LINETIME(crtc->pipe));
-- 
2.39.2

