Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B1F85B789
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 10:31:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8DBE10E2B6;
	Tue, 20 Feb 2024 09:31:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mA2seLEF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE05910E2B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 09:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708421504; x=1739957504;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jJ39n5iljdAKEtUQvpK1U67hyP2hPiCZqWVko4nxlEg=;
 b=mA2seLEFIX16LMynFUHv0ZG66HEHeGMntRxDl26TJqzJskzZ3RgfA1lu
 CXJV2GkNXLVPerLgjZzzqPgIgpo6VFgh6hNG9lHNV6QMtlTbD4O2DIG1B
 3ydQ2hevUNuYj1ooYDSSetPEEstRbcqcM+bEVKSUnk2bsrFz2kDh77Gdq
 VTbGJwc89XIMgy8hsRnB4CHy9PwWFi9eE5ziMtp2VFSrnxHhChc3B451k
 Rm1Z7W60K4gteHubElyDX50m6OVne94RIjAnuYNCYrH2pGmQ7f4IKzU0F
 T7HoKP8ekv2IY/DHCpzAEgbTkXdNecYttPal2yzQbDlTAhHCiCMFxAwJ5 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10989"; a="2974294"
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; 
   d="scan'208";a="2974294"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 01:31:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; 
   d="scan'208";a="4631728"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa007.fm.intel.com with ESMTP; 20 Feb 2024 01:31:42 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 3/3] drm/i915: Disable SAGV on bw init,
 to force QGV point recalculation
Date: Tue, 20 Feb 2024 11:31:36 +0200
Message-Id: <20240220093136.32181-4-stanislav.lisovskiy@intel.com>
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

v6: Fix wrong platform checks, not to break everything else.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c      | 73 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/skl_watermark.c |  2 +-
 drivers/gpu/drm/i915/display/skl_watermark.h |  1 +
 3 files changed, 71 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 7baa1c13eccd..f9c301114f02 100644
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
@@ -852,6 +852,68 @@ static unsigned int icl_max_bw_qgv_point(struct drm_i915_private *i915,
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
+	/*
+	 * Just return if we can't control SAGV or don't have it.
+	 * This is different from situation when we have SAGV but just can't
+	 * afford it due to DBuf limitation - in case if SAGV is completely
+	 * disabled in a BIOS, we are not even allowed to send a PCode request,
+	 * as it will throw an error. So have to check it here.
+	 */
+	if (!intel_has_sagv(i915))
+		return;
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
@@ -943,7 +1005,7 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
 	for (i = 0; i < num_qgv_points; i++) {
 		unsigned int max_data_rate;
 
-		max_data_rate = adl_qgv_bw(i915, i, num_active_planes);
+		max_data_rate = adl_qgv_bw(i915, num_active_planes, i);
 
 		if (max_data_rate >= data_rate)
 			qgv_points |= BIT(i);
@@ -1351,5 +1413,8 @@ int intel_bw_init(struct drm_i915_private *dev_priv)
 	intel_atomic_global_obj_init(dev_priv, &dev_priv->display.bw.obj,
 				     &state->base, &intel_bw_funcs);
 
+	if (DISPLAY_VER(dev_priv) >= 11)
+		icl_force_disable_sagv(dev_priv, state);
+
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 56588d6e24ae..706f5afbbab4 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -63,7 +63,7 @@ static bool skl_needs_memory_bw_wa(struct drm_i915_private *i915)
 	return DISPLAY_VER(i915) == 9;
 }
 
-static bool
+bool
 intel_has_sagv(struct drm_i915_private *i915)
 {
 	return HAS_SAGV(i915) &&
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index fb0da36fd3ec..4cca93cd83ad 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -25,6 +25,7 @@ void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
 void intel_sagv_post_plane_update(struct intel_atomic_state *state);
 bool intel_can_enable_sagv(struct drm_i915_private *i915,
 			   const struct intel_bw_state *bw_state);
+bool intel_has_sagv(struct drm_i915_private *i915);
 
 u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *i915,
 			    const struct skl_ddb_entry *entry);
-- 
2.37.3

