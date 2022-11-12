Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C6C626A59
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Nov 2022 16:55:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A68510E12C;
	Sat, 12 Nov 2022 15:55:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 546C610E1BB
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Nov 2022 15:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668268549; x=1699804549;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0sXveUe3+TD7CeEk58nrLk8/TZzNLL1odcvVp8Nefcw=;
 b=cZY9JvVTG+fyL8H1uIPpSNbsM8rFN9IFsa9Yuy9q/CCjlPRGpXff3xPM
 T1Ee0dVdMFW8vmaCDhUuRxxh/xBHJzqPgLrFOkfYHfgb1NibCXjZ+pz0X
 fUc/cmRwtntDqPXZJVaaUQO8XO/k0W9lG77Wgj3WrDWvh9f2h9MTuuRIB
 57ldlHVw812oPE8uxzMs3qEs2sqEj5YFfQjv0NBl5J1PbhopiVJEnVOT7
 boCmLPVePEIPcpl9FFHAoFeJdDoVYrkqxzE59lnsd8YcXYxrtf+HWeCXb
 Zl3iQ01rej45NWRubTcK6UEaVBmWag85cL1s3hBNzH/g7EBbMA0hFEc5P Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10529"; a="292138500"
X-IronPort-AV: E=Sophos;i="5.96,159,1665471600"; d="scan'208";a="292138500"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2022 07:55:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10529"; a="640278501"
X-IronPort-AV: E=Sophos;i="5.96,159,1665471600"; d="scan'208";a="640278501"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 12 Nov 2022 07:55:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 12 Nov 2022 17:55:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 12 Nov 2022 17:55:45 +0200
Message-Id: <20221112155545.7387-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221110082144.19666-14-ville.syrjala@linux.intel.com>
References: <20221110082144.19666-14-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 13/18] drm/i915: Finish the LUT state checker
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

We have full readout now for all platforms (sans the icl+
multi-segment readout hw fail), so hook up the LUT state
checker for everyone.

We add a new vfunc for this since different platforms need
to handle the details a bit differently.

The implementation is rather repetitive in places. Probably
we want to think of a more declarative approach for the
LUT precision/etc. stuff in the future...

v2: Fix readout for C8 use cases

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 274 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_color.h   |   8 +-
 drivers/gpu/drm/i915/display/intel_display.c |  29 +-
 3 files changed, 220 insertions(+), 91 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 7de166bbaa6a..6acd3cb97c5b 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -52,7 +52,18 @@ struct intel_color_funcs {
 	 * involved with the same commit.
 	 */
 	void (*load_luts)(const struct intel_crtc_state *crtc_state);
+	/*
+	 * Read out the LUTs from the hardware into the software state.
+	 * Used by eg. the hardware state checker.
+	 */
 	void (*read_luts)(struct intel_crtc_state *crtc_state);
+	/*
+	 * Compare the LUTs
+	 */
+	bool (*lut_equal)(const struct intel_crtc_state *crtc_state,
+			  const struct drm_property_blob *blob1,
+			  const struct drm_property_blob *blob2,
+			  bool is_pre_csc_lut);
 };
 
 #define CTM_COEFF_SIGN	(1ULL << 63)
@@ -1233,6 +1244,17 @@ void intel_color_get_config(struct intel_crtc_state *crtc_state)
 	i915->display.funcs.color->read_luts(crtc_state);
 }
 
+bool intel_color_lut_equal(const struct intel_crtc_state *crtc_state,
+			   const struct drm_property_blob *blob1,
+			   const struct drm_property_blob *blob2,
+			   bool is_pre_csc_lut)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	return i915->display.funcs.color->lut_equal(crtc_state, blob1, blob2,
+						    is_pre_csc_lut);
+}
+
 static bool need_plane_update(struct intel_plane *plane,
 			      const struct intel_crtc_state *crtc_state)
 {
@@ -1799,7 +1821,7 @@ static int icl_color_check(struct intel_crtc_state *crtc_state)
 
 static int i9xx_gamma_precision(const struct intel_crtc_state *crtc_state)
 {
-	if (!crtc_state->gamma_enable)
+	if (!crtc_state->gamma_enable && !crtc_state->c8_planes)
 		return 0;
 
 	switch (crtc_state->gamma_mode) {
@@ -1813,52 +1835,100 @@ static int i9xx_gamma_precision(const struct intel_crtc_state *crtc_state)
 	}
 }
 
+static int i9xx_degamma_precision(const struct intel_crtc_state *crtc_state)
+{
+	return 0;
+}
+
+static int ilk_gamma_mode_precision(u32 gamma_mode)
+{
+	switch (gamma_mode) {
+	case GAMMA_MODE_MODE_8BIT:
+		return 8;
+	case GAMMA_MODE_MODE_10BIT:
+		return 10;
+	default:
+		MISSING_CASE(gamma_mode);
+		return 0;
+	}
+}
+
 static int ilk_gamma_precision(const struct intel_crtc_state *crtc_state)
 {
-	if (!crtc_state->gamma_enable)
+	if (!crtc_state->gamma_enable && !crtc_state->c8_planes)
 		return 0;
 
 	if ((crtc_state->csc_mode & CSC_POSITION_BEFORE_GAMMA) == 0)
 		return 0;
 
-	switch (crtc_state->gamma_mode) {
-	case GAMMA_MODE_MODE_8BIT:
-		return 8;
-	case GAMMA_MODE_MODE_10BIT:
-		return 10;
-	default:
-		MISSING_CASE(crtc_state->gamma_mode);
+	return ilk_gamma_mode_precision(crtc_state->gamma_mode);
+}
+
+static int ilk_degamma_precision(const struct intel_crtc_state *crtc_state)
+{
+	if (!crtc_state->gamma_enable)
+		return 0;
+
+	if ((crtc_state->csc_mode & CSC_POSITION_BEFORE_GAMMA) != 0)
 		return 0;
-	}
+
+	return ilk_gamma_mode_precision(crtc_state->gamma_mode);
+}
+
+static int ivb_gamma_precision(const struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->gamma_enable &&
+	    crtc_state->gamma_mode == GAMMA_MODE_MODE_SPLIT)
+		return 10;
+
+	return ilk_gamma_precision(crtc_state);
+}
+
+static int ivb_degamma_precision(const struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->gamma_enable &&
+	    crtc_state->gamma_mode == GAMMA_MODE_MODE_SPLIT)
+		return 10;
+
+	return ilk_degamma_precision(crtc_state);
 }
 
 static int chv_gamma_precision(const struct intel_crtc_state *crtc_state)
 {
 	if (crtc_state->cgm_mode & CGM_PIPE_MODE_GAMMA)
 		return 10;
-	else
-		return i9xx_gamma_precision(crtc_state);
+
+	return i9xx_gamma_precision(crtc_state);
+}
+
+static int chv_degamma_precision(const struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->cgm_mode & CGM_PIPE_MODE_DEGAMMA)
+		return 14;
+
+	return 0;
 }
 
 static int glk_gamma_precision(const struct intel_crtc_state *crtc_state)
 {
-	if (!crtc_state->gamma_enable)
+	if (!crtc_state->gamma_enable && !crtc_state->c8_planes)
 		return 0;
 
-	switch (crtc_state->gamma_mode) {
-	case GAMMA_MODE_MODE_8BIT:
-		return 8;
-	case GAMMA_MODE_MODE_10BIT:
-		return 10;
-	default:
-		MISSING_CASE(crtc_state->gamma_mode);
+	return ilk_gamma_mode_precision(crtc_state->gamma_mode);
+}
+
+static int glk_degamma_precision(const struct intel_crtc_state *crtc_state)
+{
+	if (!crtc_state->csc_enable)
 		return 0;
-	}
+
+	return 16;
 }
 
 static int icl_gamma_precision(const struct intel_crtc_state *crtc_state)
 {
-	if ((crtc_state->gamma_mode & POST_CSC_GAMMA_ENABLE) == 0)
+	if ((crtc_state->gamma_mode & POST_CSC_GAMMA_ENABLE) == 0 &&
+	    !crtc_state->c8_planes)
 		return 0;
 
 	switch (crtc_state->gamma_mode & GAMMA_MODE_MODE_MASK) {
@@ -1874,26 +1944,12 @@ static int icl_gamma_precision(const struct intel_crtc_state *crtc_state)
 	}
 }
 
-int intel_color_get_gamma_bit_precision(const struct intel_crtc_state *crtc_state)
+static int icl_degamma_precision(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	if ((crtc_state->gamma_mode & PRE_CSC_GAMMA_ENABLE) == 0)
+		return 0;
 
-	if (HAS_GMCH(i915)) {
-		if (IS_CHERRYVIEW(i915))
-			return chv_gamma_precision(crtc_state);
-		else
-			return i9xx_gamma_precision(crtc_state);
-	} else {
-		if (DISPLAY_VER(i915) >= 11)
-			return icl_gamma_precision(crtc_state);
-		else if (DISPLAY_VER(i915) == 10)
-			return glk_gamma_precision(crtc_state);
-		else if (IS_IRONLAKE(i915))
-			return ilk_gamma_precision(crtc_state);
-	}
-
-	return 0;
+	return 16;
 }
 
 static bool err_check(struct drm_color_lut *lut1,
@@ -1904,9 +1960,9 @@ static bool err_check(struct drm_color_lut *lut1,
 		((abs((long)lut2->green - lut1->green)) <= err);
 }
 
-static bool intel_color_lut_entries_equal(struct drm_color_lut *lut1,
-					  struct drm_color_lut *lut2,
-					  int lut_size, u32 err)
+static bool intel_lut_entries_equal(struct drm_color_lut *lut1,
+				    struct drm_color_lut *lut2,
+				    int lut_size, u32 err)
 {
 	int i;
 
@@ -1918,9 +1974,9 @@ static bool intel_color_lut_entries_equal(struct drm_color_lut *lut1,
 	return true;
 }
 
-bool intel_color_lut_equal(struct drm_property_blob *blob1,
-			   struct drm_property_blob *blob2,
-			   u32 gamma_mode, u32 bit_precision)
+static bool intel_lut_equal(const struct drm_property_blob *blob1,
+			    const struct drm_property_blob *blob2,
+			    int check_size, int precision)
 {
 	struct drm_color_lut *lut1, *lut2;
 	int lut_size1, lut_size2;
@@ -1929,40 +1985,112 @@ bool intel_color_lut_equal(struct drm_property_blob *blob1,
 	if (!blob1 != !blob2)
 		return false;
 
+	if (!blob1 != !precision)
+		return false;
+
 	if (!blob1)
 		return true;
 
 	lut_size1 = drm_color_lut_size(blob1);
 	lut_size2 = drm_color_lut_size(blob2);
 
-	/* check sw and hw lut size */
 	if (lut_size1 != lut_size2)
 		return false;
 
 	lut1 = blob1->data;
 	lut2 = blob2->data;
 
-	err = 0xffff >> bit_precision;
-
-	/* check sw and hw lut entry to be equal */
-	switch (gamma_mode & GAMMA_MODE_MODE_MASK) {
-	case GAMMA_MODE_MODE_8BIT:
-	case GAMMA_MODE_MODE_10BIT:
-		if (!intel_color_lut_entries_equal(lut1, lut2,
-						   lut_size2, err))
-			return false;
-		break;
-	case GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED:
-		if (!intel_color_lut_entries_equal(lut1, lut2,
-						   9, err))
-			return false;
-		break;
-	default:
-		MISSING_CASE(gamma_mode);
-		return false;
-	}
-
-	return true;
+	err = 0xffff >> precision;
+
+	if (!check_size)
+		check_size = lut_size1;
+
+	return intel_lut_entries_equal(lut1, lut2, check_size, err);
+}
+
+static bool i9xx_lut_equal(const struct intel_crtc_state *crtc_state,
+			   const struct drm_property_blob *blob1,
+			   const struct drm_property_blob *blob2,
+			   bool is_pre_csc_lut)
+{
+	if (is_pre_csc_lut)
+		return intel_lut_equal(blob1, blob2, 0,
+				       i9xx_degamma_precision(crtc_state));
+	else
+		return intel_lut_equal(blob1, blob2, 0,
+				       i9xx_gamma_precision(crtc_state));
+}
+
+static bool chv_lut_equal(const struct intel_crtc_state *crtc_state,
+			  const struct drm_property_blob *blob1,
+			  const struct drm_property_blob *blob2,
+			  bool is_pre_csc_lut)
+{
+	if (is_pre_csc_lut)
+		return intel_lut_equal(blob1, blob2, 0,
+				       chv_degamma_precision(crtc_state));
+	else
+		return intel_lut_equal(blob1, blob2, 0,
+				       chv_gamma_precision(crtc_state));
+}
+
+static bool ilk_lut_equal(const struct intel_crtc_state *crtc_state,
+			  const struct drm_property_blob *blob1,
+			  const struct drm_property_blob *blob2,
+			  bool is_pre_csc_lut)
+{
+	if (is_pre_csc_lut)
+		return intel_lut_equal(blob1, blob2, 0,
+				       ilk_degamma_precision(crtc_state));
+	else
+		return intel_lut_equal(blob1, blob2, 0,
+				       ilk_gamma_precision(crtc_state));
+}
+
+static bool ivb_lut_equal(const struct intel_crtc_state *crtc_state,
+			  const struct drm_property_blob *blob1,
+			  const struct drm_property_blob *blob2,
+			  bool is_pre_csc_lut)
+{
+	if (is_pre_csc_lut)
+		return intel_lut_equal(blob1, blob2, 0,
+				       ivb_degamma_precision(crtc_state));
+	else
+		return intel_lut_equal(blob1, blob2, 0,
+				       ivb_gamma_precision(crtc_state));
+}
+
+static bool glk_lut_equal(const struct intel_crtc_state *crtc_state,
+			  const struct drm_property_blob *blob1,
+			  const struct drm_property_blob *blob2,
+			  bool is_pre_csc_lut)
+{
+	if (is_pre_csc_lut)
+		return intel_lut_equal(blob1, blob2, 0,
+				       glk_degamma_precision(crtc_state));
+	else
+		return intel_lut_equal(blob1, blob2, 0,
+				       glk_gamma_precision(crtc_state));
+}
+
+static bool icl_lut_equal(const struct intel_crtc_state *crtc_state,
+			  const struct drm_property_blob *blob1,
+			  const struct drm_property_blob *blob2,
+			  bool is_pre_csc_lut)
+{
+	int check_size = 0;
+
+	if (is_pre_csc_lut)
+		return intel_lut_equal(blob1, blob2, 0,
+				       icl_degamma_precision(crtc_state));
+
+	/* hw readout broken except for the super fine segment :( */
+	if ((crtc_state->gamma_mode & GAMMA_MODE_MODE_MASK) ==
+	    GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED)
+		check_size = 9;
+
+	return intel_lut_equal(blob1, blob2, check_size,
+			       icl_gamma_precision(crtc_state));
 }
 
 static struct drm_property_blob *i9xx_read_lut_8(struct intel_crtc *crtc)
@@ -2442,6 +2570,7 @@ static const struct intel_color_funcs chv_color_funcs = {
 	.color_commit_arm = i9xx_color_commit_arm,
 	.load_luts = chv_load_luts,
 	.read_luts = chv_read_luts,
+	.lut_equal = chv_lut_equal,
 };
 
 static const struct intel_color_funcs i965_color_funcs = {
@@ -2449,6 +2578,7 @@ static const struct intel_color_funcs i965_color_funcs = {
 	.color_commit_arm = i9xx_color_commit_arm,
 	.load_luts = i965_load_luts,
 	.read_luts = i965_read_luts,
+	.lut_equal = i9xx_lut_equal,
 };
 
 static const struct intel_color_funcs i9xx_color_funcs = {
@@ -2456,6 +2586,7 @@ static const struct intel_color_funcs i9xx_color_funcs = {
 	.color_commit_arm = i9xx_color_commit_arm,
 	.load_luts = i9xx_load_luts,
 	.read_luts = i9xx_read_luts,
+	.lut_equal = i9xx_lut_equal,
 };
 
 static const struct intel_color_funcs icl_color_funcs = {
@@ -2464,6 +2595,7 @@ static const struct intel_color_funcs icl_color_funcs = {
 	.color_commit_arm = skl_color_commit_arm,
 	.load_luts = icl_load_luts,
 	.read_luts = icl_read_luts,
+	.lut_equal = icl_lut_equal,
 };
 
 static const struct intel_color_funcs glk_color_funcs = {
@@ -2472,6 +2604,7 @@ static const struct intel_color_funcs glk_color_funcs = {
 	.color_commit_arm = skl_color_commit_arm,
 	.load_luts = glk_load_luts,
 	.read_luts = glk_read_luts,
+	.lut_equal = glk_lut_equal,
 };
 
 static const struct intel_color_funcs skl_color_funcs = {
@@ -2480,6 +2613,7 @@ static const struct intel_color_funcs skl_color_funcs = {
 	.color_commit_arm = skl_color_commit_arm,
 	.load_luts = bdw_load_luts,
 	.read_luts = bdw_read_luts,
+	.lut_equal = ivb_lut_equal,
 };
 
 static const struct intel_color_funcs bdw_color_funcs = {
@@ -2488,6 +2622,7 @@ static const struct intel_color_funcs bdw_color_funcs = {
 	.color_commit_arm = hsw_color_commit_arm,
 	.load_luts = bdw_load_luts,
 	.read_luts = bdw_read_luts,
+	.lut_equal = ivb_lut_equal,
 };
 
 static const struct intel_color_funcs hsw_color_funcs = {
@@ -2496,6 +2631,7 @@ static const struct intel_color_funcs hsw_color_funcs = {
 	.color_commit_arm = hsw_color_commit_arm,
 	.load_luts = ivb_load_luts,
 	.read_luts = ivb_read_luts,
+	.lut_equal = ivb_lut_equal,
 };
 
 static const struct intel_color_funcs ivb_color_funcs = {
@@ -2504,6 +2640,7 @@ static const struct intel_color_funcs ivb_color_funcs = {
 	.color_commit_arm = ilk_color_commit_arm,
 	.load_luts = ivb_load_luts,
 	.read_luts = ivb_read_luts,
+	.lut_equal = ivb_lut_equal,
 };
 
 static const struct intel_color_funcs ilk_color_funcs = {
@@ -2512,6 +2649,7 @@ static const struct intel_color_funcs ilk_color_funcs = {
 	.color_commit_arm = ilk_color_commit_arm,
 	.load_luts = ilk_load_luts,
 	.read_luts = ilk_read_luts,
+	.lut_equal = ilk_lut_equal,
 };
 
 void intel_color_crtc_init(struct intel_crtc *crtc)
diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
index 2a5ada67774d..1c6b1755f6d2 100644
--- a/drivers/gpu/drm/i915/display/intel_color.h
+++ b/drivers/gpu/drm/i915/display/intel_color.h
@@ -21,10 +21,10 @@ void intel_color_commit_noarm(const struct intel_crtc_state *crtc_state);
 void intel_color_commit_arm(const struct intel_crtc_state *crtc_state);
 void intel_color_load_luts(const struct intel_crtc_state *crtc_state);
 void intel_color_get_config(struct intel_crtc_state *crtc_state);
-int intel_color_get_gamma_bit_precision(const struct intel_crtc_state *crtc_state);
-bool intel_color_lut_equal(struct drm_property_blob *blob1,
-			   struct drm_property_blob *blob2,
-			   u32 gamma_mode, u32 bit_precision);
+bool intel_color_lut_equal(const struct intel_crtc_state *crtc_state,
+			   const struct drm_property_blob *blob1,
+			   const struct drm_property_blob *blob2,
+			   bool is_pre_csc_lut);
 void intel_color_assert_luts(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_COLOR_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4f1c910a98cd..8c3431ae252d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5525,7 +5525,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	struct drm_i915_private *dev_priv = to_i915(current_config->uapi.crtc->dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	bool ret = true;
-	u32 bp_gamma = 0;
 	bool fixup_inherited = fastset &&
 		current_config->inherited && !pipe_config->inherited;
 
@@ -5676,21 +5675,14 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	} \
 } while (0)
 
-#define PIPE_CONF_CHECK_COLOR_LUT(name1, name2, bit_precision) do { \
-	if (current_config->name1 != pipe_config->name1) { \
-		pipe_config_mismatch(fastset, crtc, __stringify(name1), \
-				"(expected %i, found %i, won't compare lut values)", \
-				current_config->name1, \
-				pipe_config->name1); \
-		ret = false;\
-	} else { \
-		if (!intel_color_lut_equal(current_config->name2, \
-					pipe_config->name2, pipe_config->name1, \
-					bit_precision)) { \
-			pipe_config_mismatch(fastset, crtc, __stringify(name2), \
-					"hw_state doesn't match sw_state"); \
-			ret = false; \
-		} \
+#define PIPE_CONF_CHECK_COLOR_LUT(lut, is_pre_csc_lut) do { \
+	if (current_config->gamma_mode == pipe_config->gamma_mode && \
+	    !intel_color_lut_equal(current_config, \
+				   current_config->lut, pipe_config->lut, \
+				   is_pre_csc_lut)) {	\
+		pipe_config_mismatch(fastset, crtc, __stringify(lut), \
+				     "hw_state doesn't match sw_state"); \
+		ret = false; \
 	} \
 } while (0)
 
@@ -5787,9 +5779,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_I(linetime);
 		PIPE_CONF_CHECK_I(ips_linetime);
 
-		bp_gamma = intel_color_get_gamma_bit_precision(pipe_config);
-		if (bp_gamma)
-			PIPE_CONF_CHECK_COLOR_LUT(gamma_mode, post_csc_lut, bp_gamma);
+		PIPE_CONF_CHECK_COLOR_LUT(pre_csc_lut, true);
+		PIPE_CONF_CHECK_COLOR_LUT(post_csc_lut, false);
 
 		if (current_config->active_planes) {
 			PIPE_CONF_CHECK_BOOL(has_psr);
-- 
2.37.4

