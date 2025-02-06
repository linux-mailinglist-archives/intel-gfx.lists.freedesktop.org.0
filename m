Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05426A2B226
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 20:22:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9073C10E155;
	Thu,  6 Feb 2025 19:22:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JD33lAKi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81ADA10E30C;
 Thu,  6 Feb 2025 19:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738869718; x=1770405718;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=I/E3/JxVqckmAHAEC0OJB0ci+WbyQWzY3xbjYL+PxCY=;
 b=JD33lAKiXXDJI113oDK2TrOd477fr6JIoJE0z++1SGs0m8HqBkH9scTE
 Waci62uw5+DcOw+ec7SYT2h5RECDiAUPa9wVwPnJ7JbvUgzt5ssqgt9ZQ
 MNQ50MOG0ZgJgBa8H615fVR2sHSUYDwoMsKttiR78qhZ+AiauFul9/I92
 PuDDsVlQm5UCnxsue60fvq2R6/e0oDqKykLQIutFDJBc8AGeIobpPjAq6
 CvmM5fK6PuVX1yFiBqWX36CwvvXSaP8Un4iZTOV8yv7g4lwYz9iC04Fwe
 yW+ig/aTdo1sIxkaYd6mkdpkYwBF8Vjszf6SA2mCrZA5qHW2by2wzIT4O g==;
X-CSE-ConnectionGUID: 2YlURY+MSSaS+/007O4pfA==
X-CSE-MsgGUID: plJIqJDKQWiDy+9LKXWc1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39398815"
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="39398815"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 11:21:58 -0800
X-CSE-ConnectionGUID: D369TI3cS6Osqkj5PpSJ4A==
X-CSE-MsgGUID: rhiiE3bYQwS0ZvBI55/7VA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="111502501"
Received: from lstrano-mobl6.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.111.1])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 11:21:58 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915/display: Use display variable in intel_bw.c
Date: Thu,  6 Feb 2025 16:21:28 -0300
Message-ID: <20250206192148.53610-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250206192148.53610-1-gustavo.sousa@intel.com>
References: <20250206192148.53610-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
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

Update intel_bw.c to use a "display" variable to refer to members of the
display struct. While this change does not move that file to completely
use struct intel_display as part of it's internal and public interface,
this should help with a future transition.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 106 ++++++++++++++----------
 1 file changed, 60 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 23edc81741de..0fb41e6cd8ae 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -124,8 +124,9 @@ static int adls_pcode_read_psf_gv_point_info(struct drm_i915_private *dev_priv,
 
 static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
 {
-	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
-	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
+	struct intel_display *display = &i915->display;
+	unsigned int num_psf_gv_points = display->bw.max[0].num_psf_gv_points;
+	unsigned int num_qgv_points = display->bw.max[0].num_qgv_points;
 	u16 qgv_points = 0, psf_points = 0;
 
 	/*
@@ -151,6 +152,7 @@ static bool is_sagv_enabled(struct drm_i915_private *i915, u16 points_mask)
 int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 				  u32 points_mask)
 {
+	struct intel_display *display = &dev_priv->display;
 	int ret;
 
 	if (DISPLAY_VER(dev_priv) >= 14)
@@ -170,7 +172,7 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 		return ret;
 	}
 
-	dev_priv->display.sagv.status = is_sagv_enabled(dev_priv, points_mask) ?
+	display->sagv.status = is_sagv_enabled(dev_priv, points_mask) ?
 		I915_SAGV_ENABLED : I915_SAGV_DISABLED;
 
 	return 0;
@@ -400,13 +402,14 @@ static const struct intel_sa_info xe2_hpd_sa_info = {
 
 static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_qgv_info qi = {};
 	bool is_y_tile = true; /* assume y tile may be used */
 	int num_channels = max_t(u8, 1, dev_priv->dram_info.num_channels);
 	int ipqdepth, ipqdepthpch = 16;
 	int dclk_max;
 	int maxdebw;
-	int num_groups = ARRAY_SIZE(dev_priv->display.bw.max);
+	int num_groups = ARRAY_SIZE(display->bw.max);
 	int i, ret;
 
 	ret = icl_get_qgv_points(dev_priv, &qi, is_y_tile);
@@ -422,7 +425,7 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
 
 	for (i = 0; i < num_groups; i++) {
-		struct intel_bw_info *bi = &dev_priv->display.bw.max[i];
+		struct intel_bw_info *bi = &display->bw.max[i];
 		int clpchgroup;
 		int j;
 
@@ -460,15 +463,16 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	 * as it will fail and pointless anyway.
 	 */
 	if (qi.num_points == 1)
-		dev_priv->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
+		display->sagv.status = I915_SAGV_NOT_CONTROLLED;
 	else
-		dev_priv->display.sagv.status = I915_SAGV_ENABLED;
+		display->sagv.status = I915_SAGV_ENABLED;
 
 	return 0;
 }
 
 static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_qgv_info qi = {};
 	const struct dram_info *dram_info = &dev_priv->dram_info;
 	bool is_y_tile = true; /* assume y tile may be used */
@@ -477,7 +481,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	int dclk_max;
 	int maxdebw, peakbw;
 	int clperchgroup;
-	int num_groups = ARRAY_SIZE(dev_priv->display.bw.max);
+	int num_groups = ARRAY_SIZE(display->bw.max);
 	int i, ret;
 
 	ret = icl_get_qgv_points(dev_priv, &qi, is_y_tile);
@@ -514,7 +518,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	clperchgroup = 4 * DIV_ROUND_UP(8, num_channels) * qi.deinterleave;
 
 	for (i = 0; i < num_groups; i++) {
-		struct intel_bw_info *bi = &dev_priv->display.bw.max[i];
+		struct intel_bw_info *bi = &display->bw.max[i];
 		struct intel_bw_info *bi_next;
 		int clpchgroup;
 		int j;
@@ -522,7 +526,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 		clpchgroup = (sa->deburst * qi.deinterleave / num_channels) << i;
 
 		if (i < num_groups - 1) {
-			bi_next = &dev_priv->display.bw.max[i + 1];
+			bi_next = &display->bw.max[i + 1];
 
 			if (clpchgroup < clperchgroup)
 				bi_next->num_planes = (ipqdepth - clpchgroup) /
@@ -577,17 +581,18 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	 * as it will fail and pointless anyway.
 	 */
 	if (qi.num_points == 1)
-		dev_priv->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
+		display->sagv.status = I915_SAGV_NOT_CONTROLLED;
 	else
-		dev_priv->display.sagv.status = I915_SAGV_ENABLED;
+		display->sagv.status = I915_SAGV_ENABLED;
 
 	return 0;
 }
 
 static void dg2_get_bw_info(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	unsigned int deratedbw = IS_DG2_G11(i915) ? 38000 : 50000;
-	int num_groups = ARRAY_SIZE(i915->display.bw.max);
+	int num_groups = ARRAY_SIZE(display->bw.max);
 	int i;
 
 	/*
@@ -598,7 +603,7 @@ static void dg2_get_bw_info(struct drm_i915_private *i915)
 	 * whereas DG2-G11 platforms have 38 GB/s.
 	 */
 	for (i = 0; i < num_groups; i++) {
-		struct intel_bw_info *bi = &i915->display.bw.max[i];
+		struct intel_bw_info *bi = &display->bw.max[i];
 
 		bi->num_planes = 1;
 		/* Need only one dummy QGV point per group */
@@ -606,12 +611,13 @@ static void dg2_get_bw_info(struct drm_i915_private *i915)
 		bi->deratedbw[0] = deratedbw;
 	}
 
-	i915->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
+	display->sagv.status = I915_SAGV_NOT_CONTROLLED;
 }
 
 static int xe2_hpd_get_bw_info(struct drm_i915_private *i915,
 			       const struct intel_sa_info *sa)
 {
+	struct intel_display *display = &i915->display;
 	struct intel_qgv_info qi = {};
 	int num_channels = i915->dram_info.num_channels;
 	int peakbw, maxdebw;
@@ -631,28 +637,28 @@ static int xe2_hpd_get_bw_info(struct drm_i915_private *i915,
 		const struct intel_qgv_point *point = &qi.points[i];
 		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
 
-		i915->display.bw.max[0].deratedbw[i] =
+		display->bw.max[0].deratedbw[i] =
 			min(maxdebw, (100 - sa->derating) * bw / 100);
-		i915->display.bw.max[0].peakbw[i] = bw;
+		display->bw.max[0].peakbw[i] = bw;
 
 		drm_dbg_kms(&i915->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
-			    i, i915->display.bw.max[0].deratedbw[i],
-			    i915->display.bw.max[0].peakbw[i]);
+			    i, display->bw.max[0].deratedbw[i],
+			    display->bw.max[0].peakbw[i]);
 	}
 
 	/* Bandwidth does not depend on # of planes; set all groups the same */
-	i915->display.bw.max[0].num_planes = 1;
-	i915->display.bw.max[0].num_qgv_points = qi.num_points;
-	for (i = 1; i < ARRAY_SIZE(i915->display.bw.max); i++)
-		memcpy(&i915->display.bw.max[i], &i915->display.bw.max[0],
-		       sizeof(i915->display.bw.max[0]));
+	display->bw.max[0].num_planes = 1;
+	display->bw.max[0].num_qgv_points = qi.num_points;
+	for (i = 1; i < ARRAY_SIZE(display->bw.max); i++)
+		memcpy(&display->bw.max[i], &display->bw.max[0],
+		       sizeof(display->bw.max[0]));
 
 	/*
 	 * Xe2_HPD should always have exactly two QGV points representing
 	 * battery and plugged-in operation.
 	 */
 	drm_WARN_ON(&i915->drm, qi.num_points != 2);
-	i915->display.sagv.status = I915_SAGV_ENABLED;
+	display->sagv.status = I915_SAGV_ENABLED;
 
 	return 0;
 }
@@ -660,6 +666,7 @@ static int xe2_hpd_get_bw_info(struct drm_i915_private *i915,
 static unsigned int icl_max_bw_index(struct drm_i915_private *dev_priv,
 				     int num_planes, int qgv_point)
 {
+	struct intel_display *display = &dev_priv->display;
 	int i;
 
 	/*
@@ -667,9 +674,9 @@ static unsigned int icl_max_bw_index(struct drm_i915_private *dev_priv,
 	 */
 	num_planes = max(1, num_planes);
 
-	for (i = 0; i < ARRAY_SIZE(dev_priv->display.bw.max); i++) {
+	for (i = 0; i < ARRAY_SIZE(display->bw.max); i++) {
 		const struct intel_bw_info *bi =
-			&dev_priv->display.bw.max[i];
+			&display->bw.max[i];
 
 		/*
 		 * Pcode will not expose all QGV points when
@@ -688,6 +695,7 @@ static unsigned int icl_max_bw_index(struct drm_i915_private *dev_priv,
 static unsigned int tgl_max_bw_index(struct drm_i915_private *dev_priv,
 				     int num_planes, int qgv_point)
 {
+	struct intel_display *display = &dev_priv->display;
 	int i;
 
 	/*
@@ -695,9 +703,9 @@ static unsigned int tgl_max_bw_index(struct drm_i915_private *dev_priv,
 	 */
 	num_planes = max(1, num_planes);
 
-	for (i = ARRAY_SIZE(dev_priv->display.bw.max) - 1; i >= 0; i--) {
+	for (i = ARRAY_SIZE(display->bw.max) - 1; i >= 0; i--) {
 		const struct intel_bw_info *bi =
-			&dev_priv->display.bw.max[i];
+			&display->bw.max[i];
 
 		/*
 		 * Pcode will not expose all QGV points when
@@ -716,8 +724,9 @@ static unsigned int tgl_max_bw_index(struct drm_i915_private *dev_priv,
 static unsigned int adl_psf_bw(struct drm_i915_private *dev_priv,
 			       int psf_gv_point)
 {
+	struct intel_display *display = &dev_priv->display;
 	const struct intel_bw_info *bi =
-			&dev_priv->display.bw.max[0];
+			&display->bw.max[0];
 
 	return bi->psf_bw[psf_gv_point];
 }
@@ -725,6 +734,7 @@ static unsigned int adl_psf_bw(struct drm_i915_private *dev_priv,
 static unsigned int icl_qgv_bw(struct drm_i915_private *i915,
 			       int num_active_planes, int qgv_point)
 {
+	struct intel_display *display = &i915->display;
 	unsigned int idx;
 
 	if (DISPLAY_VER(i915) >= 12)
@@ -732,10 +742,10 @@ static unsigned int icl_qgv_bw(struct drm_i915_private *i915,
 	else
 		idx = icl_max_bw_index(i915, num_active_planes, qgv_point);
 
-	if (idx >= ARRAY_SIZE(i915->display.bw.max))
+	if (idx >= ARRAY_SIZE(display->bw.max))
 		return 0;
 
-	return i915->display.bw.max[idx].deratedbw[qgv_point];
+	return display->bw.max[idx].deratedbw[qgv_point];
 }
 
 void intel_bw_init_hw(struct drm_i915_private *dev_priv)
@@ -854,10 +864,10 @@ static unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
 struct intel_bw_state *
 intel_atomic_get_old_bw_state(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_global_state *bw_state;
 
-	bw_state = intel_atomic_get_old_global_obj_state(state, &dev_priv->display.bw.obj);
+	bw_state = intel_atomic_get_old_global_obj_state(state, &display->bw.obj);
 
 	return to_intel_bw_state(bw_state);
 }
@@ -865,10 +875,10 @@ intel_atomic_get_old_bw_state(struct intel_atomic_state *state)
 struct intel_bw_state *
 intel_atomic_get_new_bw_state(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_global_state *bw_state;
 
-	bw_state = intel_atomic_get_new_global_obj_state(state, &dev_priv->display.bw.obj);
+	bw_state = intel_atomic_get_new_global_obj_state(state, &display->bw.obj);
 
 	return to_intel_bw_state(bw_state);
 }
@@ -876,10 +886,10 @@ intel_atomic_get_new_bw_state(struct intel_atomic_state *state)
 struct intel_bw_state *
 intel_atomic_get_bw_state(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_global_state *bw_state;
 
-	bw_state = intel_atomic_get_global_obj_state(state, &dev_priv->display.bw.obj);
+	bw_state = intel_atomic_get_global_obj_state(state, &display->bw.obj);
 	if (IS_ERR(bw_state))
 		return ERR_CAST(bw_state);
 
@@ -889,7 +899,8 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
 static unsigned int icl_max_bw_qgv_point_mask(struct drm_i915_private *i915,
 					      int num_active_planes)
 {
-	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
+	struct intel_display *display = &i915->display;
+	unsigned int num_qgv_points = display->bw.max[0].num_qgv_points;
 	unsigned int max_bw_point = 0;
 	unsigned int max_bw = 0;
 	int i;
@@ -925,7 +936,8 @@ static u16 icl_prepare_qgv_points_mask(struct drm_i915_private *i915,
 
 static unsigned int icl_max_bw_psf_gv_point_mask(struct drm_i915_private *i915)
 {
-	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
+	struct intel_display *display = &i915->display;
+	unsigned int num_psf_gv_points = display->bw.max[0].num_psf_gv_points;
 	unsigned int max_bw_point_mask = 0;
 	unsigned int max_bw = 0;
 	int i;
@@ -965,8 +977,9 @@ static int mtl_find_qgv_points(struct drm_i915_private *i915,
 			       unsigned int num_active_planes,
 			       struct intel_bw_state *new_bw_state)
 {
+	struct intel_display *display = &i915->display;
 	unsigned int best_rate = UINT_MAX;
-	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
+	unsigned int num_qgv_points = display->bw.max[0].num_qgv_points;
 	unsigned int qgv_peak_bw  = 0;
 	int i;
 	int ret;
@@ -995,17 +1008,17 @@ static int mtl_find_qgv_points(struct drm_i915_private *i915,
 			tgl_max_bw_index(i915, num_active_planes, i);
 		unsigned int max_data_rate;
 
-		if (bw_index >= ARRAY_SIZE(i915->display.bw.max))
+		if (bw_index >= ARRAY_SIZE(display->bw.max))
 			continue;
 
-		max_data_rate = i915->display.bw.max[bw_index].deratedbw[i];
+		max_data_rate = display->bw.max[bw_index].deratedbw[i];
 
 		if (max_data_rate < data_rate)
 			continue;
 
 		if (max_data_rate - data_rate < best_rate) {
 			best_rate = max_data_rate - data_rate;
-			qgv_peak_bw = i915->display.bw.max[bw_index].peakbw[i];
+			qgv_peak_bw = display->bw.max[bw_index].peakbw[i];
 		}
 
 		drm_dbg_kms(&i915->drm, "QGV point %d: max bw %d required %d qgv_peak_bw: %d\n",
@@ -1037,8 +1050,9 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
 			       const struct intel_bw_state *old_bw_state,
 			       struct intel_bw_state *new_bw_state)
 {
-	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
-	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
+	struct intel_display *display = &i915->display;
+	unsigned int num_psf_gv_points = display->bw.max[0].num_psf_gv_points;
+	unsigned int num_qgv_points = display->bw.max[0].num_qgv_points;
 	u16 psf_points = 0;
 	u16 qgv_points = 0;
 	int i;
-- 
2.48.1

