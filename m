Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA9D85B786
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 10:31:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C3D010E29D;
	Tue, 20 Feb 2024 09:31:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NxgbBgeL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3734110E2B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 09:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708421502; x=1739957502;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0/gfMDbY36MCoIW8ZrR0Ma4cZbYLVLbXe+Aoj/A/fsA=;
 b=NxgbBgeL3BoMQJp5RmRxiuBGeSMc7pKQtMQO41EXwQMIAjA2RGrUW4nF
 V46YlDsHjVBXRuNw8b6WMd9DDLDYtYKxT5xRf8V8YgRLAm/33CDsU9BW4
 j160alY3NHJsYPyw9pz7iHWre6E4tizxcSuzVEQlVM6VLs9NcO/qvq9xo
 D2cmBDQNo3rKoHgmVvawTeWgurvl73l/nVuQZX5Cghum6ZqM7uDuYMoaM
 oiNFq64MuH77gYv+APKeU6BlJb0BobVgq22JCJyFfUwfnFH6i6hc/wOf3
 sOxN6QNxohmE43br5e54QN4lweC9+1OvzGe2v9HnlJZqLhkeXXGxE6ZGA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10989"; a="2974292"
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; 
   d="scan'208";a="2974292"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 01:31:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; 
   d="scan'208";a="4631704"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa007.fm.intel.com with ESMTP; 20 Feb 2024 01:31:40 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 2/3] drm/i915: Extract code required to calculate max qgv/psf
 gv point
Date: Tue, 20 Feb 2024 11:31:35 +0200
Message-Id: <20240220093136.32181-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240220093136.32181-1-stanislav.lisovskiy@intel.com>
References: <20240220093136.32181-1-stanislav.lisovskiy@intel.com>
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

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 81 ++++++++++++++++---------
 1 file changed, 53 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 77886cc21211..7baa1c13eccd 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -652,15 +652,31 @@ static unsigned int tgl_max_bw_index(struct drm_i915_private *dev_priv,
 	return 0;
 }
 
-static unsigned int adl_psf_bw(struct drm_i915_private *dev_priv,
+static unsigned int adl_psf_bw(struct drm_i915_private *i915,
 			       int psf_gv_point)
 {
 	const struct intel_bw_info *bi =
-			&dev_priv->display.bw.max[0];
+			&i915->display.bw.max[0];
 
 	return bi->psf_bw[psf_gv_point];
 }
 
+static unsigned int adl_qgv_bw(struct drm_i915_private *i915,
+			       int qgv_point, int num_active_planes)
+{
+	unsigned int idx;
+
+	if (DISPLAY_VER(i915) > 11)
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
@@ -806,6 +822,36 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
 	return to_intel_bw_state(bw_state);
 }
 
+static unsigned int icl_max_bw_qgv_point(struct drm_i915_private *i915,
+					 int num_active_planes)
+{
+	unsigned int max_bw_point = 0;
+	unsigned int max_bw = 0;
+	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
+	int i;
+
+	for (i = 0; i < num_qgv_points; i++) {
+		unsigned int max_data_rate;
+
+		max_data_rate = adl_qgv_bw(i915, i, num_active_planes);
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
+			max_bw_point = i;
+			max_bw = max_data_rate;
+		}
+	}
+
+	return max_bw_point;
+}
+
 static int mtl_find_qgv_points(struct drm_i915_private *i915,
 			       unsigned int data_rate,
 			       unsigned int num_active_planes,
@@ -883,8 +929,6 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
 			       const struct intel_bw_state *old_bw_state,
 			       struct intel_bw_state *new_bw_state)
 {
-	unsigned int max_bw_point = 0;
-	unsigned int max_bw = 0;
 	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
 	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
 	u16 psf_points = 0;
@@ -897,31 +941,10 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
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
+		max_data_rate = adl_qgv_bw(i915, i, num_active_planes);
 
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
 
@@ -965,9 +988,11 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
 	 * cause.
 	 */
 	if (!intel_can_enable_sagv(i915, new_bw_state)) {
-		qgv_points = BIT(max_bw_point);
+		unsigned int max_bw_qgv_point = icl_max_bw_qgv_point(i915, num_active_planes);
+
+		qgv_points = BIT(max_bw_qgv_point);
 		drm_dbg_kms(&i915->drm, "No SAGV, using single QGV point %d\n",
-			    max_bw_point);
+			    max_bw_qgv_point);
 	}
 
 	/*
-- 
2.37.3

