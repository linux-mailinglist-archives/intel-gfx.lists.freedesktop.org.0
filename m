Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C1560DFC6
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 13:39:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD18A10E4D6;
	Wed, 26 Oct 2022 11:39:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C90F10E4C0
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 11:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666784382; x=1698320382;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=FR0MZTUe3ttkJ7oeCTLAME8xMcXntoB8scHb+H/WFeI=;
 b=ZdFrcaCnogiZCBLxtsddR7O7u+yFMLHaCbdZ0+rsJeVpmXh6zUGbpbjc
 jLprcCwxTClFMPRKGsZ7Ykw/BM14GE1jFD0QFdRtMqrIcoWhji4rYBB3b
 8Dhtv8SyrbQhn4++8d/29X5mRv3/EXnusCJ4CJFlAFxsi6hRXT3ZfamCY
 ZoXXJxgkXViS7e0fKblBE+FiVn6wZcmFmfoqgyz1YY+Q/mE3UMUKdtxqd
 ia39EVWOfLMrh4d5pA7F3PEI8olVx+Vp2Wh7zeBYLL0MBGrmn1smMAUjQ
 gZQqVkqDAhtEiMhKV5xDKpDL35irjkDITXjESY2pDm71Up2204DUkTFCW g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="309614302"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="309614302"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 04:39:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="663164648"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="663164648"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 26 Oct 2022 04:39:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 14:39:39 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 14:39:06 +0300
Message-Id: <20221026113906.10551-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/11] drm/i915: Create resized LUTs for ivb+
 split gamma mode
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

Currently when opeating in split gamma mode we do the
"skip ever other sw LUT entry" trick in the low level
LUT programming/readout functions. That is very annoying
and a big hinderance to revamping the color management
uapi.

Let's get rid of that problem by making half sized copies
of the software LUTs and plugging those into the internal
{pre,post}_csc_lut attachment points (instead of the sticking
the uapi provide sw LUTs there directly).

With this the low level stuff will operate purely in terms
the hardware LUT sizes, and all uapi nonsense is contained
to the atomic check phase. The one thing we do lose is
intel_color_assert_luts() since we no longer have a way to
check that the uapi LUTs were correctly used when generating
the internal copies. But that seems like a price worth paying.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 81 +++++++++++++++++-----
 1 file changed, 64 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 33871bfacee7..d48904f90e3a 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -597,6 +597,30 @@ create_linear_lut(struct drm_i915_private *i915, int lut_size)
 	return blob;
 }
 
+static struct drm_property_blob *
+create_resized_lut(struct drm_i915_private *i915,
+		   const struct drm_property_blob *blob_in, int lut_out_size)
+{
+	int i, lut_in_size = drm_color_lut_size(blob_in);
+	struct drm_property_blob *blob_out;
+	const struct drm_color_lut *lut_in;
+	struct drm_color_lut *lut_out;
+
+	blob_out = drm_property_create_blob(&i915->drm,
+					    sizeof(lut_out[0]) * lut_out_size,
+					    NULL);
+	if (IS_ERR(blob_out))
+		return blob_out;
+
+	lut_in = blob_in->data;
+	lut_out = blob_out->data;
+
+	for (i = 0; i < lut_out_size; i++)
+		lut_out[i] = lut_in[i * (lut_in_size - 1) / (lut_out_size - 1)];
+
+	return blob_out;
+}
+
 static void i9xx_load_lut_8(struct intel_crtc *crtc,
 			    const struct drm_property_blob *blob)
 {
@@ -723,19 +747,14 @@ static void ivb_load_lut_10(struct intel_crtc *crtc,
 			    u32 prec_index)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	int hw_lut_size = ivb_lut_10_size(prec_index);
 	const struct drm_color_lut *lut = blob->data;
 	int i, lut_size = drm_color_lut_size(blob);
 	enum pipe pipe = crtc->pipe;
 
-	for (i = 0; i < hw_lut_size; i++) {
-		/* We discard half the user entries in split gamma mode */
-		const struct drm_color_lut *entry =
-			&lut[i * (lut_size - 1) / (hw_lut_size - 1)];
-
+	for (i = 0; i < lut_size; i++) {
 		intel_de_write_fw(i915, PREC_PAL_INDEX(pipe), prec_index++);
 		intel_de_write_fw(i915, PREC_PAL_DATA(pipe),
-				  ilk_lut_10(entry));
+				  ilk_lut_10(&lut[i]));
 	}
 
 	/*
@@ -751,7 +770,6 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
 			    u32 prec_index)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	int hw_lut_size = ivb_lut_10_size(prec_index);
 	const struct drm_color_lut *lut = blob->data;
 	int i, lut_size = drm_color_lut_size(blob);
 	enum pipe pipe = crtc->pipe;
@@ -759,14 +777,9 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
 	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
 			  prec_index | PAL_PREC_AUTO_INCREMENT);
 
-	for (i = 0; i < hw_lut_size; i++) {
-		/* We discard half the user entries in split gamma mode */
-		const struct drm_color_lut *entry =
-			&lut[i * (lut_size - 1) / (hw_lut_size - 1)];
-
+	for (i = 0; i < lut_size; i++)
 		intel_de_write_fw(i915, PREC_PAL_DATA(pipe),
-				  ilk_lut_10(entry));
-	}
+				  ilk_lut_10(&lut[i]));
 
 	/*
 	 * Reset the index, otherwise it prevents the legacy palette to be
@@ -1343,7 +1356,7 @@ void intel_color_assert_luts(const struct intel_crtc_state *crtc_state)
 			    crtc_state->pre_csc_lut != i915->display.color.glk_linear_degamma_lut);
 		drm_WARN_ON(&i915->drm,
 			    crtc_state->post_csc_lut != crtc_state->hw.gamma_lut);
-	} else {
+	} else if (crtc_state->gamma_mode != GAMMA_MODE_MODE_SPLIT) {
 		drm_WARN_ON(&i915->drm,
 			    crtc_state->pre_csc_lut != crtc_state->hw.degamma_lut &&
 			    crtc_state->pre_csc_lut != crtc_state->hw.gamma_lut);
@@ -1564,6 +1577,38 @@ static u32 ivb_csc_mode(const struct intel_crtc_state *crtc_state)
 	return CSC_POSITION_BEFORE_GAMMA;
 }
 
+static int ivb_assign_luts(struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_property_blob *degamma_lut, *gamma_lut;
+
+	if (crtc_state->gamma_mode != GAMMA_MODE_MODE_SPLIT) {
+		ilk_assign_luts(crtc_state);
+		return 0;
+	}
+
+	drm_WARN_ON(&i915->drm, drm_color_lut_size(crtc_state->hw.degamma_lut) != 1024);
+	drm_WARN_ON(&i915->drm, drm_color_lut_size(crtc_state->hw.gamma_lut) != 1024);
+
+	degamma_lut = create_resized_lut(i915, crtc_state->hw.degamma_lut, 512);
+	if (IS_ERR(degamma_lut))
+		return PTR_ERR(degamma_lut);
+
+	gamma_lut = create_resized_lut(i915, crtc_state->hw.gamma_lut, 512);
+	if (IS_ERR(gamma_lut)) {
+		drm_property_blob_put(degamma_lut);
+		return PTR_ERR(gamma_lut);
+	}
+
+	drm_property_replace_blob(&crtc_state->pre_csc_lut, degamma_lut);
+	drm_property_replace_blob(&crtc_state->post_csc_lut, gamma_lut);
+
+	drm_property_blob_put(degamma_lut);
+	drm_property_blob_put(gamma_lut);
+
+	return 0;
+}
+
 static int ivb_color_check(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
@@ -1599,7 +1644,9 @@ static int ivb_color_check(struct intel_crtc_state *crtc_state)
 	if (ret)
 		return ret;
 
-	ilk_assign_luts(crtc_state);
+	ret = ivb_assign_luts(crtc_state);
+	if (ret)
+		return ret;
 
 	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
 
-- 
2.37.4

