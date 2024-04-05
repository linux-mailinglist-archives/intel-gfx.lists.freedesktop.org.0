Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3442E899BE7
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 13:36:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97443113B40;
	Fri,  5 Apr 2024 11:35:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kvC8mHVJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A8F1113B3D
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 11:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712316955; x=1743852955;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gH/DL82h3Oqc6pCr91JU7Zl/EuGEsa9zi4dJPhbqufU=;
 b=kvC8mHVJwqwGDgKw+xbMfrJIUQtt32Z4iro71LrxQLt2CX5/MlunDCMd
 +jm38GptG5q1NZNHCVopiJvzQjvWeGYeikFxp0r5QF/RlSDXvZyqJE6zX
 wOQi4zPUvpWxZJqUEFLx42V/8TgiEl5fo0qoAvUPe3odwAe+2HKZIoug+
 rkEQ9OeaqYxFuI/QQzEMD/q22NjJis8FBKVLQzg6SWzpbbXGVR9JpkXu9
 67h/atuzRmmlJroUTBQJETqj5+A2/DhbXDRWYfSjQ8z3bXcPtlmxty4Av
 23jfcN3oB7EFE8ADVfel6SdLIZ1D4J4o3BFdCPzzJhakoqNy3aEYDF7/c Q==;
X-CSE-ConnectionGUID: bCK1PBs7TbW+FjeLNRAVzw==
X-CSE-MsgGUID: bgtvWM+SQomOmLaJf4UpvA==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7540241"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7540241"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:35:55 -0700
X-CSE-ConnectionGUID: vwGfnnY2T4uF1gZpqRU0EA==
X-CSE-MsgGUID: 2l4KNT09QQe6L2zFikcoSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19066044"
Received: from pfilseth-mobl.amr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.58.154])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:35:52 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, stanislav.lisovskiy@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH v10 2/6] drm/i915/display: Extract code required to calculate
 max qgv/psf gv point
Date: Fri,  5 Apr 2024 14:35:29 +0300
Message-Id: <20240405113533.338553-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240405113533.338553-1-vinod.govindapillai@intel.com>
References: <20240405113533.338553-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

We need that in order to force disable SAGV in next patch.
Also it is beneficial to separate that code, as in majority cases,
when SAGV is enabled, we don't even need those calculations.
Also we probably need to determine max PSF GV point as well, however
currently we don't do that when we disable SAGV, which might be
actually causing some issues in that case.

v2: - Introduce helper adl_qgv_bw(counterpart to adl_psf_bw)
      (Ville Syrjälä)
    - Don't restrict psf gv points for SAGV disable case
      (Ville Syrjälä)
v3: - Update icl_max_bw_qgv_point_mask to return max qgv point
      mask (Vinod)
v4: - Minor changes in icl_find_qgv_points (Vinod)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 80 +++++++++++++++----------
 1 file changed, 50 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 77886cc21211..c00094e5f11c 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -661,6 +661,22 @@ static unsigned int adl_psf_bw(struct drm_i915_private *dev_priv,
 	return bi->psf_bw[psf_gv_point];
 }
 
+static unsigned int icl_qgv_bw(struct drm_i915_private *i915,
+			       int num_active_planes, int qgv_point)
+{
+	unsigned int idx;
+
+	if (DISPLAY_VER(i915) >= 12)
+		idx = tgl_max_bw_index(i915, num_active_planes, qgv_point);
+	else
+		idx = icl_max_bw_index(i915, num_active_planes, qgv_point);
+
+	if (idx >= ARRAY_SIZE(i915->display.bw.max))
+		return 0;
+
+	return i915->display.bw.max[idx].deratedbw[qgv_point];
+}
+
 void intel_bw_init_hw(struct drm_i915_private *dev_priv)
 {
 	if (!HAS_DISPLAY(dev_priv))
@@ -806,6 +822,35 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
 	return to_intel_bw_state(bw_state);
 }
 
+static unsigned int icl_max_bw_qgv_point_mask(struct drm_i915_private *i915,
+					      int num_active_planes)
+{
+	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
+	unsigned int max_bw_point_mask = 0;
+	unsigned int max_bw = 0;
+	int i;
+
+	for (i = 0; i < num_qgv_points; i++) {
+		unsigned int max_data_rate =
+			icl_qgv_bw(i915, num_active_planes, i);
+
+		/*
+		 * We need to know which qgv point gives us
+		 * maximum bandwidth in order to disable SAGV
+		 * if we find that we exceed SAGV block time
+		 * with watermarks. By that moment we already
+		 * have those, as it is calculated earlier in
+		 * intel_atomic_check,
+		 */
+		if (max_data_rate > max_bw) {
+			max_bw_point_mask = BIT(i);
+			max_bw = max_data_rate;
+		}
+	}
+
+	return max_bw_point_mask;
+}
+
 static int mtl_find_qgv_points(struct drm_i915_private *i915,
 			       unsigned int data_rate,
 			       unsigned int num_active_planes,
@@ -883,8 +928,6 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
 			       const struct intel_bw_state *old_bw_state,
 			       struct intel_bw_state *new_bw_state)
 {
-	unsigned int max_bw_point = 0;
-	unsigned int max_bw = 0;
 	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
 	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
 	u16 psf_points = 0;
@@ -897,31 +940,8 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
 		return ret;
 
 	for (i = 0; i < num_qgv_points; i++) {
-		unsigned int idx;
-		unsigned int max_data_rate;
-
-		if (DISPLAY_VER(i915) >= 12)
-			idx = tgl_max_bw_index(i915, num_active_planes, i);
-		else
-			idx = icl_max_bw_index(i915, num_active_planes, i);
-
-		if (idx >= ARRAY_SIZE(i915->display.bw.max))
-			continue;
-
-		max_data_rate = i915->display.bw.max[idx].deratedbw[i];
-
-		/*
-		 * We need to know which qgv point gives us
-		 * maximum bandwidth in order to disable SAGV
-		 * if we find that we exceed SAGV block time
-		 * with watermarks. By that moment we already
-		 * have those, as it is calculated earlier in
-		 * intel_atomic_check,
-		 */
-		if (max_data_rate > max_bw) {
-			max_bw_point = i;
-			max_bw = max_data_rate;
-		}
+		unsigned int max_data_rate = icl_qgv_bw(i915,
+							num_active_planes, i);
 		if (max_data_rate >= data_rate)
 			qgv_points |= BIT(i);
 
@@ -965,9 +985,9 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
 	 * cause.
 	 */
 	if (!intel_can_enable_sagv(i915, new_bw_state)) {
-		qgv_points = BIT(max_bw_point);
-		drm_dbg_kms(&i915->drm, "No SAGV, using single QGV point %d\n",
-			    max_bw_point);
+		qgv_points = icl_max_bw_qgv_point_mask(i915, num_active_planes);
+		drm_dbg_kms(&i915->drm, "No SAGV, using single QGV point mask 0x%x\n",
+			    qgv_points);
 	}
 
 	/*
-- 
2.34.1

