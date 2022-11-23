Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4535163637E
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 16:27:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D08B10E57B;
	Wed, 23 Nov 2022 15:27:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01AB410E577
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 15:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669217237; x=1700753237;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Rz/6PbOEIYGg2vVdJLz3IexCdhRjOffF+fIkqshK1UQ=;
 b=ABoSl/t6ssXpxuldDGawEmc9mAbGAEgr2coGHS/5DfCUXfM7RgbcIAHT
 maL0YQxw+m8g1c3nzbFMUABjvVYDT7LUML+whrXa+P70FAw4hkK3Mw/qd
 8fSnSDdwNl2Dm1LE8GYQxxZndta22jnqDPpxHim0Kuml8o+JXE/5Ypl2n
 3q14Ew8SaYtYC+/tzdJvx3HJW9vG2WWiXsULI1s2d/28EdcwV6y6pKqO/
 cC4E6JB8XBmWA0pdrpE1WZfyky8tCGHku5h8EZA88fbpMeQNHibulkkJY
 fIwB/0sdHjzUHJ6qNEsL3aNERHzGJkdJf+EBS0z/sWymiGDOicWVcrQVb A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="312789976"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="312789976"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 07:27:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="619651086"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="619651086"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 23 Nov 2022 07:27:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Nov 2022 17:27:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 17:26:37 +0200
Message-Id: <20221123152638.20622-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/13] drm/i915: Use ilk_lut_write*() for all
 ilk+ gamma modes
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

We could use the dsb to load the LUT in any gamma mode, not just
when using the multi-segment mode. So replace the direct mmio
on all ilk+ paths with the wrapper.

There are a few functions (ilk_load_lut_10(), ivb_load_lut_10())
that would never be used on a platform with dsb so we could
skip those, but probably better to keep all this 100% consistent
to avoid people getting confused and copy pasting the wrong thing
when adding a new gamma mode.

The gmch stuff I left with direct mmio since those are fairly
distinct and shouldn't cause too much confusion. Although
I've also pondered about converting everything over to dsb
command buffers and just executing it on the CPU when the
real hw is not available. But dunno if that would actually
be a good idea or not...

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 106 ++++++++++-----------
 1 file changed, 50 insertions(+), 56 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 9978d21f1634..d57631b0bb9a 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -858,10 +858,10 @@ static void ilk_lut_write_indexed(const struct intel_crtc_state *crtc_state,
 		intel_de_write_fw(i915, reg, val);
 }
 
-static void ilk_load_lut_8(struct intel_crtc *crtc,
+static void ilk_load_lut_8(const struct intel_crtc_state *crtc_state,
 			   const struct drm_property_blob *blob)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct drm_color_lut *lut;
 	enum pipe pipe = crtc->pipe;
 	int i;
@@ -872,36 +872,35 @@ static void ilk_load_lut_8(struct intel_crtc *crtc,
 	lut = blob->data;
 
 	for (i = 0; i < 256; i++)
-		intel_de_write_fw(i915, LGC_PALETTE(pipe, i),
-				  i9xx_lut_8(&lut[i]));
+		ilk_lut_write(crtc_state, LGC_PALETTE(pipe, i),
+			      i9xx_lut_8(&lut[i]));
 }
 
-static void ilk_load_lut_10(struct intel_crtc *crtc,
+static void ilk_load_lut_10(const struct intel_crtc_state *crtc_state,
 			    const struct drm_property_blob *blob)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct drm_color_lut *lut = blob->data;
 	int i, lut_size = drm_color_lut_size(blob);
 	enum pipe pipe = crtc->pipe;
 
 	for (i = 0; i < lut_size; i++)
-		intel_de_write_fw(i915, PREC_PALETTE(pipe, i),
-				  ilk_lut_10(&lut[i]));
+		ilk_lut_write(crtc_state, PREC_PALETTE(pipe, i),
+			      ilk_lut_10(&lut[i]));
 }
 
 static void ilk_load_luts(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
 	const struct drm_property_blob *pre_csc_lut = crtc_state->pre_csc_lut;
 	const struct drm_property_blob *blob = post_csc_lut ?: pre_csc_lut;
 
 	switch (crtc_state->gamma_mode) {
 	case GAMMA_MODE_MODE_8BIT:
-		ilk_load_lut_8(crtc, blob);
+		ilk_load_lut_8(crtc_state, blob);
 		break;
 	case GAMMA_MODE_MODE_10BIT:
-		ilk_load_lut_10(crtc, blob);
+		ilk_load_lut_10(crtc_state, blob);
 		break;
 	default:
 		MISSING_CASE(crtc_state->gamma_mode);
@@ -922,56 +921,56 @@ static int ivb_lut_10_size(u32 prec_index)
  * "Restriction : Index auto increment mode is not
  *  supported and must not be enabled."
  */
-static void ivb_load_lut_10(struct intel_crtc *crtc,
+static void ivb_load_lut_10(const struct intel_crtc_state *crtc_state,
 			    const struct drm_property_blob *blob,
 			    u32 prec_index)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct drm_color_lut *lut = blob->data;
 	int i, lut_size = drm_color_lut_size(blob);
 	enum pipe pipe = crtc->pipe;
 
 	for (i = 0; i < lut_size; i++) {
-		intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
-				  prec_index + i);
-		intel_de_write_fw(i915, PREC_PAL_DATA(pipe),
-				  ilk_lut_10(&lut[i]));
+		ilk_lut_write(crtc_state, PREC_PAL_INDEX(pipe),
+			      prec_index + i);
+		ilk_lut_write(crtc_state, PREC_PAL_DATA(pipe),
+			      ilk_lut_10(&lut[i]));
 	}
 
 	/*
 	 * Reset the index, otherwise it prevents the legacy palette to be
 	 * written properly.
 	 */
-	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
-			  PAL_PREC_INDEX_VALUE(0));
+	ilk_lut_write(crtc_state, PREC_PAL_INDEX(pipe),
+		      PAL_PREC_INDEX_VALUE(0));
 }
 
 /* On BDW+ the index auto increment mode actually works */
-static void bdw_load_lut_10(struct intel_crtc *crtc,
+static void bdw_load_lut_10(const struct intel_crtc_state *crtc_state,
 			    const struct drm_property_blob *blob,
 			    u32 prec_index)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct drm_color_lut *lut = blob->data;
 	int i, lut_size = drm_color_lut_size(blob);
 	enum pipe pipe = crtc->pipe;
 
-	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
-			  prec_index);
-	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
-			  PAL_PREC_AUTO_INCREMENT |
-			  prec_index);
+	ilk_lut_write(crtc_state, PREC_PAL_INDEX(pipe),
+		      prec_index);
+	ilk_lut_write(crtc_state, PREC_PAL_INDEX(pipe),
+		      PAL_PREC_AUTO_INCREMENT |
+		      prec_index);
 
 	for (i = 0; i < lut_size; i++)
-		intel_de_write_fw(i915, PREC_PAL_DATA(pipe),
-				  ilk_lut_10(&lut[i]));
+		ilk_lut_write_indexed(crtc_state, PREC_PAL_DATA(pipe),
+				      ilk_lut_10(&lut[i]));
 
 	/*
 	 * Reset the index, otherwise it prevents the legacy palette to be
 	 * written properly.
 	 */
-	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
-			  PAL_PREC_INDEX_VALUE(0));
+	ilk_lut_write(crtc_state, PREC_PAL_INDEX(pipe),
+		      PAL_PREC_INDEX_VALUE(0));
 }
 
 static void ivb_load_lut_ext_max(const struct intel_crtc_state *crtc_state)
@@ -998,24 +997,23 @@ static void glk_load_lut_ext2_max(const struct intel_crtc_state *crtc_state)
 
 static void ivb_load_luts(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
 	const struct drm_property_blob *pre_csc_lut = crtc_state->pre_csc_lut;
 	const struct drm_property_blob *blob = post_csc_lut ?: pre_csc_lut;
 
 	switch (crtc_state->gamma_mode) {
 	case GAMMA_MODE_MODE_8BIT:
-		ilk_load_lut_8(crtc, blob);
+		ilk_load_lut_8(crtc_state, blob);
 		break;
 	case GAMMA_MODE_MODE_SPLIT:
-		ivb_load_lut_10(crtc, pre_csc_lut, PAL_PREC_SPLIT_MODE |
+		ivb_load_lut_10(crtc_state, pre_csc_lut, PAL_PREC_SPLIT_MODE |
 				PAL_PREC_INDEX_VALUE(0));
 		ivb_load_lut_ext_max(crtc_state);
-		ivb_load_lut_10(crtc, post_csc_lut, PAL_PREC_SPLIT_MODE |
+		ivb_load_lut_10(crtc_state, post_csc_lut, PAL_PREC_SPLIT_MODE |
 				PAL_PREC_INDEX_VALUE(512));
 		break;
 	case GAMMA_MODE_MODE_10BIT:
-		ivb_load_lut_10(crtc, blob,
+		ivb_load_lut_10(crtc_state, blob,
 				PAL_PREC_INDEX_VALUE(0));
 		ivb_load_lut_ext_max(crtc_state);
 		break;
@@ -1027,25 +1025,23 @@ static void ivb_load_luts(const struct intel_crtc_state *crtc_state)
 
 static void bdw_load_luts(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
 	const struct drm_property_blob *pre_csc_lut = crtc_state->pre_csc_lut;
 	const struct drm_property_blob *blob = post_csc_lut ?: pre_csc_lut;
 
 	switch (crtc_state->gamma_mode) {
 	case GAMMA_MODE_MODE_8BIT:
-		ilk_load_lut_8(crtc, blob);
+		ilk_load_lut_8(crtc_state, blob);
 		break;
 	case GAMMA_MODE_MODE_SPLIT:
-		bdw_load_lut_10(crtc, pre_csc_lut, PAL_PREC_SPLIT_MODE |
+		bdw_load_lut_10(crtc_state, pre_csc_lut, PAL_PREC_SPLIT_MODE |
 				PAL_PREC_INDEX_VALUE(0));
 		ivb_load_lut_ext_max(crtc_state);
-		bdw_load_lut_10(crtc, post_csc_lut, PAL_PREC_SPLIT_MODE |
+		bdw_load_lut_10(crtc_state, post_csc_lut, PAL_PREC_SPLIT_MODE |
 				PAL_PREC_INDEX_VALUE(512));
 		break;
 	case GAMMA_MODE_MODE_10BIT:
-
-		bdw_load_lut_10(crtc, blob,
+		bdw_load_lut_10(crtc_state, blob,
 				PAL_PREC_INDEX_VALUE(0));
 		ivb_load_lut_ext_max(crtc_state);
 		break;
@@ -1077,11 +1073,11 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state,
 	 * ignore the index bits, so we need to reset it to index 0
 	 * separately.
 	 */
-	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe),
-			  PRE_CSC_GAMC_INDEX_VALUE(0));
-	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe),
-			  PRE_CSC_GAMC_AUTO_INCREMENT |
-			  PRE_CSC_GAMC_INDEX_VALUE(0));
+	ilk_lut_write(crtc_state, PRE_CSC_GAMC_INDEX(pipe),
+		      PRE_CSC_GAMC_INDEX_VALUE(0));
+	ilk_lut_write(crtc_state, PRE_CSC_GAMC_INDEX(pipe),
+		      PRE_CSC_GAMC_AUTO_INCREMENT |
+		      PRE_CSC_GAMC_INDEX_VALUE(0));
 
 	for (i = 0; i < lut_size; i++) {
 		/*
@@ -1097,32 +1093,31 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state,
 		 * ToDo: Extend to max 7.0. Enable 32 bit input value
 		 * as compared to just 16 to achieve this.
 		 */
-		intel_de_write_fw(i915, PRE_CSC_GAMC_DATA(pipe),
-				  lut[i].green);
+		ilk_lut_write_indexed(crtc_state, PRE_CSC_GAMC_DATA(pipe),
+				      lut[i].green);
 	}
 
 	/* Clamp values > 1.0. */
 	while (i++ < glk_degamma_lut_size(i915))
-		intel_de_write_fw(i915, PRE_CSC_GAMC_DATA(pipe), 1 << 16);
+		ilk_lut_write_indexed(crtc_state, PRE_CSC_GAMC_DATA(pipe), 1 << 16);
 
-	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe), 0);
+	ilk_lut_write(crtc_state, PRE_CSC_GAMC_INDEX(pipe), 0);
 }
 
 static void glk_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	const struct drm_property_blob *pre_csc_lut = crtc_state->pre_csc_lut;
 	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	if (pre_csc_lut)
 		glk_load_degamma_lut(crtc_state, pre_csc_lut);
 
 	switch (crtc_state->gamma_mode) {
 	case GAMMA_MODE_MODE_8BIT:
-		ilk_load_lut_8(crtc, post_csc_lut);
+		ilk_load_lut_8(crtc_state, post_csc_lut);
 		break;
 	case GAMMA_MODE_MODE_10BIT:
-		bdw_load_lut_10(crtc, post_csc_lut, PAL_PREC_INDEX_VALUE(0));
+		bdw_load_lut_10(crtc_state, post_csc_lut, PAL_PREC_INDEX_VALUE(0));
 		ivb_load_lut_ext_max(crtc_state);
 		glk_load_lut_ext2_max(crtc_state);
 		break;
@@ -1248,14 +1243,13 @@ static void icl_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	const struct drm_property_blob *pre_csc_lut = crtc_state->pre_csc_lut;
 	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	if (pre_csc_lut)
 		glk_load_degamma_lut(crtc_state, pre_csc_lut);
 
 	switch (crtc_state->gamma_mode & GAMMA_MODE_MODE_MASK) {
 	case GAMMA_MODE_MODE_8BIT:
-		ilk_load_lut_8(crtc, post_csc_lut);
+		ilk_load_lut_8(crtc_state, post_csc_lut);
 		break;
 	case GAMMA_MODE_MODE_12BIT_MULTI_SEG:
 		icl_program_gamma_superfine_segment(crtc_state);
@@ -1264,7 +1258,7 @@ static void icl_load_luts(const struct intel_crtc_state *crtc_state)
 		glk_load_lut_ext2_max(crtc_state);
 		break;
 	case GAMMA_MODE_MODE_10BIT:
-		bdw_load_lut_10(crtc, post_csc_lut, PAL_PREC_INDEX_VALUE(0));
+		bdw_load_lut_10(crtc_state, post_csc_lut, PAL_PREC_INDEX_VALUE(0));
 		ivb_load_lut_ext_max(crtc_state);
 		glk_load_lut_ext2_max(crtc_state);
 		break;
-- 
2.37.4

