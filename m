Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE461338077
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 23:37:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59E346EE9C;
	Thu, 11 Mar 2021 22:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35FB36EE91
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 22:36:48 +0000 (UTC)
IronPort-SDR: VsiBD4BCnMYbgjDU/8LhdKYrLhegViaeKzczCMUPp8rm58AhX5cVUs/dP/fV8RC9Jpa/4Kqy6M
 6AcVWcmHVpPw==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="250116433"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="250116433"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:45 -0800
IronPort-SDR: A+/vw0/96ZnrM0M275y5pqWnsCro+iHfUIkcGkL+Pn9DD7BdfVB8/vpvJW3d+4MVWP7Y4x0DcN
 3OIpXcVFfwyw==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="438852727"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:45 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:36:03 -0800
Message-Id: <20210311223632.3191939-28-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210311223632.3191939-1-matthew.d.roper@intel.com>
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 27/56] drm/i915/adl_p: Add dedicated SAGV
 watermarks
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

XE_LPD reduces the number of regular watermark latency levels from 8
to 6 on non-dgfx platforms.  However the hardware also adds a special
purpose SAGV wateramrk (and an accompanying transition watermark) that
will be used by the hardware in place of the level 0 values during SAGV
transitions.

Bspec: 49325, 49326, 50419
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 32 +++++++++++
 drivers/gpu/drm/i915/i915_drv.h              |  2 +
 drivers/gpu/drm/i915/i915_reg.h              | 59 ++++++++++++++------
 drivers/gpu/drm/i915/intel_pm.c              | 56 +++++++++++++++++--
 4 files changed, 128 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d032f1782bcb..f0a0390f8497 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9243,6 +9243,38 @@ static void verify_wm_state(struct intel_crtc *crtc,
 				hw_wm_level->plane_res_l);
 		}
 
+		hw_wm_level = &hw->wm.planes[plane->id].sagv.wm0;
+		sw_wm_level = &sw_wm->planes[plane->id].sagv.wm0;
+
+		if (HAS_HW_SAGV_WM(dev_priv) &&
+		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
+			drm_err(&dev_priv->drm,
+				"[PLANE:%d:%s] mismatch in SAGV WM (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
+				plane->base.base.id, plane->base.name,
+				sw_wm_level->plane_en,
+				sw_wm_level->plane_res_b,
+				sw_wm_level->plane_res_l,
+				hw_wm_level->plane_en,
+				hw_wm_level->plane_res_b,
+				hw_wm_level->plane_res_l);
+		}
+
+		hw_wm_level = &hw->wm.planes[plane->id].sagv.trans_wm;
+		sw_wm_level = &sw_wm->planes[plane->id].sagv.trans_wm;
+
+		if (HAS_HW_SAGV_WM(dev_priv) &&
+		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
+			drm_err(&dev_priv->drm,
+				"[PLANE:%d:%s] mismatch in SAGV trans WM (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
+				plane->base.base.id, plane->base.name,
+				sw_wm_level->plane_en,
+				sw_wm_level->plane_res_b,
+				sw_wm_level->plane_res_l,
+				hw_wm_level->plane_en,
+				hw_wm_level->plane_res_b,
+				hw_wm_level->plane_res_l);
+		}
+
 		/* DDB */
 		hw_ddb_entry = &hw->ddb_y[plane->id];
 		sw_ddb_entry = &new_crtc_state->wm.skl.plane_ddb_y[plane->id];
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b702e4f02ae7..10b99f9e380b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -582,6 +582,8 @@ i915_fence_timeout(const struct drm_i915_private *i915)
 /* Amount of SAGV/QGV points, BSpec precisely defines this */
 #define I915_NUM_QGV_POINTS 8
 
+#define HAS_HW_SAGV_WM(i915) ((DISPLAY_VER(i915) == 13) && !IS_DGFX(i915))
+
 struct ddi_vbt_port_info {
 	/* Non-NULL if port present. */
 	const struct child_device_config *child;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 6a48e046dedf..cdb2f7b136a9 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6415,16 +6415,28 @@ enum {
 /* Watermark register definitions for SKL */
 #define _CUR_WM_A_0		0x70140
 #define _CUR_WM_B_0		0x71140
+#define _CUR_WM_SAGV_A		0x70158
+#define _CUR_WM_SAGV_B		0x71158
+#define _CUR_WM_SAGV_TRANS_A	0x7015C
+#define _CUR_WM_SAGV_TRANS_B	0x7115C
+#define _CUR_WM_TRANS_A		0x70168
+#define _CUR_WM_TRANS_B		0x71168
 #define _PLANE_WM_1_A_0		0x70240
 #define _PLANE_WM_1_B_0		0x71240
 #define _PLANE_WM_2_A_0		0x70340
 #define _PLANE_WM_2_B_0		0x71340
-#define _PLANE_WM_TRANS_1_A_0	0x70268
-#define _PLANE_WM_TRANS_1_B_0	0x71268
-#define _PLANE_WM_TRANS_2_A_0	0x70368
-#define _PLANE_WM_TRANS_2_B_0	0x71368
-#define _CUR_WM_TRANS_A_0	0x70168
-#define _CUR_WM_TRANS_B_0	0x71168
+#define _PLANE_WM_SAGV_1_A	0x70258
+#define _PLANE_WM_SAGV_1_B	0x71258
+#define _PLANE_WM_SAGV_2_A	0x70358
+#define _PLANE_WM_SAGV_2_B	0x71358
+#define _PLANE_WM_SAGV_TRANS_1_A	0x7025C
+#define _PLANE_WM_SAGV_TRANS_1_B	0x7125C
+#define _PLANE_WM_SAGV_TRANS_2_A	0x7035C
+#define _PLANE_WM_SAGV_TRANS_2_B	0x7135C
+#define _PLANE_WM_TRANS_1_A	0x70268
+#define _PLANE_WM_TRANS_1_B	0x71268
+#define _PLANE_WM_TRANS_2_A	0x70368
+#define _PLANE_WM_TRANS_2_B	0x71368
 #define   PLANE_WM_EN		(1 << 31)
 #define   PLANE_WM_IGNORE_LINES	(1 << 30)
 #define   PLANE_WM_LINES_MASK	REG_GENMASK(21, 14)
@@ -6432,19 +6444,32 @@ enum {
 
 #define _CUR_WM_0(pipe) _PIPE(pipe, _CUR_WM_A_0, _CUR_WM_B_0)
 #define CUR_WM(pipe, level) _MMIO(_CUR_WM_0(pipe) + ((4) * (level)))
-#define CUR_WM_TRANS(pipe) _MMIO_PIPE(pipe, _CUR_WM_TRANS_A_0, _CUR_WM_TRANS_B_0)
-
+#define CUR_WM_SAGV(pipe) _MMIO_PIPE(pipe, _CUR_WM_SAGV_A, _CUR_WM_SAGV_B)
+#define CUR_WM_SAGV_TRANS(pipe) _MMIO_PIPE(pipe, _CUR_WM_SAGV_TRANS_A, _CUR_WM_SAGV_TRANS_B)
+#define CUR_WM_TRANS(pipe) _MMIO_PIPE(pipe, _CUR_WM_TRANS_A, _CUR_WM_TRANS_B)
 #define _PLANE_WM_1(pipe) _PIPE(pipe, _PLANE_WM_1_A_0, _PLANE_WM_1_B_0)
 #define _PLANE_WM_2(pipe) _PIPE(pipe, _PLANE_WM_2_A_0, _PLANE_WM_2_B_0)
-#define _PLANE_WM_BASE(pipe, plane)	\
-			_PLANE(plane, _PLANE_WM_1(pipe), _PLANE_WM_2(pipe))
-#define PLANE_WM(pipe, plane, level)	\
-			_MMIO(_PLANE_WM_BASE(pipe, plane) + ((4) * (level)))
-#define _PLANE_WM_TRANS_1(pipe)	\
-			_PIPE(pipe, _PLANE_WM_TRANS_1_A_0, _PLANE_WM_TRANS_1_B_0)
-#define _PLANE_WM_TRANS_2(pipe)	\
-			_PIPE(pipe, _PLANE_WM_TRANS_2_A_0, _PLANE_WM_TRANS_2_B_0)
-#define PLANE_WM_TRANS(pipe, plane)	\
+#define _PLANE_WM_BASE(pipe, plane) \
+	_PLANE(plane, _PLANE_WM_1(pipe), _PLANE_WM_2(pipe))
+#define PLANE_WM(pipe, plane, level) \
+	_MMIO(_PLANE_WM_BASE(pipe, plane) + ((4) * (level)))
+#define _PLANE_WM_SAGV_1(pipe) \
+	_PIPE(pipe, _PLANE_WM_SAGV_1_A, _PLANE_WM_SAGV_1_B)
+#define _PLANE_WM_SAGV_2(pipe) \
+	_PIPE(pipe, _PLANE_WM_SAGV_2_A, _PLANE_WM_SAGV_2_B)
+#define PLANE_WM_SAGV(pipe, plane) \
+	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_1(pipe), _PLANE_WM_SAGV_2(pipe)))
+#define _PLANE_WM_SAGV_TRANS_1(pipe) \
+	_PIPE(pipe, _PLANE_WM_SAGV_TRANS_1_A, _PLANE_WM_SAGV_TRANS_1_B)
+#define _PLANE_WM_SAGV_TRANS_2(pipe) \
+	_PIPE(pipe, _PLANE_WM_SAGV_TRANS_2_A, _PLANE_WM_SAGV_TRANS_2_B)
+#define PLANE_WM_SAGV_TRANS(pipe, plane) \
+	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_TRANS_1(pipe), _PLANE_WM_SAGV_TRANS_2(pipe)))
+#define _PLANE_WM_TRANS_1(pipe) \
+	_PIPE(pipe, _PLANE_WM_TRANS_1_A, _PLANE_WM_TRANS_1_B)
+#define _PLANE_WM_TRANS_2(pipe) \
+	_PIPE(pipe, _PLANE_WM_TRANS_2_A, _PLANE_WM_TRANS_2_B)
+#define PLANE_WM_TRANS(pipe, plane) \
 	_MMIO(_PLANE(plane, _PLANE_WM_TRANS_1(pipe), _PLANE_WM_TRANS_2(pipe)))
 
 /* define the Watermark register on Ironlake */
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 0bad9cc76505..0052630fd9dd 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -2982,7 +2982,9 @@ static void intel_fixup_cur_wm_latency(struct drm_i915_private *dev_priv,
 int ilk_wm_max_level(const struct drm_i915_private *dev_priv)
 {
 	/* how many WM levels are we expecting */
-	if (DISPLAY_VER(dev_priv) >= 9)
+	if (HAS_HW_SAGV_WM(dev_priv))
+		return 5;
+	else if (DISPLAY_VER(dev_priv) >= 9)
 		return 7;
 	else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
 		return 4;
@@ -3998,8 +4000,10 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 		 * latter from the plane commit hooks (especially in the legacy
 		 * cursor case)
 		 */
-		pipe_wm->use_sagv_wm = DISPLAY_VER(dev_priv) >= 12 &&
-				       intel_can_enable_sagv(dev_priv, new_bw_state);
+
+		pipe_wm->use_sagv_wm = !HAS_HW_SAGV_WM(dev_priv) &&
+			DISPLAY_VER(dev_priv) >= 12 &&
+			intel_can_enable_sagv(dev_priv, new_bw_state);
 	}
 
 	if (intel_can_enable_sagv(dev_priv, new_bw_state) !=
@@ -5613,6 +5617,13 @@ void skl_write_plane_wm(struct intel_plane *plane,
 	skl_write_wm_level(dev_priv, PLANE_WM_TRANS(pipe, plane_id),
 			   skl_plane_trans_wm(pipe_wm, plane_id));
 
+	if (HAS_HW_SAGV_WM(dev_priv)) {
+		skl_write_wm_level(dev_priv, PLANE_WM_SAGV(pipe, plane_id),
+				   &wm->sagv.wm0);
+		skl_write_wm_level(dev_priv, PLANE_WM_SAGV_TRANS(pipe, plane_id),
+				   &wm->sagv.trans_wm);
+	}
+
 	if (DISPLAY_VER(dev_priv) >= 11) {
 		skl_ddb_entry_write(dev_priv,
 				    PLANE_BUF_CFG(pipe, plane_id), ddb_y);
@@ -5646,6 +5657,15 @@ void skl_write_cursor_wm(struct intel_plane *plane,
 	skl_write_wm_level(dev_priv, CUR_WM_TRANS(pipe),
 			   skl_plane_trans_wm(pipe_wm, plane_id));
 
+	if (HAS_HW_SAGV_WM(dev_priv)) {
+		const struct skl_plane_wm *wm = &pipe_wm->planes[plane_id];
+
+		skl_write_wm_level(dev_priv, CUR_WM_SAGV(pipe),
+				   &wm->sagv.wm0);
+		skl_write_wm_level(dev_priv, CUR_WM_SAGV_TRANS(pipe),
+				   &wm->sagv.trans_wm);
+	}
+
 	skl_ddb_entry_write(dev_priv, CUR_BUF_CFG(pipe), ddb);
 }
 
@@ -6010,6 +6030,15 @@ static bool skl_plane_selected_wm_equals(struct intel_plane *plane,
 			return false;
 	}
 
+	if (HAS_HW_SAGV_WM(i915)) {
+		const struct skl_plane_wm *old_wm = &old_pipe_wm->planes[plane->id];
+		const struct skl_plane_wm *new_wm = &new_pipe_wm->planes[plane->id];
+
+		if (!skl_wm_level_equals(&old_wm->sagv.wm0, &new_wm->sagv.wm0) ||
+		    !skl_wm_level_equals(&old_wm->sagv.trans_wm, &new_wm->sagv.trans_wm))
+			return false;
+	}
+
 	return skl_wm_level_equals(skl_plane_trans_wm(old_pipe_wm, plane->id),
 				   skl_plane_trans_wm(new_pipe_wm, plane->id));
 }
@@ -6228,7 +6257,26 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 
 		skl_wm_level_from_reg_val(val, &wm->trans_wm);
 
-		if (DISPLAY_VER(dev_priv) >= 12) {
+
+		if (HAS_HW_SAGV_WM(dev_priv)) {
+			if (plane_id != PLANE_CURSOR)
+				val = intel_uncore_read(&dev_priv->uncore,
+							PLANE_WM_SAGV(pipe, plane_id));
+			else
+				val = intel_uncore_read(&dev_priv->uncore,
+							CUR_WM_SAGV(pipe));
+
+			skl_wm_level_from_reg_val(val, &wm->sagv.wm0);
+
+			if (plane_id != PLANE_CURSOR)
+				val = intel_uncore_read(&dev_priv->uncore,
+							PLANE_WM_SAGV_TRANS(pipe, plane_id));
+			else
+				val = intel_uncore_read(&dev_priv->uncore,
+							CUR_WM_SAGV_TRANS(pipe));
+
+			skl_wm_level_from_reg_val(val, &wm->sagv.trans_wm);
+		} else if (DISPLAY_VER(dev_priv) >= 12) {
 			wm->sagv.wm0 = wm->wm[0];
 			wm->sagv.trans_wm = wm->trans_wm;
 		}
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
