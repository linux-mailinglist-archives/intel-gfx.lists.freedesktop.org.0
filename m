Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BA7859F78
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Feb 2024 10:19:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F13A10E1E4;
	Mon, 19 Feb 2024 09:19:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MjcsKaVT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 592C710E1EF
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Feb 2024 09:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708334340; x=1739870340;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wFXZw4yRc7JFe7krAh8kRKl5U+yS1XcRHjGfAUDHnpw=;
 b=MjcsKaVTeG2oU0QfemVCXWOJ1yWZRosfuzFG+yFdEbYb7E4bQNaoHdcD
 ANP7lxhpS/tAk+Ktw1BDyYLiw5Kvx3fjEyND03K0L0ot6R2r1s454DNV0
 rfiDob6qTBf2Zg8/ETeP1+v5zFA/VYpV1wktf6II3vJomEi9cProLK07I
 MdSl+dZiyx1lSGedIehhK4GqxJ6xzeRMS0I6vMLcK6qu9qzYPVap2FQPR
 MypkZ07QX2eo1IDEa0zzx9fXo8hwN5th5Hi+K56RVxTSJvtoIfjhget+q
 PiX4jhI37YnOXk0wYAmrz8xMsva0Xh3O/aDhUllIZ6yNUgAfi6trg0CaB Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10988"; a="13800152"
X-IronPort-AV: E=Sophos;i="6.06,170,1705392000"; d="scan'208";a="13800152"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2024 01:19:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,170,1705392000"; 
   d="scan'208";a="9108187"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orviesa005.jf.intel.com with ESMTP; 19 Feb 2024 01:18:58 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 3/3] drm/i915: Disable SAGV on bw init,
 to force QGV point recalculation
Date: Mon, 19 Feb 2024 11:18:52 +0200
Message-Id: <20240219091852.23162-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240219091852.23162-1-stanislav.lisovskiy@intel.com>
References: <20240219091852.23162-1-stanislav.lisovskiy@intel.com>
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

Problem is that on some platforms, we do get QGV point mask in wrong
state on boot. However driver assumes it is set to 0
(i.e all points allowed), however in reality we might get them all restricted,
causing issues.
Lets disable SAGV initially to force proper QGV point state.
If more QGV points are available, driver will recalculate and update
those then after next commit.

v2: - Added trace to see which QGV/PSF GV point is used when SAGV is
      disabled.
v3: - Move force disable function to intel_bw_init in order to initialize
      bw state as well, so that hw/sw are immediately in sync after init.
v4: - Don't try sending PCode request, seems like it is not possible at
      intel_bw_init, however assigning bw->state to be restricted as if
      SAGV is off, still forces driveer to send PCode request anyway on
      next modeset, so the solution still works.
      However we still need to address the case, when no display is connected,
      which anyway requires much more changes.

v5: - Put PCode request back and apply temporary hack to make the
      request succeed(in case if there 2 PSF GV points with same BW, PCode
      accepts only if both points are restricted/unrestricted same time)
    - Fix argument sequence for adl_qgv_bw(Ville Syrjälä)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 63 +++++++++++++++++++++++--
 1 file changed, 59 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 7baa1c13eccd..d9f34dc66a83 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -162,7 +162,7 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 				1);
 
 	if (ret < 0) {
-		drm_err(&dev_priv->drm, "Failed to disable qgv points (%d) points: 0x%x\n", ret, points_mask);
+		drm_err(&dev_priv->drm, "Failed to disable qgv points (%x) points: 0x%x\n", ret, points_mask);
 		return ret;
 	}
 
@@ -662,7 +662,7 @@ static unsigned int adl_psf_bw(struct drm_i915_private *i915,
 }
 
 static unsigned int adl_qgv_bw(struct drm_i915_private *i915,
-			       int qgv_point, int num_active_planes)
+			       int num_active_planes, int qgv_point)
 {
 	unsigned int idx;
 
@@ -833,7 +833,7 @@ static unsigned int icl_max_bw_qgv_point(struct drm_i915_private *i915,
 	for (i = 0; i < num_qgv_points; i++) {
 		unsigned int max_data_rate;
 
-		max_data_rate = adl_qgv_bw(i915, i, num_active_planes);
+		max_data_rate = adl_qgv_bw(i915, num_active_planes, i);
 
 		/*
 		 * We need to know which qgv point gives us
@@ -852,6 +852,58 @@ static unsigned int icl_max_bw_qgv_point(struct drm_i915_private *i915,
 	return max_bw_point;
 }
 
+/*
+ * Due to some strange reason, we have to use a mask of PSF GV
+ * points, instead of finding the one which provides the highest bandwidth,
+ * this is because PCode rejects the request, if 2 PSF GV points, which have
+ * same bandwidth are not set/cleared same time.
+ */
+static unsigned int icl_max_bw_psf_gv_point_mask(struct drm_i915_private *i915)
+{
+	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
+	unsigned int max_bw = 0;
+	unsigned int max_bw_point_mask = 0;
+	int i;
+
+	for (i = 0; i < num_psf_gv_points; i++) {
+		unsigned int max_data_rate = adl_psf_bw(i915, i);
+
+		if (max_data_rate > max_bw) {
+			max_bw_point_mask = BIT(i);
+			max_bw = max_data_rate;
+		} else if (max_data_rate == max_bw)
+			max_bw_point_mask |= BIT(i);
+	}
+
+	return max_bw_point_mask;
+}
+
+static void icl_force_disable_sagv(struct drm_i915_private *i915, struct intel_bw_state *bw_state)
+{
+	unsigned int max_bw_qgv_point = icl_max_bw_qgv_point(i915, 0);
+	unsigned int max_bw_psf_gv_point_mask = icl_max_bw_psf_gv_point_mask(i915);
+	unsigned int qgv_points;
+	unsigned int psf_points;
+	int ret;
+
+	qgv_points = BIT(max_bw_qgv_point);
+	psf_points = max_bw_psf_gv_point_mask;
+
+	bw_state->qgv_points_mask = ~(ICL_PCODE_REQ_QGV_PT(qgv_points)|
+				      ADLS_PCODE_REQ_PSF_PT(psf_points)) &
+				      icl_qgv_points_mask(i915);
+
+	drm_dbg_kms(&i915->drm, "Forcing SAGV disable: mask %x\n", bw_state->qgv_points_mask);
+
+	ret = icl_pcode_restrict_qgv_points(i915, bw_state->qgv_points_mask);
+
+	if (ret)
+		drm_dbg_kms(&i915->drm, "Restricting GV points failed: %x\n", ret);
+	else
+		drm_dbg_kms(&i915->drm, "Restricting GV points succeeded\n");
+
+}
+
 static int mtl_find_qgv_points(struct drm_i915_private *i915,
 			       unsigned int data_rate,
 			       unsigned int num_active_planes,
@@ -943,7 +995,7 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
 	for (i = 0; i < num_qgv_points; i++) {
 		unsigned int max_data_rate;
 
-		max_data_rate = adl_qgv_bw(i915, i, num_active_planes);
+		max_data_rate = adl_qgv_bw(i915, num_active_planes, i);
 
 		if (max_data_rate >= data_rate)
 			qgv_points |= BIT(i);
@@ -1351,5 +1403,8 @@ int intel_bw_init(struct drm_i915_private *dev_priv)
 	intel_atomic_global_obj_init(dev_priv, &dev_priv->display.bw.obj,
 				     &state->base, &intel_bw_funcs);
 
+	if (DISPLAY_VER(dev_priv) < 14)
+		icl_force_disable_sagv(dev_priv, state);
+
 	return 0;
 }
-- 
2.37.3

