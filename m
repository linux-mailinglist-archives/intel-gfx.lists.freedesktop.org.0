Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 431FDCD8713
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 09:16:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C51B610E1D0;
	Tue, 23 Dec 2025 08:16:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TSlPtIqk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36A1A10E19E;
 Tue, 23 Dec 2025 08:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766477789; x=1798013789;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H5PC9rJCiyCQeuGYg0SSfY2kOCezPAXQSwtqkqQwB4Q=;
 b=TSlPtIqktyIPL7xdpYUhOWEHa3BvASRbO2cFU+y9XXopNefwZeAYWobo
 hSA1M7tdlvNTtdizYkfma8ANreact3QhZUvmgDpBi+JfnHqH+E4vATbRs
 nC2+ZSpif70YZAuju85k1b5uMHq+e8oGlahK0lftUs8sVzlQfXZtx/qZE
 aACXEK83AK4ECko0xNmi4BIKJBBR51jd9T39YAToqVZ83MGrEPZfDD135
 wXYMqNVkCYPzKzsQGnnjIkwx0+VN6IntB3OlggCGyxitQHrIwVBfnhyUU
 oNFCiTa6kLZJI9w4mf8gAMA08g7wmoKFQd6wj3omVY5+vXu4J83R7X/pY Q==;
X-CSE-ConnectionGUID: JrPbGRuWRUKhmpkX3ca4KA==
X-CSE-MsgGUID: XT3TPTFGRxaxP3wk87PvTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68081703"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="68081703"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 00:16:29 -0800
X-CSE-ConnectionGUID: PVHEFE/gTx2g+sIEmidOdw==
X-CSE-MsgGUID: vjLWJ89CR3eUQ+p3N9CUiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="204224377"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa005.fm.intel.com with ESMTP; 23 Dec 2025 00:16:28 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 2/3] drm/i915/display: Introduce skl_pipe_scaler_setup()
Date: Tue, 23 Dec 2025 13:42:59 +0530
Message-Id: <20251223081300.1196417-3-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251223081300.1196417-1-nemesa.garg@intel.com>
References: <20251223081300.1196417-1-nemesa.garg@intel.com>
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
 drivers/gpu/drm/i915/display/skl_scaler.c | 67 ++++++++++++-----------
 drivers/gpu/drm/i915/display/skl_scaler.h |  2 +
 2 files changed, 36 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 4c4deac7f9c8..abd951f7dd71 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -761,41 +761,25 @@ static void skl_scaler_setup_filter(struct intel_display *display,
 
 void skl_scaler_setup_casf(struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct intel_display *display = to_intel_display(crtc);
+	struct intel_display *display = to_intel_display(crtc_state);
+        struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	const struct intel_crtc_scaler_state *scaler_state =
+                &crtc_state->scaler_state;
 	struct drm_display_mode *adjusted_mode =
-	&crtc_state->hw.adjusted_mode;
-	struct intel_crtc_scaler_state *scaler_state =
-		&crtc_state->scaler_state;
-	struct drm_rect src, dest;
-	int id, width, height;
-	int x = 0, y = 0;
+		&crtc_state->hw.adjusted_mode;
 	enum pipe pipe = crtc->pipe;
-	u32 ps_ctrl;
+	int width, height, x = 0, y = 0;
+	int id;
 
 	width = adjusted_mode->crtc_hdisplay;
 	height = adjusted_mode->crtc_vdisplay;
 
-	drm_rect_init(&dest, x, y, width, height);
-
-	width = drm_rect_width(&dest);
-	height = drm_rect_height(&dest);
 	id = scaler_state->scaler_id;
 
-	drm_rect_init(&src, 0, 0,
-		      drm_rect_width(&crtc_state->pipe_src) << 16,
-		      drm_rect_height(&crtc_state->pipe_src) << 16);
+	skl_pipe_scaler_setup(crtc_state, width, height, x, y);
 
-	trace_intel_pipe_scaler_update_arm(crtc, id, x, y, width, height);
-
-	ps_ctrl = PS_SCALER_EN | PS_BINDING_PIPE | scaler_state->scalers[id].mode |
-		  CASF_SCALER_FILTER_SELECT;
-
-	intel_de_write_fw(display, SKL_PS_CTRL(pipe, id), ps_ctrl);
-	intel_de_write_fw(display, SKL_PS_WIN_POS(pipe, id),
-			  PS_WIN_XPOS(x) | PS_WIN_YPOS(y));
 	intel_de_write_fw(display, SKL_PS_WIN_SZ(pipe, id),
-			  PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
+                          PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
 }
 
 void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
@@ -814,7 +798,6 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 	int hscale, vscale;
 	struct drm_rect src;
 	int id;
-	u32 ps_ctrl;
 
 	if (!crtc_state->pch_pfit.enabled)
 		return;
@@ -836,10 +819,34 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
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
 
@@ -848,14 +855,8 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 
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

