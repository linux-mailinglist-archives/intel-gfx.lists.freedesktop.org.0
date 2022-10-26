Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CFE60DFC0
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 13:39:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B6ED10E4C0;
	Wed, 26 Oct 2022 11:39:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28B4310E4B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 11:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666784358; x=1698320358;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=e5B1KlKUBOqZMvDYlhvDX0CfeRBZpbZD5W+SOjarCYQ=;
 b=LC4N/n3LFIUjJMlSNWJZgGHh6kojJ+edDkAYo+W2PH5GLeQk9VqfGWX7
 aadXi8Q5MQF4HZBSDCT5ShmJvZTNunBUM69S3BWL4tVMI/VSABU9iN8VZ
 cxgXJGWQGFlpUAyj/pX8qgsXWdLCwxrB3nWtCRMDCu8Naef9idufRbgsW
 sKgVUGQpQuNe/RFZR94ETyN2mqlvIPo9nChHYn0aLyEwt4m4IhdSCgBGj
 vzV8G4UucW6fH8CutlInrFpZDYLB3hum0dHxhwarLOphQyuvHnq1UhoNt
 RTeoGsnlzBHU+LMETQzTnHPZozpS6WgpthcR5a+uhtLel1Ywu16wSJ4JR Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="309614229"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="309614229"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 04:39:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="663164404"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="663164404"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 26 Oct 2022 04:39:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 14:39:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 14:38:58 +0300
Message-Id: <20221026113906.10551-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/11] drm/i915: s/dev_priv/i915/ in
 intel_color.c
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

Switch intel_color.c over to the modern 'i915' variable
naming scehme. The only exceptions are the i9xx LUT access
functions which still need the magic 'dev_priv' for the
register macros.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 278 ++++++++++-----------
 1 file changed, 139 insertions(+), 139 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 92cc43d5bad6..415e0a6839a4 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -184,31 +184,31 @@ static void ilk_update_pipe_csc(struct intel_crtc *crtc,
 				const u16 coeff[9],
 				const u16 postoff[3])
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	intel_de_write_fw(dev_priv, PIPE_CSC_PREOFF_HI(pipe), preoff[0]);
-	intel_de_write_fw(dev_priv, PIPE_CSC_PREOFF_ME(pipe), preoff[1]);
-	intel_de_write_fw(dev_priv, PIPE_CSC_PREOFF_LO(pipe), preoff[2]);
+	intel_de_write_fw(i915, PIPE_CSC_PREOFF_HI(pipe), preoff[0]);
+	intel_de_write_fw(i915, PIPE_CSC_PREOFF_ME(pipe), preoff[1]);
+	intel_de_write_fw(i915, PIPE_CSC_PREOFF_LO(pipe), preoff[2]);
 
-	intel_de_write_fw(dev_priv, PIPE_CSC_COEFF_RY_GY(pipe),
+	intel_de_write_fw(i915, PIPE_CSC_COEFF_RY_GY(pipe),
 			  coeff[0] << 16 | coeff[1]);
-	intel_de_write_fw(dev_priv, PIPE_CSC_COEFF_BY(pipe), coeff[2] << 16);
+	intel_de_write_fw(i915, PIPE_CSC_COEFF_BY(pipe), coeff[2] << 16);
 
-	intel_de_write_fw(dev_priv, PIPE_CSC_COEFF_RU_GU(pipe),
+	intel_de_write_fw(i915, PIPE_CSC_COEFF_RU_GU(pipe),
 			  coeff[3] << 16 | coeff[4]);
-	intel_de_write_fw(dev_priv, PIPE_CSC_COEFF_BU(pipe), coeff[5] << 16);
+	intel_de_write_fw(i915, PIPE_CSC_COEFF_BU(pipe), coeff[5] << 16);
 
-	intel_de_write_fw(dev_priv, PIPE_CSC_COEFF_RV_GV(pipe),
+	intel_de_write_fw(i915, PIPE_CSC_COEFF_RV_GV(pipe),
 			  coeff[6] << 16 | coeff[7]);
-	intel_de_write_fw(dev_priv, PIPE_CSC_COEFF_BV(pipe), coeff[8] << 16);
+	intel_de_write_fw(i915, PIPE_CSC_COEFF_BV(pipe), coeff[8] << 16);
 
-	if (DISPLAY_VER(dev_priv) >= 7) {
-		intel_de_write_fw(dev_priv, PIPE_CSC_POSTOFF_HI(pipe),
+	if (DISPLAY_VER(i915) >= 7) {
+		intel_de_write_fw(i915, PIPE_CSC_POSTOFF_HI(pipe),
 				  postoff[0]);
-		intel_de_write_fw(dev_priv, PIPE_CSC_POSTOFF_ME(pipe),
+		intel_de_write_fw(i915, PIPE_CSC_POSTOFF_ME(pipe),
 				  postoff[1]);
-		intel_de_write_fw(dev_priv, PIPE_CSC_POSTOFF_LO(pipe),
+		intel_de_write_fw(i915, PIPE_CSC_POSTOFF_LO(pipe),
 				  postoff[2]);
 	}
 }
@@ -218,44 +218,44 @@ static void icl_update_output_csc(struct intel_crtc *crtc,
 				  const u16 coeff[9],
 				  const u16 postoff[3])
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_PREOFF_HI(pipe), preoff[0]);
-	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_PREOFF_ME(pipe), preoff[1]);
-	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_PREOFF_LO(pipe), preoff[2]);
+	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_PREOFF_HI(pipe), preoff[0]);
+	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_PREOFF_ME(pipe), preoff[1]);
+	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_PREOFF_LO(pipe), preoff[2]);
 
-	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_COEFF_RY_GY(pipe),
+	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_RY_GY(pipe),
 			  coeff[0] << 16 | coeff[1]);
-	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_COEFF_BY(pipe),
+	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_BY(pipe),
 			  coeff[2] << 16);
 
-	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_COEFF_RU_GU(pipe),
+	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_RU_GU(pipe),
 			  coeff[3] << 16 | coeff[4]);
-	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_COEFF_BU(pipe),
+	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_BU(pipe),
 			  coeff[5] << 16);
 
-	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_COEFF_RV_GV(pipe),
+	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_RV_GV(pipe),
 			  coeff[6] << 16 | coeff[7]);
-	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_COEFF_BV(pipe),
+	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_BV(pipe),
 			  coeff[8] << 16);
 
-	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_POSTOFF_HI(pipe), postoff[0]);
-	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_POSTOFF_ME(pipe), postoff[1]);
-	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_POSTOFF_LO(pipe), postoff[2]);
+	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_HI(pipe), postoff[0]);
+	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_ME(pipe), postoff[1]);
+	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_LO(pipe), postoff[2]);
 }
 
 static bool ilk_csc_limited_range(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	/*
 	 * FIXME if there's a gamma LUT after the CSC, we should
 	 * do the range compression using the gamma LUT instead.
 	 */
 	return crtc_state->limited_color_range &&
-		(IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv) ||
-		 IS_DISPLAY_VER(dev_priv, 9, 10));
+		(IS_HASWELL(i915) || IS_BROADWELL(i915) ||
+		 IS_DISPLAY_VER(i915, 9, 10));
 }
 
 static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
@@ -313,7 +313,7 @@ static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
 static void ilk_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	bool limited_color_range = ilk_csc_limited_range(crtc_state);
 
 	if (crtc_state->hw.ctm) {
@@ -339,7 +339,7 @@ static void ilk_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 		 * LUT is needed but CSC is not we need to load an
 		 * identity matrix.
 		 */
-		drm_WARN_ON(&dev_priv->drm, !IS_GEMINILAKE(dev_priv));
+		drm_WARN_ON(&i915->drm, !IS_GEMINILAKE(i915));
 
 		ilk_update_pipe_csc(crtc, ilk_csc_off_zero,
 				    ilk_csc_coeff_identity,
@@ -373,7 +373,7 @@ static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 static void chv_load_cgm_csc(struct intel_crtc *crtc,
 			     const struct drm_property_blob *blob)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct drm_color_ctm *ctm = blob->data;
 	enum pipe pipe = crtc->pipe;
 	u16 coeffs[9];
@@ -397,15 +397,15 @@ static void chv_load_cgm_csc(struct intel_crtc *crtc,
 		coeffs[i] |= (abs_coeff >> 20) & 0xfff;
 	}
 
-	intel_de_write_fw(dev_priv, CGM_PIPE_CSC_COEFF01(pipe),
+	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF01(pipe),
 			  coeffs[1] << 16 | coeffs[0]);
-	intel_de_write_fw(dev_priv, CGM_PIPE_CSC_COEFF23(pipe),
+	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF23(pipe),
 			  coeffs[3] << 16 | coeffs[2]);
-	intel_de_write_fw(dev_priv, CGM_PIPE_CSC_COEFF45(pipe),
+	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF45(pipe),
 			  coeffs[5] << 16 | coeffs[4]);
-	intel_de_write_fw(dev_priv, CGM_PIPE_CSC_COEFF67(pipe),
+	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF67(pipe),
 			  coeffs[7] << 16 | coeffs[6]);
-	intel_de_write_fw(dev_priv, CGM_PIPE_CSC_COEFF8(pipe),
+	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF8(pipe),
 			  coeffs[8]);
 }
 
@@ -511,31 +511,31 @@ static void i9xx_color_commit_arm(const struct intel_crtc_state *crtc_state)
 static void ilk_color_commit_arm(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
 	/* update PIPECONF GAMMA_MODE */
 	ilk_set_pipeconf(crtc_state);
 
-	intel_de_write_fw(dev_priv, PIPE_CSC_MODE(crtc->pipe),
+	intel_de_write_fw(i915, PIPE_CSC_MODE(crtc->pipe),
 			  crtc_state->csc_mode);
 }
 
 static void hsw_color_commit_arm(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
-	intel_de_write(dev_priv, GAMMA_MODE(crtc->pipe),
+	intel_de_write(i915, GAMMA_MODE(crtc->pipe),
 		       crtc_state->gamma_mode);
 
-	intel_de_write_fw(dev_priv, PIPE_CSC_MODE(crtc->pipe),
+	intel_de_write_fw(i915, PIPE_CSC_MODE(crtc->pipe),
 			  crtc_state->csc_mode);
 }
 
 static void skl_color_commit_arm(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	u32 val = 0;
 
@@ -548,12 +548,12 @@ static void skl_color_commit_arm(const struct intel_crtc_state *crtc_state)
 		val |= SKL_BOTTOM_COLOR_GAMMA_ENABLE;
 	if (crtc_state->csc_enable)
 		val |= SKL_BOTTOM_COLOR_CSC_ENABLE;
-	intel_de_write(dev_priv, SKL_BOTTOM_COLOR(pipe), val);
+	intel_de_write(i915, SKL_BOTTOM_COLOR(pipe), val);
 
-	intel_de_write(dev_priv, GAMMA_MODE(crtc->pipe),
+	intel_de_write(i915, GAMMA_MODE(crtc->pipe),
 		       crtc_state->gamma_mode);
 
-	intel_de_write_fw(dev_priv, PIPE_CSC_MODE(crtc->pipe),
+	intel_de_write_fw(i915, PIPE_CSC_MODE(crtc->pipe),
 			  crtc_state->csc_mode);
 }
 
@@ -643,7 +643,7 @@ static void i965_load_luts(const struct intel_crtc_state *crtc_state)
 static void ilk_load_lut_8(struct intel_crtc *crtc,
 			   const struct drm_property_blob *blob)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct drm_color_lut *lut;
 	enum pipe pipe = crtc->pipe;
 	int i;
@@ -654,20 +654,20 @@ static void ilk_load_lut_8(struct intel_crtc *crtc,
 	lut = blob->data;
 
 	for (i = 0; i < 256; i++)
-		intel_de_write_fw(dev_priv, LGC_PALETTE(pipe, i),
+		intel_de_write_fw(i915, LGC_PALETTE(pipe, i),
 				  i9xx_lut_8(&lut[i]));
 }
 
 static void ilk_load_lut_10(struct intel_crtc *crtc,
 			    const struct drm_property_blob *blob)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct drm_color_lut *lut = blob->data;
 	int i, lut_size = drm_color_lut_size(blob);
 	enum pipe pipe = crtc->pipe;
 
 	for (i = 0; i < lut_size; i++)
-		intel_de_write_fw(dev_priv, PREC_PALETTE(pipe, i),
+		intel_de_write_fw(i915, PREC_PALETTE(pipe, i),
 				  ilk_lut_10(&lut[i]));
 }
 
@@ -708,7 +708,7 @@ static void ivb_load_lut_10(struct intel_crtc *crtc,
 			    const struct drm_property_blob *blob,
 			    u32 prec_index)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	int hw_lut_size = ivb_lut_10_size(prec_index);
 	const struct drm_color_lut *lut = blob->data;
 	int i, lut_size = drm_color_lut_size(blob);
@@ -719,8 +719,8 @@ static void ivb_load_lut_10(struct intel_crtc *crtc,
 		const struct drm_color_lut *entry =
 			&lut[i * (lut_size - 1) / (hw_lut_size - 1)];
 
-		intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe), prec_index++);
-		intel_de_write_fw(dev_priv, PREC_PAL_DATA(pipe),
+		intel_de_write_fw(i915, PREC_PAL_INDEX(pipe), prec_index++);
+		intel_de_write_fw(i915, PREC_PAL_DATA(pipe),
 				  ilk_lut_10(entry));
 	}
 
@@ -728,7 +728,7 @@ static void ivb_load_lut_10(struct intel_crtc *crtc,
 	 * Reset the index, otherwise it prevents the legacy palette to be
 	 * written properly.
 	 */
-	intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe), 0);
+	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe), 0);
 }
 
 /* On BDW+ the index auto increment mode actually works */
@@ -736,13 +736,13 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
 			    const struct drm_property_blob *blob,
 			    u32 prec_index)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	int hw_lut_size = ivb_lut_10_size(prec_index);
 	const struct drm_color_lut *lut = blob->data;
 	int i, lut_size = drm_color_lut_size(blob);
 	enum pipe pipe = crtc->pipe;
 
-	intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe),
+	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
 			  prec_index | PAL_PREC_AUTO_INCREMENT);
 
 	for (i = 0; i < hw_lut_size; i++) {
@@ -750,7 +750,7 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
 		const struct drm_color_lut *entry =
 			&lut[i * (lut_size - 1) / (hw_lut_size - 1)];
 
-		intel_de_write_fw(dev_priv, PREC_PAL_DATA(pipe),
+		intel_de_write_fw(i915, PREC_PAL_DATA(pipe),
 				  ilk_lut_10(entry));
 	}
 
@@ -758,13 +758,13 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
 	 * Reset the index, otherwise it prevents the legacy palette to be
 	 * written properly.
 	 */
-	intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe), 0);
+	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe), 0);
 }
 
 static void ivb_load_lut_ext_max(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
 	/* Program the max register to clamp values > 1.0. */
@@ -777,7 +777,7 @@ static void ivb_load_lut_ext_max(const struct intel_crtc_state *crtc_state)
 	 * ToDo: Extend the ABI to be able to program values
 	 * from 3.0 to 7.0
 	 */
-	if (DISPLAY_VER(dev_priv) >= 10) {
+	if (DISPLAY_VER(i915) >= 10) {
 		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 0),
 				    1 << 16);
 		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 1),
@@ -858,7 +858,7 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state,
 				 const struct drm_property_blob *blob)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct drm_color_lut *lut = blob->data;
 	int i, lut_size = drm_color_lut_size(blob);
 	enum pipe pipe = crtc->pipe;
@@ -868,8 +868,8 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state,
 	 * ignore the index bits, so we need to reset it to index 0
 	 * separately.
 	 */
-	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
-	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe),
+	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe), 0);
+	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe),
 			  PRE_CSC_GAMC_AUTO_INCREMENT);
 
 	for (i = 0; i < lut_size; i++) {
@@ -886,15 +886,15 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state,
 		 * ToDo: Extend to max 7.0. Enable 32 bit input value
 		 * as compared to just 16 to achieve this.
 		 */
-		intel_de_write_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe),
+		intel_de_write_fw(i915, PRE_CSC_GAMC_DATA(pipe),
 				  lut[i].green);
 	}
 
 	/* Clamp values > 1.0. */
-	while (i++ < glk_degamma_lut_size(dev_priv))
-		intel_de_write_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe), 1 << 16);
+	while (i++ < glk_degamma_lut_size(i915))
+		intel_de_write_fw(i915, PRE_CSC_GAMC_DATA(pipe), 1 << 16);
 
-	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
+	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe), 0);
 }
 
 static void glk_load_luts(const struct intel_crtc_state *crtc_state)
@@ -1075,15 +1075,15 @@ static u32 chv_cgm_degamma_udw(const struct drm_color_lut *color)
 static void chv_load_cgm_degamma(struct intel_crtc *crtc,
 				 const struct drm_property_blob *blob)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct drm_color_lut *lut = blob->data;
 	int i, lut_size = drm_color_lut_size(blob);
 	enum pipe pipe = crtc->pipe;
 
 	for (i = 0; i < lut_size; i++) {
-		intel_de_write_fw(dev_priv, CGM_PIPE_DEGAMMA(pipe, i, 0),
+		intel_de_write_fw(i915, CGM_PIPE_DEGAMMA(pipe, i, 0),
 				  chv_cgm_degamma_ldw(&lut[i]));
-		intel_de_write_fw(dev_priv, CGM_PIPE_DEGAMMA(pipe, i, 1),
+		intel_de_write_fw(i915, CGM_PIPE_DEGAMMA(pipe, i, 1),
 				  chv_cgm_degamma_udw(&lut[i]));
 	}
 }
@@ -1109,15 +1109,15 @@ static void chv_cgm_gamma_pack(struct drm_color_lut *entry, u32 ldw, u32 udw)
 static void chv_load_cgm_gamma(struct intel_crtc *crtc,
 			       const struct drm_property_blob *blob)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct drm_color_lut *lut = blob->data;
 	int i, lut_size = drm_color_lut_size(blob);
 	enum pipe pipe = crtc->pipe;
 
 	for (i = 0; i < lut_size; i++) {
-		intel_de_write_fw(dev_priv, CGM_PIPE_GAMMA(pipe, i, 0),
+		intel_de_write_fw(i915, CGM_PIPE_GAMMA(pipe, i, 0),
 				  chv_cgm_gamma_ldw(&lut[i]));
-		intel_de_write_fw(dev_priv, CGM_PIPE_GAMMA(pipe, i, 1),
+		intel_de_write_fw(i915, CGM_PIPE_GAMMA(pipe, i, 1),
 				  chv_cgm_gamma_udw(&lut[i]));
 	}
 }
@@ -1125,7 +1125,7 @@ static void chv_load_cgm_gamma(struct intel_crtc *crtc,
 static void chv_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct drm_property_blob *pre_csc_lut = crtc_state->pre_csc_lut;
 	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
 	const struct drm_property_blob *ctm = crtc_state->hw.ctm;
@@ -1141,30 +1141,30 @@ static void chv_load_luts(const struct intel_crtc_state *crtc_state)
 	else
 		i965_load_luts(crtc_state);
 
-	intel_de_write_fw(dev_priv, CGM_PIPE_MODE(crtc->pipe),
+	intel_de_write_fw(i915, CGM_PIPE_MODE(crtc->pipe),
 			  crtc_state->cgm_mode);
 }
 
 void intel_color_load_luts(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
-	dev_priv->display.funcs.color->load_luts(crtc_state);
+	i915->display.funcs.color->load_luts(crtc_state);
 }
 
 void intel_color_commit_noarm(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (dev_priv->display.funcs.color->color_commit_noarm)
-		dev_priv->display.funcs.color->color_commit_noarm(crtc_state);
+	if (i915->display.funcs.color->color_commit_noarm)
+		i915->display.funcs.color->color_commit_noarm(crtc_state);
 }
 
 void intel_color_commit_arm(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
-	dev_priv->display.funcs.color->color_commit_arm(crtc_state);
+	i915->display.funcs.color->color_commit_arm(crtc_state);
 }
 
 static bool intel_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
@@ -1200,23 +1200,23 @@ static bool chv_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
 
 int intel_color_check(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
-	return dev_priv->display.funcs.color->color_check(crtc_state);
+	return i915->display.funcs.color->color_check(crtc_state);
 }
 
 void intel_color_get_config(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (dev_priv->display.funcs.color->read_luts)
-		dev_priv->display.funcs.color->read_luts(crtc_state);
+	if (i915->display.funcs.color->read_luts)
+		i915->display.funcs.color->read_luts(crtc_state);
 }
 
 static bool need_plane_update(struct intel_plane *plane,
 			      const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 
 	/*
 	 * On pre-SKL the pipe gamma enable and pipe csc enable for
@@ -1224,7 +1224,7 @@ static bool need_plane_update(struct intel_plane *plane,
 	 * We have to reconfigure that even if the plane is inactive.
 	 */
 	return crtc_state->active_planes & BIT(plane->id) ||
-		(DISPLAY_VER(dev_priv) < 9 &&
+		(DISPLAY_VER(i915) < 9 &&
 		 plane->id == PLANE_PRIMARY);
 }
 
@@ -1232,7 +1232,7 @@ static int
 intel_color_add_affected_planes(struct intel_crtc_state *new_crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_atomic_state *state =
 		to_intel_atomic_state(new_crtc_state->uapi.state);
 	const struct intel_crtc_state *old_crtc_state =
@@ -1247,7 +1247,7 @@ intel_color_add_affected_planes(struct intel_crtc_state *new_crtc_state)
 	    new_crtc_state->csc_enable == old_crtc_state->csc_enable)
 		return 0;
 
-	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
+	for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
 		struct intel_plane_state *plane_state;
 
 		if (!need_plane_update(plane, new_crtc_state))
@@ -1260,7 +1260,7 @@ intel_color_add_affected_planes(struct intel_crtc_state *new_crtc_state)
 		new_crtc_state->update_planes |= BIT(plane->id);
 
 		/* plane control register changes blocked by CxSR */
-		if (HAS_GMCH(dev_priv))
+		if (HAS_GMCH(i915))
 			new_crtc_state->disable_cxsr = true;
 	}
 
@@ -1286,7 +1286,7 @@ static int check_lut_size(const struct drm_property_blob *lut, int expected)
 
 static int check_luts(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
 	const struct drm_property_blob *degamma_lut = crtc_state->hw.degamma_lut;
 	int gamma_length, degamma_length;
@@ -1298,15 +1298,15 @@ static int check_luts(const struct intel_crtc_state *crtc_state)
 
 	/* C8 relies on its palette being stored in the legacy LUT */
 	if (crtc_state->c8_planes) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "C8 pixelformat requires the legacy LUT\n");
 		return -EINVAL;
 	}
 
-	degamma_length = INTEL_INFO(dev_priv)->display.color.degamma_lut_size;
-	gamma_length = INTEL_INFO(dev_priv)->display.color.gamma_lut_size;
-	degamma_tests = INTEL_INFO(dev_priv)->display.color.degamma_lut_tests;
-	gamma_tests = INTEL_INFO(dev_priv)->display.color.gamma_lut_tests;
+	degamma_length = INTEL_INFO(i915)->display.color.degamma_lut_size;
+	gamma_length = INTEL_INFO(i915)->display.color.gamma_lut_size;
+	degamma_tests = INTEL_INFO(i915)->display.color.degamma_lut_tests;
+	gamma_tests = INTEL_INFO(i915)->display.color.gamma_lut_tests;
 
 	if (check_lut_size(degamma_lut, degamma_length) ||
 	    check_lut_size(gamma_lut, gamma_length))
@@ -1550,7 +1550,7 @@ static u32 ivb_csc_mode(const struct intel_crtc_state *crtc_state)
 
 static int ivb_color_check(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	bool limited_color_range = ilk_csc_limited_range(crtc_state);
 	int ret;
 
@@ -1560,7 +1560,7 @@ static int ivb_color_check(struct intel_crtc_state *crtc_state)
 
 	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
 	    crtc_state->hw.ctm) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "YCBCR and CTM together are not possible\n");
 		return -EINVAL;
 	}
@@ -1617,7 +1617,7 @@ static void glk_assign_luts(struct intel_crtc_state *crtc_state)
 
 static int glk_color_check(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	int ret;
 
 	ret = check_luts(crtc_state);
@@ -1626,7 +1626,7 @@ static int glk_color_check(struct intel_crtc_state *crtc_state)
 
 	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
 	    crtc_state->hw.ctm) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "YCBCR and CTM together are not possible\n");
 		return -EINVAL;
 	}
@@ -1798,19 +1798,19 @@ static int icl_gamma_precision(const struct intel_crtc_state *crtc_state)
 int intel_color_get_gamma_bit_precision(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
-	if (HAS_GMCH(dev_priv)) {
-		if (IS_CHERRYVIEW(dev_priv))
+	if (HAS_GMCH(i915)) {
+		if (IS_CHERRYVIEW(i915))
 			return chv_gamma_precision(crtc_state);
 		else
 			return i9xx_gamma_precision(crtc_state);
 	} else {
-		if (DISPLAY_VER(dev_priv) >= 11)
+		if (DISPLAY_VER(i915) >= 11)
 			return icl_gamma_precision(crtc_state);
-		else if (DISPLAY_VER(dev_priv) == 10)
+		else if (DISPLAY_VER(i915) == 10)
 			return glk_gamma_precision(crtc_state);
-		else if (IS_IRONLAKE(dev_priv))
+		else if (IS_IRONLAKE(i915))
 			return ilk_gamma_precision(crtc_state);
 	}
 
@@ -1966,13 +1966,13 @@ static void i965_read_luts(struct intel_crtc_state *crtc_state)
 
 static struct drm_property_blob *chv_read_cgm_gamma(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	int i, lut_size = INTEL_INFO(dev_priv)->display.color.gamma_lut_size;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	int i, lut_size = INTEL_INFO(i915)->display.color.gamma_lut_size;
 	enum pipe pipe = crtc->pipe;
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
 
-	blob = drm_property_create_blob(&dev_priv->drm,
+	blob = drm_property_create_blob(&i915->drm,
 					sizeof(lut[0]) * lut_size,
 					NULL);
 	if (IS_ERR(blob))
@@ -1981,8 +1981,8 @@ static struct drm_property_blob *chv_read_cgm_gamma(struct intel_crtc *crtc)
 	lut = blob->data;
 
 	for (i = 0; i < lut_size; i++) {
-		u32 ldw = intel_de_read_fw(dev_priv, CGM_PIPE_GAMMA(pipe, i, 0));
-		u32 udw = intel_de_read_fw(dev_priv, CGM_PIPE_GAMMA(pipe, i, 1));
+		u32 ldw = intel_de_read_fw(i915, CGM_PIPE_GAMMA(pipe, i, 0));
+		u32 udw = intel_de_read_fw(i915, CGM_PIPE_GAMMA(pipe, i, 1));
 
 		chv_cgm_gamma_pack(&lut[i], ldw, udw);
 	}
@@ -2002,13 +2002,13 @@ static void chv_read_luts(struct intel_crtc_state *crtc_state)
 
 static struct drm_property_blob *ilk_read_lut_8(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
 	int i;
 
-	blob = drm_property_create_blob(&dev_priv->drm,
+	blob = drm_property_create_blob(&i915->drm,
 					sizeof(lut[0]) * LEGACY_LUT_LENGTH,
 					NULL);
 	if (IS_ERR(blob))
@@ -2017,7 +2017,7 @@ static struct drm_property_blob *ilk_read_lut_8(struct intel_crtc *crtc)
 	lut = blob->data;
 
 	for (i = 0; i < LEGACY_LUT_LENGTH; i++) {
-		u32 val = intel_de_read_fw(dev_priv, LGC_PALETTE(pipe, i));
+		u32 val = intel_de_read_fw(i915, LGC_PALETTE(pipe, i));
 
 		i9xx_lut_8_pack(&lut[i], val);
 	}
@@ -2027,13 +2027,13 @@ static struct drm_property_blob *ilk_read_lut_8(struct intel_crtc *crtc)
 
 static struct drm_property_blob *ilk_read_lut_10(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	int i, lut_size = INTEL_INFO(dev_priv)->display.color.gamma_lut_size;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	int i, lut_size = INTEL_INFO(i915)->display.color.gamma_lut_size;
 	enum pipe pipe = crtc->pipe;
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
 
-	blob = drm_property_create_blob(&dev_priv->drm,
+	blob = drm_property_create_blob(&i915->drm,
 					sizeof(lut[0]) * lut_size,
 					NULL);
 	if (IS_ERR(blob))
@@ -2042,7 +2042,7 @@ static struct drm_property_blob *ilk_read_lut_10(struct intel_crtc *crtc)
 	lut = blob->data;
 
 	for (i = 0; i < lut_size; i++) {
-		u32 val = intel_de_read_fw(dev_priv, PREC_PALETTE(pipe, i));
+		u32 val = intel_de_read_fw(i915, PREC_PALETTE(pipe, i));
 
 		ilk_lut_10_pack(&lut[i], val);
 	}
@@ -2077,16 +2077,16 @@ static void ilk_read_luts(struct intel_crtc_state *crtc_state)
 static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
 						 u32 prec_index)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	int i, hw_lut_size = ivb_lut_10_size(prec_index);
-	int lut_size = INTEL_INFO(dev_priv)->display.color.gamma_lut_size;
+	int lut_size = INTEL_INFO(i915)->display.color.gamma_lut_size;
 	enum pipe pipe = crtc->pipe;
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
 
-	drm_WARN_ON(&dev_priv->drm, lut_size != hw_lut_size);
+	drm_WARN_ON(&i915->drm, lut_size != hw_lut_size);
 
-	blob = drm_property_create_blob(&dev_priv->drm,
+	blob = drm_property_create_blob(&i915->drm,
 					sizeof(lut[0]) * lut_size,
 					NULL);
 	if (IS_ERR(blob))
@@ -2094,16 +2094,16 @@ static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
 
 	lut = blob->data;
 
-	intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe),
+	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
 			  prec_index | PAL_PREC_AUTO_INCREMENT);
 
 	for (i = 0; i < lut_size; i++) {
-		u32 val = intel_de_read_fw(dev_priv, PREC_PAL_DATA(pipe));
+		u32 val = intel_de_read_fw(i915, PREC_PAL_DATA(pipe));
 
 		ilk_lut_10_pack(&lut[i], val);
 	}
 
-	intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe), 0);
+	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe), 0);
 
 	return blob;
 }
@@ -2131,13 +2131,13 @@ static void glk_read_luts(struct intel_crtc_state *crtc_state)
 static struct drm_property_blob *
 icl_read_lut_multi_segment(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	int i, lut_size = INTEL_INFO(dev_priv)->display.color.gamma_lut_size;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	int i, lut_size = INTEL_INFO(i915)->display.color.gamma_lut_size;
 	enum pipe pipe = crtc->pipe;
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
 
-	blob = drm_property_create_blob(&dev_priv->drm,
+	blob = drm_property_create_blob(&i915->drm,
 					sizeof(lut[0]) * lut_size,
 					NULL);
 	if (IS_ERR(blob))
@@ -2145,17 +2145,17 @@ icl_read_lut_multi_segment(struct intel_crtc *crtc)
 
 	lut = blob->data;
 
-	intel_de_write_fw(dev_priv, PREC_PAL_MULTI_SEG_INDEX(pipe),
+	intel_de_write_fw(i915, PREC_PAL_MULTI_SEG_INDEX(pipe),
 			  PAL_PREC_AUTO_INCREMENT);
 
 	for (i = 0; i < 9; i++) {
-		u32 ldw = intel_de_read_fw(dev_priv, PREC_PAL_MULTI_SEG_DATA(pipe));
-		u32 udw = intel_de_read_fw(dev_priv, PREC_PAL_MULTI_SEG_DATA(pipe));
+		u32 ldw = intel_de_read_fw(i915, PREC_PAL_MULTI_SEG_DATA(pipe));
+		u32 udw = intel_de_read_fw(i915, PREC_PAL_MULTI_SEG_DATA(pipe));
 
 		icl_lut_multi_seg_pack(&lut[i], ldw, udw);
 	}
 
-	intel_de_write_fw(dev_priv, PREC_PAL_MULTI_SEG_INDEX(pipe), 0);
+	intel_de_write_fw(i915, PREC_PAL_MULTI_SEG_INDEX(pipe), 0);
 
 	/*
 	 * FIXME readouts from PAL_PREC_DATA register aren't giving
@@ -2268,15 +2268,15 @@ static const struct intel_color_funcs ilk_color_funcs = {
 
 void intel_color_crtc_init(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	bool has_ctm = INTEL_INFO(dev_priv)->display.color.degamma_lut_size != 0;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	bool has_ctm = INTEL_INFO(i915)->display.color.degamma_lut_size != 0;
 
 	drm_mode_crtc_set_gamma_size(&crtc->base, 256);
 
 	drm_crtc_enable_color_mgmt(&crtc->base,
-				   INTEL_INFO(dev_priv)->display.color.degamma_lut_size,
+				   INTEL_INFO(i915)->display.color.degamma_lut_size,
 				   has_ctm,
-				   INTEL_INFO(dev_priv)->display.color.gamma_lut_size);
+				   INTEL_INFO(i915)->display.color.gamma_lut_size);
 }
 
 int intel_color_init(struct drm_i915_private *i915)
-- 
2.37.4

