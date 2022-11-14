Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D101628432
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 16:39:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F44F10E2F7;
	Mon, 14 Nov 2022 15:39:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6329410E2EC
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 15:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668440308; x=1699976308;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZlTSvQ2THObj3IAwR3weMrv/C0DfEr7gehGPamrcqLU=;
 b=MN3vadWzI9tc0p85eF9h548ZNtvEjbrLL1Z/5yxqR1l64hOwjoJYV0H/
 SR6mbEBFfdurMylEdG1XjfE3aHJW8a6MIj9kgLyv/bOGslq+HDOseQ1c5
 iKvrLdVjU0si61c6TSDBawCq2Uv5GWFM1/nNxrH3+YxyKnj2JX6scam6l
 wphwGnrKSgaoB/s/WkqIoES03MOt8iC1k2Hw58UVPVXYIP3Y1OI1Jc6Ui
 qVIithZdc0nNTeAXVXL7q97amw5V/s0nG1FiTGbFLKqP8dwUHJyaJ745N
 NdkCRS7KJyg1AB9zJy2GeGlC6IQGP5gPp0I0pG/JfhBGHxgnRxbnvyAnZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="398290894"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="398290894"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 07:38:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="780968829"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="780968829"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 14 Nov 2022 07:38:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Nov 2022 17:38:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 17:37:30 +0200
Message-Id: <20221114153732.11773-19-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 18/20] drm/i915: Use gamma LUT for RGB
 limited range compression
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

On ilk+ and glk class hardware we current make a mess of
things when we have to both generate limited range output
and use the hw gamma LUT. Since we do the range compression
using the pipe CSC unit (which is situated before the gamma
LUT in the pipe) we are in fact applying the gamma to the
limited range data instead of the full range data as the
user intended.

We can work around this by applying the range compression
via the gamma LUT instead of using the pipe CSC for it.
Fairly easy to do now that we have the internal post_csc_lut
attachment point where we can stick our new cooked LUT.

On ilk+ this only needs to be dome when using the split
gamma mode or when the ctm is enabled since otherwise we can
simply reorder the LUT vs. CSC. On glk we need to do this any
time a gamma LUT is used since no reordering is possible.
We do lose a bit of coverage in intel_color_assert_luts(),
but so be it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 133 +++++++++++++++++----
 1 file changed, 111 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index c336524d9225..dee0382015a5 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -249,17 +249,44 @@ static void icl_update_output_csc(struct intel_crtc *crtc,
 	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_LO(pipe), postoff[2]);
 }
 
+static bool ilk_limited_range(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	/* icl+ have dedicated output CSC */
+	if (DISPLAY_VER(i915) >= 11)
+		return false;
+
+	/* pre-hsw have PIPECONF_COLOR_RANGE_SELECT */
+	if (DISPLAY_VER(i915) < 7 || IS_IVYBRIDGE(i915))
+		return false;
+
+	return crtc_state->limited_color_range;
+}
+
+static bool ilk_lut_limited_range(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	if (!ilk_limited_range(crtc_state))
+		return false;
+
+	if (crtc_state->c8_planes)
+		return false;
+
+	if (DISPLAY_VER(i915) == 10)
+		return crtc_state->hw.gamma_lut;
+	else
+		return crtc_state->hw.gamma_lut &&
+			(crtc_state->hw.degamma_lut || crtc_state->hw.ctm);
+}
+
 static bool ilk_csc_limited_range(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	if (!ilk_limited_range(crtc_state))
+		return false;
 
-	/*
-	 * FIXME if there's a gamma LUT after the CSC, we should
-	 * do the range compression using the gamma LUT instead.
-	 */
-	return crtc_state->limited_color_range &&
-		(IS_HASWELL(i915) || IS_BROADWELL(i915) ||
-		 IS_DISPLAY_VER(i915, 9, 10));
+	return !ilk_lut_limited_range(crtc_state);
 }
 
 static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
@@ -603,9 +630,18 @@ create_linear_lut(struct drm_i915_private *i915, int lut_size)
 	return blob;
 }
 
+static u16 lut_limited_range(unsigned int value)
+{
+	unsigned int min = 16 << 8;
+	unsigned int max = 235 << 8;
+
+	return value * (max - min) / 0xffff + min;
+}
+
 static struct drm_property_blob *
 create_resized_lut(struct drm_i915_private *i915,
-		   const struct drm_property_blob *blob_in, int lut_out_size)
+		   const struct drm_property_blob *blob_in, int lut_out_size,
+		   bool limited_color_range)
 {
 	int i, lut_in_size = drm_color_lut_size(blob_in);
 	struct drm_property_blob *blob_out;
@@ -621,8 +657,18 @@ create_resized_lut(struct drm_i915_private *i915,
 	lut_in = blob_in->data;
 	lut_out = blob_out->data;
 
-	for (i = 0; i < lut_out_size; i++)
-		lut_out[i] = lut_in[i * (lut_in_size - 1) / (lut_out_size - 1)];
+	for (i = 0; i < lut_out_size; i++) {
+		const struct drm_color_lut *entry =
+			&lut_in[i * (lut_in_size - 1) / (lut_out_size - 1)];
+
+		if (limited_color_range) {
+			lut_out[i].red = lut_limited_range(entry->red);
+			lut_out[i].green = lut_limited_range(entry->green);
+			lut_out[i].blue = lut_limited_range(entry->blue);
+		} else {
+			lut_out[i] = *entry;
+		}
+	}
 
 	return blob_out;
 }
@@ -1423,6 +1469,7 @@ void intel_color_assert_luts(const struct intel_crtc_state *crtc_state)
 			    crtc_state->pre_csc_lut != crtc_state->hw.degamma_lut &&
 			    crtc_state->pre_csc_lut != i915->display.color.glk_linear_degamma_lut);
 		drm_WARN_ON(&i915->drm,
+			    !ilk_lut_limited_range(crtc_state) &&
 			    crtc_state->post_csc_lut != NULL &&
 			    crtc_state->post_csc_lut != crtc_state->hw.gamma_lut);
 	} else if (crtc_state->gamma_mode != GAMMA_MODE_MODE_SPLIT) {
@@ -1430,6 +1477,7 @@ void intel_color_assert_luts(const struct intel_crtc_state *crtc_state)
 			    crtc_state->pre_csc_lut != crtc_state->hw.degamma_lut &&
 			    crtc_state->pre_csc_lut != crtc_state->hw.gamma_lut);
 		drm_WARN_ON(&i915->drm,
+			    !ilk_lut_limited_range(crtc_state) &&
 			    crtc_state->post_csc_lut != crtc_state->hw.degamma_lut &&
 			    crtc_state->post_csc_lut != crtc_state->hw.gamma_lut);
 	}
@@ -1563,8 +1611,28 @@ static u32 ilk_csc_mode(const struct intel_crtc_state *crtc_state)
 		CSC_POSITION_BEFORE_GAMMA;
 }
 
-static void ilk_assign_luts(struct intel_crtc_state *crtc_state)
+static int ilk_assign_luts(struct intel_crtc_state *crtc_state)
 {
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	if (ilk_lut_limited_range(crtc_state)) {
+		struct drm_property_blob *gamma_lut;
+
+		gamma_lut = create_resized_lut(i915, crtc_state->hw.gamma_lut,
+					       drm_color_lut_size(crtc_state->hw.gamma_lut),
+					       true);
+		if (IS_ERR(gamma_lut))
+			return PTR_ERR(gamma_lut);
+
+		drm_property_replace_blob(&crtc_state->post_csc_lut, gamma_lut);
+
+		drm_property_blob_put(gamma_lut);
+
+		drm_property_replace_blob(&crtc_state->pre_csc_lut, crtc_state->hw.degamma_lut);
+
+		return 0;
+	}
+
 	if (crtc_state->hw.degamma_lut ||
 	    crtc_state->csc_mode & CSC_POSITION_BEFORE_GAMMA) {
 		drm_property_replace_blob(&crtc_state->pre_csc_lut,
@@ -1577,6 +1645,8 @@ static void ilk_assign_luts(struct intel_crtc_state *crtc_state)
 		drm_property_replace_blob(&crtc_state->post_csc_lut,
 					  NULL);
 	}
+
+	return 0;
 }
 
 static int ilk_color_check(struct intel_crtc_state *crtc_state)
@@ -1613,7 +1683,9 @@ static int ilk_color_check(struct intel_crtc_state *crtc_state)
 	if (ret)
 		return ret;
 
-	ilk_assign_luts(crtc_state);
+	ret = ilk_assign_luts(crtc_state);
+	if (ret)
+		return ret;
 
 	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
 
@@ -1649,19 +1721,19 @@ static int ivb_assign_luts(struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	struct drm_property_blob *degamma_lut, *gamma_lut;
 
-	if (crtc_state->gamma_mode != GAMMA_MODE_MODE_SPLIT) {
-		ilk_assign_luts(crtc_state);
-		return 0;
-	}
+	if (crtc_state->gamma_mode != GAMMA_MODE_MODE_SPLIT)
+		return ilk_assign_luts(crtc_state);
 
 	drm_WARN_ON(&i915->drm, drm_color_lut_size(crtc_state->hw.degamma_lut) != 1024);
 	drm_WARN_ON(&i915->drm, drm_color_lut_size(crtc_state->hw.gamma_lut) != 1024);
 
-	degamma_lut = create_resized_lut(i915, crtc_state->hw.degamma_lut, 512);
+	degamma_lut = create_resized_lut(i915, crtc_state->hw.degamma_lut, 512,
+					 false);
 	if (IS_ERR(degamma_lut))
 		return PTR_ERR(degamma_lut);
 
-	gamma_lut = create_resized_lut(i915, crtc_state->hw.gamma_lut, 512);
+	gamma_lut = create_resized_lut(i915, crtc_state->hw.gamma_lut, 512,
+				       ilk_lut_limited_range(crtc_state));
 	if (IS_ERR(gamma_lut)) {
 		drm_property_blob_put(degamma_lut);
 		return PTR_ERR(gamma_lut);
@@ -1750,7 +1822,8 @@ static int glk_assign_luts(struct intel_crtc_state *crtc_state)
 		struct drm_property_blob *gamma_lut;
 
 		gamma_lut = create_resized_lut(i915, crtc_state->hw.gamma_lut,
-					       INTEL_INFO(i915)->display.color.degamma_lut_size);
+					       INTEL_INFO(i915)->display.color.degamma_lut_size,
+					       false);
 		if (IS_ERR(gamma_lut))
 			return PTR_ERR(gamma_lut);
 
@@ -1762,7 +1835,23 @@ static int glk_assign_luts(struct intel_crtc_state *crtc_state)
 		return 0;
 	}
 
-	intel_assign_luts(crtc_state);
+	if (ilk_lut_limited_range(crtc_state)) {
+		struct drm_property_blob *gamma_lut;
+
+		gamma_lut = create_resized_lut(i915, crtc_state->hw.gamma_lut,
+					       drm_color_lut_size(crtc_state->hw.gamma_lut),
+					       true);
+		if (IS_ERR(gamma_lut))
+			return PTR_ERR(gamma_lut);
+
+		drm_property_replace_blob(&crtc_state->post_csc_lut, gamma_lut);
+
+		drm_property_blob_put(gamma_lut);
+	} else {
+		drm_property_replace_blob(&crtc_state->post_csc_lut, crtc_state->hw.gamma_lut);
+	}
+
+	drm_property_replace_blob(&crtc_state->pre_csc_lut, crtc_state->hw.degamma_lut);
 
 	/*
 	 * On GLK+ both pipe CSC and degamma LUT are controlled
@@ -1821,7 +1910,7 @@ static int glk_color_check(struct intel_crtc_state *crtc_state)
 		glk_use_pre_csc_lut_for_gamma(crtc_state) ||
 		crtc_state->hw.degamma_lut ||
 		crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB ||
-		crtc_state->hw.ctm || crtc_state->limited_color_range;
+		crtc_state->hw.ctm || ilk_csc_limited_range(crtc_state);
 
 	crtc_state->gamma_mode = glk_gamma_mode(crtc_state);
 
-- 
2.37.4

