Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CFFCAF07A
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 07:29:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4690310E1BF;
	Tue,  9 Dec 2025 06:29:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c0gVAPpv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94DD210E1BB;
 Tue,  9 Dec 2025 06:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765261761; x=1796797761;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jeoAY56/c4pQ4jjYyL2uWm/t15XE1rHKTqYnYucUKxY=;
 b=c0gVAPpvGPW4CRMXwXGwHaFUwyeu1IfcyQ0pbKQ1XxkTa3d9aLTLkpfO
 ecZK1P+kXuOd2vu0725S5xNl1jV8npz0JGH0qXJfFJlK6/vHFZI+aISxL
 QFnZsclXIKcJKDpJlnmiDutSOoPl0rdckaD4AhefDqW/8duH4SCSLt+7d
 IPcwcY4fDGvDKMEM1uRaVR79etKG8jWJp2+DmZUE5v908Wtxn6wpRcVkP
 7aRONP+MLtby+UGz00vOFN5IgzdnZF+yYaD+4gfBr6hC7KO/5RxYUIb4f
 Ds2cULuA+cvdvaGcUvBDaTOOqUCUmgaIXZHEZvRyOqj69V/GxvntmbJzU A==;
X-CSE-ConnectionGUID: 23ZPLiHqRDeCyE80VR/lrQ==
X-CSE-MsgGUID: QsdlRL6+ROqKW+7qgi2Xhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="69804109"
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="69804109"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 22:29:21 -0800
X-CSE-ConnectionGUID: LQbhdbnOQI+Tb6CAId4sag==
X-CSE-MsgGUID: g/tT2WcBTrCJLGQ6WSsc/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="200585576"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa005.fm.intel.com with ESMTP; 08 Dec 2025 22:29:19 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@intel.com, uma.shankar@intel.com,
 Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 5/5] drm/i915/display: Introduce skl_pipe_scaler_setup()
Date: Tue,  9 Dec 2025 11:55:27 +0530
Message-Id: <20251209062527.620382-6-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251209062527.620382-1-nemesa.garg@intel.com>
References: <20251209062527.620382-1-nemesa.garg@intel.com>
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

As skl_pfit_enable and skl_scaler_setup_casf
have similar logic for pipe scaler registers
so to avoid duplicacy introduce new helper
skl_pipe_scaler_setup. This helper consolidates
common scaler setup steps and is now called
from both skl_pfit_enable() and skl_scaler_setup_casf().

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 72 ++++++++++-------------
 drivers/gpu/drm/i915/display/skl_scaler.h |  2 +
 2 files changed, 33 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 4c4deac7f9c8..703d13e6f1c7 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -761,41 +761,14 @@ static void skl_scaler_setup_filter(struct intel_display *display,
 
 void skl_scaler_setup_casf(struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct intel_display *display = to_intel_display(crtc);
 	struct drm_display_mode *adjusted_mode =
-	&crtc_state->hw.adjusted_mode;
-	struct intel_crtc_scaler_state *scaler_state =
-		&crtc_state->scaler_state;
-	struct drm_rect src, dest;
-	int id, width, height;
-	int x = 0, y = 0;
-	enum pipe pipe = crtc->pipe;
-	u32 ps_ctrl;
+		&crtc_state->hw.adjusted_mode;
+	int width, height, x = 0, y = 0;
 
 	width = adjusted_mode->crtc_hdisplay;
 	height = adjusted_mode->crtc_vdisplay;
 
-	drm_rect_init(&dest, x, y, width, height);
-
-	width = drm_rect_width(&dest);
-	height = drm_rect_height(&dest);
-	id = scaler_state->scaler_id;
-
-	drm_rect_init(&src, 0, 0,
-		      drm_rect_width(&crtc_state->pipe_src) << 16,
-		      drm_rect_height(&crtc_state->pipe_src) << 16);
-
-	trace_intel_pipe_scaler_update_arm(crtc, id, x, y, width, height);
-
-	ps_ctrl = PS_SCALER_EN | PS_BINDING_PIPE | scaler_state->scalers[id].mode |
-		  CASF_SCALER_FILTER_SELECT;
-
-	intel_de_write_fw(display, SKL_PS_CTRL(pipe, id), ps_ctrl);
-	intel_de_write_fw(display, SKL_PS_WIN_POS(pipe, id),
-			  PS_WIN_XPOS(x) | PS_WIN_YPOS(y));
-	intel_de_write_fw(display, SKL_PS_WIN_SZ(pipe, id),
-			  PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
+	skl_pipe_scaler_setup(crtc_state, width, height, x, y);
 }
 
 void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
@@ -805,16 +778,15 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 	const struct intel_crtc_scaler_state *scaler_state =
 		&crtc_state->scaler_state;
 	const struct drm_rect *dst = &crtc_state->pch_pfit.dst;
+	struct drm_rect src;
 	u16 uv_rgb_hphase, uv_rgb_vphase;
-	enum pipe pipe = crtc->pipe;
+	int hscale, vscale;
 	int width = drm_rect_width(dst);
 	int height = drm_rect_height(dst);
 	int x = dst->x1;
 	int y = dst->y1;
-	int hscale, vscale;
-	struct drm_rect src;
 	int id;
-	u32 ps_ctrl;
+	enum pipe pipe = crtc->pipe;
 
 	if (!crtc_state->pch_pfit.enabled)
 		return;
@@ -836,10 +808,34 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 	uv_rgb_hphase = skl_scaler_calc_phase(1, hscale, false);
 	uv_rgb_vphase = skl_scaler_calc_phase(1, vscale, false);
 
+	skl_pipe_scaler_setup(crtc_state, width, height, x, y);
+
+	id = scaler_state->scaler_id;
+
+	intel_de_write_fw(display, SKL_PS_VPHASE(pipe, id),
+			  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_vphase));
+	intel_de_write_fw(display, SKL_PS_HPHASE(pipe, id),
+			  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_hphase));
+	intel_de_write_fw(display, SKL_PS_WIN_SZ(pipe, id),
+			  PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
+}
+
+void skl_pipe_scaler_setup(const struct intel_crtc_state *crtc_state,
+			   int width, int height, int x, int y)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	const struct intel_crtc_scaler_state *scaler_state =
+		&crtc_state->scaler_state;
+	enum pipe pipe = crtc->pipe;
+	int id;
+	u32 ps_ctrl;
+
 	id = scaler_state->scaler_id;
 
 	ps_ctrl = PS_SCALER_EN | PS_BINDING_PIPE | scaler_state->scalers[id].mode |
-		skl_scaler_get_filter_select(crtc_state->hw.scaling_filter);
+		  skl_scaler_get_filter_select(crtc_state->hw.scaling_filter) |
+		  CASF_SCALER_FILTER_SELECT;
 
 	trace_intel_pipe_scaler_update_arm(crtc, id, x, y, width, height);
 
@@ -848,14 +844,8 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 
 	intel_de_write_fw(display, SKL_PS_CTRL(pipe, id), ps_ctrl);
 
-	intel_de_write_fw(display, SKL_PS_VPHASE(pipe, id),
-			  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_vphase));
-	intel_de_write_fw(display, SKL_PS_HPHASE(pipe, id),
-			  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_hphase));
 	intel_de_write_fw(display, SKL_PS_WIN_POS(pipe, id),
 			  PS_WIN_XPOS(x) | PS_WIN_YPOS(y));
-	intel_de_write_fw(display, SKL_PS_WIN_SZ(pipe, id),
-			  PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
 }
 
 void
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 7e8d819c019d..94bde5d1c06a 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -30,6 +30,8 @@ void skl_program_plane_scaler(struct intel_dsb *dsb,
 			      struct intel_plane *plane,
 			      const struct intel_crtc_state *crtc_state,
 			      const struct intel_plane_state *plane_state);
+void skl_pipe_scaler_setup(const struct intel_crtc_state *crtc_state,
+			   int width, int height, int x, int y);
 void skl_detach_scalers(struct intel_dsb *dsb,
 			const struct intel_crtc_state *crtc_state);
 void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
-- 
2.25.1

