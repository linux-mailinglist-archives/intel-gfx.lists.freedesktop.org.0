Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9285C88A0BD
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 14:02:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94CB910E88B;
	Mon, 25 Mar 2024 13:02:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IwTXwOwp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D1AC10E886
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 13:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711371737; x=1742907737;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T+Q70BCQQYUVv5eDpcAzSOS2O/MyEtGA3EHOdDZswHw=;
 b=IwTXwOwpeJyvhk1z98xcenuIpQ5pL4AWyD3qXYDDzZ62UOMh7FDQmgXT
 blQTuG0SkagPevv7RX0CmWq0BfII+xJZVdBKS2NLZwgDKdI6gXci9vYsq
 ZGYy0I0MxowhDCPXUBGqZE5khR1i2xrJIpehcuJmSJRzhNTRCd+vVsIlg
 VtunEL0gDWOdrL5uU0g1sRI2AZ6+EAdbtuDnI/ALlqDVa20A8mU7uDN1t
 /oUsVZB1lGuvgc4tnHcKDQ6SPvtpOyEWS4H5HnG1TBlWrAGKSQ65sPRXx
 JZH2+DPElegrd79GWXtBhxOzeF4rydUApkogIkOW4UUquD/AJBLyoGpAt w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="6484210"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; 
   d="scan'208";a="6484210"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 06:02:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="20289152"
Received: from kridax-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.252.55.79])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 06:02:14 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, stanislav.lisovskiy@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH v8 2/4] drm/i915: Extract code required to calculate max
 qgv/psf gv point
Date: Mon, 25 Mar 2024 15:01:54 +0200
Message-Id: <20240325130156.205726-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325130156.205726-1-vinod.govindapillai@intel.com>
References: <20240325130156.205726-1-vinod.govindapillai@intel.com>
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

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 76 ++++++++++++++++---------
 1 file changed, 49 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 77886cc21211..b3d7893f2cd7 100644
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
@@ -897,31 +940,10 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
 		return ret;
 
 	for (i = 0; i < num_qgv_points; i++) {
-		unsigned int idx;
 		unsigned int max_data_rate;
 
-		if (DISPLAY_VER(i915) >= 12)
-			idx = tgl_max_bw_index(i915, num_active_planes, i);
-		else
-			idx = icl_max_bw_index(i915, num_active_planes, i);
-
-		if (idx >= ARRAY_SIZE(i915->display.bw.max))
-			continue;
-
-		max_data_rate = i915->display.bw.max[idx].deratedbw[i];
+		max_data_rate = icl_qgv_bw(i915, num_active_planes, i);
 
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
 		if (max_data_rate >= data_rate)
 			qgv_points |= BIT(i);
 
@@ -965,9 +987,9 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
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

