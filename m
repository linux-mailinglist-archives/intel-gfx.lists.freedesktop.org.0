Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD68628421
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 16:38:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B972710E2EE;
	Mon, 14 Nov 2022 15:38:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 916FB10E2DE
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 15:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668440305; x=1699976305;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WNENGzuaQDVweaiF/QrKLVjXOkO+YhA6TMCAP67ZPzA=;
 b=AgLun2/YQTMWOr7oW1GXnxQV6VcnQEFApr4tEdYulrtiOTX8m/leKddQ
 DvH3WnT4TyRpe+EhIAp+QcgJu1UAhDFsWfPBqyqE5zn5ABlqQKLR7HFP6
 LyuzWIdRCsFc7iGKseHVAFEtKuaiTHGMXH4v04VG6wkSxSxkPLbz4jZhB
 wSptrYjtIAmqv5FZ+Ez6kYheJ2Y9yvGTGzrg3WWh4pX6SO0WwXSiTXIDF
 kZQSKjSdivE9W8XC2MnNPulPk68bvx5eOaifVjXNyQrdNrMCCsMNAIREZ
 l/O6cFDFHNFDU3AHLgRTkbMGubD6Ykb2Vzp73lqyiSMn39y2Rb9NpQJy8 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="398290887"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="398290887"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 07:38:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="780968792"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="780968792"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 14 Nov 2022 07:38:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Nov 2022 17:38:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 17:37:29 +0200
Message-Id: <20221114153732.11773-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 17/20] drm/i915: Use hw degamma LUT for sw
 gamma on glk with YCbCr output
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

On glk we can no longer reorder the hw LUTS vs. pipe CSC like
we could on eaerlier platforms, and neither do we have a
separate output CSC like on icl+. That means if we use the
pipe CSC for YCbCr output we are currently applying the gamma
LUT after the RGB->YCbCr conversion, which is just wrong.
The further we go from a linear curve the more distorted the
resulting colors become.

To work around this terrible limitation the best we can do is
repurpose the hw degamma LUT as a poor man's gamma LUT. Now
that we have the internal pre_csc_lut attachment point that
is not particularly hard to do.

What makes this less than ideal however is the fact that the
hw degamma LUT and gamma LUTs have very different capabilities.
The gamma LUT can operatie in direct color type modes, whereas
the degamma LUT can't and just always operaters in interpolated
mode. Additionally the degamma LUT is just a single 1D LUT, whereas
the gamma LUT is made of three separate 1D LUts (one for each channel).
So in order to make this semi-sensible we must also verify the
user supplied LUT more less matches the hw degamma LUT capabilities.
We still end up losing most of the LUT entries though, so the results
might be a bit crap.

The other option of flat out rejecting the YCbCr+gamma LUT combo
seems extremely likely to just cause a black screen for the user.
Eg. pretty sure Xorg always applies some kind of gamma LUT, and
if the user then plugs in a display that needs YCbCr output we're
toast.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 61 +++++++++++++++++++---
 1 file changed, 54 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 8bb8983b490c..c336524d9225 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1362,13 +1362,13 @@ static int check_lut_size(const struct drm_property_blob *lut, int expected)
 	return 0;
 }
 
-static int check_luts(const struct intel_crtc_state *crtc_state)
+static int _check_luts(const struct intel_crtc_state *crtc_state,
+		       u32 degamma_tests, u32 gamma_tests)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
 	const struct drm_property_blob *degamma_lut = crtc_state->hw.degamma_lut;
 	int gamma_length, degamma_length;
-	u32 gamma_tests, degamma_tests;
 
 	/* C8 relies on its palette being stored in the legacy LUT */
 	if (crtc_state->c8_planes && !lut_is_legacy(crtc_state->hw.gamma_lut)) {
@@ -1379,8 +1379,6 @@ static int check_luts(const struct intel_crtc_state *crtc_state)
 
 	degamma_length = intel_degamma_lut_size(crtc_state);
 	gamma_length = intel_gamma_lut_size(crtc_state);
-	degamma_tests = intel_degamma_lut_tests(crtc_state);
-	gamma_tests = intel_gamma_lut_tests(crtc_state);
 
 	if (check_lut_size(degamma_lut, degamma_length) ||
 	    check_lut_size(gamma_lut, gamma_length))
@@ -1393,6 +1391,13 @@ static int check_luts(const struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
+static int check_luts(const struct intel_crtc_state *crtc_state)
+{
+	return _check_luts(crtc_state,
+			   intel_degamma_lut_tests(crtc_state),
+			   intel_gamma_lut_tests(crtc_state));
+}
+
 static u32 i9xx_gamma_mode(struct intel_crtc_state *crtc_state)
 {
 	if (!crtc_state->gamma_enable ||
@@ -1414,9 +1419,11 @@ void intel_color_assert_luts(const struct intel_crtc_state *crtc_state)
 			    crtc_state->post_csc_lut != crtc_state->hw.gamma_lut);
 	} else if (DISPLAY_VER(i915) == 10) {
 		drm_WARN_ON(&i915->drm,
+			    crtc_state->post_csc_lut == crtc_state->hw.gamma_lut &&
 			    crtc_state->pre_csc_lut != crtc_state->hw.degamma_lut &&
 			    crtc_state->pre_csc_lut != i915->display.color.glk_linear_degamma_lut);
 		drm_WARN_ON(&i915->drm,
+			    crtc_state->post_csc_lut != NULL &&
 			    crtc_state->post_csc_lut != crtc_state->hw.gamma_lut);
 	} else if (crtc_state->gamma_mode != GAMMA_MODE_MODE_SPLIT) {
 		drm_WARN_ON(&i915->drm,
@@ -1728,10 +1735,33 @@ static u32 glk_gamma_mode(const struct intel_crtc_state *crtc_state)
 		return GAMMA_MODE_MODE_10BIT;
 }
 
-static void glk_assign_luts(struct intel_crtc_state *crtc_state)
+static bool glk_use_pre_csc_lut_for_gamma(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->hw.gamma_lut &&
+		!crtc_state->c8_planes &&
+		crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB;
+}
+
+static int glk_assign_luts(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
+	if (glk_use_pre_csc_lut_for_gamma(crtc_state)) {
+		struct drm_property_blob *gamma_lut;
+
+		gamma_lut = create_resized_lut(i915, crtc_state->hw.gamma_lut,
+					       INTEL_INFO(i915)->display.color.degamma_lut_size);
+		if (IS_ERR(gamma_lut))
+			return PTR_ERR(gamma_lut);
+
+		drm_property_replace_blob(&crtc_state->pre_csc_lut, gamma_lut);
+		drm_property_replace_blob(&crtc_state->post_csc_lut, NULL);
+
+		drm_property_blob_put(gamma_lut);
+
+		return 0;
+	}
+
 	intel_assign_luts(crtc_state);
 
 	/*
@@ -1743,6 +1773,19 @@ static void glk_assign_luts(struct intel_crtc_state *crtc_state)
 	if (crtc_state->csc_enable && !crtc_state->pre_csc_lut)
 		drm_property_replace_blob(&crtc_state->pre_csc_lut,
 					  i915->display.color.glk_linear_degamma_lut);
+
+	return 0;
+}
+
+static int glk_check_luts(const struct intel_crtc_state *crtc_state)
+{
+	u32 degamma_tests = intel_degamma_lut_tests(crtc_state);
+	u32 gamma_tests = intel_gamma_lut_tests(crtc_state);
+
+	if (glk_use_pre_csc_lut_for_gamma(crtc_state))
+		gamma_tests |= degamma_tests;
+
+	return _check_luts(crtc_state, degamma_tests, gamma_tests);
 }
 
 static int glk_color_check(struct intel_crtc_state *crtc_state)
@@ -1750,7 +1793,7 @@ static int glk_color_check(struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	int ret;
 
-	ret = check_luts(crtc_state);
+	ret = glk_check_luts(crtc_state);
 	if (ret)
 		return ret;
 
@@ -1769,11 +1812,13 @@ static int glk_color_check(struct intel_crtc_state *crtc_state)
 	}
 
 	crtc_state->gamma_enable =
+		!glk_use_pre_csc_lut_for_gamma(crtc_state) &&
 		crtc_state->hw.gamma_lut &&
 		!crtc_state->c8_planes;
 
 	/* On GLK+ degamma LUT is controlled by csc_enable */
 	crtc_state->csc_enable =
+		glk_use_pre_csc_lut_for_gamma(crtc_state) ||
 		crtc_state->hw.degamma_lut ||
 		crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB ||
 		crtc_state->hw.ctm || crtc_state->limited_color_range;
@@ -1786,7 +1831,9 @@ static int glk_color_check(struct intel_crtc_state *crtc_state)
 	if (ret)
 		return ret;
 
-	glk_assign_luts(crtc_state);
+	ret = glk_assign_luts(crtc_state);
+	if (ret)
+		return ret;
 
 	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
 
-- 
2.37.4

