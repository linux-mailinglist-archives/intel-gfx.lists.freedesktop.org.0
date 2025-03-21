Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8154BA6B928
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 11:53:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00BEC10E79E;
	Fri, 21 Mar 2025 10:53:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YBiA+EWP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E72610E796;
 Fri, 21 Mar 2025 10:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742554425; x=1774090425;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZAKrJEapXZxCc8CWydUS8cxPydB5potWV99QFn7JB94=;
 b=YBiA+EWP9WIwFEOpBlJNvcERcz9RQpNOXxM6uFb0QEf5I8NbizM0j5MO
 +bkhy0NpT+lxqjSlbBjG/HiLKfaIPvoVB6o+YQ0bMjpszwYYUAeNGsDJ8
 CehlEwuotEv7oZztJtOH+WlJ/9MGrOjn7GWJynmxJSU/CYgld8b9R/96a
 MIvpFoksOnar9tvpJen0Va4tkX1Z+Bu/SjvDoMHNznQZFIpQRmQJTn/u/
 XlANhY+gupcRW6Gz1TEgeIohW221AvCDeenumxirmnfbeHVudjZqC6HTU
 sQE/HL8Hn4yAX48IUNLN+JkO9s+2gBfP3hQshwEfJSSVSmZKLZhDpUehu A==;
X-CSE-ConnectionGUID: zvlxHfWqTFyaANTFPtGEZw==
X-CSE-MsgGUID: 8C5/ONIQRXm1azQUv0rQnw==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="47697623"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="47697623"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:44 -0700
X-CSE-ConnectionGUID: blikB51BRFeS84Oheyk3mA==
X-CSE-MsgGUID: 3xp769r4RrC4f49Qj3tu6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="146595821"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 10/12] drm/i915/display: convert intel_crtc_state_dump.c to
 struct intel_display
Date: Fri, 21 Mar 2025 12:52:54 +0200
Message-Id: <b0d7c61f40e26e8d74de2217963d333fe8c304c4.1742554320.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742554320.git.jani.nikula@intel.com>
References: <cover.1742554320.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Going forward, struct intel_display is the main display device data
pointer. Convert intel_crtc_state_dump.c to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c  | 44 +++++++++----------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 599ddce96371..5bf2dd6977e3 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -5,9 +5,10 @@
 
 #include <drm/drm_edid.h>
 #include <drm/drm_eld.h>
+#include <drm/drm_print.h>
 
-#include "i915_drv.h"
 #include "intel_crtc_state_dump.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_hdmi.h"
 #include "intel_vblank.h"
@@ -42,13 +43,13 @@ intel_dump_m_n_config(struct drm_printer *p,
 }
 
 static void
-intel_dump_infoframe(struct drm_i915_private *i915,
+intel_dump_infoframe(struct intel_display *display,
 		     const union hdmi_infoframe *frame)
 {
 	if (!drm_debug_enabled(DRM_UT_KMS))
 		return;
 
-	hdmi_infoframe_log(KERN_DEBUG, i915->drm.dev, frame);
+	hdmi_infoframe_log(KERN_DEBUG, display->drm->dev, frame);
 }
 
 #define OUTPUT_TYPE(x) [INTEL_OUTPUT_ ## x] = #x
@@ -136,7 +137,7 @@ static void intel_dump_plane_state(struct drm_printer *p,
 }
 
 static void
-ilk_dump_csc(struct drm_i915_private *i915,
+ilk_dump_csc(struct intel_display *display,
 	     struct drm_printer *p,
 	     const char *name,
 	     const struct intel_csc_matrix *csc)
@@ -152,7 +153,7 @@ ilk_dump_csc(struct drm_i915_private *i915,
 			   csc->coeff[3 * i + 1],
 			   csc->coeff[3 * i + 2]);
 
-	if (DISPLAY_VER(i915) < 7)
+	if (DISPLAY_VER(display) < 7)
 		return;
 
 	drm_printf(p, "%s: post offsets: 0x%04x 0x%04x 0x%04x\n", name,
@@ -178,7 +179,6 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 {
 	struct intel_display *display = to_intel_display(pipe_config);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct intel_plane_state *plane_state;
 	struct intel_plane *plane;
 	struct drm_printer p;
@@ -188,7 +188,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 	if (!drm_debug_enabled(DRM_UT_KMS))
 		return;
 
-	p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
+	p = drm_dbg_printer(display->drm, DRM_UT_KMS, NULL);
 
 	drm_printf(&p, "[CRTC:%d:%s] enable: %s [%s]\n",
 		   crtc->base.base.id, crtc->base.name,
@@ -262,19 +262,19 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		drm_printf(&p, "GCP: 0x%x\n", pipe_config->infoframes.gcp);
 	if (pipe_config->infoframes.enable &
 	    intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_AVI))
-		intel_dump_infoframe(i915, &pipe_config->infoframes.avi);
+		intel_dump_infoframe(display, &pipe_config->infoframes.avi);
 	if (pipe_config->infoframes.enable &
 	    intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_SPD))
-		intel_dump_infoframe(i915, &pipe_config->infoframes.spd);
+		intel_dump_infoframe(display, &pipe_config->infoframes.spd);
 	if (pipe_config->infoframes.enable &
 	    intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_VENDOR))
-		intel_dump_infoframe(i915, &pipe_config->infoframes.hdmi);
+		intel_dump_infoframe(display, &pipe_config->infoframes.hdmi);
 	if (pipe_config->infoframes.enable &
 	    intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_DRM))
-		intel_dump_infoframe(i915, &pipe_config->infoframes.drm);
+		intel_dump_infoframe(display, &pipe_config->infoframes.drm);
 	if (pipe_config->infoframes.enable &
 	    intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA))
-		intel_dump_infoframe(i915, &pipe_config->infoframes.drm);
+		intel_dump_infoframe(display, &pipe_config->infoframes.drm);
 	if (pipe_config->infoframes.enable &
 	    intel_hdmi_infoframe_enable(DP_SDP_VSC))
 		drm_dp_vsc_sdp_log(&p, &pipe_config->infoframes.vsc);
@@ -319,14 +319,14 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 	drm_printf(&p, "linetime: %d, ips linetime: %d\n",
 		   pipe_config->linetime, pipe_config->ips_linetime);
 
-	if (DISPLAY_VER(i915) >= 9)
+	if (DISPLAY_VER(display) >= 9)
 		drm_printf(&p, "num_scalers: %d, scaler_users: 0x%x, scaler_id: %d, scaling_filter: %d\n",
 			   crtc->num_scalers,
 			   pipe_config->scaler_state.scaler_users,
 			   pipe_config->scaler_state.scaler_id,
 			   pipe_config->hw.scaling_filter);
 
-	if (HAS_GMCH(i915))
+	if (HAS_GMCH(display))
 		drm_printf(&p, "gmch pfit: control: 0x%08x, ratios: 0x%08x, lvds border: 0x%08x\n",
 			   pipe_config->gmch_pfit.control,
 			   pipe_config->gmch_pfit.pgm_ratios,
@@ -343,7 +343,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 
 	intel_dpll_dump_hw_state(display, &p, &pipe_config->dpll_hw_state);
 
-	if (IS_CHERRYVIEW(i915))
+	if (display->platform.cherryview)
 		drm_printf(&p, "cgm_mode: 0x%x gamma_mode: 0x%x gamma_enable: %d csc_enable: %d\n",
 			   pipe_config->cgm_mode, pipe_config->gamma_mode,
 			   pipe_config->gamma_enable, pipe_config->csc_enable);
@@ -354,20 +354,20 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 
 	drm_printf(&p, "pre csc lut: %s%d entries, post csc lut: %d entries\n",
 		   pipe_config->pre_csc_lut && pipe_config->pre_csc_lut ==
-		   i915->display.color.glk_linear_degamma_lut ? "(linear) " : "",
+		   display->color.glk_linear_degamma_lut ? "(linear) " : "",
 		   pipe_config->pre_csc_lut ?
 		   drm_color_lut_size(pipe_config->pre_csc_lut) : 0,
 		   pipe_config->post_csc_lut ?
 		   drm_color_lut_size(pipe_config->post_csc_lut) : 0);
 
-	if (DISPLAY_VER(i915) >= 11)
-		ilk_dump_csc(i915, &p, "output csc", &pipe_config->output_csc);
+	if (DISPLAY_VER(display) >= 11)
+		ilk_dump_csc(display, &p, "output csc", &pipe_config->output_csc);
 
-	if (!HAS_GMCH(i915))
-		ilk_dump_csc(i915, &p, "pipe csc", &pipe_config->csc);
-	else if (IS_CHERRYVIEW(i915))
+	if (!HAS_GMCH(display))
+		ilk_dump_csc(display, &p, "pipe csc", &pipe_config->csc);
+	else if (display->platform.cherryview)
 		vlv_dump_csc(&p, "cgm csc", &pipe_config->csc);
-	else if (IS_VALLEYVIEW(i915))
+	else if (display->platform.valleyview)
 		vlv_dump_csc(&p, "wgc csc", &pipe_config->csc);
 
 	intel_vdsc_state_dump(&p, 0, pipe_config);
-- 
2.39.5

