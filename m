Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 302AF623D6F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 09:23:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AF3010E67B;
	Thu, 10 Nov 2022 08:23:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1F6F10E682
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 08:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668068558; x=1699604558;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l1KHFsIWYrCpjGouP/Y1EIoYmQDynpx0z04D6unALpc=;
 b=ZCeQdK3CwSBC6y8lNhLHQ1RQZ9y2u8vYpcILGC3jTBLxBjx0cWncmish
 PJ7lmeMTJHknxlxnYVFw0xJJtWSHn8EdVU+c6LTUWsYLmKe/UDr8zY+nt
 mCfYCVaiej6yqNNiStSNug4fyQagzH/dFK+dKOZVQz+GyPoDoN381C7L/
 Tj0QvS7rXrANRFT614mnlT43r4L6GbV1MybsIWsa8Jpl4RCo1xH+CL5J6
 6pp54K9LEv20LT5K5SyPLtYwsM7a8nOYSyzD0D+4s7+zqJT4YXMipolzP
 PWZS3KdRcDj69chJb7ZlN7Pd3yGi2fo/p8G26uchSHAbamrJYvCpwj2pi w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="309965465"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="309965465"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 00:22:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="639531110"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="639531110"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 10 Nov 2022 00:22:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 10:22:35 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 10:21:43 +0200
Message-Id: <20221110082144.19666-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 17/18] drm/i915: Add 10bit gamma mode for
 gen2/3
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

Some gen2/gen3 parts have a 10bit gamma mode, on some pipes.
Expose it.

The format is different to the later i965+ style in that we
store a 10bit value and a 6 bit floating point slope for each
entry. Ie. the hardware extrapolates the intermediate steps
from the current LUT entry, instead of interpolating between
the current and next LUT entries. This also means we don't store
the last LUT entry in any register as it is defined by the previous
LUT entry's value+slope.

The slope has limited precision though (2 bit exponent + 4 bit
mantissa), so we'd have to allow for more error in the state checker
for the last entry and we have to make sure userspace doesn't
pass in something where the slope is simply to steep. In theory
we should perhaps check the slope for every interval, but we don't
do that for any other interpolated gamma mode and I suspect they
may also have some internal limit on the slope. I haven't confirmed
that theory though. Anyways, for ease of implementation we shall
just ignore the last entry in the state checker. If all the other
entries match anyway then that seems like a good indication that
the hardware was programmed as expected.

v2: Redo the state checker logic a bit
    Rebase due to other changes

Acked-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 268 +++++++++++++++++++--
 drivers/gpu/drm/i915/i915_pci.c            |  10 +-
 drivers/gpu/drm/i915/i915_reg.h            |  14 ++
 3 files changed, 271 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index d00790d54498..9870a43f33a5 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -466,6 +466,79 @@ static void i9xx_lut_8_pack(struct drm_color_lut *entry, u32 val)
 	entry->blue = intel_color_lut_pack(REG_FIELD_GET(PALETTE_BLUE_MASK, val), 8);
 }
 
+/* i8xx/i9xx+ 10bit slope format "even DW" (low 8 bits) */
+static u32 _i9xx_lut_10_ldw(u16 a)
+{
+	return drm_color_lut_extract(a, 10) & 0xff;
+}
+
+static u32 i9xx_lut_10_ldw(const struct drm_color_lut *color)
+{
+	return _i9xx_lut_10_ldw(color[0].red) << 16 |
+		_i9xx_lut_10_ldw(color[0].green) << 8 |
+		_i9xx_lut_10_ldw(color[0].blue);
+}
+
+/* i8xx/i9xx+ 10bit slope format "odd DW" (high 2 bits + slope) */
+static u32 _i9xx_lut_10_udw(u16 a, u16 b)
+{
+	unsigned int mantissa, exponent;
+
+	a = drm_color_lut_extract(a, 10);
+	b = drm_color_lut_extract(b, 10);
+
+	/* b = a + 8 * m * 2 ^ -e */
+	mantissa = clamp(b - a, 0, 0x7f);
+	exponent = 3;
+	while (mantissa > 0xf) {
+		mantissa >>= 1;
+		exponent--;
+	}
+
+	return (exponent << 6) |
+		(mantissa << 2) |
+		(a >> 8);
+}
+
+static u32 i9xx_lut_10_udw(const struct drm_color_lut *color)
+{
+	return _i9xx_lut_10_udw(color[0].red, color[1].red) << 16 |
+		_i9xx_lut_10_udw(color[0].green, color[1].green) << 8 |
+		_i9xx_lut_10_udw(color[0].blue, color[1].blue);
+}
+
+static void i9xx_lut_10_pack(struct drm_color_lut *color,
+			     u32 ldw, u32 udw)
+{
+	u16 red = REG_FIELD_GET(PALETTE_10BIT_RED_LDW_MASK, ldw) |
+		REG_FIELD_GET(PALETTE_10BIT_RED_UDW_MASK, udw) << 8;
+	u16 green = REG_FIELD_GET(PALETTE_10BIT_GREEN_LDW_MASK, ldw) |
+		REG_FIELD_GET(PALETTE_10BIT_GREEN_UDW_MASK, udw) << 8;
+	u16 blue = REG_FIELD_GET(PALETTE_10BIT_BLUE_LDW_MASK, ldw) |
+		REG_FIELD_GET(PALETTE_10BIT_BLUE_UDW_MASK, udw) << 8;
+
+	color->red = intel_color_lut_pack(red, 10);
+	color->green = intel_color_lut_pack(green, 10);
+	color->blue = intel_color_lut_pack(blue, 10);
+}
+
+static void i9xx_lut_10_pack_slope(struct drm_color_lut *color,
+				   u32 ldw, u32 udw)
+{
+	int r_exp = REG_FIELD_GET(PALETTE_10BIT_RED_EXP_MASK, udw);
+	int r_mant = REG_FIELD_GET(PALETTE_10BIT_RED_MANT_MASK, udw);
+	int g_exp = REG_FIELD_GET(PALETTE_10BIT_GREEN_EXP_MASK, udw);
+	int g_mant = REG_FIELD_GET(PALETTE_10BIT_GREEN_MANT_MASK, udw);
+	int b_exp = REG_FIELD_GET(PALETTE_10BIT_BLUE_EXP_MASK, udw);
+	int b_mant = REG_FIELD_GET(PALETTE_10BIT_BLUE_MANT_MASK, udw);
+
+	i9xx_lut_10_pack(color, ldw, udw);
+
+	color->red += r_mant << (3 - r_exp);
+	color->green += g_mant << (3 - g_exp);
+	color->blue += b_mant << (3 - b_exp);
+}
+
 /* i965+ "10.6" bit interpolated format "even DW" (low 8 bits) */
 static u32 i965_lut_10p6_ldw(const struct drm_color_lut *color)
 {
@@ -690,12 +763,38 @@ static void i9xx_load_lut_8(struct intel_crtc *crtc,
 				  i9xx_lut_8(&lut[i]));
 }
 
+static void i9xx_load_lut_10(struct intel_crtc *crtc,
+			     const struct drm_property_blob *blob)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	const struct drm_color_lut *lut = blob->data;
+	int i, lut_size = drm_color_lut_size(blob);
+	enum pipe pipe = crtc->pipe;
+
+	for (i = 0; i < lut_size - 1; i++) {
+		intel_de_write_fw(dev_priv, PALETTE(pipe, 2 * i + 0),
+				  i9xx_lut_10_ldw(&lut[i]));
+		intel_de_write_fw(dev_priv, PALETTE(pipe, 2 * i + 1),
+				  i9xx_lut_10_udw(&lut[i]));
+	}
+}
+
 static void i9xx_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
 
-	i9xx_load_lut_8(crtc, post_csc_lut);
+	switch (crtc_state->gamma_mode) {
+	case GAMMA_MODE_MODE_8BIT:
+		i9xx_load_lut_8(crtc, post_csc_lut);
+		break;
+	case GAMMA_MODE_MODE_10BIT:
+		i9xx_load_lut_10(crtc, post_csc_lut);
+		break;
+	default:
+		MISSING_CASE(crtc_state->gamma_mode);
+		break;
+	}
 }
 
 static void i965_load_lut_10p6(struct intel_crtc *crtc,
@@ -723,10 +822,17 @@ static void i965_load_luts(const struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
 
-	if (crtc_state->gamma_mode == GAMMA_MODE_MODE_8BIT)
+	switch (crtc_state->gamma_mode) {
+	case GAMMA_MODE_MODE_8BIT:
 		i9xx_load_lut_8(crtc, post_csc_lut);
-	else
+		break;
+	case GAMMA_MODE_MODE_10BIT:
 		i965_load_lut_10p6(crtc, post_csc_lut);
+		break;
+	default:
+		MISSING_CASE(crtc_state->gamma_mode);
+		break;
+	}
 }
 
 static void ilk_load_lut_8(struct intel_crtc *crtc,
@@ -1442,7 +1548,31 @@ static u32 i9xx_gamma_mode(struct intel_crtc_state *crtc_state)
 	    lut_is_legacy(crtc_state->hw.gamma_lut))
 		return GAMMA_MODE_MODE_8BIT;
 	else
-		return GAMMA_MODE_MODE_10BIT; /* i965+ only */
+		return GAMMA_MODE_MODE_10BIT;
+}
+
+static int i9xx_lut_10_diff(u16 a, u16 b)
+{
+	return drm_color_lut_extract(a, 10) -
+		drm_color_lut_extract(b, 10);
+}
+
+static int i9xx_check_lut_10(struct drm_i915_private *dev_priv,
+			     const struct drm_property_blob *blob)
+{
+	const struct drm_color_lut *lut = blob->data;
+	int lut_size = drm_color_lut_size(blob);
+	const struct drm_color_lut *a = &lut[lut_size - 2];
+	const struct drm_color_lut *b = &lut[lut_size - 1];
+
+	if (i9xx_lut_10_diff(b->red, a->red) > 0x7f ||
+	    i9xx_lut_10_diff(b->green, a->green) > 0x7f ||
+	    i9xx_lut_10_diff(b->blue, a->blue) > 0x7f) {
+		drm_dbg_kms(&dev_priv->drm, "Last gamma LUT entry exceeds max slope\n");
+		return -EINVAL;
+	}
+
+	return 0;
 }
 
 void intel_color_assert_luts(const struct intel_crtc_state *crtc_state)
@@ -1485,6 +1615,7 @@ static void intel_assign_luts(struct intel_crtc_state *crtc_state)
 
 static int i9xx_color_check(struct intel_crtc_state *crtc_state)
 {
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	int ret;
 
 	ret = check_luts(crtc_state);
@@ -1497,6 +1628,13 @@ static int i9xx_color_check(struct intel_crtc_state *crtc_state)
 
 	crtc_state->gamma_mode = i9xx_gamma_mode(crtc_state);
 
+	if (DISPLAY_VER(i915) < 4 &&
+	    crtc_state->gamma_mode == GAMMA_MODE_MODE_10BIT) {
+		ret = i9xx_check_lut_10(i915, crtc_state->hw.gamma_lut);
+		if (ret)
+			return ret;
+	}
+
 	ret = intel_color_add_affected_planes(crtc_state);
 	if (ret)
 		return ret;
@@ -1992,7 +2130,7 @@ static int i9xx_gamma_precision(const struct intel_crtc_state *crtc_state)
 	case GAMMA_MODE_MODE_8BIT:
 		return 8;
 	case GAMMA_MODE_MODE_10BIT:
-		return 16;
+		return 10;
 	default:
 		MISSING_CASE(crtc_state->gamma_mode);
 		return 0;
@@ -2004,6 +2142,22 @@ static int i9xx_degamma_precision(const struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
+static int i965_gamma_precision(const struct intel_crtc_state *crtc_state)
+{
+	if (!crtc_state->gamma_enable)
+		return 0;
+
+	switch (crtc_state->gamma_mode) {
+	case GAMMA_MODE_MODE_8BIT:
+		return 8;
+	case GAMMA_MODE_MODE_10BIT:
+		return 16;
+	default:
+		MISSING_CASE(crtc_state->gamma_mode);
+		return 0;
+	}
+}
+
 static int ilk_gamma_mode_precision(u32 gamma_mode)
 {
 	switch (gamma_mode) {
@@ -2062,7 +2216,7 @@ static int chv_gamma_precision(const struct intel_crtc_state *crtc_state)
 	if (crtc_state->cgm_mode & CGM_PIPE_MODE_GAMMA)
 		return 10;
 
-	return i9xx_gamma_precision(crtc_state);
+	return i965_gamma_precision(crtc_state);
 }
 
 static int chv_degamma_precision(const struct intel_crtc_state *crtc_state)
@@ -2160,6 +2314,9 @@ static bool intel_lut_equal(const struct drm_property_blob *blob1,
 	if (lut_size1 != lut_size2)
 		return false;
 
+	if (check_size > lut_size1)
+		return false;
+
 	lut1 = blob1->data;
 	lut2 = blob2->data;
 
@@ -2175,13 +2332,32 @@ static bool i9xx_lut_equal(const struct intel_crtc_state *crtc_state,
 			   const struct drm_property_blob *blob1,
 			   const struct drm_property_blob *blob2,
 			   bool is_pre_csc_lut)
+{
+	int check_size = 0;
+
+	if (is_pre_csc_lut)
+		return intel_lut_equal(blob1, blob2, 0,
+				       i9xx_degamma_precision(crtc_state));
+
+	/* 10bit mode last entry is implicit, just skip it */
+	if (crtc_state->gamma_mode == GAMMA_MODE_MODE_10BIT)
+		check_size = 128;
+
+	return intel_lut_equal(blob1, blob2, check_size,
+			       i9xx_gamma_precision(crtc_state));
+}
+
+static bool i965_lut_equal(const struct intel_crtc_state *crtc_state,
+			   const struct drm_property_blob *blob1,
+			   const struct drm_property_blob *blob2,
+			   bool is_pre_csc_lut)
 {
 	if (is_pre_csc_lut)
 		return intel_lut_equal(blob1, blob2, 0,
 				       i9xx_degamma_precision(crtc_state));
 	else
 		return intel_lut_equal(blob1, blob2, 0,
-				       i9xx_gamma_precision(crtc_state));
+				       i965_gamma_precision(crtc_state));
 }
 
 static bool chv_lut_equal(const struct intel_crtc_state *crtc_state,
@@ -2281,6 +2457,35 @@ static struct drm_property_blob *i9xx_read_lut_8(struct intel_crtc *crtc)
 	return blob;
 }
 
+static struct drm_property_blob *i9xx_read_lut_10(struct intel_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	u32 lut_size = INTEL_INFO(dev_priv)->display.color.gamma_lut_size;
+	enum pipe pipe = crtc->pipe;
+	struct drm_property_blob *blob;
+	struct drm_color_lut *lut;
+	u32 ldw, udw;
+	int i;
+
+	blob = drm_property_create_blob(&dev_priv->drm,
+					lut_size * sizeof(lut[0]), NULL);
+	if (IS_ERR(blob))
+		return NULL;
+
+	lut = blob->data;
+
+	for (i = 0; i < lut_size - 1; i++) {
+		ldw = intel_de_read_fw(dev_priv, PALETTE(pipe, 2 * i + 0));
+		udw = intel_de_read_fw(dev_priv, PALETTE(pipe, 2 * i + 1));
+
+		i9xx_lut_10_pack(&lut[i], ldw, udw);
+	}
+
+	i9xx_lut_10_pack_slope(&lut[i], ldw, udw);
+
+	return blob;
+}
+
 static void i9xx_read_luts(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -2288,7 +2493,17 @@ static void i9xx_read_luts(struct intel_crtc_state *crtc_state)
 	if (!crtc_state->gamma_enable)
 		return;
 
-	crtc_state->post_csc_lut = i9xx_read_lut_8(crtc);
+	switch (crtc_state->gamma_mode) {
+	case GAMMA_MODE_MODE_8BIT:
+		crtc_state->post_csc_lut = i9xx_read_lut_8(crtc);
+		break;
+	case GAMMA_MODE_MODE_10BIT:
+		crtc_state->post_csc_lut = i9xx_read_lut_10(crtc);
+		break;
+	default:
+		MISSING_CASE(crtc_state->gamma_mode);
+		break;
+	}
 }
 
 static struct drm_property_blob *i965_read_lut_10p6(struct intel_crtc *crtc)
@@ -2328,10 +2543,17 @@ static void i965_read_luts(struct intel_crtc_state *crtc_state)
 	if (!crtc_state->gamma_enable)
 		return;
 
-	if (crtc_state->gamma_mode == GAMMA_MODE_MODE_8BIT)
+	switch (crtc_state->gamma_mode) {
+	case GAMMA_MODE_MODE_8BIT:
 		crtc_state->post_csc_lut = i9xx_read_lut_8(crtc);
-	else
+		break;
+	case GAMMA_MODE_MODE_10BIT:
 		crtc_state->post_csc_lut = i965_read_lut_10p6(crtc);
+		break;
+	default:
+		MISSING_CASE(crtc_state->gamma_mode);
+		break;
+	}
 }
 
 static struct drm_property_blob *chv_read_cgm_degamma(struct intel_crtc *crtc)
@@ -2741,7 +2963,7 @@ static const struct intel_color_funcs i965_color_funcs = {
 	.color_commit_arm = i9xx_color_commit_arm,
 	.load_luts = i965_load_luts,
 	.read_luts = i965_read_luts,
-	.lut_equal = i9xx_lut_equal,
+	.lut_equal = i965_lut_equal,
 };
 
 static const struct intel_color_funcs i9xx_color_funcs = {
@@ -2818,14 +3040,28 @@ static const struct intel_color_funcs ilk_color_funcs = {
 void intel_color_crtc_init(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	bool has_ctm = INTEL_INFO(i915)->display.color.degamma_lut_size != 0;
+	int degamma_lut_size, gamma_lut_size;
+	bool has_ctm;
 
 	drm_mode_crtc_set_gamma_size(&crtc->base, 256);
 
-	drm_crtc_enable_color_mgmt(&crtc->base,
-				   INTEL_INFO(i915)->display.color.degamma_lut_size,
-				   has_ctm,
-				   INTEL_INFO(i915)->display.color.gamma_lut_size);
+	gamma_lut_size = INTEL_INFO(i915)->display.color.gamma_lut_size;
+	degamma_lut_size = INTEL_INFO(i915)->display.color.degamma_lut_size;
+	has_ctm = degamma_lut_size != 0;
+
+	/*
+	 * "DPALETTE_A: NOTE: The 8-bit (non-10-bit) mode is the
+	 *  only mode supported by Alviso and Grantsdale."
+	 *
+	 * Actually looks like this affects all of gen3.
+	 * Confirmed on alv,cst,pnv. Mobile gen2 parts (alm,mgm)
+	 * are confirmed not to suffer from this restriction.
+	 */
+	if (DISPLAY_VER(i915) == 3 && crtc->pipe == PIPE_A)
+		gamma_lut_size = 256;
+
+	drm_crtc_enable_color_mgmt(&crtc->base, degamma_lut_size,
+				   has_ctm, gamma_lut_size);
 }
 
 int intel_color_init(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index c50841e36c61..414d58f8fee0 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -132,9 +132,9 @@
 		[PIPE_D] = TGL_CURSOR_D_OFFSET, \
 	}
 
-#define I9XX_COLORS \
+#define I845_COLORS \
 	.display.color = { .gamma_lut_size = 256 }
-#define I965_COLORS \
+#define I9XX_COLORS \
 	.display.color = { .gamma_lut_size = 129, \
 		   .gamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING, \
 	}
@@ -210,7 +210,7 @@
 	.dma_mask_size = 32, \
 	I845_PIPE_OFFSETS, \
 	I845_CURSOR_OFFSETS, \
-	I9XX_COLORS, \
+	I845_COLORS, \
 	GEN_DEFAULT_PAGE_SIZES, \
 	GEN_DEFAULT_REGIONS
 
@@ -341,7 +341,7 @@ static const struct intel_device_info pnv_m_info = {
 	.dma_mask_size = 36, \
 	I9XX_PIPE_OFFSETS, \
 	I9XX_CURSOR_OFFSETS, \
-	I965_COLORS, \
+	I9XX_COLORS, \
 	GEN_DEFAULT_PAGE_SIZES, \
 	GEN_DEFAULT_REGIONS
 
@@ -547,7 +547,7 @@ static const struct intel_device_info vlv_info = {
 	.display.mmio_offset = VLV_DISPLAY_BASE,
 	I9XX_PIPE_OFFSETS,
 	I9XX_CURSOR_OFFSETS,
-	I965_COLORS,
+	I9XX_COLORS,
 	GEN_DEFAULT_PAGE_SIZES,
 	GEN_DEFAULT_REGIONS,
 };
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f4c08509e629..01b37d2037a5 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1786,6 +1786,20 @@
 #define   PALETTE_RED_MASK		REG_GENMASK(23, 16)
 #define   PALETTE_GREEN_MASK		REG_GENMASK(15, 8)
 #define   PALETTE_BLUE_MASK		REG_GENMASK(7, 0)
+/* pre-i965 10bit interpolated mode ldw */
+#define   PALETTE_10BIT_RED_LDW_MASK	REG_GENMASK(23, 16)
+#define   PALETTE_10BIT_GREEN_LDW_MASK	REG_GENMASK(15, 8)
+#define   PALETTE_10BIT_BLUE_LDW_MASK	REG_GENMASK(7, 0)
+/* pre-i965 10bit interpolated mode udw */
+#define   PALETTE_10BIT_RED_EXP_MASK	REG_GENMASK(23, 22)
+#define   PALETTE_10BIT_RED_MANT_MASK	REG_GENMASK(21, 18)
+#define   PALETTE_10BIT_RED_UDW_MASK	REG_GENMASK(17, 16)
+#define   PALETTE_10BIT_GREEN_EXP_MASK	REG_GENMASK(15, 14)
+#define   PALETTE_10BIT_GREEN_MANT_MASK	REG_GENMASK(13, 10)
+#define   PALETTE_10BIT_GREEN_UDW_MASK	REG_GENMASK(9, 8)
+#define   PALETTE_10BIT_BLUE_EXP_MASK	REG_GENMASK(7, 6)
+#define   PALETTE_10BIT_BLUE_MANT_MASK	REG_GENMASK(5, 2)
+#define   PALETTE_10BIT_BLUE_UDW_MASK	REG_GENMASK(1, 0)
 #define PALETTE(pipe, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + \
 				      _PICK((pipe), _PALETTE_A,		\
 					    _PALETTE_B, _CHV_PALETTE_C) + \
-- 
2.37.4

