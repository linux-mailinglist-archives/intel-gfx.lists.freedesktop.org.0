Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0954557C8A
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 15:09:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E528210EFFF;
	Thu, 23 Jun 2022 13:09:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2807A10EFFF
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 13:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655989771; x=1687525771;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=eRV1EVAS4U+KBsTi8kntaVBLu11La4+sO2L9038XKdM=;
 b=YmUvJlHRg5CPs2Sbo/DeX+zXJmk7IJNGRskVld6abX5V6P340AL0u785
 1Lx3veIATs/NOVRoHiK8tmSxsziQUreiB5TMYl4BTuhmIfGG4/D7C9mzZ
 TI6Iwn0qsqZcOHvJUaFE7NB/Y2dbhuIo2u5/55QSofI76sZzwlQprf1yk
 x+mrOt57v5eGOOBQqPFpBPo45BAHXIx3l7i+FMYMd7qyoyeIWoMXbyuJ/
 v/Cz4jBtHmRie0pGGnizdh2KI9vLgintNtxD++eygoMVpYUrjKZPETOO5
 tKgAud4A26E/qK/Z8EOCuVDFSNyF1ZqScdv2mM3eUBRQCweqstcvarAaE Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="281443646"
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="281443646"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 06:09:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="691015807"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga002.fm.intel.com with SMTP; 23 Jun 2022 06:09:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Jun 2022 16:09:27 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jun 2022 16:09:00 +0300
Message-Id: <20220623130900.26078-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220623130900.26078-1-ville.syrjala@linux.intel.com>
References: <20220623130900.26078-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 9/9] drm/i915: Move the color stuff under
 INTEL_INFO->display
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

The LUTs are a display feature so move the details into
the display portion of the device info.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 28 ++++++++--------
 drivers/gpu/drm/i915/i915_pci.c            | 38 ++++++++++++----------
 drivers/gpu/drm/i915/intel_device_info.h   | 15 ++++-----
 3 files changed, 42 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index a27ce874a9e8..194b0a9f2efe 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -852,7 +852,7 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
-	int i, lut_size = INTEL_INFO(dev_priv)->color.degamma_lut_size;
+	int i, lut_size = INTEL_INFO(dev_priv)->display.color.degamma_lut_size;
 	const struct drm_color_lut *lut = crtc_state->hw.degamma_lut->data;
 
 	/*
@@ -894,7 +894,7 @@ static void glk_load_degamma_lut_linear(const struct intel_crtc_state *crtc_stat
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
-	int i, lut_size = INTEL_INFO(dev_priv)->color.degamma_lut_size;
+	int i, lut_size = INTEL_INFO(dev_priv)->display.color.degamma_lut_size;
 
 	/*
 	 * When setting the auto-increment bit, the hardware seems to
@@ -1346,10 +1346,10 @@ static int check_luts(const struct intel_crtc_state *crtc_state)
 		return -EINVAL;
 	}
 
-	degamma_length = INTEL_INFO(dev_priv)->color.degamma_lut_size;
-	gamma_length = INTEL_INFO(dev_priv)->color.gamma_lut_size;
-	degamma_tests = INTEL_INFO(dev_priv)->color.degamma_lut_tests;
-	gamma_tests = INTEL_INFO(dev_priv)->color.gamma_lut_tests;
+	degamma_length = INTEL_INFO(dev_priv)->display.color.degamma_lut_size;
+	gamma_length = INTEL_INFO(dev_priv)->display.color.gamma_lut_size;
+	degamma_tests = INTEL_INFO(dev_priv)->display.color.degamma_lut_tests;
+	gamma_tests = INTEL_INFO(dev_priv)->display.color.gamma_lut_tests;
 
 	if (check_lut_size(degamma_lut, degamma_length) ||
 	    check_lut_size(gamma_lut, gamma_length))
@@ -1885,7 +1885,7 @@ static void i9xx_read_luts(struct intel_crtc_state *crtc_state)
 static struct drm_property_blob *i965_read_lut_10p6(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	int i, lut_size = INTEL_INFO(dev_priv)->color.gamma_lut_size;
+	int i, lut_size = INTEL_INFO(dev_priv)->display.color.gamma_lut_size;
 	enum pipe pipe = crtc->pipe;
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
@@ -1928,7 +1928,7 @@ static void i965_read_luts(struct intel_crtc_state *crtc_state)
 static struct drm_property_blob *chv_read_cgm_gamma(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	int i, lut_size = INTEL_INFO(dev_priv)->color.gamma_lut_size;
+	int i, lut_size = INTEL_INFO(dev_priv)->display.color.gamma_lut_size;
 	enum pipe pipe = crtc->pipe;
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
@@ -1989,7 +1989,7 @@ static struct drm_property_blob *ilk_read_lut_8(struct intel_crtc *crtc)
 static struct drm_property_blob *ilk_read_lut_10(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	int i, lut_size = INTEL_INFO(dev_priv)->color.gamma_lut_size;
+	int i, lut_size = INTEL_INFO(dev_priv)->display.color.gamma_lut_size;
 	enum pipe pipe = crtc->pipe;
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
@@ -2040,7 +2040,7 @@ static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	int i, hw_lut_size = ivb_lut_10_size(prec_index);
-	int lut_size = INTEL_INFO(dev_priv)->color.gamma_lut_size;
+	int lut_size = INTEL_INFO(dev_priv)->display.color.gamma_lut_size;
 	enum pipe pipe = crtc->pipe;
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
@@ -2093,7 +2093,7 @@ static struct drm_property_blob *
 icl_read_lut_multi_segment(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	int i, lut_size = INTEL_INFO(dev_priv)->color.gamma_lut_size;
+	int i, lut_size = INTEL_INFO(dev_priv)->display.color.gamma_lut_size;
 	enum pipe pipe = crtc->pipe;
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
@@ -2230,7 +2230,7 @@ static const struct intel_color_funcs ilk_color_funcs = {
 void intel_color_init(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	bool has_ctm = INTEL_INFO(dev_priv)->color.degamma_lut_size != 0;
+	bool has_ctm = INTEL_INFO(dev_priv)->display.color.degamma_lut_size != 0;
 
 	drm_mode_crtc_set_gamma_size(&crtc->base, 256);
 
@@ -2261,7 +2261,7 @@ void intel_color_init(struct intel_crtc *crtc)
 	}
 
 	drm_crtc_enable_color_mgmt(&crtc->base,
-				   INTEL_INFO(dev_priv)->color.degamma_lut_size,
+				   INTEL_INFO(dev_priv)->display.color.degamma_lut_size,
 				   has_ctm,
-				   INTEL_INFO(dev_priv)->color.gamma_lut_size);
+				   INTEL_INFO(dev_priv)->display.color.gamma_lut_size);
 }
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 7bc944271371..0cdd6513fbb7 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -127,30 +127,33 @@
 	}
 
 #define I9XX_COLORS \
-	.color = { .gamma_lut_size = 256 }
+	.display.color = { .gamma_lut_size = 256 }
 #define I965_COLORS \
-	.color = { .gamma_lut_size = 129, \
+	.display.color = { .gamma_lut_size = 129, \
 		   .gamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING, \
 	}
 #define ILK_COLORS \
-	.color = { .gamma_lut_size = 1024 }
+	.display.color = { .gamma_lut_size = 1024 }
 #define IVB_COLORS \
-	.color = { .degamma_lut_size = 1024, .gamma_lut_size = 1024 }
+	.display.color = { .degamma_lut_size = 1024, .gamma_lut_size = 1024 }
 #define CHV_COLORS \
-	.color = { .degamma_lut_size = 65, .gamma_lut_size = 257, \
-		   .degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING, \
-		   .gamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING, \
+	.display.color = { \
+		.degamma_lut_size = 65, .gamma_lut_size = 257, \
+		.degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING, \
+		.gamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING, \
 	}
 #define GLK_COLORS \
-	.color = { .degamma_lut_size = 33, .gamma_lut_size = 1024, \
-		   .degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING | \
-					DRM_COLOR_LUT_EQUAL_CHANNELS, \
+	.display.color = { \
+		.degamma_lut_size = 33, .gamma_lut_size = 1024, \
+		.degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING | \
+				     DRM_COLOR_LUT_EQUAL_CHANNELS, \
 	}
 #define ICL_COLORS \
-	.color = { .degamma_lut_size = 33, .gamma_lut_size = 262145, \
-		   .degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING | \
-					DRM_COLOR_LUT_EQUAL_CHANNELS, \
-		   .gamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING, \
+	.display.color = { \
+		.degamma_lut_size = 33, .gamma_lut_size = 262145, \
+		.degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING | \
+				     DRM_COLOR_LUT_EQUAL_CHANNELS, \
+		.gamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING, \
 	}
 
 /* Keep in gen based order, and chronological order within a gen */
@@ -939,9 +942,10 @@ static const struct intel_device_info adl_s_info = {
 
 #define XE_LPD_FEATURES \
 	.display.abox_mask = GENMASK(1, 0),					\
-	.color = { .degamma_lut_size = 128, .gamma_lut_size = 1024,		\
-		   .degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING |		\
-					DRM_COLOR_LUT_EQUAL_CHANNELS,		\
+	.display.color = {							\
+		.degamma_lut_size = 128, .gamma_lut_size = 1024,		\
+		.degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING |		\
+				     DRM_COLOR_LUT_EQUAL_CHANNELS,		\
 	},									\
 	.display.dbuf.size = 4096,						\
 	.display.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |	\
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 2be7ba78f123..1c150cd7dceb 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -245,15 +245,14 @@ struct intel_device_info {
 		u32 pipe_offsets[I915_MAX_TRANSCODERS];
 		u32 trans_offsets[I915_MAX_TRANSCODERS];
 		u32 cursor_offsets[I915_MAX_PIPES];
+
+		struct {
+			u32 degamma_lut_size;
+			u32 gamma_lut_size;
+			u32 degamma_lut_tests;
+			u32 gamma_lut_tests;
+		} color;
 	} display;
-
-
-	struct color_luts {
-		u32 degamma_lut_size;
-		u32 gamma_lut_size;
-		u32 degamma_lut_tests;
-		u32 gamma_lut_tests;
-	} color;
 };
 
 struct intel_runtime_info {
-- 
2.35.1

