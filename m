Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B70D288A0C1
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 14:02:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4F7610E88D;
	Mon, 25 Mar 2024 13:02:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ypt8lmjl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AD4E10E88D
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 13:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711371741; x=1742907741;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+2MCUd5q+1G0iFohBDDddRF/XPPbzQM51UaZq7jCUfc=;
 b=Ypt8lmjlzT0AeBIloDDEaPhF8VVrXaL8J/tmOE1bQuYCAuVMdP29tvHq
 1NFuInYMK8orZdh/L/KEkeFCrGg9LKW/H3yUOX72Ux8UJXj+FGQLMGnYu
 pN7GiIJv1RiueD7+XI+J1WB1Xbl1ws7RJzpsaOQ9aTo0yhpHT7bW6ubF+
 eaz+TmOFoD4hWyL2olbX/G2ULJo+IC4A6LncHsn62Ln/NEi6eJQiAd+31
 3KhZwpMLv4x9XF+vlJzONJjGFDxkYi+3fiEKwo5a2BGCMNsmb5FsaCsKh
 9A26Lp0J3c9aJJXexeYHn/+HV78s2dAZxTqSsa+NPSA/ZIbV5Eowb32N+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="6484228"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; 
   d="scan'208";a="6484228"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 06:02:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="20289166"
Received: from kridax-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.252.55.79])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 06:02:17 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, stanislav.lisovskiy@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH v8 3/4] drm/i915: Disable SAGV on bw init,
 to force QGV point recalculation
Date: Mon, 25 Mar 2024 15:01:55 +0200
Message-Id: <20240325130156.205726-4-vinod.govindapillai@intel.com>
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

Problem is that on some platforms, we do get QGV point mask in wrong
state on boot. However driver assumes it is set to 0
(i.e all points allowed), however in reality we might get them all
restricted, causing issues.
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
      However we still need to address the case, when no display is
      connected, which anyway requires much more changes.

v5: - Put PCode request back and apply temporary hack to make the
      request succeed(in case if there 2 PSF GV points with same BW, PCode
      accepts only if both points are restricted/unrestricted same time)
    - Fix argument sequence for adl_qgv_bw(Ville Syrjälä)

v6: - Fix wrong platform checks, not to break everything else.

v7: - Split the handling of quplicate QGV/PSF GV points (Vinod)
      Restrict force disable to display version below 14 (Vinod)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c      | 55 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/skl_watermark.c |  2 +-
 drivers/gpu/drm/i915/display/skl_watermark.h |  1 +
 3 files changed, 54 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index b3d7893f2cd7..844d2d9efeb4 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -162,7 +162,9 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 				1);
 
 	if (ret < 0) {
-		drm_err(&dev_priv->drm, "Failed to disable qgv points (%d) points: 0x%x\n", ret, points_mask);
+		drm_err(&dev_priv->drm,
+			"Failed to disable qgv points (0x%x) points: 0x%x\n",
+			ret, points_mask);
 		return ret;
 	}
 
@@ -851,6 +853,46 @@ static unsigned int icl_max_bw_qgv_point_mask(struct drm_i915_private *i915,
 	return max_bw_point_mask;
 }
 
+static unsigned int icl_max_bw_psf_gv_point_mask(struct drm_i915_private *i915)
+{
+	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
+	unsigned int max_bw_point_mask = 0;
+	unsigned int max_bw = 0;
+	int i;
+
+	for (i = 0; i < num_psf_gv_points; i++) {
+		unsigned int max_data_rate = adl_psf_bw(i915, i);
+
+		if (max_data_rate > max_bw) {
+			max_bw_point_mask = BIT(i);
+			max_bw = max_data_rate;
+		}
+	}
+
+	return max_bw_point_mask;
+}
+
+static void icl_force_disable_sagv(struct drm_i915_private *i915,
+				   struct intel_bw_state *bw_state)
+{
+	unsigned int qgv_points = icl_max_bw_qgv_point_mask(i915, 0);
+	unsigned int psf_points = icl_max_bw_psf_gv_point_mask(i915);
+	int ret;
+
+	bw_state->qgv_points_mask = ~(ICL_PCODE_REQ_QGV_PT(qgv_points)|
+				      ADLS_PCODE_REQ_PSF_PT(psf_points)) &
+				      icl_qgv_points_mask(i915);
+
+	drm_dbg_kms(&i915->drm, "Forcing SAGV disable: mask %x\n", bw_state->qgv_points_mask);
+
+	ret = icl_pcode_restrict_qgv_points(i915, bw_state->qgv_points_mask);
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
@@ -1337,7 +1379,7 @@ static const struct intel_global_state_funcs intel_bw_funcs = {
 	.atomic_destroy_state = intel_bw_destroy_state,
 };
 
-int intel_bw_init(struct drm_i915_private *dev_priv)
+int intel_bw_init(struct drm_i915_private *i915)
 {
 	struct intel_bw_state *state;
 
@@ -1345,8 +1387,15 @@ int intel_bw_init(struct drm_i915_private *dev_priv)
 	if (!state)
 		return -ENOMEM;
 
-	intel_atomic_global_obj_init(dev_priv, &dev_priv->display.bw.obj,
+	intel_atomic_global_obj_init(i915, &i915->display.bw.obj,
 				     &state->base, &intel_bw_funcs);
 
+	/*
+	 * Limit this only if we have SAGV. And for Display version 14 onwards
+	 * sagv is handled though pmdemand requests
+	 */
+	if (intel_has_sagv(i915) && IS_DISPLAY_VER(i915, 11, 13))
+		icl_force_disable_sagv(i915, state);
+
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index bc341abcab2f..9c2ac0312f6b 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -70,7 +70,7 @@ static bool skl_needs_memory_bw_wa(struct drm_i915_private *i915)
 	return DISPLAY_VER(i915) == 9;
 }
 
-static bool
+bool
 intel_has_sagv(struct drm_i915_private *i915)
 {
 	return HAS_SAGV(i915) &&
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index bf7516620ab6..21ef2daaa4e8 100644
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
2.34.1

