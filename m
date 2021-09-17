Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0A2410064
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 22:47:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2FF36E04A;
	Fri, 17 Sep 2021 20:47:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C460E6E048
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 20:47:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10110"; a="222923334"
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="222923334"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 13:47:18 -0700
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="510073013"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 13:47:17 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Fri, 17 Sep 2021 13:52:41 -0700
Message-Id: <20210917205241.231527-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210917205241.231527-1-jose.souza@intel.com>
References: <20210917205241.231527-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/display: Match PSR2 selective
 fetch sequences with specification
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

We were not completely following the selective fetch programming
sequence, here some things we were doing wrong:
- not programming plane selective fetch a PSR2_MAN_TRK_CTL registers
when doing a modeset
- programming PSR2_MAN_TRK_CTL out of vblank

With this changes the last remainig underrun found in Alderlake-P is
fixed.

Bspec: 55229
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c   |  4 ++-
 drivers/gpu/drm/i915/display/intel_display.c  | 12 +++----
 drivers/gpu/drm/i915/display/intel_psr.c      | 33 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_psr.h      |  2 ++
 .../drm/i915/display/skl_universal_plane.c    |  4 +--
 5 files changed, 36 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index c7618fef01439..901ad3a4c8c3b 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -536,8 +536,10 @@ static void i9xx_update_cursor(struct intel_plane *plane,
 	if (DISPLAY_VER(dev_priv) >= 9)
 		skl_write_cursor_wm(plane, crtc_state);
 
-	if (!intel_crtc_needs_modeset(crtc_state))
+	if (plane_state)
 		intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, 0);
+	else
+		intel_psr2_disable_plane_sel_fetch(plane, crtc_state);
 
 	if (plane->cursor.base != base ||
 	    plane->cursor.size != fbc_ctl ||
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f6c0c595f6313..224bf622a1c1a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6812,11 +6812,9 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 
 	}
 
-	if (!mode_changed) {
-		ret = intel_psr2_sel_fetch_update(state, crtc);
-		if (ret)
-			return ret;
-	}
+	ret = intel_psr2_sel_fetch_update(state, crtc);
+	if (ret)
+		return ret;
 
 	return 0;
 }
@@ -9709,10 +9707,10 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 
 		if (new_crtc_state->update_pipe)
 			intel_pipe_fastset(old_crtc_state, new_crtc_state);
-
-		intel_psr2_program_trans_man_trk_ctl(new_crtc_state);
 	}
 
+	intel_psr2_program_trans_man_trk_ctl(new_crtc_state);
+
 	if (dev_priv->display.atomic_update_watermarks)
 		dev_priv->display.atomic_update_watermarks(state, crtc);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index bd13325782f11..101a23bdd7b5b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -561,15 +561,16 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 		val |= EDP_PSR2_SU_SDP_SCANLINE;
 
 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
+		u32 tmp;
+
 		/* Wa_1408330847 */
 		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
 				     DIS_RAM_BYPASS_PSR2_MAN_TRACK,
 				     DIS_RAM_BYPASS_PSR2_MAN_TRACK);
 
-		intel_de_write(dev_priv,
-			       PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
-			       PSR2_MAN_TRK_CTL_ENABLE);
+		tmp = intel_de_read(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder));
+		drm_WARN_ON(&dev_priv->drm, !(tmp & PSR2_MAN_TRK_CTL_ENABLE));
 	} else if (HAS_PSR2_SEL_FETCH(dev_priv)) {
 		intel_de_write(dev_priv,
 			       PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder), 0);
@@ -1450,6 +1451,18 @@ static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
 	intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
 }
 
+void intel_psr2_disable_plane_sel_fetch(struct intel_plane *plane,
+					const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	enum pipe pipe = plane->pipe;
+
+	if (!crtc_state->enable_psr2_sel_fetch)
+		return;
+
+	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
+}
+
 void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
 					const struct intel_crtc_state *crtc_state,
 					const struct intel_plane_state *plane_state,
@@ -1464,11 +1477,11 @@ void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
 	if (!crtc_state->enable_psr2_sel_fetch)
 		return;
 
-	val = plane_state ? plane_state->ctl : 0;
-	val &= plane->id == PLANE_CURSOR ? val : PLANE_SEL_FETCH_CTL_ENABLE;
-	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), val);
-	if (!val || plane->id == PLANE_CURSOR)
+	if (plane->id == PLANE_CURSOR) {
+		intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id),
+				  plane_state->ctl);
 		return;
+	}
 
 	clip = &plane_state->psr2_sel_fetch_area;
 
@@ -1487,14 +1500,16 @@ void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
 	val = (drm_rect_height(clip) - 1) << 16;
 	val |= (drm_rect_width(&plane_state->uapi.src) >> 16) - 1;
 	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_SIZE(pipe, plane->id), val);
+
+	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id),
+			  PLANE_SEL_FETCH_CTL_ENABLE);
 }
 
 void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (!HAS_PSR2_SEL_FETCH(dev_priv) ||
-	    !crtc_state->enable_psr2_sel_fetch)
+	if (!crtc_state->enable_psr2_sel_fetch)
 		return;
 
 	intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(crtc_state->cpu_transcoder),
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 641521b101c82..e502964697c62 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -51,6 +51,8 @@ void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
 					const struct intel_crtc_state *crtc_state,
 					const struct intel_plane_state *plane_state,
 					int color_plane);
+void intel_psr2_disable_plane_sel_fetch(struct intel_plane *plane,
+					const struct intel_crtc_state *crtc_state);
 void intel_psr_pause(struct intel_dp *intel_dp);
 void intel_psr_resume(struct intel_dp *intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 724e7b04f3b63..247155f2a5538 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -656,6 +656,7 @@ skl_disable_plane(struct intel_plane *plane,
 
 	skl_write_plane_wm(plane, crtc_state);
 
+	intel_psr2_disable_plane_sel_fetch(plane, crtc_state);
 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
 	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
 
@@ -1096,8 +1097,7 @@ skl_program_plane(struct intel_plane *plane,
 				  (plane_state->view.color_plane[1].y << 16) |
 				   plane_state->view.color_plane[1].x);
 
-	if (!drm_atomic_crtc_needs_modeset(&crtc_state->uapi))
-		intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, color_plane);
+	intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, color_plane);
 
 	/*
 	 * Enable the scaler before the plane so that we don't
-- 
2.33.0

