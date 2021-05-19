Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BC5388374
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 02:07:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67BB16E11A;
	Wed, 19 May 2021 00:06:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ABB66E11A
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 00:06:53 +0000 (UTC)
IronPort-SDR: OzLpWe2uJqEAW/3850bBDzxVsr8ZFhALg4yFzBmsYfW6cwa458Uqm5S2ECEwpzrK8UaT8/QygH
 byae3a2B6msw==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="264768403"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="264768403"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 17:06:51 -0700
IronPort-SDR: 8Dv72i0Oc5kIRX4h2T5FWAdZsj31gb0jyYUzY3Q991HR6tv0IYyW5KIpyRpxAPXudXGFhFy9Kz
 uPnKakuUXrUQ==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="473214751"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 17:06:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 May 2021 17:06:11 -0700
Message-Id: <20210519000625.3184321-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210519000625.3184321-1-lucas.demarchi@intel.com>
References: <20210519000625.3184321-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 03/17] drm/i915/adl_p: Add dedicated SAGV watermarks
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

From: Matt Roper <matthew.d.roper@intel.com>

XE_LPD reduces the number of regular watermark latency levels from 8
to 6 on non-dgfx platforms.  However the hardware also adds a special
purpose SAGV wateramrk (and an accompanying transition watermark) that
will be used by the hardware in place of the level 0 values during SAGV
transitions.

Bspec: 49325, 49326, 50419
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 32 +++++++++++
 drivers/gpu/drm/i915/i915_drv.h              |  2 +
 drivers/gpu/drm/i915/i915_reg.h              | 59 ++++++++++++++------
 drivers/gpu/drm/i915/intel_pm.c              | 54 ++++++++++++++++--
 4 files changed, 126 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 422b59ebf6dc..47251b2bc8a4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8750,6 +8750,38 @@ static void verify_wm_state(struct intel_crtc *crtc,
 				hw_wm_level->lines);
 		}
 
+		hw_wm_level = &hw->wm.planes[plane->id].sagv.wm0;
+		sw_wm_level = &sw_wm->planes[plane->id].sagv.wm0;
+
+		if (HAS_HW_SAGV_WM(dev_priv) &&
+		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
+			drm_err(&dev_priv->drm,
+				"[PLANE:%d:%s] mismatch in SAGV WM (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
+				plane->base.base.id, plane->base.name,
+				sw_wm_level->enable,
+				sw_wm_level->blocks,
+				sw_wm_level->lines,
+				hw_wm_level->enable,
+				hw_wm_level->blocks,
+				hw_wm_level->lines);
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
+				sw_wm_level->enable,
+				sw_wm_level->blocks,
+				sw_wm_level->lines,
+				hw_wm_level->enable,
+				hw_wm_level->blocks,
+				hw_wm_level->lines);
+		}
+
 		/* DDB */
 		hw_ddb_entry = &hw->ddb_y[plane->id];
 		sw_ddb_entry = &new_crtc_state->wm.skl.plane_ddb_y[plane->id];
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9aee6a045590..702841e3f899 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -589,6 +589,8 @@ i915_fence_timeout(const struct drm_i915_private *i915)
 /* Amount of SAGV/QGV points, BSpec precisely defines this */
 #define I915_NUM_QGV_POINTS 8
 
+#define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
+
 struct ddi_vbt_port_info {
 	/* Non-NULL if port present. */
 	struct intel_bios_encoder_data *devdata;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 089b5a59bed3..2e5826860b40 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6426,16 +6426,28 @@ enum {
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
 #define   PLANE_WM_LINES_MASK	REG_GENMASK(26, 14)
@@ -6443,19 +6455,32 @@ enum {
 
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
index 15d9a64e7b4c..95fda20d5547 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -2983,7 +2983,9 @@ static void intel_fixup_cur_wm_latency(struct drm_i915_private *dev_priv,
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
@@ -4011,8 +4013,9 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 		 * latter from the plane commit hooks (especially in the legacy
 		 * cursor case)
 		 */
-		pipe_wm->use_sagv_wm = DISPLAY_VER(dev_priv) >= 12 &&
-				       intel_can_enable_sagv(dev_priv, new_bw_state);
+		pipe_wm->use_sagv_wm = !HAS_HW_SAGV_WM(dev_priv) &&
+			DISPLAY_VER(dev_priv) >= 12 &&
+			intel_can_enable_sagv(dev_priv, new_bw_state);
 	}
 
 	if (intel_can_enable_sagv(dev_priv, new_bw_state) !=
@@ -5619,6 +5622,13 @@ void skl_write_plane_wm(struct intel_plane *plane,
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
@@ -5652,6 +5662,15 @@ void skl_write_cursor_wm(struct intel_plane *plane,
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
 
@@ -6016,6 +6035,15 @@ static bool skl_plane_selected_wm_equals(struct intel_plane *plane,
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
@@ -6234,7 +6262,25 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 
 		skl_wm_level_from_reg_val(val, &wm->trans_wm);
 
-		if (DISPLAY_VER(dev_priv) >= 12) {
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
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
