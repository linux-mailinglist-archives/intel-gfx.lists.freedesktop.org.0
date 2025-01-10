Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF544A0886A
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 07:37:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F07D10EFCD;
	Fri, 10 Jan 2025 06:37:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aulrwdDN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A16610EFCD;
 Fri, 10 Jan 2025 06:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736491048; x=1768027048;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EdcYu/LBgDWcCWjbjUt/Ygs21f6YKlE+D1I7vqst9B0=;
 b=aulrwdDNhnyU4Lk/OUzGzAVsgbNr8kDjq4F8/g0iVHfdi+1qBvpF4JVB
 DzwdUK+NLPcDxQTCMhKeVBJ9Gmg+v9F2txDUM0FOwrJm42IYxq++jVPqO
 K3L7QuzeQ07f1QQwBVBHoeUyRX2BiiauRK6z3IBZXrkASMLHkxyRh4DHP
 f3I/iPP8bCl2F/JZ+Ug1mP/MBE+pzWWoToPBKnYzs4a98Ur6dSyazyAh+
 mtJIoZBnshG/XEcTAKruCaq9IeuzhpPpiM0f3RUxBR7oYbmxVVzxQ0uGm
 0WQw/zPTpxt/eFqGE/mrZ2BobuTmvYR/9B9G2z77b9PptBvWC/rpI3pjV Q==;
X-CSE-ConnectionGUID: 4QCU8nvIRpeoMO/qZ/ggRg==
X-CSE-MsgGUID: JLTy1kIMQL+/X/eCkOyKTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="24380439"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="24380439"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 22:37:28 -0800
X-CSE-ConnectionGUID: 4rOU6F2ETQ+urXfGvS/jJQ==
X-CSE-MsgGUID: ZPFZNeNXQbOypOC9f40Pvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="134477959"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa002.jf.intel.com with ESMTP; 09 Jan 2025 22:37:26 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 3/6] drm/i915/display: Configure the scaler
Date: Fri, 10 Jan 2025 12:02:41 +0530
Message-Id: <20250110063244.1129552-4-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250110063244.1129552-1-nemesa.garg@intel.com>
References: <20250110063244.1129552-1-nemesa.garg@intel.com>
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

Write the scaler registers for sharpness.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_casf.c |  2 +
 drivers/gpu/drm/i915/display/skl_scaler.c | 45 ++++++++++++++++++++++-
 drivers/gpu/drm/i915/display/skl_scaler.h |  1 +
 3 files changed, 47 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
index b507401457bf..773abaad74ca 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.c
+++ b/drivers/gpu/drm/i915/display/intel_casf.c
@@ -97,6 +97,8 @@ static void intel_casf_write_coeff(struct intel_crtc_state *crtc_state)
 void intel_casf_enable(struct intel_crtc_state *crtc_state)
 {
 	intel_casf_write_coeff(crtc_state);
+
+	skl_scaler_setup_casf(crtc_state);
 }
 
 static void convert_sharpness_coef_binary(struct scaler_filter_coeff *coeff,
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index ae21fce534dc..722d61959bb1 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -98,7 +98,12 @@ static u16 skl_scaler_calc_phase(int sub, int scale, bool chroma_cosited)
 #define MTL_MAX_DST_H 8192
 #define SKL_MIN_YUV_420_SRC_W 16
 #define SKL_MIN_YUV_420_SRC_H 16
-
+#define SCALER_FILTER_SELECT \
+	(PS_FILTER_PROGRAMMED | \
+	 PS_Y_VERT_FILTER_SELECT(1) | \
+	 PS_Y_HORZ_FILTER_SELECT(0) | \
+	 PS_UV_VERT_FILTER_SELECT(1) | \
+	 PS_UV_HORZ_FILTER_SELECT(0))
 static int
 skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 		  unsigned int scaler_user, int *scaler_id,
@@ -655,6 +660,44 @@ static void skl_scaler_setup_filter(struct intel_display *display, enum pipe pip
 	}
 }
 
+void skl_scaler_setup_casf(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_display *display = to_intel_display(crtc);
+	struct drm_display_mode *adjusted_mode =
+	&crtc_state->hw.adjusted_mode;
+	struct intel_crtc_scaler_state *scaler_state =
+		&crtc_state->scaler_state;
+	struct drm_rect src, dest;
+	int id, width, height;
+	int x, y;
+	enum pipe pipe = crtc->pipe;
+	u32 ps_ctrl;
+
+	width = adjusted_mode->crtc_hdisplay;
+	height = adjusted_mode->crtc_vdisplay;
+
+	x = y = 0;
+	drm_rect_init(&dest, x, y, width, height);
+
+	width = drm_rect_width(&dest);
+	height = drm_rect_height(&dest);
+	id = scaler_state->scaler_id;
+
+	drm_rect_init(&src, 0, 0,
+		      drm_rect_width(&crtc_state->pipe_src) << 16,
+		      drm_rect_height(&crtc_state->pipe_src) << 16);
+
+	ps_ctrl = PS_SCALER_EN | PS_BINDING_PIPE | scaler_state->scalers[id].mode |
+		  SCALER_FILTER_SELECT;
+
+	intel_de_write_fw(display, SKL_PS_CTRL(pipe, id), ps_ctrl);
+	intel_de_write_fw(display, SKL_PS_WIN_POS(pipe, id),
+			  PS_WIN_XPOS(x) | PS_WIN_YPOS(y));
+	intel_de_write_fw(display, SKL_PS_WIN_SZ(pipe, id),
+			  PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
+}
+
 void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 4d2e2dbb1666..e1fe6a2d6c32 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -28,5 +28,6 @@ void skl_detach_scalers(const struct intel_crtc_state *crtc_state);
 void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
 
 void skl_scaler_get_config(struct intel_crtc_state *crtc_state);
+void skl_scaler_setup_casf(struct intel_crtc_state *crtc_state);
 
 #endif
-- 
2.25.1

