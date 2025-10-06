Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B76BBD0C6
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Oct 2025 06:42:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C23610E3BC;
	Mon,  6 Oct 2025 04:42:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sc68R+Hx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8139310E3BB;
 Mon,  6 Oct 2025 04:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759725744; x=1791261744;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=be7MinIGIvAU9xbtJEQnkKeHoHKoAoARVfEpBK/ZJi8=;
 b=Sc68R+Hx4PQh/nwuvkPoY0k2lV8cs9VbVNGgz/vEY1yTdX5y250OAt0A
 BtNX9ur3xKSY4nQATU5pmqPWLA5DVYY+9p9gQuELu8tfrIgxKH4cn+7j5
 +Vcf27NtbvvMGmOMwC+2Td/wV1eaZA8MvL/s7ClDujS6c1zGNMasGNawV
 t+WUcyIf8zpMn4UQNpZS6QxqMRBG9C0fvKEI8whC5kygANgssPjW3AbP4
 79c1wTXm9JiwTB8ZICajaDwJhrdMzMK79k8HukRFmdqXJREPR22SRltk5
 JAuErIXXk3BpDXwTvyrf/CJIoFOGJoaGdLIK+GltZTdRLq6iN7YVQ/Yhz w==;
X-CSE-ConnectionGUID: G+HppC2hQrGX18F+MzIh7g==
X-CSE-MsgGUID: P/Y6TAHjS/KYp9hAka7DVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11573"; a="61996421"
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="61996421"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2025 21:42:24 -0700
X-CSE-ConnectionGUID: 8nRljz8bQqC2Ewj9fa3kAQ==
X-CSE-MsgGUID: 6SJRQS5jRTiipM/MQO5E9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="179063020"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2025 21:42:23 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 11/16] drm/i915/vblank: Add helper to get correct vblank length
Date: Mon,  6 Oct 2025 09:58:47 +0530
Message-ID: <20251006042852.263249-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
References: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
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

Currently crtc_vblank_start is assumed to be the vblank_start for the fixed
refresh rate case. That value can be different from the variable refresh
rate case whenever always_use_vrr_tg()==false. On icl/tgl it's always
different due to the extra vblank delay, and also on adl+ it could be
different if we were to use an optimized guardband.

So places where crtc_vblank_start is used to compute vblank length needs
change so as to account for cases where vrr is enabled. Specifically
with vrr.enable the effective vblank length is actually guardband.

Add a helper to get the correct vblank length for both vrr and fixed
refresh rate cases. Use this helper where vblank_start is used to
compute the vblank length.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pfit.c    | 11 +++++++----
 drivers/gpu/drm/i915/display/intel_psr.c     |  3 +--
 drivers/gpu/drm/i915/display/intel_vblank.c  | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_vblank.h  |  2 ++
 drivers/gpu/drm/i915/display/skl_watermark.c |  3 ++-
 5 files changed, 22 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
index 68539e7c2a24..ebbaa1d419ba 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.c
+++ b/drivers/gpu/drm/i915/display/intel_pfit.c
@@ -14,6 +14,7 @@
 #include "intel_lvds_regs.h"
 #include "intel_pfit.h"
 #include "intel_pfit_regs.h"
+#include "intel_vblank.h"
 #include "skl_scaler.h"
 
 static int intel_pch_pfit_check_dst_window(const struct intel_crtc_state *crtc_state)
@@ -306,14 +307,15 @@ centre_horizontally(struct drm_display_mode *adjusted_mode,
 }
 
 static void
-centre_vertically(struct drm_display_mode *adjusted_mode,
+centre_vertically(struct intel_crtc_state *crtc_state,
+		  struct drm_display_mode *adjusted_mode,
 		  int height)
 {
 	u32 border, sync_pos, blank_width, sync_width;
 
 	/* keep the vsync and vblank widths constant */
 	sync_width = adjusted_mode->crtc_vsync_end - adjusted_mode->crtc_vsync_start;
-	blank_width = adjusted_mode->crtc_vblank_end - adjusted_mode->crtc_vblank_start;
+	blank_width = intel_crtc_vblank_length(crtc_state);
 	sync_pos = (blank_width - sync_width + 1) / 2;
 
 	border = (adjusted_mode->crtc_vdisplay - height + 1) / 2;
@@ -392,7 +394,8 @@ static void i9xx_scale_aspect(struct intel_crtc_state *crtc_state,
 					  PFIT_HORIZ_INTERP_BILINEAR);
 		}
 	} else if (scaled_width < scaled_height) { /* letter */
-		centre_vertically(adjusted_mode,
+		centre_vertically(crtc_state,
+				  adjusted_mode,
 				  scaled_width / pipe_src_w);
 
 		*border = LVDS_BORDER_ENABLE;
@@ -489,7 +492,7 @@ static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
 		 * heights and modify the values programmed into the CRTC.
 		 */
 		centre_horizontally(adjusted_mode, pipe_src_w);
-		centre_vertically(adjusted_mode, pipe_src_h);
+		centre_vertically(crtc_state, adjusted_mode, pipe_src_h);
 		border = LVDS_BORDER_ENABLE;
 		break;
 	case DRM_MODE_SCALE_ASPECT:
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f7115969b4c5..ae6b94a5d450 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1365,8 +1365,7 @@ static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
 				       bool aux_less)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	int vblank = crtc_state->hw.adjusted_mode.crtc_vblank_end -
-		crtc_state->hw.adjusted_mode.crtc_vblank_start;
+	int vblank = intel_crtc_vblank_length(crtc_state);
 	int wake_lines;
 
 	if (aux_less)
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 0b7fcc05e64c..2fc0c1c0bb87 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -767,3 +767,13 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
 
 	return scanline;
 }
+
+int intel_crtc_vblank_length(const struct intel_crtc_state *crtc_state)
+{
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	if (crtc_state->vrr.enable)
+		return crtc_state->vrr.guardband;
+	else
+		return adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
index 21fbb08d61d5..98d04cacd65f 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.h
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -48,4 +48,6 @@ const struct intel_crtc_state *
 intel_pre_commit_crtc_state(struct intel_atomic_state *state,
 			    struct intel_crtc *crtc);
 
+int intel_crtc_vblank_length(const struct intel_crtc_state *crtc_state);
+
 #endif /* __INTEL_VBLANK_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 73e5b2d8ae83..6fb2c78fe29b 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -28,6 +28,7 @@
 #include "intel_flipq.h"
 #include "intel_pcode.h"
 #include "intel_plane.h"
+#include "intel_vblank.h"
 #include "intel_wm.h"
 #include "skl_universal_plane_regs.h"
 #include "skl_scaler.h"
@@ -2171,7 +2172,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 	return crtc_state->framestart_delay +
 		intel_usecs_to_scanlines(adjusted_mode, latency) +
 		wm0_lines >
-		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
+		intel_crtc_vblank_length(crtc_state);
 }
 
 int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
-- 
2.45.2

