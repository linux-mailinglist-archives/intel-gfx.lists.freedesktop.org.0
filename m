Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FA89AECB2
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 18:54:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A27BF10E39B;
	Thu, 24 Oct 2024 16:54:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m+TfZT94";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8019110E39A
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 16:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729788848; x=1761324848;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Uz8BBJwo8KMcSBwdpHfI1yCxOpRc7zGELCd0ve1OOPU=;
 b=m+TfZT94iY3Sj+EiYv/wOJk56AG43H1/POGdFx+xFR8r6JYPV2o6u7ex
 wshlnxVIiC8ByQidqDF/lazpOj0zOq4DEidajw+2zDyg3617EEyLc0j9v
 WLFs9BTlfkQ42Ieb5WMgzCT8mMhPi+Oi+afJho0KeJ0yFVwgHrlGzhhJ6
 cgC2lrp6lY+4p1Y/tACEVFHpGq5fUa0B8Sr76Hzn0hvC2nOeBovcFuYS1
 7xTbr2NE1x+e0ml477zCj/0Ki+vgETDSzkJUOJ6/larSALHSLIhvxh0Pr
 wHFbDh7rejmYGBKpQH86W96AyRx2kw3wEfey4qSXts24E5wYmJK3YWLlH g==;
X-CSE-ConnectionGUID: JLKQwI+uSRCNX0IcdXZYWg==
X-CSE-MsgGUID: Nfixi0n9T+6/8EzRPPBkUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="40047987"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="40047987"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 09:54:08 -0700
X-CSE-ConnectionGUID: orIorUqjTXWAoKtMglhZ6A==
X-CSE-MsgGUID: LR6UNXLERa+hfS6JG5EUWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="80757457"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Oct 2024 09:54:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Oct 2024 19:54:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/4] drm/i915/color: Convert color management code to
 intel_display
Date: Thu, 24 Oct 2024 19:53:55 +0300
Message-ID: <20241024165356.17756-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241024165356.17756-1-ville.syrjala@linux.intel.com>
References: <20241024165356.17756-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

struct intel_display will replace struct drm_i915_private as
the main thing for display code. Convert the color management
code to use it (as much as possible at this stage).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c    | 636 +++++++++---------
 drivers/gpu/drm/i915/display/intel_color.h    |   6 +-
 .../drm/i915/display/intel_display_driver.c   |   4 +-
 3 files changed, 324 insertions(+), 322 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 4733fcf98158..40c1a770f6d9 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -250,38 +250,38 @@ static void ilk_update_pipe_csc(struct intel_dsb *dsb,
 static void ilk_read_pipe_csc(struct intel_crtc *crtc,
 			      struct intel_csc_matrix *csc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe = crtc->pipe;
 	u32 tmp;
 
-	csc->preoff[0] = intel_de_read_fw(i915, PIPE_CSC_PREOFF_HI(pipe));
-	csc->preoff[1] = intel_de_read_fw(i915, PIPE_CSC_PREOFF_ME(pipe));
-	csc->preoff[2] = intel_de_read_fw(i915, PIPE_CSC_PREOFF_LO(pipe));
+	csc->preoff[0] = intel_de_read_fw(display, PIPE_CSC_PREOFF_HI(pipe));
+	csc->preoff[1] = intel_de_read_fw(display, PIPE_CSC_PREOFF_ME(pipe));
+	csc->preoff[2] = intel_de_read_fw(display, PIPE_CSC_PREOFF_LO(pipe));
 
-	tmp = intel_de_read_fw(i915, PIPE_CSC_COEFF_RY_GY(pipe));
+	tmp = intel_de_read_fw(display, PIPE_CSC_COEFF_RY_GY(pipe));
 	csc->coeff[0] = tmp >> 16;
 	csc->coeff[1] = tmp & 0xffff;
-	tmp = intel_de_read_fw(i915, PIPE_CSC_COEFF_BY(pipe));
+	tmp = intel_de_read_fw(display, PIPE_CSC_COEFF_BY(pipe));
 	csc->coeff[2] = tmp >> 16;
 
-	tmp = intel_de_read_fw(i915, PIPE_CSC_COEFF_RU_GU(pipe));
+	tmp = intel_de_read_fw(display, PIPE_CSC_COEFF_RU_GU(pipe));
 	csc->coeff[3] = tmp >> 16;
 	csc->coeff[4] = tmp & 0xffff;
-	tmp = intel_de_read_fw(i915, PIPE_CSC_COEFF_BU(pipe));
+	tmp = intel_de_read_fw(display, PIPE_CSC_COEFF_BU(pipe));
 	csc->coeff[5] = tmp >> 16;
 
-	tmp = intel_de_read_fw(i915, PIPE_CSC_COEFF_RV_GV(pipe));
+	tmp = intel_de_read_fw(display, PIPE_CSC_COEFF_RV_GV(pipe));
 	csc->coeff[6] = tmp >> 16;
 	csc->coeff[7] = tmp & 0xffff;
-	tmp = intel_de_read_fw(i915, PIPE_CSC_COEFF_BV(pipe));
+	tmp = intel_de_read_fw(display, PIPE_CSC_COEFF_BV(pipe));
 	csc->coeff[8] = tmp >> 16;
 
-	if (DISPLAY_VER(i915) < 7)
+	if (DISPLAY_VER(display) < 7)
 		return;
 
-	csc->postoff[0] = intel_de_read_fw(i915, PIPE_CSC_POSTOFF_HI(pipe));
-	csc->postoff[1] = intel_de_read_fw(i915, PIPE_CSC_POSTOFF_ME(pipe));
-	csc->postoff[2] = intel_de_read_fw(i915, PIPE_CSC_POSTOFF_LO(pipe));
+	csc->postoff[0] = intel_de_read_fw(display, PIPE_CSC_POSTOFF_HI(pipe));
+	csc->postoff[1] = intel_de_read_fw(display, PIPE_CSC_POSTOFF_ME(pipe));
+	csc->postoff[2] = intel_de_read_fw(display, PIPE_CSC_POSTOFF_LO(pipe));
 }
 
 static void ilk_read_csc(struct intel_crtc_state *crtc_state)
@@ -353,35 +353,35 @@ static void icl_update_output_csc(struct intel_dsb *dsb,
 static void icl_read_output_csc(struct intel_crtc *crtc,
 				struct intel_csc_matrix *csc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe = crtc->pipe;
 	u32 tmp;
 
-	csc->preoff[0] = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_PREOFF_HI(pipe));
-	csc->preoff[1] = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_PREOFF_ME(pipe));
-	csc->preoff[2] = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_PREOFF_LO(pipe));
+	csc->preoff[0] = intel_de_read_fw(display, PIPE_CSC_OUTPUT_PREOFF_HI(pipe));
+	csc->preoff[1] = intel_de_read_fw(display, PIPE_CSC_OUTPUT_PREOFF_ME(pipe));
+	csc->preoff[2] = intel_de_read_fw(display, PIPE_CSC_OUTPUT_PREOFF_LO(pipe));
 
-	tmp = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_COEFF_RY_GY(pipe));
+	tmp = intel_de_read_fw(display, PIPE_CSC_OUTPUT_COEFF_RY_GY(pipe));
 	csc->coeff[0] = tmp >> 16;
 	csc->coeff[1] = tmp & 0xffff;
-	tmp = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_COEFF_BY(pipe));
+	tmp = intel_de_read_fw(display, PIPE_CSC_OUTPUT_COEFF_BY(pipe));
 	csc->coeff[2] = tmp >> 16;
 
-	tmp = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_COEFF_RU_GU(pipe));
+	tmp = intel_de_read_fw(display, PIPE_CSC_OUTPUT_COEFF_RU_GU(pipe));
 	csc->coeff[3] = tmp >> 16;
 	csc->coeff[4] = tmp & 0xffff;
-	tmp = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_COEFF_BU(pipe));
+	tmp = intel_de_read_fw(display, PIPE_CSC_OUTPUT_COEFF_BU(pipe));
 	csc->coeff[5] = tmp >> 16;
 
-	tmp = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_COEFF_RV_GV(pipe));
+	tmp = intel_de_read_fw(display, PIPE_CSC_OUTPUT_COEFF_RV_GV(pipe));
 	csc->coeff[6] = tmp >> 16;
 	csc->coeff[7] = tmp & 0xffff;
-	tmp = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_COEFF_BV(pipe));
+	tmp = intel_de_read_fw(display, PIPE_CSC_OUTPUT_COEFF_BV(pipe));
 	csc->coeff[8] = tmp >> 16;
 
-	csc->postoff[0] = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_HI(pipe));
-	csc->postoff[1] = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_ME(pipe));
-	csc->postoff[2] = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_LO(pipe));
+	csc->postoff[0] = intel_de_read_fw(display, PIPE_CSC_OUTPUT_POSTOFF_HI(pipe));
+	csc->postoff[1] = intel_de_read_fw(display, PIPE_CSC_OUTPUT_POSTOFF_ME(pipe));
+	csc->postoff[2] = intel_de_read_fw(display, PIPE_CSC_OUTPUT_POSTOFF_LO(pipe));
 }
 
 static void icl_read_csc(struct intel_crtc_state *crtc_state)
@@ -402,14 +402,15 @@ static void icl_read_csc(struct intel_crtc_state *crtc_state)
 
 static bool ilk_limited_range(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	/* icl+ have dedicated output CSC */
-	if (DISPLAY_VER(i915) >= 11)
+	if (DISPLAY_VER(display) >= 11)
 		return false;
 
 	/* pre-hsw have TRANSCONF_COLOR_RANGE_SELECT */
-	if (DISPLAY_VER(i915) < 7 || IS_IVYBRIDGE(i915))
+	if (DISPLAY_VER(display) < 7 || IS_IVYBRIDGE(i915))
 		return false;
 
 	return crtc_state->limited_color_range;
@@ -417,7 +418,7 @@ static bool ilk_limited_range(const struct intel_crtc_state *crtc_state)
 
 static bool ilk_lut_limited_range(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	if (!ilk_limited_range(crtc_state))
 		return false;
@@ -425,7 +426,7 @@ static bool ilk_lut_limited_range(const struct intel_crtc_state *crtc_state)
 	if (crtc_state->c8_planes)
 		return false;
 
-	if (DISPLAY_VER(i915) == 10)
+	if (DISPLAY_VER(display) == 10)
 		return crtc_state->hw.gamma_lut;
 	else
 		return crtc_state->hw.gamma_lut &&
@@ -440,13 +441,13 @@ static bool ilk_csc_limited_range(const struct intel_crtc_state *crtc_state)
 	return !ilk_lut_limited_range(crtc_state);
 }
 
-static void ilk_csc_copy(struct drm_i915_private *i915,
+static void ilk_csc_copy(struct intel_display *display,
 			 struct intel_csc_matrix *dst,
 			 const struct intel_csc_matrix *src)
 {
 	*dst = *src;
 
-	if (DISPLAY_VER(i915) < 7)
+	if (DISPLAY_VER(display) < 7)
 		memset(dst->postoff, 0, sizeof(dst->postoff));
 }
 
@@ -454,7 +455,7 @@ static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
 				struct intel_csc_matrix *csc,
 				bool limited_color_range)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	const struct drm_color_ctm *ctm = crtc_state->hw.ctm->data;
 	const u64 *input;
 	u64 temp[9];
@@ -462,9 +463,9 @@ static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
 
 	/* for preoff/postoff */
 	if (limited_color_range)
-		ilk_csc_copy(i915, csc, &ilk_csc_matrix_limited_range);
+		ilk_csc_copy(display, csc, &ilk_csc_matrix_limited_range);
 	else
-		ilk_csc_copy(i915, csc, &ilk_csc_matrix_identity);
+		ilk_csc_copy(display, csc, &ilk_csc_matrix_identity);
 
 	if (limited_color_range)
 		input = ctm_mult_by_limited(temp, ctm->matrix);
@@ -512,21 +513,22 @@ static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
 
 static void ilk_assign_csc(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	bool limited_color_range = ilk_csc_limited_range(crtc_state);
 
 	if (crtc_state->hw.ctm) {
-		drm_WARN_ON(&i915->drm, !crtc_state->csc_enable);
+		drm_WARN_ON(display->drm, !crtc_state->csc_enable);
 
 		ilk_csc_convert_ctm(crtc_state, &crtc_state->csc, limited_color_range);
 	} else if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB) {
-		drm_WARN_ON(&i915->drm, !crtc_state->csc_enable);
+		drm_WARN_ON(display->drm, !crtc_state->csc_enable);
 
-		ilk_csc_copy(i915, &crtc_state->csc, &ilk_csc_matrix_rgb_to_ycbcr);
+		ilk_csc_copy(display, &crtc_state->csc, &ilk_csc_matrix_rgb_to_ycbcr);
 	} else if (limited_color_range) {
-		drm_WARN_ON(&i915->drm, !crtc_state->csc_enable);
+		drm_WARN_ON(display->drm, !crtc_state->csc_enable);
 
-		ilk_csc_copy(i915, &crtc_state->csc, &ilk_csc_matrix_limited_range);
+		ilk_csc_copy(display, &crtc_state->csc, &ilk_csc_matrix_limited_range);
 	} else if (crtc_state->csc_enable) {
 		/*
 		 * On GLK both pipe CSC and degamma LUT are controlled
@@ -534,9 +536,9 @@ static void ilk_assign_csc(struct intel_crtc_state *crtc_state)
 		 * LUT is needed but CSC is not we need to load an
 		 * identity matrix.
 		 */
-		drm_WARN_ON(&i915->drm, !IS_GEMINILAKE(i915));
+		drm_WARN_ON(display->drm, !IS_GEMINILAKE(i915));
 
-		ilk_csc_copy(i915, &crtc_state->csc, &ilk_csc_matrix_identity);
+		ilk_csc_copy(display, &crtc_state->csc, &ilk_csc_matrix_identity);
 	} else {
 		intel_csc_clear(&crtc_state->csc);
 	}
@@ -553,28 +555,28 @@ static void ilk_load_csc_matrix(struct intel_dsb *dsb,
 
 static void icl_assign_csc(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	if (crtc_state->hw.ctm) {
-		drm_WARN_ON(&i915->drm, (crtc_state->csc_mode & ICL_CSC_ENABLE) == 0);
+		drm_WARN_ON(display->drm, (crtc_state->csc_mode & ICL_CSC_ENABLE) == 0);
 
 		ilk_csc_convert_ctm(crtc_state, &crtc_state->csc, false);
 	} else {
-		drm_WARN_ON(&i915->drm, (crtc_state->csc_mode & ICL_CSC_ENABLE) != 0);
+		drm_WARN_ON(display->drm, (crtc_state->csc_mode & ICL_CSC_ENABLE) != 0);
 
 		intel_csc_clear(&crtc_state->csc);
 	}
 
 	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB) {
-		drm_WARN_ON(&i915->drm, (crtc_state->csc_mode & ICL_OUTPUT_CSC_ENABLE) == 0);
+		drm_WARN_ON(display->drm, (crtc_state->csc_mode & ICL_OUTPUT_CSC_ENABLE) == 0);
 
-		ilk_csc_copy(i915, &crtc_state->output_csc, &ilk_csc_matrix_rgb_to_ycbcr);
+		ilk_csc_copy(display, &crtc_state->output_csc, &ilk_csc_matrix_rgb_to_ycbcr);
 	} else if (crtc_state->limited_color_range) {
-		drm_WARN_ON(&i915->drm, (crtc_state->csc_mode & ICL_OUTPUT_CSC_ENABLE) == 0);
+		drm_WARN_ON(display->drm, (crtc_state->csc_mode & ICL_OUTPUT_CSC_ENABLE) == 0);
 
-		ilk_csc_copy(i915, &crtc_state->output_csc, &ilk_csc_matrix_limited_range);
+		ilk_csc_copy(display, &crtc_state->output_csc, &ilk_csc_matrix_limited_range);
 	} else {
-		drm_WARN_ON(&i915->drm, (crtc_state->csc_mode & ICL_OUTPUT_CSC_ENABLE) != 0);
+		drm_WARN_ON(display->drm, (crtc_state->csc_mode & ICL_OUTPUT_CSC_ENABLE) != 0);
 
 		intel_csc_clear(&crtc_state->output_csc);
 	}
@@ -632,51 +634,51 @@ static void vlv_wgc_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
 static void vlv_load_wgc_csc(struct intel_crtc *crtc,
 			     const struct intel_csc_matrix *csc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe = crtc->pipe;
 
-	intel_de_write_fw(dev_priv, PIPE_WGC_C01_C00(dev_priv, pipe),
+	intel_de_write_fw(display, PIPE_WGC_C01_C00(display, pipe),
 			  csc->coeff[1] << 16 | csc->coeff[0]);
-	intel_de_write_fw(dev_priv, PIPE_WGC_C02(dev_priv, pipe),
+	intel_de_write_fw(display, PIPE_WGC_C02(display, pipe),
 			  csc->coeff[2]);
 
-	intel_de_write_fw(dev_priv, PIPE_WGC_C11_C10(dev_priv, pipe),
+	intel_de_write_fw(display, PIPE_WGC_C11_C10(display, pipe),
 			  csc->coeff[4] << 16 | csc->coeff[3]);
-	intel_de_write_fw(dev_priv, PIPE_WGC_C12(dev_priv, pipe),
+	intel_de_write_fw(display, PIPE_WGC_C12(display, pipe),
 			  csc->coeff[5]);
 
-	intel_de_write_fw(dev_priv, PIPE_WGC_C21_C20(dev_priv, pipe),
+	intel_de_write_fw(display, PIPE_WGC_C21_C20(display, pipe),
 			  csc->coeff[7] << 16 | csc->coeff[6]);
-	intel_de_write_fw(dev_priv, PIPE_WGC_C22(dev_priv, pipe),
+	intel_de_write_fw(display, PIPE_WGC_C22(display, pipe),
 			  csc->coeff[8]);
 }
 
 static void vlv_read_wgc_csc(struct intel_crtc *crtc,
 			     struct intel_csc_matrix *csc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe = crtc->pipe;
 	u32 tmp;
 
-	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C01_C00(dev_priv, pipe));
+	tmp = intel_de_read_fw(display, PIPE_WGC_C01_C00(display, pipe));
 	csc->coeff[0] = tmp & 0xffff;
 	csc->coeff[1] = tmp >> 16;
 
-	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C02(dev_priv, pipe));
+	tmp = intel_de_read_fw(display, PIPE_WGC_C02(display, pipe));
 	csc->coeff[2] = tmp & 0xffff;
 
-	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C11_C10(dev_priv, pipe));
+	tmp = intel_de_read_fw(display, PIPE_WGC_C11_C10(display, pipe));
 	csc->coeff[3] = tmp & 0xffff;
 	csc->coeff[4] = tmp >> 16;
 
-	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C12(dev_priv, pipe));
+	tmp = intel_de_read_fw(display, PIPE_WGC_C12(display, pipe));
 	csc->coeff[5] = tmp & 0xffff;
 
-	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C21_C20(dev_priv, pipe));
+	tmp = intel_de_read_fw(display, PIPE_WGC_C21_C20(display, pipe));
 	csc->coeff[6] = tmp & 0xffff;
 	csc->coeff[7] = tmp >> 16;
 
-	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C22(dev_priv, pipe));
+	tmp = intel_de_read_fw(display, PIPE_WGC_C22(display, pipe));
 	csc->coeff[8] = tmp & 0xffff;
 }
 
@@ -690,14 +692,14 @@ static void vlv_read_csc(struct intel_crtc_state *crtc_state)
 
 static void vlv_assign_csc(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	if (crtc_state->hw.ctm) {
-		drm_WARN_ON(&i915->drm, !crtc_state->wgc_enable);
+		drm_WARN_ON(display->drm, !crtc_state->wgc_enable);
 
 		vlv_wgc_csc_convert_ctm(crtc_state, &crtc_state->csc);
 	} else {
-		drm_WARN_ON(&i915->drm, crtc_state->wgc_enable);
+		drm_WARN_ON(display->drm, crtc_state->wgc_enable);
 
 		intel_csc_clear(&crtc_state->csc);
 	}
@@ -734,45 +736,45 @@ static const struct intel_csc_matrix chv_cgm_csc_matrix_identity = {
 static void chv_load_cgm_csc(struct intel_crtc *crtc,
 			     const struct intel_csc_matrix *csc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe = crtc->pipe;
 
-	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF01(pipe),
+	intel_de_write_fw(display, CGM_PIPE_CSC_COEFF01(pipe),
 			  csc->coeff[1] << 16 | csc->coeff[0]);
-	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF23(pipe),
+	intel_de_write_fw(display, CGM_PIPE_CSC_COEFF23(pipe),
 			  csc->coeff[3] << 16 | csc->coeff[2]);
-	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF45(pipe),
+	intel_de_write_fw(display, CGM_PIPE_CSC_COEFF45(pipe),
 			  csc->coeff[5] << 16 | csc->coeff[4]);
-	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF67(pipe),
+	intel_de_write_fw(display, CGM_PIPE_CSC_COEFF67(pipe),
 			  csc->coeff[7] << 16 | csc->coeff[6]);
-	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF8(pipe),
+	intel_de_write_fw(display, CGM_PIPE_CSC_COEFF8(pipe),
 			  csc->coeff[8]);
 }
 
 static void chv_read_cgm_csc(struct intel_crtc *crtc,
 			     struct intel_csc_matrix *csc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe = crtc->pipe;
 	u32 tmp;
 
-	tmp = intel_de_read_fw(i915, CGM_PIPE_CSC_COEFF01(pipe));
+	tmp = intel_de_read_fw(display, CGM_PIPE_CSC_COEFF01(pipe));
 	csc->coeff[0] = tmp & 0xffff;
 	csc->coeff[1] = tmp >> 16;
 
-	tmp = intel_de_read_fw(i915, CGM_PIPE_CSC_COEFF23(pipe));
+	tmp = intel_de_read_fw(display, CGM_PIPE_CSC_COEFF23(pipe));
 	csc->coeff[2] = tmp & 0xffff;
 	csc->coeff[3] = tmp >> 16;
 
-	tmp = intel_de_read_fw(i915, CGM_PIPE_CSC_COEFF45(pipe));
+	tmp = intel_de_read_fw(display, CGM_PIPE_CSC_COEFF45(pipe));
 	csc->coeff[4] = tmp & 0xffff;
 	csc->coeff[5] = tmp >> 16;
 
-	tmp = intel_de_read_fw(i915, CGM_PIPE_CSC_COEFF67(pipe));
+	tmp = intel_de_read_fw(display, CGM_PIPE_CSC_COEFF67(pipe));
 	csc->coeff[6] = tmp & 0xffff;
 	csc->coeff[7] = tmp >> 16;
 
-	tmp = intel_de_read_fw(i915, CGM_PIPE_CSC_COEFF8(pipe));
+	tmp = intel_de_read_fw(display, CGM_PIPE_CSC_COEFF8(pipe));
 	csc->coeff[8] = tmp & 0xffff;
 }
 
@@ -786,16 +788,16 @@ static void chv_read_csc(struct intel_crtc_state *crtc_state)
 
 static void chv_assign_csc(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
-	drm_WARN_ON(&i915->drm, crtc_state->wgc_enable);
+	drm_WARN_ON(display->drm, crtc_state->wgc_enable);
 
 	if (crtc_state->hw.ctm) {
-		drm_WARN_ON(&i915->drm, (crtc_state->cgm_mode & CGM_PIPE_MODE_CSC) == 0);
+		drm_WARN_ON(display->drm, (crtc_state->cgm_mode & CGM_PIPE_MODE_CSC) == 0);
 
 		chv_cgm_csc_convert_ctm(crtc_state, &crtc_state->csc);
 	} else {
-		drm_WARN_ON(&i915->drm, (crtc_state->cgm_mode & CGM_PIPE_MODE_CSC) == 0);
+		drm_WARN_ON(display->drm, (crtc_state->cgm_mode & CGM_PIPE_MODE_CSC) == 0);
 
 		crtc_state->csc = chv_cgm_csc_matrix_identity;
 	}
@@ -1019,12 +1021,12 @@ static void ilk_color_commit_arm(struct intel_dsb *dsb,
 				 const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 
 	/* update TRANSCONF GAMMA_MODE */
 	ilk_set_pipeconf(crtc_state);
 
-	intel_de_write_fw(i915, PIPE_CSC_MODE(crtc->pipe),
+	intel_de_write_fw(display, PIPE_CSC_MODE(crtc->pipe),
 			  crtc_state->csc_mode);
 }
 
@@ -1032,43 +1034,43 @@ static void hsw_color_commit_arm(struct intel_dsb *dsb,
 				 const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 
-	intel_de_write(i915, GAMMA_MODE(crtc->pipe),
+	intel_de_write(display, GAMMA_MODE(crtc->pipe),
 		       crtc_state->gamma_mode);
 
-	intel_de_write_fw(i915, PIPE_CSC_MODE(crtc->pipe),
+	intel_de_write_fw(display, PIPE_CSC_MODE(crtc->pipe),
 			  crtc_state->csc_mode);
 }
 
 static u32 hsw_read_gamma_mode(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 
-	return intel_de_read(i915, GAMMA_MODE(crtc->pipe));
+	return intel_de_read(display, GAMMA_MODE(crtc->pipe));
 }
 
 static u32 ilk_read_csc_mode(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 
-	return intel_de_read(i915, PIPE_CSC_MODE(crtc->pipe));
+	return intel_de_read(display, PIPE_CSC_MODE(crtc->pipe));
 }
 
 static void i9xx_get_config(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
 	u32 tmp;
 
-	tmp = intel_de_read(dev_priv, DSPCNTR(dev_priv, i9xx_plane));
+	tmp = intel_de_read(display, DSPCNTR(display, i9xx_plane));
 
 	if (tmp & DISP_PIPE_GAMMA_ENABLE)
 		crtc_state->gamma_enable = true;
 
-	if (!HAS_GMCH(dev_priv) && tmp & DISP_PIPE_CSC_ENABLE)
+	if (!HAS_GMCH(display) && tmp & DISP_PIPE_CSC_ENABLE)
 		crtc_state->csc_enable = true;
 }
 
@@ -1084,14 +1086,14 @@ static void hsw_get_config(struct intel_crtc_state *crtc_state)
 
 static void skl_get_config(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	u32 tmp;
 
 	crtc_state->gamma_mode = hsw_read_gamma_mode(crtc);
 	crtc_state->csc_mode = ilk_read_csc_mode(crtc);
 
-	tmp = intel_de_read(i915, SKL_BOTTOM_COLOR(crtc->pipe));
+	tmp = intel_de_read(display, SKL_BOTTOM_COLOR(crtc->pipe));
 
 	if (tmp & SKL_BOTTOM_COLOR_GAMMA_ENABLE)
 		crtc_state->gamma_enable = true;
@@ -1103,8 +1105,8 @@ static void skl_get_config(struct intel_crtc_state *crtc_state)
 static void skl_color_commit_arm(struct intel_dsb *dsb,
 				 const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct intel_display *display = to_intel_display(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	u32 val = 0;
 
@@ -1130,8 +1132,8 @@ static void skl_color_commit_arm(struct intel_dsb *dsb,
 static void icl_color_commit_arm(struct intel_dsb *dsb,
 				 const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct intel_display *display = to_intel_display(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
 	/*
@@ -1147,8 +1149,8 @@ static void icl_color_commit_arm(struct intel_dsb *dsb,
 
 static void icl_color_post_update(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
 	/*
 	 * Despite Wa_1406463849, ICL CSC is no longer disarmed by
@@ -1164,17 +1166,17 @@ static void icl_color_post_update(const struct intel_crtc_state *crtc_state)
 	 *
 	 * TGL+ no longer need this workaround.
 	 */
-	intel_de_read_fw(i915, PIPE_CSC_PREOFF_HI(crtc->pipe));
+	intel_de_read_fw(display, PIPE_CSC_PREOFF_HI(crtc->pipe));
 }
 
 static struct drm_property_blob *
-create_linear_lut(struct drm_i915_private *i915, int lut_size)
+create_linear_lut(struct intel_display *display, int lut_size)
 {
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
 	int i;
 
-	blob = drm_property_create_blob(&i915->drm,
+	blob = drm_property_create_blob(display->drm,
 					sizeof(lut[0]) * lut_size,
 					NULL);
 	if (IS_ERR(blob))
@@ -1202,7 +1204,7 @@ static u16 lut_limited_range(unsigned int value)
 }
 
 static struct drm_property_blob *
-create_resized_lut(struct drm_i915_private *i915,
+create_resized_lut(struct intel_display *display,
 		   const struct drm_property_blob *blob_in, int lut_out_size,
 		   bool limited_color_range)
 {
@@ -1211,7 +1213,7 @@ create_resized_lut(struct drm_i915_private *i915,
 	const struct drm_color_lut *lut_in;
 	struct drm_color_lut *lut_out;
 
-	blob_out = drm_property_create_blob(&i915->drm,
+	blob_out = drm_property_create_blob(display->drm,
 					    sizeof(lut_out[0]) * lut_out_size,
 					    NULL);
 	if (IS_ERR(blob_out))
@@ -1239,7 +1241,7 @@ create_resized_lut(struct drm_i915_private *i915,
 static void i9xx_load_lut_8(struct intel_crtc *crtc,
 			    const struct drm_property_blob *blob)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	const struct drm_color_lut *lut;
 	enum pipe pipe = crtc->pipe;
 	int i;
@@ -1250,24 +1252,24 @@ static void i9xx_load_lut_8(struct intel_crtc *crtc,
 	lut = blob->data;
 
 	for (i = 0; i < 256; i++)
-		intel_de_write_fw(dev_priv, PALETTE(dev_priv, pipe, i),
+		intel_de_write_fw(display, PALETTE(display, pipe, i),
 				  i9xx_lut_8(&lut[i]));
 }
 
 static void i9xx_load_lut_10(struct intel_crtc *crtc,
 			     const struct drm_property_blob *blob)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	const struct drm_color_lut *lut = blob->data;
 	int i, lut_size = drm_color_lut_size(blob);
 	enum pipe pipe = crtc->pipe;
 
 	for (i = 0; i < lut_size - 1; i++) {
-		intel_de_write_fw(dev_priv,
-				  PALETTE(dev_priv, pipe, 2 * i + 0),
+		intel_de_write_fw(display,
+				  PALETTE(display, pipe, 2 * i + 0),
 				  i9xx_lut_10_ldw(&lut[i]));
-		intel_de_write_fw(dev_priv,
-				  PALETTE(dev_priv, pipe, 2 * i + 1),
+		intel_de_write_fw(display,
+				  PALETTE(display, pipe, 2 * i + 1),
 				  i9xx_lut_10_udw(&lut[i]));
 	}
 }
@@ -1293,23 +1295,23 @@ static void i9xx_load_luts(const struct intel_crtc_state *crtc_state)
 static void i965_load_lut_10p6(struct intel_crtc *crtc,
 			       const struct drm_property_blob *blob)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	const struct drm_color_lut *lut = blob->data;
 	int i, lut_size = drm_color_lut_size(blob);
 	enum pipe pipe = crtc->pipe;
 
 	for (i = 0; i < lut_size - 1; i++) {
-		intel_de_write_fw(dev_priv,
-				  PALETTE(dev_priv, pipe, 2 * i + 0),
+		intel_de_write_fw(display,
+				  PALETTE(display, pipe, 2 * i + 0),
 				  i965_lut_10p6_ldw(&lut[i]));
-		intel_de_write_fw(dev_priv,
-				  PALETTE(dev_priv, pipe, 2 * i + 1),
+		intel_de_write_fw(display,
+				  PALETTE(display, pipe, 2 * i + 1),
 				  i965_lut_10p6_udw(&lut[i]));
 	}
 
-	intel_de_write_fw(dev_priv, PIPEGCMAX(dev_priv, pipe, 0), lut[i].red);
-	intel_de_write_fw(dev_priv, PIPEGCMAX(dev_priv, pipe, 1), lut[i].green);
-	intel_de_write_fw(dev_priv, PIPEGCMAX(dev_priv, pipe, 2), lut[i].blue);
+	intel_de_write_fw(display, PIPEGCMAX(display, pipe, 0), lut[i].red);
+	intel_de_write_fw(display, PIPEGCMAX(display, pipe, 1), lut[i].green);
+	intel_de_write_fw(display, PIPEGCMAX(display, pipe, 2), lut[i].blue);
 }
 
 static void i965_load_luts(const struct intel_crtc_state *crtc_state)
@@ -1333,12 +1335,12 @@ static void i965_load_luts(const struct intel_crtc_state *crtc_state)
 static void ilk_lut_write(const struct intel_crtc_state *crtc_state,
 			  i915_reg_t reg, u32 val)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	if (crtc_state->dsb_color_vblank)
 		intel_dsb_reg_write(crtc_state->dsb_color_vblank, reg, val);
 	else
-		intel_de_write_fw(i915, reg, val);
+		intel_de_write_fw(display, reg, val);
 }
 
 static void ilk_load_lut_8(const struct intel_crtc_state *crtc_state,
@@ -1545,9 +1547,9 @@ static void bdw_load_luts(const struct intel_crtc_state *crtc_state)
 	}
 }
 
-static int glk_degamma_lut_size(struct drm_i915_private *i915)
+static int glk_degamma_lut_size(struct intel_display *display)
 {
-	if (DISPLAY_VER(i915) >= 13)
+	if (DISPLAY_VER(display) >= 13)
 		return 131;
 	else
 		return 35;
@@ -1579,8 +1581,8 @@ static void mtl_degamma_lut_pack(struct drm_color_lut *entry, u32 val)
 static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state,
 				 const struct drm_property_blob *blob)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct drm_color_lut *lut = blob->data;
 	int i, lut_size = drm_color_lut_size(blob);
 	enum pipe pipe = crtc->pipe;
@@ -1611,14 +1613,14 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state,
 		 * as compared to just 16 to achieve this.
 		 */
 		ilk_lut_write(crtc_state, PRE_CSC_GAMC_DATA(pipe),
-			      DISPLAY_VER(i915) >= 14 ?
+			      DISPLAY_VER(display) >= 14 ?
 			      mtl_degamma_lut(&lut[i]) : glk_degamma_lut(&lut[i]));
 	}
 
 	/* Clamp values > 1.0. */
-	while (i++ < glk_degamma_lut_size(i915))
+	while (i++ < glk_degamma_lut_size(display))
 		ilk_lut_write(crtc_state, PRE_CSC_GAMC_DATA(pipe),
-			      DISPLAY_VER(i915) >= 14 ?
+			      DISPLAY_VER(display) >= 14 ?
 			      1 << 24 : 1 << 16);
 
 	ilk_lut_write(crtc_state, PRE_CSC_GAMC_INDEX(pipe), 0);
@@ -1819,15 +1821,15 @@ static void chv_cgm_degamma_pack(struct drm_color_lut *entry, u32 ldw, u32 udw)
 static void chv_load_cgm_degamma(struct intel_crtc *crtc,
 				 const struct drm_property_blob *blob)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	const struct drm_color_lut *lut = blob->data;
 	int i, lut_size = drm_color_lut_size(blob);
 	enum pipe pipe = crtc->pipe;
 
 	for (i = 0; i < lut_size; i++) {
-		intel_de_write_fw(i915, CGM_PIPE_DEGAMMA(pipe, i, 0),
+		intel_de_write_fw(display, CGM_PIPE_DEGAMMA(pipe, i, 0),
 				  chv_cgm_degamma_ldw(&lut[i]));
-		intel_de_write_fw(i915, CGM_PIPE_DEGAMMA(pipe, i, 1),
+		intel_de_write_fw(display, CGM_PIPE_DEGAMMA(pipe, i, 1),
 				  chv_cgm_degamma_udw(&lut[i]));
 	}
 }
@@ -1853,23 +1855,23 @@ static void chv_cgm_gamma_pack(struct drm_color_lut *entry, u32 ldw, u32 udw)
 static void chv_load_cgm_gamma(struct intel_crtc *crtc,
 			       const struct drm_property_blob *blob)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	const struct drm_color_lut *lut = blob->data;
 	int i, lut_size = drm_color_lut_size(blob);
 	enum pipe pipe = crtc->pipe;
 
 	for (i = 0; i < lut_size; i++) {
-		intel_de_write_fw(i915, CGM_PIPE_GAMMA(pipe, i, 0),
+		intel_de_write_fw(display, CGM_PIPE_GAMMA(pipe, i, 0),
 				  chv_cgm_gamma_ldw(&lut[i]));
-		intel_de_write_fw(i915, CGM_PIPE_GAMMA(pipe, i, 1),
+		intel_de_write_fw(display, CGM_PIPE_GAMMA(pipe, i, 1),
 				  chv_cgm_gamma_udw(&lut[i]));
 	}
 }
 
 static void chv_load_luts(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct drm_property_blob *pre_csc_lut = crtc_state->pre_csc_lut;
 	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
 
@@ -1884,43 +1886,43 @@ static void chv_load_luts(const struct intel_crtc_state *crtc_state)
 	else
 		i965_load_luts(crtc_state);
 
-	intel_de_write_fw(i915, CGM_PIPE_MODE(crtc->pipe),
+	intel_de_write_fw(display, CGM_PIPE_MODE(crtc->pipe),
 			  crtc_state->cgm_mode);
 }
 
 void intel_color_load_luts(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	if (crtc_state->dsb_color_vblank)
 		return;
 
-	i915->display.funcs.color->load_luts(crtc_state);
+	display->funcs.color->load_luts(crtc_state);
 }
 
 void intel_color_commit_noarm(struct intel_dsb *dsb,
 			      const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (i915->display.funcs.color->color_commit_noarm)
-		i915->display.funcs.color->color_commit_noarm(dsb, crtc_state);
+	if (display->funcs.color->color_commit_noarm)
+		display->funcs.color->color_commit_noarm(dsb, crtc_state);
 }
 
 void intel_color_commit_arm(struct intel_dsb *dsb,
 			    const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
-	i915->display.funcs.color->color_commit_arm(dsb, crtc_state);
+	display->funcs.color->color_commit_arm(dsb, crtc_state);
 }
 
 void intel_color_post_update(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (i915->display.funcs.color->color_post_update)
-		i915->display.funcs.color->color_post_update(crtc_state);
+	if (display->funcs.color->color_post_update)
+		display->funcs.color->color_post_update(crtc_state);
 }
 
 void intel_color_modeset(const struct intel_crtc_state *crtc_state)
@@ -1943,7 +1945,7 @@ void intel_color_modeset(const struct intel_crtc_state *crtc_state)
 void intel_color_prepare_commit(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
@@ -1961,7 +1963,7 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
 	if (!crtc_state->dsb_color_vblank)
 		return;
 
-	i915->display.funcs.color->load_luts(crtc_state);
+	display->funcs.color->load_luts(crtc_state);
 
 	intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color_vblank);
 	intel_dsb_interrupt(crtc_state->dsb_color_vblank);
@@ -2030,7 +2032,7 @@ static bool chv_can_preload_luts(struct intel_atomic_state *state,
 int intel_color_check(struct intel_atomic_state *state,
 		      struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
@@ -2046,20 +2048,20 @@ int intel_color_check(struct intel_atomic_state *state,
 	if (!intel_crtc_needs_color_update(new_crtc_state))
 		return 0;
 
-	return i915->display.funcs.color->color_check(state, crtc);
+	return display->funcs.color->color_check(state, crtc);
 }
 
 void intel_color_get_config(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (i915->display.funcs.color->get_config)
-		i915->display.funcs.color->get_config(crtc_state);
+	if (display->funcs.color->get_config)
+		display->funcs.color->get_config(crtc_state);
 
-	i915->display.funcs.color->read_luts(crtc_state);
+	display->funcs.color->read_luts(crtc_state);
 
-	if (i915->display.funcs.color->read_csc)
-		i915->display.funcs.color->read_csc(crtc_state);
+	if (display->funcs.color->read_csc)
+		display->funcs.color->read_csc(crtc_state);
 }
 
 bool intel_color_lut_equal(const struct intel_crtc_state *crtc_state,
@@ -2067,7 +2069,7 @@ bool intel_color_lut_equal(const struct intel_crtc_state *crtc_state,
 			   const struct drm_property_blob *blob2,
 			   bool is_pre_csc_lut)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	/*
 	 * FIXME c8_planes readout missing thus
@@ -2076,14 +2078,14 @@ bool intel_color_lut_equal(const struct intel_crtc_state *crtc_state,
 	if (!is_pre_csc_lut && crtc_state->c8_planes)
 		return true;
 
-	return i915->display.funcs.color->lut_equal(crtc_state, blob1, blob2,
-						    is_pre_csc_lut);
+	return display->funcs.color->lut_equal(crtc_state, blob1, blob2,
+					       is_pre_csc_lut);
 }
 
 static bool need_plane_update(struct intel_plane *plane,
 			      const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 
 	/*
 	 * On pre-SKL the pipe gamma enable and pipe csc enable for
@@ -2091,15 +2093,14 @@ static bool need_plane_update(struct intel_plane *plane,
 	 * We have to reconfigure that even if the plane is inactive.
 	 */
 	return crtc_state->active_planes & BIT(plane->id) ||
-		(DISPLAY_VER(i915) < 9 &&
-		 plane->id == PLANE_PRIMARY);
+		(DISPLAY_VER(display) < 9 && plane->id == PLANE_PRIMARY);
 }
 
 static int
 intel_color_add_affected_planes(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
@@ -2114,7 +2115,7 @@ intel_color_add_affected_planes(struct intel_atomic_state *state,
 	    new_crtc_state->csc_enable == old_crtc_state->csc_enable)
 		return 0;
 
-	for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
+	for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
 		struct intel_plane_state *plane_state;
 
 		if (!need_plane_update(plane, new_crtc_state))
@@ -2129,7 +2130,7 @@ intel_color_add_affected_planes(struct intel_atomic_state *state,
 		new_crtc_state->do_async_flip = false;
 
 		/* plane control register changes blocked by CxSR */
-		if (HAS_GMCH(i915))
+		if (HAS_GMCH(display))
 			new_crtc_state->disable_cxsr = true;
 	}
 
@@ -2138,44 +2139,44 @@ intel_color_add_affected_planes(struct intel_atomic_state *state,
 
 static u32 intel_gamma_lut_tests(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
 
 	if (lut_is_legacy(gamma_lut))
 		return 0;
 
-	return DISPLAY_INFO(i915)->color.gamma_lut_tests;
+	return DISPLAY_INFO(display)->color.gamma_lut_tests;
 }
 
 static u32 intel_degamma_lut_tests(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
-	return DISPLAY_INFO(i915)->color.degamma_lut_tests;
+	return DISPLAY_INFO(display)->color.degamma_lut_tests;
 }
 
 static int intel_gamma_lut_size(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
 
 	if (lut_is_legacy(gamma_lut))
 		return LEGACY_LUT_LENGTH;
 
-	return DISPLAY_INFO(i915)->color.gamma_lut_size;
+	return DISPLAY_INFO(display)->color.gamma_lut_size;
 }
 
 static u32 intel_degamma_lut_size(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
-	return DISPLAY_INFO(i915)->color.degamma_lut_size;
+	return DISPLAY_INFO(display)->color.degamma_lut_size;
 }
 
 static int check_lut_size(struct intel_crtc *crtc, const char *lut_name,
 			  const struct drm_property_blob *lut, int expected)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	int len;
 
 	if (!lut)
@@ -2183,7 +2184,7 @@ static int check_lut_size(struct intel_crtc *crtc, const char *lut_name,
 
 	len = drm_color_lut_size(lut);
 	if (len != expected) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] Invalid %s LUT size; got %d, expected %d\n",
 			    crtc->base.base.id, crtc->base.name, lut_name, len, expected);
 		return -EINVAL;
@@ -2195,15 +2196,15 @@ static int check_lut_size(struct intel_crtc *crtc, const char *lut_name,
 static int _check_luts(const struct intel_crtc_state *crtc_state,
 		       u32 degamma_tests, u32 gamma_tests)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
 	const struct drm_property_blob *degamma_lut = crtc_state->hw.degamma_lut;
 	int gamma_length, degamma_length;
 
 	/* C8 relies on its palette being stored in the legacy LUT */
 	if (crtc_state->c8_planes && !lut_is_legacy(crtc_state->hw.gamma_lut)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] C8 pixelformat requires the legacy LUT\n",
 			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
@@ -2248,7 +2249,7 @@ static int i9xx_lut_10_diff(u16 a, u16 b)
 static int i9xx_check_lut_10(struct intel_crtc *crtc,
 			     const struct drm_property_blob *blob)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	const struct drm_color_lut *lut = blob->data;
 	int lut_size = drm_color_lut_size(blob);
 	const struct drm_color_lut *a = &lut[lut_size - 2];
@@ -2257,7 +2258,7 @@ static int i9xx_check_lut_10(struct intel_crtc *crtc,
 	if (i9xx_lut_10_diff(b->red, a->red) > 0x7f ||
 	    i9xx_lut_10_diff(b->green, a->green) > 0x7f ||
 	    i9xx_lut_10_diff(b->blue, a->blue) > 0x7f) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] Last gamma LUT entry exceeds max slope\n",
 			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
@@ -2268,28 +2269,28 @@ static int i9xx_check_lut_10(struct intel_crtc *crtc,
 
 void intel_color_assert_luts(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	/* make sure {pre,post}_csc_lut were correctly assigned */
-	if (DISPLAY_VER(i915) >= 11 || HAS_GMCH(i915)) {
-		drm_WARN_ON(&i915->drm,
+	if (DISPLAY_VER(display) >= 11 || HAS_GMCH(display)) {
+		drm_WARN_ON(display->drm,
 			    crtc_state->pre_csc_lut != crtc_state->hw.degamma_lut);
-		drm_WARN_ON(&i915->drm,
+		drm_WARN_ON(display->drm,
 			    crtc_state->post_csc_lut != crtc_state->hw.gamma_lut);
-	} else if (DISPLAY_VER(i915) == 10) {
-		drm_WARN_ON(&i915->drm,
+	} else if (DISPLAY_VER(display) == 10) {
+		drm_WARN_ON(display->drm,
 			    crtc_state->post_csc_lut == crtc_state->hw.gamma_lut &&
 			    crtc_state->pre_csc_lut != crtc_state->hw.degamma_lut &&
-			    crtc_state->pre_csc_lut != i915->display.color.glk_linear_degamma_lut);
-		drm_WARN_ON(&i915->drm,
+			    crtc_state->pre_csc_lut != display->color.glk_linear_degamma_lut);
+		drm_WARN_ON(display->drm,
 			    !ilk_lut_limited_range(crtc_state) &&
 			    crtc_state->post_csc_lut != NULL &&
 			    crtc_state->post_csc_lut != crtc_state->hw.gamma_lut);
 	} else if (crtc_state->gamma_mode != GAMMA_MODE_MODE_SPLIT) {
-		drm_WARN_ON(&i915->drm,
+		drm_WARN_ON(display->drm,
 			    crtc_state->pre_csc_lut != crtc_state->hw.degamma_lut &&
 			    crtc_state->pre_csc_lut != crtc_state->hw.gamma_lut);
-		drm_WARN_ON(&i915->drm,
+		drm_WARN_ON(display->drm,
 			    !ilk_lut_limited_range(crtc_state) &&
 			    crtc_state->post_csc_lut != crtc_state->hw.degamma_lut &&
 			    crtc_state->post_csc_lut != crtc_state->hw.gamma_lut);
@@ -2307,7 +2308,7 @@ static void intel_assign_luts(struct intel_crtc_state *crtc_state)
 static int i9xx_color_check(struct intel_atomic_state *state,
 			    struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
@@ -2322,7 +2323,7 @@ static int i9xx_color_check(struct intel_atomic_state *state,
 
 	crtc_state->gamma_mode = i9xx_gamma_mode(crtc_state);
 
-	if (DISPLAY_VER(i915) < 4 &&
+	if (DISPLAY_VER(display) < 4 &&
 	    crtc_state->gamma_mode == GAMMA_MODE_MODE_10BIT) {
 		ret = i9xx_check_lut_10(crtc, crtc_state->hw.gamma_lut);
 		if (ret)
@@ -2491,12 +2492,12 @@ static u32 ilk_csc_mode(const struct intel_crtc_state *crtc_state)
 
 static int ilk_assign_luts(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	if (ilk_lut_limited_range(crtc_state)) {
 		struct drm_property_blob *gamma_lut;
 
-		gamma_lut = create_resized_lut(i915, crtc_state->hw.gamma_lut,
+		gamma_lut = create_resized_lut(display, crtc_state->hw.gamma_lut,
 					       drm_color_lut_size(crtc_state->hw.gamma_lut),
 					       true);
 		if (IS_ERR(gamma_lut))
@@ -2530,7 +2531,7 @@ static int ilk_assign_luts(struct intel_crtc_state *crtc_state)
 static int ilk_color_check(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
@@ -2540,7 +2541,7 @@ static int ilk_color_check(struct intel_atomic_state *state,
 		return ret;
 
 	if (crtc_state->hw.degamma_lut && crtc_state->hw.gamma_lut) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] Degamma and gamma together are not possible\n",
 			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
@@ -2548,7 +2549,7 @@ static int ilk_color_check(struct intel_atomic_state *state,
 
 	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
 	    crtc_state->hw.ctm) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] YCbCr and CTM together are not possible\n",
 			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
@@ -2603,21 +2604,21 @@ static u32 ivb_csc_mode(const struct intel_crtc_state *crtc_state)
 
 static int ivb_assign_luts(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct drm_property_blob *degamma_lut, *gamma_lut;
 
 	if (crtc_state->gamma_mode != GAMMA_MODE_MODE_SPLIT)
 		return ilk_assign_luts(crtc_state);
 
-	drm_WARN_ON(&i915->drm, drm_color_lut_size(crtc_state->hw.degamma_lut) != 1024);
-	drm_WARN_ON(&i915->drm, drm_color_lut_size(crtc_state->hw.gamma_lut) != 1024);
+	drm_WARN_ON(display->drm, drm_color_lut_size(crtc_state->hw.degamma_lut) != 1024);
+	drm_WARN_ON(display->drm, drm_color_lut_size(crtc_state->hw.gamma_lut) != 1024);
 
-	degamma_lut = create_resized_lut(i915, crtc_state->hw.degamma_lut, 512,
+	degamma_lut = create_resized_lut(display, crtc_state->hw.degamma_lut, 512,
 					 false);
 	if (IS_ERR(degamma_lut))
 		return PTR_ERR(degamma_lut);
 
-	gamma_lut = create_resized_lut(i915, crtc_state->hw.gamma_lut, 512,
+	gamma_lut = create_resized_lut(display, crtc_state->hw.gamma_lut, 512,
 				       ilk_lut_limited_range(crtc_state));
 	if (IS_ERR(gamma_lut)) {
 		drm_property_blob_put(degamma_lut);
@@ -2636,7 +2637,7 @@ static int ivb_assign_luts(struct intel_crtc_state *crtc_state)
 static int ivb_color_check(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
@@ -2646,7 +2647,7 @@ static int ivb_color_check(struct intel_atomic_state *state,
 		return ret;
 
 	if (crtc_state->c8_planes && crtc_state->hw.degamma_lut) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] C8 pixelformat and degamma together are not possible\n",
 			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
@@ -2654,7 +2655,7 @@ static int ivb_color_check(struct intel_atomic_state *state,
 
 	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
 	    crtc_state->hw.ctm) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] YCbCr and CTM together are not possible\n",
 			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
@@ -2662,7 +2663,7 @@ static int ivb_color_check(struct intel_atomic_state *state,
 
 	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
 	    crtc_state->hw.degamma_lut && crtc_state->hw.gamma_lut) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] YCbCr and degamma+gamma together are not possible\n",
 			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
@@ -2709,13 +2710,13 @@ static bool glk_use_pre_csc_lut_for_gamma(const struct intel_crtc_state *crtc_st
 
 static int glk_assign_luts(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	if (glk_use_pre_csc_lut_for_gamma(crtc_state)) {
 		struct drm_property_blob *gamma_lut;
 
-		gamma_lut = create_resized_lut(i915, crtc_state->hw.gamma_lut,
-					       DISPLAY_INFO(i915)->color.degamma_lut_size,
+		gamma_lut = create_resized_lut(display, crtc_state->hw.gamma_lut,
+					       DISPLAY_INFO(display)->color.degamma_lut_size,
 					       false);
 		if (IS_ERR(gamma_lut))
 			return PTR_ERR(gamma_lut);
@@ -2731,7 +2732,7 @@ static int glk_assign_luts(struct intel_crtc_state *crtc_state)
 	if (ilk_lut_limited_range(crtc_state)) {
 		struct drm_property_blob *gamma_lut;
 
-		gamma_lut = create_resized_lut(i915, crtc_state->hw.gamma_lut,
+		gamma_lut = create_resized_lut(display, crtc_state->hw.gamma_lut,
 					       drm_color_lut_size(crtc_state->hw.gamma_lut),
 					       true);
 		if (IS_ERR(gamma_lut))
@@ -2754,7 +2755,7 @@ static int glk_assign_luts(struct intel_crtc_state *crtc_state)
 	 */
 	if (crtc_state->csc_enable && !crtc_state->pre_csc_lut)
 		drm_property_replace_blob(&crtc_state->pre_csc_lut,
-					  i915->display.color.glk_linear_degamma_lut);
+					  display->color.glk_linear_degamma_lut);
 
 	return 0;
 }
@@ -2773,7 +2774,7 @@ static int glk_check_luts(const struct intel_crtc_state *crtc_state)
 static int glk_color_check(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
@@ -2784,7 +2785,7 @@ static int glk_color_check(struct intel_atomic_state *state,
 
 	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
 	    crtc_state->hw.ctm) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] YCbCr and CTM together are not possible\n",
 			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
@@ -2792,7 +2793,7 @@ static int glk_color_check(struct intel_atomic_state *state,
 
 	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
 	    crtc_state->hw.degamma_lut && crtc_state->hw.gamma_lut) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] YCbCr and degamma+gamma together are not possible\n",
 			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
@@ -2831,8 +2832,7 @@ static int glk_color_check(struct intel_atomic_state *state,
 
 static u32 icl_gamma_mode(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	u32 gamma_mode = 0;
 
 	if (crtc_state->hw.degamma_lut)
@@ -2850,7 +2850,7 @@ static u32 icl_gamma_mode(const struct intel_crtc_state *crtc_state)
 	 * ToDo: Extend to Logarithmic Gamma once the new UAPI
 	 * is accepted and implemented by a userspace consumer
 	 */
-	else if (DISPLAY_VER(i915) >= 13)
+	else if (DISPLAY_VER(display) >= 13)
 		gamma_mode |= GAMMA_MODE_MODE_10BIT;
 	else
 		gamma_mode |= GAMMA_MODE_MODE_12BIT_MULTI_SEG;
@@ -3231,13 +3231,13 @@ static bool icl_lut_equal(const struct intel_crtc_state *crtc_state,
 
 static struct drm_property_blob *i9xx_read_lut_8(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe = crtc->pipe;
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
 	int i;
 
-	blob = drm_property_create_blob(&dev_priv->drm,
+	blob = drm_property_create_blob(display->drm,
 					sizeof(lut[0]) * LEGACY_LUT_LENGTH,
 					NULL);
 	if (IS_ERR(blob))
@@ -3246,8 +3246,8 @@ static struct drm_property_blob *i9xx_read_lut_8(struct intel_crtc *crtc)
 	lut = blob->data;
 
 	for (i = 0; i < LEGACY_LUT_LENGTH; i++) {
-		u32 val = intel_de_read_fw(dev_priv,
-					   PALETTE(dev_priv, pipe, i));
+		u32 val = intel_de_read_fw(display,
+					   PALETTE(display, pipe, i));
 
 		i9xx_lut_8_pack(&lut[i], val);
 	}
@@ -3257,15 +3257,15 @@ static struct drm_property_blob *i9xx_read_lut_8(struct intel_crtc *crtc)
 
 static struct drm_property_blob *i9xx_read_lut_10(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	u32 lut_size = DISPLAY_INFO(dev_priv)->color.gamma_lut_size;
+	struct intel_display *display = to_intel_display(crtc);
+	u32 lut_size = DISPLAY_INFO(display)->color.gamma_lut_size;
 	enum pipe pipe = crtc->pipe;
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
 	u32 ldw, udw;
 	int i;
 
-	blob = drm_property_create_blob(&dev_priv->drm,
+	blob = drm_property_create_blob(display->drm,
 					lut_size * sizeof(lut[0]), NULL);
 	if (IS_ERR(blob))
 		return NULL;
@@ -3273,10 +3273,10 @@ static struct drm_property_blob *i9xx_read_lut_10(struct intel_crtc *crtc)
 	lut = blob->data;
 
 	for (i = 0; i < lut_size - 1; i++) {
-		ldw = intel_de_read_fw(dev_priv,
-				       PALETTE(dev_priv, pipe, 2 * i + 0));
-		udw = intel_de_read_fw(dev_priv,
-				       PALETTE(dev_priv, pipe, 2 * i + 1));
+		ldw = intel_de_read_fw(display,
+				       PALETTE(display, pipe, 2 * i + 0));
+		udw = intel_de_read_fw(display,
+				       PALETTE(display, pipe, 2 * i + 1));
 
 		i9xx_lut_10_pack(&lut[i], ldw, udw);
 	}
@@ -3308,13 +3308,13 @@ static void i9xx_read_luts(struct intel_crtc_state *crtc_state)
 
 static struct drm_property_blob *i965_read_lut_10p6(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	int i, lut_size = DISPLAY_INFO(dev_priv)->color.gamma_lut_size;
+	struct intel_display *display = to_intel_display(crtc);
+	int i, lut_size = DISPLAY_INFO(display)->color.gamma_lut_size;
 	enum pipe pipe = crtc->pipe;
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
 
-	blob = drm_property_create_blob(&dev_priv->drm,
+	blob = drm_property_create_blob(display->drm,
 					sizeof(lut[0]) * lut_size,
 					NULL);
 	if (IS_ERR(blob))
@@ -3323,17 +3323,17 @@ static struct drm_property_blob *i965_read_lut_10p6(struct intel_crtc *crtc)
 	lut = blob->data;
 
 	for (i = 0; i < lut_size - 1; i++) {
-		u32 ldw = intel_de_read_fw(dev_priv,
-					   PALETTE(dev_priv, pipe, 2 * i + 0));
-		u32 udw = intel_de_read_fw(dev_priv,
-					   PALETTE(dev_priv, pipe, 2 * i + 1));
+		u32 ldw = intel_de_read_fw(display,
+					   PALETTE(display, pipe, 2 * i + 0));
+		u32 udw = intel_de_read_fw(display,
+					   PALETTE(display, pipe, 2 * i + 1));
 
 		i965_lut_10p6_pack(&lut[i], ldw, udw);
 	}
 
-	lut[i].red = i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PIPEGCMAX(dev_priv, pipe, 0)));
-	lut[i].green = i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PIPEGCMAX(dev_priv, pipe, 1)));
-	lut[i].blue = i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PIPEGCMAX(dev_priv, pipe, 2)));
+	lut[i].red = i965_lut_11p6_max_pack(intel_de_read_fw(display, PIPEGCMAX(display, pipe, 0)));
+	lut[i].green = i965_lut_11p6_max_pack(intel_de_read_fw(display, PIPEGCMAX(display, pipe, 1)));
+	lut[i].blue = i965_lut_11p6_max_pack(intel_de_read_fw(display, PIPEGCMAX(display, pipe, 2)));
 
 	return blob;
 }
@@ -3360,13 +3360,13 @@ static void i965_read_luts(struct intel_crtc_state *crtc_state)
 
 static struct drm_property_blob *chv_read_cgm_degamma(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	int i, lut_size = DISPLAY_INFO(dev_priv)->color.degamma_lut_size;
+	struct intel_display *display = to_intel_display(crtc);
+	int i, lut_size = DISPLAY_INFO(display)->color.degamma_lut_size;
 	enum pipe pipe = crtc->pipe;
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
 
-	blob = drm_property_create_blob(&dev_priv->drm,
+	blob = drm_property_create_blob(display->drm,
 					sizeof(lut[0]) * lut_size,
 					NULL);
 	if (IS_ERR(blob))
@@ -3375,8 +3375,8 @@ static struct drm_property_blob *chv_read_cgm_degamma(struct intel_crtc *crtc)
 	lut = blob->data;
 
 	for (i = 0; i < lut_size; i++) {
-		u32 ldw = intel_de_read_fw(dev_priv, CGM_PIPE_DEGAMMA(pipe, i, 0));
-		u32 udw = intel_de_read_fw(dev_priv, CGM_PIPE_DEGAMMA(pipe, i, 1));
+		u32 ldw = intel_de_read_fw(display, CGM_PIPE_DEGAMMA(pipe, i, 0));
+		u32 udw = intel_de_read_fw(display, CGM_PIPE_DEGAMMA(pipe, i, 1));
 
 		chv_cgm_degamma_pack(&lut[i], ldw, udw);
 	}
@@ -3386,13 +3386,13 @@ static struct drm_property_blob *chv_read_cgm_degamma(struct intel_crtc *crtc)
 
 static struct drm_property_blob *chv_read_cgm_gamma(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	int i, lut_size = DISPLAY_INFO(i915)->color.gamma_lut_size;
+	struct intel_display *display = to_intel_display(crtc);
+	int i, lut_size = DISPLAY_INFO(display)->color.gamma_lut_size;
 	enum pipe pipe = crtc->pipe;
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
 
-	blob = drm_property_create_blob(&i915->drm,
+	blob = drm_property_create_blob(display->drm,
 					sizeof(lut[0]) * lut_size,
 					NULL);
 	if (IS_ERR(blob))
@@ -3401,8 +3401,8 @@ static struct drm_property_blob *chv_read_cgm_gamma(struct intel_crtc *crtc)
 	lut = blob->data;
 
 	for (i = 0; i < lut_size; i++) {
-		u32 ldw = intel_de_read_fw(i915, CGM_PIPE_GAMMA(pipe, i, 0));
-		u32 udw = intel_de_read_fw(i915, CGM_PIPE_GAMMA(pipe, i, 1));
+		u32 ldw = intel_de_read_fw(display, CGM_PIPE_GAMMA(pipe, i, 0));
+		u32 udw = intel_de_read_fw(display, CGM_PIPE_GAMMA(pipe, i, 1));
 
 		chv_cgm_gamma_pack(&lut[i], ldw, udw);
 	}
@@ -3412,10 +3412,10 @@ static struct drm_property_blob *chv_read_cgm_gamma(struct intel_crtc *crtc)
 
 static void chv_get_config(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
-	crtc_state->cgm_mode = intel_de_read(i915, CGM_PIPE_MODE(crtc->pipe));
+	crtc_state->cgm_mode = intel_de_read(display, CGM_PIPE_MODE(crtc->pipe));
 
 	i9xx_get_config(crtc_state);
 }
@@ -3435,13 +3435,13 @@ static void chv_read_luts(struct intel_crtc_state *crtc_state)
 
 static struct drm_property_blob *ilk_read_lut_8(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe = crtc->pipe;
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
 	int i;
 
-	blob = drm_property_create_blob(&i915->drm,
+	blob = drm_property_create_blob(display->drm,
 					sizeof(lut[0]) * LEGACY_LUT_LENGTH,
 					NULL);
 	if (IS_ERR(blob))
@@ -3450,7 +3450,7 @@ static struct drm_property_blob *ilk_read_lut_8(struct intel_crtc *crtc)
 	lut = blob->data;
 
 	for (i = 0; i < LEGACY_LUT_LENGTH; i++) {
-		u32 val = intel_de_read_fw(i915, LGC_PALETTE(pipe, i));
+		u32 val = intel_de_read_fw(display, LGC_PALETTE(pipe, i));
 
 		i9xx_lut_8_pack(&lut[i], val);
 	}
@@ -3460,13 +3460,13 @@ static struct drm_property_blob *ilk_read_lut_8(struct intel_crtc *crtc)
 
 static struct drm_property_blob *ilk_read_lut_10(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	int i, lut_size = DISPLAY_INFO(i915)->color.gamma_lut_size;
+	struct intel_display *display = to_intel_display(crtc);
+	int i, lut_size = DISPLAY_INFO(display)->color.gamma_lut_size;
 	enum pipe pipe = crtc->pipe;
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
 
-	blob = drm_property_create_blob(&i915->drm,
+	blob = drm_property_create_blob(display->drm,
 					sizeof(lut[0]) * lut_size,
 					NULL);
 	if (IS_ERR(blob))
@@ -3475,7 +3475,7 @@ static struct drm_property_blob *ilk_read_lut_10(struct intel_crtc *crtc)
 	lut = blob->data;
 
 	for (i = 0; i < lut_size; i++) {
-		u32 val = intel_de_read_fw(i915, PREC_PALETTE(pipe, i));
+		u32 val = intel_de_read_fw(display, PREC_PALETTE(pipe, i));
 
 		ilk_lut_10_pack(&lut[i], val);
 	}
@@ -3523,13 +3523,13 @@ static void ilk_read_luts(struct intel_crtc_state *crtc_state)
 static struct drm_property_blob *ivb_read_lut_10(struct intel_crtc *crtc,
 						 u32 prec_index)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	int i, lut_size = ivb_lut_10_size(prec_index);
 	enum pipe pipe = crtc->pipe;
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
 
-	blob = drm_property_create_blob(&dev_priv->drm,
+	blob = drm_property_create_blob(display->drm,
 					sizeof(lut[0]) * lut_size,
 					NULL);
 	if (IS_ERR(blob))
@@ -3540,14 +3540,14 @@ static struct drm_property_blob *ivb_read_lut_10(struct intel_crtc *crtc,
 	for (i = 0; i < lut_size; i++) {
 		u32 val;
 
-		intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe),
+		intel_de_write_fw(display, PREC_PAL_INDEX(pipe),
 				  prec_index + i);
-		val = intel_de_read_fw(dev_priv, PREC_PAL_DATA(pipe));
+		val = intel_de_read_fw(display, PREC_PAL_DATA(pipe));
 
 		ilk_lut_10_pack(&lut[i], val);
 	}
 
-	intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe),
+	intel_de_write_fw(display, PREC_PAL_INDEX(pipe),
 			  PAL_PREC_INDEX_VALUE(0));
 
 	return blob;
@@ -3588,13 +3588,13 @@ static void ivb_read_luts(struct intel_crtc_state *crtc_state)
 static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
 						 u32 prec_index)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	int i, lut_size = ivb_lut_10_size(prec_index);
 	enum pipe pipe = crtc->pipe;
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
 
-	blob = drm_property_create_blob(&i915->drm,
+	blob = drm_property_create_blob(display->drm,
 					sizeof(lut[0]) * lut_size,
 					NULL);
 	if (IS_ERR(blob))
@@ -3602,19 +3602,19 @@ static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
 
 	lut = blob->data;
 
-	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
+	intel_de_write_fw(display, PREC_PAL_INDEX(pipe),
 			  prec_index);
-	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
+	intel_de_write_fw(display, PREC_PAL_INDEX(pipe),
 			  PAL_PREC_AUTO_INCREMENT |
 			  prec_index);
 
 	for (i = 0; i < lut_size; i++) {
-		u32 val = intel_de_read_fw(i915, PREC_PAL_DATA(pipe));
+		u32 val = intel_de_read_fw(display, PREC_PAL_DATA(pipe));
 
 		ilk_lut_10_pack(&lut[i], val);
 	}
 
-	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
+	intel_de_write_fw(display, PREC_PAL_INDEX(pipe),
 			  PAL_PREC_INDEX_VALUE(0));
 
 	return blob;
@@ -3653,13 +3653,13 @@ static void bdw_read_luts(struct intel_crtc_state *crtc_state)
 
 static struct drm_property_blob *glk_read_degamma_lut(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	int i, lut_size = DISPLAY_INFO(dev_priv)->color.degamma_lut_size;
+	struct intel_display *display = to_intel_display(crtc);
+	int i, lut_size = DISPLAY_INFO(display)->color.degamma_lut_size;
 	enum pipe pipe = crtc->pipe;
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
 
-	blob = drm_property_create_blob(&dev_priv->drm,
+	blob = drm_property_create_blob(display->drm,
 					sizeof(lut[0]) * lut_size,
 					NULL);
 	if (IS_ERR(blob))
@@ -3672,22 +3672,22 @@ static struct drm_property_blob *glk_read_degamma_lut(struct intel_crtc *crtc)
 	 * ignore the index bits, so we need to reset it to index 0
 	 * separately.
 	 */
-	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe),
+	intel_de_write_fw(display, PRE_CSC_GAMC_INDEX(pipe),
 			  PRE_CSC_GAMC_INDEX_VALUE(0));
-	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe),
+	intel_de_write_fw(display, PRE_CSC_GAMC_INDEX(pipe),
 			  PRE_CSC_GAMC_AUTO_INCREMENT |
 			  PRE_CSC_GAMC_INDEX_VALUE(0));
 
 	for (i = 0; i < lut_size; i++) {
-		u32 val = intel_de_read_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe));
+		u32 val = intel_de_read_fw(display, PRE_CSC_GAMC_DATA(pipe));
 
-		if (DISPLAY_VER(dev_priv) >= 14)
+		if (DISPLAY_VER(display) >= 14)
 			mtl_degamma_lut_pack(&lut[i], val);
 		else
 			glk_degamma_lut_pack(&lut[i], val);
 	}
 
-	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe),
+	intel_de_write_fw(display, PRE_CSC_GAMC_INDEX(pipe),
 			  PRE_CSC_GAMC_INDEX_VALUE(0));
 
 	return blob;
@@ -3719,13 +3719,13 @@ static void glk_read_luts(struct intel_crtc_state *crtc_state)
 static struct drm_property_blob *
 icl_read_lut_multi_segment(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	int i, lut_size = DISPLAY_INFO(i915)->color.gamma_lut_size;
+	struct intel_display *display = to_intel_display(crtc);
+	int i, lut_size = DISPLAY_INFO(display)->color.gamma_lut_size;
 	enum pipe pipe = crtc->pipe;
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
 
-	blob = drm_property_create_blob(&i915->drm,
+	blob = drm_property_create_blob(display->drm,
 					sizeof(lut[0]) * lut_size,
 					NULL);
 	if (IS_ERR(blob))
@@ -3733,20 +3733,20 @@ icl_read_lut_multi_segment(struct intel_crtc *crtc)
 
 	lut = blob->data;
 
-	intel_de_write_fw(i915, PREC_PAL_MULTI_SEG_INDEX(pipe),
+	intel_de_write_fw(display, PREC_PAL_MULTI_SEG_INDEX(pipe),
 			  PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
-	intel_de_write_fw(i915, PREC_PAL_MULTI_SEG_INDEX(pipe),
+	intel_de_write_fw(display, PREC_PAL_MULTI_SEG_INDEX(pipe),
 			  PAL_PREC_MULTI_SEG_AUTO_INCREMENT |
 			  PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
 
 	for (i = 0; i < 9; i++) {
-		u32 ldw = intel_de_read_fw(i915, PREC_PAL_MULTI_SEG_DATA(pipe));
-		u32 udw = intel_de_read_fw(i915, PREC_PAL_MULTI_SEG_DATA(pipe));
+		u32 ldw = intel_de_read_fw(display, PREC_PAL_MULTI_SEG_DATA(pipe));
+		u32 udw = intel_de_read_fw(display, PREC_PAL_MULTI_SEG_DATA(pipe));
 
 		ilk_lut_12p4_pack(&lut[i], ldw, udw);
 	}
 
-	intel_de_write_fw(i915, PREC_PAL_MULTI_SEG_INDEX(pipe),
+	intel_de_write_fw(display, PREC_PAL_MULTI_SEG_INDEX(pipe),
 			  PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
 
 	/*
@@ -3913,15 +3913,15 @@ static const struct intel_color_funcs ilk_color_funcs = {
 
 void intel_color_crtc_init(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	int degamma_lut_size, gamma_lut_size;
 	bool has_ctm;
 
 	drm_mode_crtc_set_gamma_size(&crtc->base, 256);
 
-	gamma_lut_size = DISPLAY_INFO(i915)->color.gamma_lut_size;
-	degamma_lut_size = DISPLAY_INFO(i915)->color.degamma_lut_size;
-	has_ctm = DISPLAY_VER(i915) >= 5;
+	gamma_lut_size = DISPLAY_INFO(display)->color.gamma_lut_size;
+	degamma_lut_size = DISPLAY_INFO(display)->color.degamma_lut_size;
+	has_ctm = DISPLAY_VER(display) >= 5;
 
 	/*
 	 * "DPALETTE_A: NOTE: The 8-bit (non-10-bit) mode is the
@@ -3931,57 +3931,59 @@ void intel_color_crtc_init(struct intel_crtc *crtc)
 	 * Confirmed on alv,cst,pnv. Mobile gen2 parts (alm,mgm)
 	 * are confirmed not to suffer from this restriction.
 	 */
-	if (DISPLAY_VER(i915) == 3 && crtc->pipe == PIPE_A)
+	if (DISPLAY_VER(display) == 3 && crtc->pipe == PIPE_A)
 		gamma_lut_size = 256;
 
 	drm_crtc_enable_color_mgmt(&crtc->base, degamma_lut_size,
 				   has_ctm, gamma_lut_size);
 }
 
-int intel_color_init(struct drm_i915_private *i915)
+int intel_color_init(struct intel_display *display)
 {
 	struct drm_property_blob *blob;
 
-	if (DISPLAY_VER(i915) != 10)
+	if (DISPLAY_VER(display) != 10)
 		return 0;
 
-	blob = create_linear_lut(i915,
-				 DISPLAY_INFO(i915)->color.degamma_lut_size);
+	blob = create_linear_lut(display,
+				 DISPLAY_INFO(display)->color.degamma_lut_size);
 	if (IS_ERR(blob))
 		return PTR_ERR(blob);
 
-	i915->display.color.glk_linear_degamma_lut = blob;
+	display->color.glk_linear_degamma_lut = blob;
 
 	return 0;
 }
 
-void intel_color_init_hooks(struct drm_i915_private *i915)
+void intel_color_init_hooks(struct intel_display *display)
 {
-	if (HAS_GMCH(i915)) {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	if (HAS_GMCH(display)) {
 		if (IS_CHERRYVIEW(i915))
-			i915->display.funcs.color = &chv_color_funcs;
+			display->funcs.color = &chv_color_funcs;
 		else if (IS_VALLEYVIEW(i915))
-			i915->display.funcs.color = &vlv_color_funcs;
-		else if (DISPLAY_VER(i915) >= 4)
-			i915->display.funcs.color = &i965_color_funcs;
+			display->funcs.color = &vlv_color_funcs;
+		else if (DISPLAY_VER(display) >= 4)
+			display->funcs.color = &i965_color_funcs;
 		else
-			i915->display.funcs.color = &i9xx_color_funcs;
+			display->funcs.color = &i9xx_color_funcs;
 	} else {
-		if (DISPLAY_VER(i915) >= 12)
-			i915->display.funcs.color = &tgl_color_funcs;
-		else if (DISPLAY_VER(i915) == 11)
-			i915->display.funcs.color = &icl_color_funcs;
-		else if (DISPLAY_VER(i915) == 10)
-			i915->display.funcs.color = &glk_color_funcs;
-		else if (DISPLAY_VER(i915) == 9)
-			i915->display.funcs.color = &skl_color_funcs;
-		else if (DISPLAY_VER(i915) == 8)
-			i915->display.funcs.color = &bdw_color_funcs;
+		if (DISPLAY_VER(display) >= 12)
+			display->funcs.color = &tgl_color_funcs;
+		else if (DISPLAY_VER(display) == 11)
+			display->funcs.color = &icl_color_funcs;
+		else if (DISPLAY_VER(display) == 10)
+			display->funcs.color = &glk_color_funcs;
+		else if (DISPLAY_VER(display) == 9)
+			display->funcs.color = &skl_color_funcs;
+		else if (DISPLAY_VER(display) == 8)
+			display->funcs.color = &bdw_color_funcs;
 		else if (IS_HASWELL(i915))
-			i915->display.funcs.color = &hsw_color_funcs;
-		else if (DISPLAY_VER(i915) == 7)
-			i915->display.funcs.color = &ivb_color_funcs;
+			display->funcs.color = &hsw_color_funcs;
+		else if (DISPLAY_VER(display) == 7)
+			display->funcs.color = &ivb_color_funcs;
 		else
-			i915->display.funcs.color = &ilk_color_funcs;
+			display->funcs.color = &ilk_color_funcs;
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
index ba493f381031..9d66457c1e89 100644
--- a/drivers/gpu/drm/i915/display/intel_color.h
+++ b/drivers/gpu/drm/i915/display/intel_color.h
@@ -11,12 +11,12 @@
 struct intel_atomic_state;
 struct intel_crtc_state;
 struct intel_crtc;
+struct intel_display;
 struct intel_dsb;
-struct drm_i915_private;
 struct drm_property_blob;
 
-void intel_color_init_hooks(struct drm_i915_private *i915);
-int intel_color_init(struct drm_i915_private *i915);
+void intel_color_init_hooks(struct intel_display *display);
+int intel_color_init(struct intel_display *display);
 void intel_color_crtc_init(struct intel_crtc *crtc);
 int intel_color_check(struct intel_atomic_state *state,
 		      struct intel_crtc *crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 673f9b965494..fe4cc8ce46ca 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -194,7 +194,7 @@ void intel_display_driver_early_probe(struct drm_i915_private *i915)
 
 	intel_display_irq_init(i915);
 	intel_dkl_phy_init(i915);
-	intel_color_init_hooks(i915);
+	intel_color_init_hooks(&i915->display);
 	intel_init_cdclk_hooks(&i915->display);
 	intel_audio_hooks_init(i915);
 	intel_dpll_init_clock_hook(i915);
@@ -249,7 +249,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
 	if (ret)
 		goto cleanup_vga_client_pw_domain_dmc;
 
-	ret = intel_color_init(i915);
+	ret = intel_color_init(display);
 	if (ret)
 		goto cleanup_vga_client_pw_domain_dmc;
 
-- 
2.45.2

