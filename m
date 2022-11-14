Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD1B628420
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 16:38:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF8F510E2F0;
	Mon, 14 Nov 2022 15:38:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D3D510E2DE
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 15:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668440301; x=1699976301;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yv5+3OefwkuXPusKtqfFuffc/mO9MrxdqgfAYn0r3E8=;
 b=I6p6k+l0V+ucaq60PWzp55OMPDKX3/lbgtE8V8Gmpx5jlE5OI4GxnSmw
 3LC9qtDvWoQ1MsWsrTm3EQ+T6wWlFMTk8/lsLP2gBPLekRFJFbGGHohh6
 Th3dPC0Gkqs3+3LRKDSlf8lCGoRXSLFb6tVvRsbY8t1+wK2ANS6ZzjWL7
 7LPKkVYoXLGxxW1NEzGhgtBDefn3c10ypjTAWqFcPdnvhnDNeEcCDPttT
 5uM60NMRB0mgV4D5jGFtf7sfcVZZVwz3dze0UyzKaweZbLqkoBHMrv2Hp
 JAAp5xeDdJh0n/j4Lu4NT9/t8fwteY6wx88C2dgcCYDWH1gRLsyIdhuET g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="398290881"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="398290881"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 07:38:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="780968724"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="780968724"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 14 Nov 2022 07:38:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Nov 2022 17:38:17 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 17:37:27 +0200
Message-Id: <20221114153732.11773-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 15/20] drm/i915: Finish the LUT state checker
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

Note that we're currently missing readout for c8_planes, so
we'll have to skip the state check in that case.

v2: Fix readout for C8 use cases
v3: Skip C8 entirely due to lack of c8_planes readout
    Add ilk_has_pre_csc_lut() helper and use other such helpers

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 275 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_color.h   |   8 +-
 drivers/gpu/drm/i915/display/intel_display.c |  29 +-
 3 files changed, 225 insertions(+), 87 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index f0bb4227338c..e2bcfbffb298 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -53,7 +53,18 @@ struct intel_color_funcs {
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
@@ -1234,6 +1245,24 @@ void intel_color_get_config(struct intel_crtc_state *crtc_state)
 	i915->display.funcs.color->read_luts(crtc_state);
 }
 
+bool intel_color_lut_equal(const struct intel_crtc_state *crtc_state,
+			   const struct drm_property_blob *blob1,
+			   const struct drm_property_blob *blob2,
+			   bool is_pre_csc_lut)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	/*
+	 * FIXME c8_planes readout missing thus
+	 * .read_luts() doesn't read out post_csc_lut.
+	 */
+	if (!is_pre_csc_lut && crtc_state->c8_planes)
+		return true;
+
+	return i915->display.funcs.color->lut_equal(crtc_state, blob1, blob2,
+						    is_pre_csc_lut);
+}
+
 static bool need_plane_update(struct intel_plane *plane,
 			      const struct intel_crtc_state *crtc_state)
 {
@@ -1814,6 +1843,24 @@ static int i9xx_post_csc_lut_precision(const struct intel_crtc_state *crtc_state
 	}
 }
 
+static int i9xx_pre_csc_lut_precision(const struct intel_crtc_state *crtc_state)
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
 static bool ilk_has_post_csc_lut(const struct intel_crtc_state *crtc_state)
 {
 	if (crtc_state->c8_planes)
@@ -1823,28 +1870,60 @@ static bool ilk_has_post_csc_lut(const struct intel_crtc_state *crtc_state)
 		(crtc_state->csc_mode & CSC_POSITION_BEFORE_GAMMA) != 0;
 }
 
+static bool ilk_has_pre_csc_lut(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->gamma_enable &&
+		(crtc_state->csc_mode & CSC_POSITION_BEFORE_GAMMA) == 0;
+}
+
 static int ilk_post_csc_lut_precision(const struct intel_crtc_state *crtc_state)
 {
 	if (!ilk_has_post_csc_lut(crtc_state))
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
+static int ilk_pre_csc_lut_precision(const struct intel_crtc_state *crtc_state)
+{
+	if (!ilk_has_pre_csc_lut(crtc_state))
 		return 0;
-	}
+
+	return ilk_gamma_mode_precision(crtc_state->gamma_mode);
+}
+
+static int ivb_post_csc_lut_precision(const struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->gamma_enable &&
+	    crtc_state->gamma_mode == GAMMA_MODE_MODE_SPLIT)
+		return 10;
+
+	return ilk_post_csc_lut_precision(crtc_state);
+}
+
+static int ivb_pre_csc_lut_precision(const struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->gamma_enable &&
+	    crtc_state->gamma_mode == GAMMA_MODE_MODE_SPLIT)
+		return 10;
+
+	return ilk_pre_csc_lut_precision(crtc_state);
 }
 
 static int chv_post_csc_lut_precision(const struct intel_crtc_state *crtc_state)
 {
 	if (crtc_state->cgm_mode & CGM_PIPE_MODE_GAMMA)
 		return 10;
-	else
-		return i9xx_post_csc_lut_precision(crtc_state);
+
+	return i9xx_post_csc_lut_precision(crtc_state);
+}
+
+static int chv_pre_csc_lut_precision(const struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->cgm_mode & CGM_PIPE_MODE_DEGAMMA)
+		return 14;
+
+	return 0;
 }
 
 static int glk_post_csc_lut_precision(const struct intel_crtc_state *crtc_state)
@@ -1852,15 +1931,15 @@ static int glk_post_csc_lut_precision(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->gamma_enable && !crtc_state->c8_planes)
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
+static int glk_pre_csc_lut_precision(const struct intel_crtc_state *crtc_state)
+{
+	if (!crtc_state->csc_enable)
 		return 0;
-	}
+
+	return 16;
 }
 
 static bool icl_has_post_csc_lut(const struct intel_crtc_state *crtc_state)
@@ -1894,26 +1973,12 @@ static int icl_post_csc_lut_precision(const struct intel_crtc_state *crtc_state)
 	}
 }
 
-int intel_color_get_gamma_bit_precision(const struct intel_crtc_state *crtc_state)
+static int icl_pre_csc_lut_precision(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	if (!icl_has_pre_csc_lut(crtc_state))
+		return 0;
 
-	if (HAS_GMCH(i915)) {
-		if (IS_CHERRYVIEW(i915))
-			return chv_post_csc_lut_precision(crtc_state);
-		else
-			return i9xx_post_csc_lut_precision(crtc_state);
-	} else {
-		if (DISPLAY_VER(i915) >= 11)
-			return icl_post_csc_lut_precision(crtc_state);
-		else if (DISPLAY_VER(i915) == 10)
-			return glk_post_csc_lut_precision(crtc_state);
-		else if (IS_IRONLAKE(i915))
-			return ilk_post_csc_lut_precision(crtc_state);
-	}
-
-	return 0;
+	return 16;
 }
 
 static bool err_check(struct drm_color_lut *lut1,
@@ -1924,9 +1989,9 @@ static bool err_check(struct drm_color_lut *lut1,
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
 
@@ -1938,9 +2003,9 @@ static bool intel_color_lut_entries_equal(struct drm_color_lut *lut1,
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
@@ -1949,40 +2014,112 @@ bool intel_color_lut_equal(struct drm_property_blob *blob1,
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
+				       i9xx_pre_csc_lut_precision(crtc_state));
+	else
+		return intel_lut_equal(blob1, blob2, 0,
+				       i9xx_post_csc_lut_precision(crtc_state));
+}
+
+static bool chv_lut_equal(const struct intel_crtc_state *crtc_state,
+			  const struct drm_property_blob *blob1,
+			  const struct drm_property_blob *blob2,
+			  bool is_pre_csc_lut)
+{
+	if (is_pre_csc_lut)
+		return intel_lut_equal(blob1, blob2, 0,
+				       chv_pre_csc_lut_precision(crtc_state));
+	else
+		return intel_lut_equal(blob1, blob2, 0,
+				       chv_post_csc_lut_precision(crtc_state));
+}
+
+static bool ilk_lut_equal(const struct intel_crtc_state *crtc_state,
+			  const struct drm_property_blob *blob1,
+			  const struct drm_property_blob *blob2,
+			  bool is_pre_csc_lut)
+{
+	if (is_pre_csc_lut)
+		return intel_lut_equal(blob1, blob2, 0,
+				       ilk_pre_csc_lut_precision(crtc_state));
+	else
+		return intel_lut_equal(blob1, blob2, 0,
+				       ilk_post_csc_lut_precision(crtc_state));
+}
+
+static bool ivb_lut_equal(const struct intel_crtc_state *crtc_state,
+			  const struct drm_property_blob *blob1,
+			  const struct drm_property_blob *blob2,
+			  bool is_pre_csc_lut)
+{
+	if (is_pre_csc_lut)
+		return intel_lut_equal(blob1, blob2, 0,
+				       ivb_pre_csc_lut_precision(crtc_state));
+	else
+		return intel_lut_equal(blob1, blob2, 0,
+				       ivb_post_csc_lut_precision(crtc_state));
+}
+
+static bool glk_lut_equal(const struct intel_crtc_state *crtc_state,
+			  const struct drm_property_blob *blob1,
+			  const struct drm_property_blob *blob2,
+			  bool is_pre_csc_lut)
+{
+	if (is_pre_csc_lut)
+		return intel_lut_equal(blob1, blob2, 0,
+				       glk_pre_csc_lut_precision(crtc_state));
+	else
+		return intel_lut_equal(blob1, blob2, 0,
+				       glk_post_csc_lut_precision(crtc_state));
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
+				       icl_pre_csc_lut_precision(crtc_state));
+
+	/* hw readout broken except for the super fine segment :( */
+	if ((crtc_state->gamma_mode & GAMMA_MODE_MODE_MASK) ==
+	    GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED)
+		check_size = 9;
+
+	return intel_lut_equal(blob1, blob2, check_size,
+			       icl_post_csc_lut_precision(crtc_state));
 }
 
 static struct drm_property_blob *i9xx_read_lut_8(struct intel_crtc *crtc)
@@ -2462,6 +2599,7 @@ static const struct intel_color_funcs chv_color_funcs = {
 	.color_commit_arm = i9xx_color_commit_arm,
 	.load_luts = chv_load_luts,
 	.read_luts = chv_read_luts,
+	.lut_equal = chv_lut_equal,
 };
 
 static const struct intel_color_funcs i965_color_funcs = {
@@ -2469,6 +2607,7 @@ static const struct intel_color_funcs i965_color_funcs = {
 	.color_commit_arm = i9xx_color_commit_arm,
 	.load_luts = i965_load_luts,
 	.read_luts = i965_read_luts,
+	.lut_equal = i9xx_lut_equal,
 };
 
 static const struct intel_color_funcs i9xx_color_funcs = {
@@ -2476,6 +2615,7 @@ static const struct intel_color_funcs i9xx_color_funcs = {
 	.color_commit_arm = i9xx_color_commit_arm,
 	.load_luts = i9xx_load_luts,
 	.read_luts = i9xx_read_luts,
+	.lut_equal = i9xx_lut_equal,
 };
 
 static const struct intel_color_funcs icl_color_funcs = {
@@ -2484,6 +2624,7 @@ static const struct intel_color_funcs icl_color_funcs = {
 	.color_commit_arm = skl_color_commit_arm,
 	.load_luts = icl_load_luts,
 	.read_luts = icl_read_luts,
+	.lut_equal = icl_lut_equal,
 };
 
 static const struct intel_color_funcs glk_color_funcs = {
@@ -2492,6 +2633,7 @@ static const struct intel_color_funcs glk_color_funcs = {
 	.color_commit_arm = skl_color_commit_arm,
 	.load_luts = glk_load_luts,
 	.read_luts = glk_read_luts,
+	.lut_equal = glk_lut_equal,
 };
 
 static const struct intel_color_funcs skl_color_funcs = {
@@ -2500,6 +2642,7 @@ static const struct intel_color_funcs skl_color_funcs = {
 	.color_commit_arm = skl_color_commit_arm,
 	.load_luts = bdw_load_luts,
 	.read_luts = bdw_read_luts,
+	.lut_equal = ivb_lut_equal,
 };
 
 static const struct intel_color_funcs bdw_color_funcs = {
@@ -2508,6 +2651,7 @@ static const struct intel_color_funcs bdw_color_funcs = {
 	.color_commit_arm = hsw_color_commit_arm,
 	.load_luts = bdw_load_luts,
 	.read_luts = bdw_read_luts,
+	.lut_equal = ivb_lut_equal,
 };
 
 static const struct intel_color_funcs hsw_color_funcs = {
@@ -2516,6 +2660,7 @@ static const struct intel_color_funcs hsw_color_funcs = {
 	.color_commit_arm = hsw_color_commit_arm,
 	.load_luts = ivb_load_luts,
 	.read_luts = ivb_read_luts,
+	.lut_equal = ivb_lut_equal,
 };
 
 static const struct intel_color_funcs ivb_color_funcs = {
@@ -2524,6 +2669,7 @@ static const struct intel_color_funcs ivb_color_funcs = {
 	.color_commit_arm = ilk_color_commit_arm,
 	.load_luts = ivb_load_luts,
 	.read_luts = ivb_read_luts,
+	.lut_equal = ivb_lut_equal,
 };
 
 static const struct intel_color_funcs ilk_color_funcs = {
@@ -2532,6 +2678,7 @@ static const struct intel_color_funcs ilk_color_funcs = {
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
index c8422fef992a..7bfcc8ca0bac 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5526,7 +5526,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	struct drm_i915_private *dev_priv = to_i915(current_config->uapi.crtc->dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	bool ret = true;
-	u32 bp_gamma = 0;
 	bool fixup_inherited = fastset &&
 		current_config->inherited && !pipe_config->inherited;
 
@@ -5677,21 +5676,14 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
 
@@ -5788,9 +5780,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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

