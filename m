Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 579189AECB0
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 18:54:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 534FE10E395;
	Thu, 24 Oct 2024 16:54:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="avTUYC6l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9597610E395
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 16:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729788842; x=1761324842;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YSehdkjACe0JyQBxcIP4JX3hNg4Sujh/HMu5YRJNOxM=;
 b=avTUYC6l57VzWpfj8zK+gSaXGl73k3kGpBtYTuq3z4K2nfTljc0nJxDD
 xAg2qVhZs42QjydAr8nbBZBhGQRrbQWXDnPtwYHwVHLfwikbrwT0oBZO9
 0f+gFJBeLLwhIW3f+aB0YCVWEYqHntJzple6+aEw/xfEtOSd1B4Z3Z3DI
 I0qxZB9FJmZoV2YMOxBGOhZBrCACTMQ8RrcosVz5FPAYeaK7ZsrO0i+4O
 oCH5TP9k3HClowysNXze+zz7sONRZzaf0uISOODdyySTqpYppiecLeX3p
 HB8FrfoBgN/UnChY5K9KNRBj8LmQCiUp1cfUB1U9nID3d8dP7uEsxjSK7 w==;
X-CSE-ConnectionGUID: awVN7MjlTlqHzaCbYedvgg==
X-CSE-MsgGUID: FTUa5PNfR9Kv5XZ369x7Sg==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="40047952"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="40047952"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 09:54:02 -0700
X-CSE-ConnectionGUID: gXOlOXxzT6+Ae6qJR7YKXA==
X-CSE-MsgGUID: nuUtqT4CQYCmdDdDScALoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="80757441"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Oct 2024 09:54:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Oct 2024 19:53:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/4] drm/i915/color: Pimp debugs
Date: Thu, 24 Oct 2024 19:53:53 +0300
Message-ID: <20241024165356.17756-2-ville.syrjala@linux.intel.com>
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

Include the CRTC id+name information in the color management
debug prints to help identify who is at fault. And also specify
which LUT check_lut_size() is unhappy about.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 48 ++++++++++++++--------
 1 file changed, 31 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index caf1af039960..4733fcf98158 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2172,9 +2172,10 @@ static u32 intel_degamma_lut_size(const struct intel_crtc_state *crtc_state)
 	return DISPLAY_INFO(i915)->color.degamma_lut_size;
 }
 
-static int check_lut_size(struct drm_i915_private *i915,
+static int check_lut_size(struct intel_crtc *crtc, const char *lut_name,
 			  const struct drm_property_blob *lut, int expected)
 {
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	int len;
 
 	if (!lut)
@@ -2182,8 +2183,9 @@ static int check_lut_size(struct drm_i915_private *i915,
 
 	len = drm_color_lut_size(lut);
 	if (len != expected) {
-		drm_dbg_kms(&i915->drm, "Invalid LUT size; got %d, expected %d\n",
-			    len, expected);
+		drm_dbg_kms(&i915->drm,
+			    "[CRTC:%d:%s] Invalid %s LUT size; got %d, expected %d\n",
+			    crtc->base.base.id, crtc->base.name, lut_name, len, expected);
 		return -EINVAL;
 	}
 
@@ -2193,7 +2195,8 @@ static int check_lut_size(struct drm_i915_private *i915,
 static int _check_luts(const struct intel_crtc_state *crtc_state,
 		       u32 degamma_tests, u32 gamma_tests)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
 	const struct drm_property_blob *degamma_lut = crtc_state->hw.degamma_lut;
 	int gamma_length, degamma_length;
@@ -2201,15 +2204,16 @@ static int _check_luts(const struct intel_crtc_state *crtc_state,
 	/* C8 relies on its palette being stored in the legacy LUT */
 	if (crtc_state->c8_planes && !lut_is_legacy(crtc_state->hw.gamma_lut)) {
 		drm_dbg_kms(&i915->drm,
-			    "C8 pixelformat requires the legacy LUT\n");
+			    "[CRTC:%d:%s] C8 pixelformat requires the legacy LUT\n",
+			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
 	}
 
 	degamma_length = intel_degamma_lut_size(crtc_state);
 	gamma_length = intel_gamma_lut_size(crtc_state);
 
-	if (check_lut_size(i915, degamma_lut, degamma_length) ||
-	    check_lut_size(i915, gamma_lut, gamma_length))
+	if (check_lut_size(crtc, "degamma", degamma_lut, degamma_length) ||
+	    check_lut_size(crtc, "gamma", gamma_lut, gamma_length))
 		return -EINVAL;
 
 	if (drm_color_lut_check(degamma_lut, degamma_tests) ||
@@ -2241,9 +2245,10 @@ static int i9xx_lut_10_diff(u16 a, u16 b)
 		drm_color_lut_extract(b, 10);
 }
 
-static int i9xx_check_lut_10(struct drm_i915_private *dev_priv,
+static int i9xx_check_lut_10(struct intel_crtc *crtc,
 			     const struct drm_property_blob *blob)
 {
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct drm_color_lut *lut = blob->data;
 	int lut_size = drm_color_lut_size(blob);
 	const struct drm_color_lut *a = &lut[lut_size - 2];
@@ -2252,7 +2257,9 @@ static int i9xx_check_lut_10(struct drm_i915_private *dev_priv,
 	if (i9xx_lut_10_diff(b->red, a->red) > 0x7f ||
 	    i9xx_lut_10_diff(b->green, a->green) > 0x7f ||
 	    i9xx_lut_10_diff(b->blue, a->blue) > 0x7f) {
-		drm_dbg_kms(&dev_priv->drm, "Last gamma LUT entry exceeds max slope\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "[CRTC:%d:%s] Last gamma LUT entry exceeds max slope\n",
+			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
 	}
 
@@ -2317,7 +2324,7 @@ static int i9xx_color_check(struct intel_atomic_state *state,
 
 	if (DISPLAY_VER(i915) < 4 &&
 	    crtc_state->gamma_mode == GAMMA_MODE_MODE_10BIT) {
-		ret = i9xx_check_lut_10(i915, crtc_state->hw.gamma_lut);
+		ret = i9xx_check_lut_10(crtc, crtc_state->hw.gamma_lut);
 		if (ret)
 			return ret;
 	}
@@ -2534,14 +2541,16 @@ static int ilk_color_check(struct intel_atomic_state *state,
 
 	if (crtc_state->hw.degamma_lut && crtc_state->hw.gamma_lut) {
 		drm_dbg_kms(&i915->drm,
-			    "Degamma and gamma together are not possible\n");
+			    "[CRTC:%d:%s] Degamma and gamma together are not possible\n",
+			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
 	}
 
 	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
 	    crtc_state->hw.ctm) {
 		drm_dbg_kms(&i915->drm,
-			    "YCbCr and CTM together are not possible\n");
+			    "[CRTC:%d:%s] YCbCr and CTM together are not possible\n",
+			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
 	}
 
@@ -2638,21 +2647,24 @@ static int ivb_color_check(struct intel_atomic_state *state,
 
 	if (crtc_state->c8_planes && crtc_state->hw.degamma_lut) {
 		drm_dbg_kms(&i915->drm,
-			    "C8 pixelformat and degamma together are not possible\n");
+			    "[CRTC:%d:%s] C8 pixelformat and degamma together are not possible\n",
+			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
 	}
 
 	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
 	    crtc_state->hw.ctm) {
 		drm_dbg_kms(&i915->drm,
-			    "YCbCr and CTM together are not possible\n");
+			    "[CRTC:%d:%s] YCbCr and CTM together are not possible\n",
+			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
 	}
 
 	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
 	    crtc_state->hw.degamma_lut && crtc_state->hw.gamma_lut) {
 		drm_dbg_kms(&i915->drm,
-			    "YCbCr and degamma+gamma together are not possible\n");
+			    "[CRTC:%d:%s] YCbCr and degamma+gamma together are not possible\n",
+			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
 	}
 
@@ -2773,14 +2785,16 @@ static int glk_color_check(struct intel_atomic_state *state,
 	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
 	    crtc_state->hw.ctm) {
 		drm_dbg_kms(&i915->drm,
-			    "YCbCr and CTM together are not possible\n");
+			    "[CRTC:%d:%s] YCbCr and CTM together are not possible\n",
+			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
 	}
 
 	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
 	    crtc_state->hw.degamma_lut && crtc_state->hw.gamma_lut) {
 		drm_dbg_kms(&i915->drm,
-			    "YCbCr and degamma+gamma together are not possible\n");
+			    "[CRTC:%d:%s] YCbCr and degamma+gamma together are not possible\n",
+			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
 	}
 
-- 
2.45.2

