Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2765EEEA7
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 09:16:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 582C210E9A4;
	Thu, 29 Sep 2022 07:16:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB3CF10E919
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 07:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664435752; x=1695971752;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LiaI4xTcYctA8gsjRFN73TQ9MvGKmQ+T5gUwdZWNFR8=;
 b=mIIkahi1TQ/cqh7U5L6S4yC6+tAZsdiwJgNiExn2Z526Gb0nZJ2zdbNc
 AsK9oO8pXI2/uBVzsokYCo8TonStP/WUanvGLH9Vz7olHis8yKYqSY/RJ
 IWbM52CQ+wB+TdRE5z1QlB9Cc8l0FAELM9l0k58pBrGWv5pa6uQhA+k/j
 nV8xLIWgkp+A4hN4exo7e3Zn2aaQMoxQ+XvU/mDGgOUQ0jTeLgSmTyBFB
 Djmtxa9hZS/NkqBJZ+lScCqQ2VyazFiNrxzJuCUxQhP4u6uaamHNEtcnP
 K9Iloavb9ceOyfXuMMZiuSDjuE9+o0JHn6C3BjflrXai4gkDJ6bUhAywU w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="288979152"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="288979152"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 00:15:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="655441245"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="655441245"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 29 Sep 2022 00:15:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Sep 2022 10:15:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Sep 2022 10:15:20 +0300
Message-Id: <20220929071521.26612-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
References: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/10] drm/i915: Get rid of
 glk_load_degamma_lut_linear()
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

Since we now have a place (pre_csc_lut) to stuff a purely
internal LUT we can replace glk_load_degamma_lut_linear()
with such a thing and just rely on the normal
glk_load_degamma_lut() to load it as well.

drm_mode_config_cleanup() will clean this up for us.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c    | 110 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_color.h    |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +
 .../gpu/drm/i915/display/intel_display_core.h |   5 +
 4 files changed, 79 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 575d2a23682a..de530bf1aba1 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -557,6 +557,32 @@ static void skl_color_commit_arm(const struct intel_crtc_state *crtc_state)
 			  crtc_state->csc_mode);
 }
 
+static struct drm_property_blob *
+create_linear_lut(struct drm_i915_private *i915, int lut_size)
+{
+	struct drm_property_blob *blob;
+	struct drm_color_lut *lut;
+	int i;
+
+	blob = drm_property_create_blob(&i915->drm,
+					sizeof(struct drm_color_lut) * lut_size,
+					NULL);
+	if (IS_ERR(blob))
+		return NULL;
+
+	lut = blob->data;
+
+	for (i = 0; i < lut_size; i++) {
+		u16 val = 0xffff * i / (lut_size - 1);
+
+		lut[i].red = val;
+		lut[i].green = val;
+		lut[i].blue = val;
+	}
+
+	return blob;
+}
+
 static void i9xx_load_lut_8(struct intel_crtc *crtc,
 			    const struct drm_property_blob *blob)
 {
@@ -871,53 +897,14 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state,
 	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
 }
 
-static void glk_load_degamma_lut_linear(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe;
-	int i, lut_size = INTEL_INFO(dev_priv)->display.color.degamma_lut_size;
-
-	/*
-	 * When setting the auto-increment bit, the hardware seems to
-	 * ignore the index bits, so we need to reset it to index 0
-	 * separately.
-	 */
-	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
-	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe),
-			  PRE_CSC_GAMC_AUTO_INCREMENT);
-
-	for (i = 0; i < lut_size; i++) {
-		u32 v = (i << 16) / (lut_size - 1);
-
-		intel_de_write_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe), v);
-	}
-
-	/* Clamp values > 1.0. */
-	while (i++ < 35)
-		intel_de_write_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe), 1 << 16);
-
-	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
-}
-
 static void glk_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	const struct drm_property_blob *pre_csc_lut = crtc_state->pre_csc_lut;
 	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	/*
-	 * On GLK+ both pipe CSC and degamma LUT are controlled
-	 * by csc_enable. Hence for the cases where the CSC is
-	 * needed but degamma LUT is not we need to load a
-	 * linear degamma LUT. In fact we'll just always load
-	 * the degama LUT so that we don't have to reload
-	 * it every time the pipe CSC is being enabled.
-	 */
 	if (pre_csc_lut)
 		glk_load_degamma_lut(crtc_state, pre_csc_lut);
-	else
-		glk_load_degamma_lut_linear(crtc_state);
 
 	switch (crtc_state->gamma_mode) {
 	case GAMMA_MODE_MODE_8BIT:
@@ -1360,11 +1347,17 @@ void intel_color_assert_luts(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	/* make sure {pre,post}_csc_lut were correctly assigned */
-	if (DISPLAY_VER(i915) >= 10 || HAS_GMCH(i915)) {
+	if (DISPLAY_VER(i915) >= 11 || HAS_GMCH(i915)) {
 		drm_WARN_ON(&i915->drm,
 			    crtc_state->pre_csc_lut != crtc_state->hw.degamma_lut);
 		drm_WARN_ON(&i915->drm,
 			    crtc_state->post_csc_lut != crtc_state->hw.gamma_lut);
+	} else if (DISPLAY_VER(i915) == 10) {
+		drm_WARN_ON(&i915->drm,
+			    crtc_state->pre_csc_lut != crtc_state->hw.degamma_lut &&
+			    crtc_state->pre_csc_lut != i915->display.color.glk_linear_degamma_lut);
+		drm_WARN_ON(&i915->drm,
+			    crtc_state->post_csc_lut != crtc_state->hw.gamma_lut);
 	} else {
 		drm_WARN_ON(&i915->drm,
 			    crtc_state->pre_csc_lut != crtc_state->hw.degamma_lut &&
@@ -1619,6 +1612,25 @@ static u32 glk_gamma_mode(const struct intel_crtc_state *crtc_state)
 		return GAMMA_MODE_MODE_10BIT;
 }
 
+static void glk_assign_luts(struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	intel_assign_luts(crtc_state);
+
+	/*
+	 * On GLK+ both pipe CSC and degamma LUT are controlled
+	 * by csc_enable. Hence for the cases where the CSC is
+	 * needed but degamma LUT is not we need to load a
+	 * linear degamma LUT. In fact we'll just always load
+	 * the degama LUT so that we don't have to reload
+	 * it every time the pipe CSC is being enabled.
+	 */
+	if (!crtc_state->pre_csc_lut)
+		drm_property_replace_blob(&crtc_state->pre_csc_lut,
+					  i915->display.color.glk_linear_degamma_lut);
+}
+
 static int glk_color_check(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
@@ -1653,7 +1665,7 @@ static int glk_color_check(struct intel_crtc_state *crtc_state)
 	if (ret)
 		return ret;
 
-	intel_assign_luts(crtc_state);
+	glk_assign_luts(crtc_state);
 
 	crtc_state->preload_luts = glk_can_preload_luts(crtc_state);
 
@@ -2283,6 +2295,22 @@ void intel_crtc_color_init(struct intel_crtc *crtc)
 				   INTEL_INFO(dev_priv)->display.color.gamma_lut_size);
 }
 
+int intel_color_init(struct drm_i915_private *i915)
+{
+	struct drm_property_blob *blob;
+
+	if (DISPLAY_VER(i915) != 10)
+		return 0;
+
+	blob = create_linear_lut(i915, INTEL_INFO(i915)->display.color.degamma_lut_size);
+	if (IS_ERR(blob))
+		return PTR_ERR(blob);
+
+	i915->display.color.glk_linear_degamma_lut = blob;
+
+	return 0;
+}
+
 void intel_color_init_hooks(struct drm_i915_private *i915)
 {
 	if (HAS_GMCH(i915)) {
diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
index b76f18e6c452..f7b0591abd73 100644
--- a/drivers/gpu/drm/i915/display/intel_color.h
+++ b/drivers/gpu/drm/i915/display/intel_color.h
@@ -14,6 +14,7 @@ struct drm_i915_private;
 struct drm_property_blob;
 
 void intel_color_init_hooks(struct drm_i915_private *i915);
+int intel_color_init(struct drm_i915_private *i915);
 void intel_crtc_color_init(struct intel_crtc *crtc);
 int intel_color_check(struct intel_crtc_state *crtc_state);
 void intel_color_commit_noarm(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 441811ac0ab0..95cbc2e2d3c2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8659,6 +8659,10 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
 	if (ret)
 		goto cleanup_vga_client_pw_domain_dmc;
 
+	ret = intel_color_init(i915);
+	if (ret)
+		goto cleanup_vga_client_pw_domain_dmc;
+
 	ret = intel_dbuf_init(i915);
 	if (ret)
 		goto cleanup_vga_client_pw_domain_dmc;
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 96cf994b0ad1..b4b9c4cef78e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -28,6 +28,7 @@
 
 struct drm_i915_private;
 struct drm_property;
+struct drm_property_blob;
 struct i915_audio_component;
 struct i915_hdcp_comp_master;
 struct intel_atomic_state;
@@ -308,6 +309,10 @@ struct intel_display {
 		unsigned int max_cdclk_freq;
 	} cdclk;
 
+	struct {
+		struct drm_property_blob *glk_linear_degamma_lut;
+	} color;
+
 	struct {
 		/* The current hardware dbuf configuration */
 		u8 enabled_slices;
-- 
2.35.1

