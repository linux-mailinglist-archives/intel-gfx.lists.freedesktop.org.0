Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39154A3AA33
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 21:59:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4118C10E766;
	Tue, 18 Feb 2025 20:59:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bgqREIsz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39C8D10E764;
 Tue, 18 Feb 2025 20:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739912339; x=1771448339;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AzhnFC4+g3ddaFUkjiC3UDtVgGOALeS/wyh/d1tC5qc=;
 b=bgqREIszySYKf/evUHIuBupY3igLIx0gHe/Hx3rS6rza0VJonJ2sk7C7
 XZPRGZZVqFx4Erxzv19HPh+B9CNih5tb4+Tdggi/tl/FmyNH1fkufh2zb
 5cptbO2U0oE7z3gUIFktEg459phbnp84bcRC/ScbGv3sUmqVt8c4OyuOa
 4/8kahLwq/0X/3//fxtMafsm2U34TFl/6dhG+1HTWmDUZ5/3AeuRCijHl
 lYWa1xVPtF7QuHQ7Q39gxufiW7/HedsyKdD7vX32mHZLmu+4qKtz4HiqK
 rpDAP+Qfe7HEBqvzcWsemUJ0Kocpg/9/5OkKZQjUV47dYJtHsc6Rq4Tr/ w==;
X-CSE-ConnectionGUID: ITp8N89kSzWL2PwRu/j0+w==
X-CSE-MsgGUID: SWIpkTBbTNO9TDZG1/445w==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="28228337"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="28228337"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 12:58:59 -0800
X-CSE-ConnectionGUID: IZMvmkZzRkSJyM9NvlpUuw==
X-CSE-MsgGUID: AG43K6cbQDGibYVormp7tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114688978"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 12:58:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 22:58:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915/dsb: Plumb dsb into plane scaler functions
Date: Tue, 18 Feb 2025 22:58:48 +0200
Message-ID: <20250218205850.1422-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250218205850.1422-1-ville.syrjala@linux.intel.com>
References: <20250218205850.1422-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We want to start doing scaler programming (plane scalers
only initially) on the DSB. To that end plumb the DSB into
the relevant places in the scaler code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     | 60 +++++++++++--------
 drivers/gpu/drm/i915/display/skl_scaler.h     |  7 ++-
 .../drm/i915/display/skl_universal_plane.c    |  4 +-
 4 files changed, 42 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8d46c092fa4d..826b001a66fa 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6805,7 +6805,7 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 	 */
 	if (DISPLAY_VER(dev_priv) >= 9 &&
 	    !intel_crtc_needs_modeset(new_crtc_state))
-		skl_detach_scalers(new_crtc_state);
+		skl_detach_scalers(NULL, new_crtc_state);
 
 	if (intel_crtc_vrr_enabling(state, crtc))
 		intel_vrr_enable(new_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 3d24fa773094..ee81220a7c88 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -666,12 +666,14 @@ static u16 glk_nearest_filter_coef(int t)
  */
 
 static void glk_program_nearest_filter_coefs(struct intel_display *display,
+					     struct intel_dsb *dsb,
 					     enum pipe pipe, int id, int set)
 {
 	int i;
 
-	intel_de_write_fw(display, GLK_PS_COEF_INDEX_SET(pipe, id, set),
-			  PS_COEF_INDEX_AUTO_INC);
+	intel_de_write_dsb(display, dsb,
+			   GLK_PS_COEF_INDEX_SET(pipe, id, set),
+			   PS_COEF_INDEX_AUTO_INC);
 
 	for (i = 0; i < 17 * 7; i += 2) {
 		u32 tmp;
@@ -683,11 +685,12 @@ static void glk_program_nearest_filter_coefs(struct intel_display *display,
 		t = glk_coef_tap(i + 1);
 		tmp |= glk_nearest_filter_coef(t) << 16;
 
-		intel_de_write_fw(display, GLK_PS_COEF_DATA_SET(pipe, id, set),
-				  tmp);
+		intel_de_write_dsb(display, dsb,
+				   GLK_PS_COEF_DATA_SET(pipe, id, set), tmp);
 	}
 
-	intel_de_write_fw(display, GLK_PS_COEF_INDEX_SET(pipe, id, set), 0);
+	intel_de_write_dsb(display, dsb,
+			   GLK_PS_COEF_INDEX_SET(pipe, id, set), 0);
 }
 
 static u32 skl_scaler_get_filter_select(enum drm_scaling_filter filter, int set)
@@ -703,14 +706,15 @@ static u32 skl_scaler_get_filter_select(enum drm_scaling_filter filter, int set)
 	return PS_FILTER_MEDIUM;
 }
 
-static void skl_scaler_setup_filter(struct intel_display *display, enum pipe pipe,
+static void skl_scaler_setup_filter(struct intel_display *display,
+				    struct intel_dsb *dsb, enum pipe pipe,
 				    int id, int set, enum drm_scaling_filter filter)
 {
 	switch (filter) {
 	case DRM_SCALING_FILTER_DEFAULT:
 		break;
 	case DRM_SCALING_FILTER_NEAREST_NEIGHBOR:
-		glk_program_nearest_filter_coefs(display, pipe, id, set);
+		glk_program_nearest_filter_coefs(display, dsb, pipe, id, set);
 		break;
 	default:
 		MISSING_CASE(filter);
@@ -759,7 +763,7 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 
 	trace_intel_pipe_scaler_update_arm(crtc, id, x, y, width, height);
 
-	skl_scaler_setup_filter(display, pipe, id, 0,
+	skl_scaler_setup_filter(display, NULL, pipe, id, 0,
 				crtc_state->hw.scaling_filter);
 
 	intel_de_write_fw(display, SKL_PS_CTRL(pipe, id), ps_ctrl);
@@ -775,7 +779,8 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 }
 
 void
-skl_program_plane_scaler(struct intel_plane *plane,
+skl_program_plane_scaler(struct intel_dsb *dsb,
+			 struct intel_plane *plane,
 			 const struct intel_crtc_state *crtc_state,
 			 const struct intel_plane_state *plane_state)
 {
@@ -825,35 +830,38 @@ skl_program_plane_scaler(struct intel_plane *plane,
 	trace_intel_plane_scaler_update_arm(plane, scaler_id,
 					    crtc_x, crtc_y, crtc_w, crtc_h);
 
-	skl_scaler_setup_filter(display, pipe, scaler_id, 0,
+	skl_scaler_setup_filter(display, dsb, pipe, scaler_id, 0,
 				plane_state->hw.scaling_filter);
 
-	intel_de_write_fw(display, SKL_PS_CTRL(pipe, scaler_id), ps_ctrl);
-	intel_de_write_fw(display, SKL_PS_VPHASE(pipe, scaler_id),
-			  PS_Y_PHASE(y_vphase) | PS_UV_RGB_PHASE(uv_rgb_vphase));
-	intel_de_write_fw(display, SKL_PS_HPHASE(pipe, scaler_id),
-			  PS_Y_PHASE(y_hphase) | PS_UV_RGB_PHASE(uv_rgb_hphase));
-	intel_de_write_fw(display, SKL_PS_WIN_POS(pipe, scaler_id),
-			  PS_WIN_XPOS(crtc_x) | PS_WIN_YPOS(crtc_y));
-	intel_de_write_fw(display, SKL_PS_WIN_SZ(pipe, scaler_id),
-			  PS_WIN_XSIZE(crtc_w) | PS_WIN_YSIZE(crtc_h));
+	intel_de_write_dsb(display, dsb, SKL_PS_CTRL(pipe, scaler_id),
+			   ps_ctrl);
+	intel_de_write_dsb(display, dsb, SKL_PS_VPHASE(pipe, scaler_id),
+			   PS_Y_PHASE(y_vphase) | PS_UV_RGB_PHASE(uv_rgb_vphase));
+	intel_de_write_dsb(display, dsb, SKL_PS_HPHASE(pipe, scaler_id),
+			   PS_Y_PHASE(y_hphase) | PS_UV_RGB_PHASE(uv_rgb_hphase));
+	intel_de_write_dsb(display, dsb, SKL_PS_WIN_POS(pipe, scaler_id),
+			   PS_WIN_XPOS(crtc_x) | PS_WIN_YPOS(crtc_y));
+	intel_de_write_dsb(display, dsb, SKL_PS_WIN_SZ(pipe, scaler_id),
+			   PS_WIN_XSIZE(crtc_w) | PS_WIN_YSIZE(crtc_h));
 }
 
-static void skl_detach_scaler(struct intel_crtc *crtc, int id)
+static void skl_detach_scaler(struct intel_dsb *dsb,
+			      struct intel_crtc *crtc, int id)
 {
 	struct intel_display *display = to_intel_display(crtc);
 
 	trace_intel_scaler_disable_arm(crtc, id);
 
-	intel_de_write_fw(display, SKL_PS_CTRL(crtc->pipe, id), 0);
-	intel_de_write_fw(display, SKL_PS_WIN_POS(crtc->pipe, id), 0);
-	intel_de_write_fw(display, SKL_PS_WIN_SZ(crtc->pipe, id), 0);
+	intel_de_write_dsb(display, dsb, SKL_PS_CTRL(crtc->pipe, id), 0);
+	intel_de_write_dsb(display, dsb, SKL_PS_WIN_POS(crtc->pipe, id), 0);
+	intel_de_write_dsb(display, dsb, SKL_PS_WIN_SZ(crtc->pipe, id), 0);
 }
 
 /*
  * This function detaches (aka. unbinds) unused scalers in hardware
  */
-void skl_detach_scalers(const struct intel_crtc_state *crtc_state)
+void skl_detach_scalers(struct intel_dsb *dsb,
+			const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct intel_crtc_scaler_state *scaler_state =
@@ -863,7 +871,7 @@ void skl_detach_scalers(const struct intel_crtc_state *crtc_state)
 	/* loop through and disable scalers that aren't in use */
 	for (i = 0; i < crtc->num_scalers; i++) {
 		if (!scaler_state->scalers[i].in_use)
-			skl_detach_scaler(crtc, i);
+			skl_detach_scaler(dsb, crtc, i);
 	}
 }
 
@@ -873,7 +881,7 @@ void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state)
 	int i;
 
 	for (i = 0; i < crtc->num_scalers; i++)
-		skl_detach_scaler(crtc, i);
+		skl_detach_scaler(NULL, crtc, i);
 }
 
 void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 4d2e2dbb1666..355ea15260ca 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -8,6 +8,7 @@
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_dsb;
 struct intel_plane;
 struct intel_plane_state;
 
@@ -21,10 +22,12 @@ int intel_atomic_setup_scalers(struct intel_atomic_state *state,
 
 void skl_pfit_enable(const struct intel_crtc_state *crtc_state);
 
-void skl_program_plane_scaler(struct intel_plane *plane,
+void skl_program_plane_scaler(struct intel_dsb *dsb,
+			      struct intel_plane *plane,
 			      const struct intel_crtc_state *crtc_state,
 			      const struct intel_plane_state *plane_state);
-void skl_detach_scalers(const struct intel_crtc_state *crtc_state);
+void skl_detach_scalers(struct intel_dsb *dsb,
+			const struct intel_crtc_state *crtc_state);
 void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
 
 void skl_scaler_get_config(struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index cd9762947f1d..3488c7ae6d8a 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1466,7 +1466,7 @@ skl_plane_update_arm(struct intel_dsb *dsb,
 	 * TODO: split into noarm+arm pair
 	 */
 	if (plane_state->scaler_id >= 0)
-		skl_program_plane_scaler(plane, crtc_state, plane_state);
+		skl_program_plane_scaler(dsb, plane, crtc_state, plane_state);
 
 	/*
 	 * The control register self-arms if the plane was previously
@@ -1646,7 +1646,7 @@ icl_plane_update_arm(struct intel_dsb *dsb,
 	 * TODO: split into noarm+arm pair
 	 */
 	if (plane_state->scaler_id >= 0)
-		skl_program_plane_scaler(plane, crtc_state, plane_state);
+		skl_program_plane_scaler(dsb, plane, crtc_state, plane_state);
 
 	icl_plane_update_sel_fetch_arm(dsb, plane, crtc_state, plane_state);
 
-- 
2.45.3

