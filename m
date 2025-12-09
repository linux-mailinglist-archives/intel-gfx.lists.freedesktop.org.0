Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC218CAFFA7
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 13:55:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 724CC10E541;
	Tue,  9 Dec 2025 12:55:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MkstTRj8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF4A910E541
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Dec 2025 12:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765284913; x=1796820913;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=M8xVWAHtYIzw+jx/qRzrQOysC6Yv+YMrEGM7pJiIjsE=;
 b=MkstTRj8UoBX/JyOffVCoGuK+WqasR05Xe7meDTzWa/xm+dx8l+XcU60
 b2dpXFoO7TPYcWND7XRnUxw50vfdfaw+52mKmaff97/H5teHuxx27gSgo
 9KkZwOURqaJftQ0VQX3Nbeo+sKzqt5MBTjNj8d8Tl75XVh9G7A8K217vy
 0VSxgVEcCZcLYzAorz4ixu3L1vx+dGYSZ3SMaCSwjcIUbGH4137ceoZxd
 m9k4Rifb4NK1u0EZ2Mrdh7WCIwSTjzur2Rk/BsjRjRDRSjC9JqXQBgELw
 LsLGD/c2pjuVX0lBAxZwWRp5CFhqOrJ89TRyV/y+yy4d0JbVKUQcB4P2J Q==;
X-CSE-ConnectionGUID: yu/L2PzNSw+y8Q2md1bKyA==
X-CSE-MsgGUID: +CQGe3ktRZ6Ub+Pf9mSkfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="67276392"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="67276392"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 04:55:12 -0800
X-CSE-ConnectionGUID: xnhkXDj4RheJzrc+HgYRpw==
X-CSE-MsgGUID: MppKXML6TOqCXnoVyE5Fvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="196506354"
Received: from vpanait-mobl.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.174])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 04:55:11 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/xe3p: add W/A to disable DC5/DC6 in certain scaler
 conditions
Date: Tue,  9 Dec 2025 14:54:42 +0200
Message-ID: <20251209125458.1105645-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
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

In NVL-A0, a workaround is needed to prevent scaling problems when
using scaler coefficients with DC5 and DC6.  In order to avoid this,
the workaround needs to prevent the device from entering DC5 or DC6
when programmable scaler coefficients are used.

Check for these conditions and hold a DC_OFF power domain wakeref to
prevent entering DC5 and DC6 in these situations.

This patch implements Wa_16026694205.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 10 ++++++
 .../drm/i915/display/intel_display_types.h    |  7 ++++
 .../gpu/drm/i915/display/intel_display_wa.c   |  4 +++
 .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
 drivers/gpu/drm/i915/display/skl_scaler.c     | 35 +++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_scaler.h     |  5 +++
 6 files changed, 62 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9c6d3ecdb589..c3b19dd2ac56 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7299,6 +7299,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	unsigned int size = new_crtc_state->plane_color_changed ? 8192 : 1024;
+	u32 ps_ctrl;
+	int i;
 
 	if (!new_crtc_state->use_flipq &&
 	    !new_crtc_state->use_dsb &&
@@ -7384,6 +7386,14 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	}
 
 	intel_dsb_finish(new_crtc_state->dsb_commit);
+
+	/* Wa_16026694205: check and re-enable DC5 if needed */
+	for (i = 0; i < crtc->num_scalers; i++) {
+		ps_ctrl = intel_de_read(display, SKL_PS_CTRL(crtc->pipe, i));
+		if (intel_display_wa(display, 16026694205))
+			wa_no_dc5_if_ps_filter_programmed(display, crtc,
+							  ps_ctrl, false);
+	}
 }
 
 static void intel_atomic_commit_tail(struct intel_atomic_state *state)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6ff53cd58052..8d4dbe46fa26 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1545,6 +1545,13 @@ struct intel_crtc {
 	/* scalers available on this crtc */
 	int num_scalers;
 
+	/*
+	 * wakeref for Wa_16026694205 where we need to prevent DC5/DC6
+	 * when using scaler coefficients (PS_CTRL_FILTER_SELECT is
+	 * programmed).
+	 */
+	struct ref_tracker *wa_no_dc5_wakeref;
+
 	/* for loading single buffered registers during vblank */
 	struct pm_qos_request vblank_pm_qos;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index a00af39f7538..9e4de69f4d58 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -10,6 +10,7 @@
 #include "intel_display_core.h"
 #include "intel_display_regs.h"
 #include "intel_display_wa.h"
+#include "intel_step.h"
 
 static void gen11_display_wa_apply(struct intel_display *display)
 {
@@ -74,6 +75,9 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 		return display->platform.battlemage;
 	case INTEL_DISPLAY_WA_14025769978:
 		return DISPLAY_VER(display) == 35;
+	case INTEL_DISPLAY_WA_16026694205:
+		return (DISPLAY_VER(display) == 35 &&
+			IS_DISPLAY_STEP(display, STEP_A0, STEP_A0));
 	default:
 		drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
 		break;
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index a68c0bb7e516..8962656a4ab0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -28,6 +28,7 @@ enum intel_display_wa {
 	INTEL_DISPLAY_WA_22014263786,
 	INTEL_DISPLAY_WA_15018326506,
 	INTEL_DISPLAY_WA_14025769978,
+	INTEL_DISPLAY_WA_16026694205,
 };
 
 bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name);
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 4c4deac7f9c8..00999c29e969 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -8,6 +8,7 @@
 #include "intel_casf.h"
 #include "intel_casf_regs.h"
 #include "intel_de.h"
+#include "intel_display_power.h"
 #include "intel_display_regs.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
@@ -725,6 +726,33 @@ static void glk_program_nearest_filter_coefs(struct intel_display *display,
 			   GLK_PS_COEF_INDEX_SET(pipe, id, set), 0);
 }
 
+/*
+ * Wa_16026694205:
+ * Fixes: Possible corruption of display scaler coefficients sign bit
+ *	  when DC5 is entered.
+ * Workaround: Do not enable DC5 or DC6 (DC_STATE_EN Dynamic DC State
+ *	       Enable = Enable up to DC5 OR Enable up to DC6) when
+ *	       using scaler coefficients (PS_CTRL FILTER SELECT=01b
+ *	       programmed).
+ */
+void wa_no_dc5_if_ps_filter_programmed(struct intel_display *display,
+				       struct intel_crtc *crtc,
+				       u32 ps_ctrl, bool set)
+{
+	if (!(ps_ctrl & PS_FILTER_PROGRAMMED))
+		return;
+
+	drm_dbg_kms(display->drm,
+		    "using programmed scaler coefficients, need to handle Wa_16026694205\n");
+
+	if (set)
+		crtc->wa_no_dc5_wakeref =
+			intel_display_power_get(display, POWER_DOMAIN_DC_OFF);
+	else
+		intel_display_power_put(display, POWER_DOMAIN_DC_OFF,
+					crtc->wa_no_dc5_wakeref);
+}
+
 static u32 skl_scaler_get_filter_select(enum drm_scaling_filter filter)
 {
 	if (filter == DRM_SCALING_FILTER_NEAREST_NEIGHBOR)
@@ -846,6 +874,9 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 	skl_scaler_setup_filter(display, NULL, pipe, id, 0,
 				crtc_state->hw.scaling_filter);
 
+	if (intel_display_wa(display, 16026694205))
+		wa_no_dc5_if_ps_filter_programmed(display, crtc, ps_ctrl, true);
+
 	intel_de_write_fw(display, SKL_PS_CTRL(pipe, id), ps_ctrl);
 
 	intel_de_write_fw(display, SKL_PS_VPHASE(pipe, id),
@@ -868,6 +899,7 @@ skl_program_plane_scaler(struct intel_dsb *dsb,
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	enum pipe pipe = plane->pipe;
 	int scaler_id = plane_state->scaler_id;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct intel_scaler *scaler =
 		&crtc_state->scaler_state.scalers[scaler_id];
 	int crtc_x = plane_state->uapi.dst.x1;
@@ -913,6 +945,9 @@ skl_program_plane_scaler(struct intel_dsb *dsb,
 	skl_scaler_setup_filter(display, dsb, pipe, scaler_id, 0,
 				plane_state->hw.scaling_filter);
 
+	if (intel_display_wa(display, 16026694205))
+		wa_no_dc5_if_ps_filter_programmed(display, crtc, ps_ctrl, true);
+
 	intel_de_write_dsb(display, dsb, SKL_PS_CTRL(pipe, scaler_id),
 			   ps_ctrl);
 	intel_de_write_dsb(display, dsb, SKL_PS_VPHASE(pipe, scaler_id),
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 7e8d819c019d..f3ad36abdd8e 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -5,6 +5,8 @@
 #ifndef INTEL_SCALER_H
 #define INTEL_SCALER_H
 
+#include <linux/types.h>
+
 enum drm_mode_status;
 struct drm_display_mode;
 struct intel_atomic_state;
@@ -62,4 +64,7 @@ unsigned int skl_scaler_2nd_prefill_adjustment(const struct intel_crtc_state *cr
 unsigned int skl_scaler_1st_prefill_lines(const struct intel_crtc_state *crtc_state);
 unsigned int skl_scaler_2nd_prefill_lines(const struct intel_crtc_state *crtc_state);
 
+void wa_no_dc5_if_ps_filter_programmed(struct intel_display *display,
+				       struct intel_crtc *crtc,
+				       u32 ps_ctrl, bool set);
 #endif
-- 
2.51.0

