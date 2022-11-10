Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CE1623D68
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 09:22:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0667B10E68B;
	Thu, 10 Nov 2022 08:22:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DD7210E683
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 08:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668068550; x=1699604550;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=BMqqcWDi3Slze4Y9i6soxCR2D07X7C3i/IEjBY66vSY=;
 b=QAsveCMNYWEiIhj4IzUBEHr9uMfT58WCeEDtuqgyxQsLHuLiIcBLYBBR
 zQV+51yO6iKv9Mh7dHV4QFqPgYlyIlUoacwgVoISS71TBe951vxwiOu12
 KuktZtLrsfbErFkwAbz5f5DJ8jbQN65Us9h012AaigD70Yj4+xQ8QZWZz
 NdoIdvHD177sZ5P519Zu2MYs0oIIJrjwSK7fjYAhXjsj7AWaTxstQdl2Z
 PpyEKrYoI7Ca5pM+hiGZ2IuW0nJDS749zQcSQ4jj32hsCmoC/Qppe9eFh
 n5xwj2Fi06EYYqKu++QYlAUfkZyfYjL3ZxOkD3+D217oF6ZLXK42XtEuB A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="309965443"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="309965443"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 00:22:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="639531077"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="639531077"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 10 Nov 2022 00:22:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 10:22:27 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 10:21:40 +0200
Message-Id: <20221110082144.19666-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 14/18] drm/i915: Rework legacy LUT handling
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

Currently crtc_state_is_legacy_gamma() has a very specific set
of conditions, not all of which are actually necessary. Also
Also when we detect those conditions check_luts() just skips
all the checks. That will no longer work for glk soon when we'll
start to use the hw degamma LUT in place of the hw gamma LUT
for YCbCr output. So let's rework the logic to only really consider
whether the user provided gamma_lut is one that matches the hw
legacy LUT capabilities or not.

We'll need to reject C8+degamma on ivb+ since the presence of
degamma_lut would either mean we have to really use the LUT
for degamma as opposed to C8 palette, or we have to enable
split gamma mode which also can't work as the C8 palette.

Otherwise this will now cause the legacy LUT to go through the
regular lut checks as well. As a side effect we also start to
allow the use of the legacy LUT with CTM, but that is perfectly
fine as far a the hardware is concerned.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 82 +++++++++++++++-------
 1 file changed, 55 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 523080bdcbc1..f970bd00356c 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -153,15 +153,7 @@ static const u16 ilk_csc_postoff_rgb_to_ycbcr[3] = {
 
 static bool lut_is_legacy(const struct drm_property_blob *lut)
 {
-	return drm_color_lut_size(lut) == LEGACY_LUT_LENGTH;
-}
-
-static bool crtc_state_is_legacy_gamma(const struct intel_crtc_state *crtc_state)
-{
-	return !crtc_state->hw.degamma_lut &&
-		!crtc_state->hw.ctm &&
-		crtc_state->hw.gamma_lut &&
-		lut_is_legacy(crtc_state->hw.gamma_lut);
+	return lut && drm_color_lut_size(lut) == LEGACY_LUT_LENGTH;
 }
 
 /*
@@ -1309,6 +1301,42 @@ intel_color_add_affected_planes(struct intel_crtc_state *new_crtc_state)
 	return 0;
 }
 
+static u32 intel_gamma_lut_tests(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
+
+	if (lut_is_legacy(gamma_lut))
+		return 0;
+
+	return INTEL_INFO(i915)->display.color.gamma_lut_tests;
+}
+
+static u32 intel_degamma_lut_tests(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	return INTEL_INFO(i915)->display.color.degamma_lut_tests;
+}
+
+static int intel_gamma_lut_size(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
+
+	if (lut_is_legacy(gamma_lut))
+		return LEGACY_LUT_LENGTH;
+
+	return INTEL_INFO(i915)->display.color.gamma_lut_size;
+}
+
+static u32 intel_degamma_lut_size(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	return INTEL_INFO(i915)->display.color.degamma_lut_size;
+}
+
 static int check_lut_size(const struct drm_property_blob *lut, int expected)
 {
 	int len;
@@ -1334,21 +1362,17 @@ static int check_luts(const struct intel_crtc_state *crtc_state)
 	int gamma_length, degamma_length;
 	u32 gamma_tests, degamma_tests;
 
-	/* Always allow legacy gamma LUT with no further checking. */
-	if (crtc_state_is_legacy_gamma(crtc_state))
-		return 0;
-
 	/* C8 relies on its palette being stored in the legacy LUT */
-	if (crtc_state->c8_planes) {
+	if (crtc_state->c8_planes && !lut_is_legacy(crtc_state->hw.gamma_lut)) {
 		drm_dbg_kms(&i915->drm,
 			    "C8 pixelformat requires the legacy LUT\n");
 		return -EINVAL;
 	}
 
-	degamma_length = INTEL_INFO(i915)->display.color.degamma_lut_size;
-	gamma_length = INTEL_INFO(i915)->display.color.gamma_lut_size;
-	degamma_tests = INTEL_INFO(i915)->display.color.degamma_lut_tests;
-	gamma_tests = INTEL_INFO(i915)->display.color.gamma_lut_tests;
+	degamma_length = intel_degamma_lut_size(crtc_state);
+	gamma_length = intel_gamma_lut_size(crtc_state);
+	degamma_tests = intel_degamma_lut_tests(crtc_state);
+	gamma_tests = intel_gamma_lut_tests(crtc_state);
 
 	if (check_lut_size(degamma_lut, degamma_length) ||
 	    check_lut_size(gamma_lut, gamma_length))
@@ -1364,7 +1388,7 @@ static int check_luts(const struct intel_crtc_state *crtc_state)
 static u32 i9xx_gamma_mode(struct intel_crtc_state *crtc_state)
 {
 	if (!crtc_state->gamma_enable ||
-	    crtc_state_is_legacy_gamma(crtc_state))
+	    lut_is_legacy(crtc_state->hw.gamma_lut))
 		return GAMMA_MODE_MODE_8BIT;
 	else
 		return GAMMA_MODE_MODE_10BIT; /* i965+ only */
@@ -1433,14 +1457,12 @@ static u32 chv_cgm_mode(const struct intel_crtc_state *crtc_state)
 {
 	u32 cgm_mode = 0;
 
-	if (crtc_state_is_legacy_gamma(crtc_state))
-		return 0;
-
 	if (crtc_state->hw.degamma_lut)
 		cgm_mode |= CGM_PIPE_MODE_DEGAMMA;
 	if (crtc_state->hw.ctm)
 		cgm_mode |= CGM_PIPE_MODE_CSC;
-	if (crtc_state->hw.gamma_lut)
+	if (crtc_state->hw.gamma_lut &&
+	    !lut_is_legacy(crtc_state->hw.gamma_lut))
 		cgm_mode |= CGM_PIPE_MODE_GAMMA;
 
 	return cgm_mode;
@@ -1467,7 +1489,7 @@ static int chv_color_check(struct intel_crtc_state *crtc_state)
 	 * Otherwise we bypass it and use the CGM gamma instead.
 	 */
 	crtc_state->gamma_enable =
-		crtc_state_is_legacy_gamma(crtc_state) &&
+		lut_is_legacy(crtc_state->hw.gamma_lut) &&
 		!crtc_state->c8_planes;
 
 	crtc_state->gamma_mode = GAMMA_MODE_MODE_8BIT;
@@ -1502,7 +1524,7 @@ static bool ilk_csc_enable(const struct intel_crtc_state *crtc_state)
 static u32 ilk_gamma_mode(const struct intel_crtc_state *crtc_state)
 {
 	if (!crtc_state->gamma_enable ||
-	    crtc_state_is_legacy_gamma(crtc_state))
+	    lut_is_legacy(crtc_state->hw.gamma_lut))
 		return GAMMA_MODE_MODE_8BIT;
 	else
 		return GAMMA_MODE_MODE_10BIT;
@@ -1648,6 +1670,12 @@ static int ivb_color_check(struct intel_crtc_state *crtc_state)
 	if (ret)
 		return ret;
 
+	if (crtc_state->c8_planes && crtc_state->hw.degamma_lut) {
+		drm_dbg_kms(&i915->drm,
+			    "C8 pixelformat and degamma together are not possible\n");
+		return -EINVAL;
+	}
+
 	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
 	    crtc_state->hw.ctm) {
 		drm_dbg_kms(&i915->drm,
@@ -1686,7 +1714,7 @@ static int ivb_color_check(struct intel_crtc_state *crtc_state)
 static u32 glk_gamma_mode(const struct intel_crtc_state *crtc_state)
 {
 	if (!crtc_state->gamma_enable ||
-	    crtc_state_is_legacy_gamma(crtc_state))
+	    lut_is_legacy(crtc_state->hw.gamma_lut))
 		return GAMMA_MODE_MODE_8BIT;
 	else
 		return GAMMA_MODE_MODE_10BIT;
@@ -1771,7 +1799,7 @@ static u32 icl_gamma_mode(const struct intel_crtc_state *crtc_state)
 		gamma_mode |= POST_CSC_GAMMA_ENABLE;
 
 	if (!crtc_state->hw.gamma_lut ||
-	    crtc_state_is_legacy_gamma(crtc_state))
+	    lut_is_legacy(crtc_state->hw.gamma_lut))
 		gamma_mode |= GAMMA_MODE_MODE_8BIT;
 	/*
 	 * Enable 10bit gamma for D13
-- 
2.37.4

