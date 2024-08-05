Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2BC947DB0
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2024 17:07:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 555EA10E228;
	Mon,  5 Aug 2024 15:07:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZdsMqg/j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3546B10E228
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2024 15:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722870472; x=1754406472;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e0DJ2qZy/+dvtKL+JtiYwf8v3sylOVC0JI2GDlpebKM=;
 b=ZdsMqg/jks/CbXAUpi3v3Zi9Gju1pEUXTnp25A5SthgyxLJGm1j7RX7g
 rHecj73n5qJdHR5WHRDjVpclyCSEwF2o7MZW6LDVuMUG72p8kLOcOWy2n
 RuR0iJq3S+ML38nj/vPQmmZmCm9rob+0sBGJVpLPoPN8h8KI0MDyedvCC
 HqNAtPP1H8d8Uz7XV5L9AU/UieMeKbqGn8iOZeh0VgsO4HpnozLJeKXUF
 i+v2r2aQHUM9/DiPQqVYIB3RpB+YKPFnPBavaSenQUesavsOnnFwFSbOq
 CeHU3+d8P+lF0EjDiNaKZhsLo6iD/Da8QmwPr9747jixMuZkl9Tas4a4h g==;
X-CSE-ConnectionGUID: uZSiSY6gSoOZoIYQvmnqXQ==
X-CSE-MsgGUID: 7n03+CyOT3qYSY5FzXdMgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11155"; a="20694434"
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="20694434"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 08:07:51 -0700
X-CSE-ConnectionGUID: RWXF7MADSr6tDKHA6bKuEQ==
X-CSE-MsgGUID: 6cbb4hWQR3aheGUHrb0pzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="60558892"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 08:07:50 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [CI 5/7] drm/i915: Replace BPP_X16_FMT()/ARGS() with
 FXP_Q4_FMT()/ARGS()
Date: Mon,  5 Aug 2024 18:07:54 +0300
Message-ID: <20240805150802.3568970-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240805150802.3568970-1-imre.deak@intel.com>
References: <20240805150802.3568970-1-imre.deak@intel.com>
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

Replace the BPP_X16_FMT()/ARGS() helpers defined by the driver with the
equivalent FXP_Q4_FMT()/ARGS() helpers defined by DRM core.

v2: Rebase on the s/DRM_X16/FXP_Q4 change.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c       |  5 +++--
 drivers/gpu/drm/i915/display/intel_display.c     |  4 ++--
 .../gpu/drm/i915/display/intel_display_types.h   |  3 ---
 drivers/gpu/drm/i915/display/intel_dp.c          | 16 ++++++++--------
 drivers/gpu/drm/i915/display/intel_dp_mst.c      |  4 ++--
 5 files changed, 15 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index b9bafec06fb8b..9b8508a503f7f 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -26,6 +26,7 @@
 
 #include <drm/drm_edid.h>
 #include <drm/drm_eld.h>
+#include <drm/drm_fixed.h>
 #include <drm/intel/i915_component.h>
 
 #include "i915_drv.h"
@@ -452,8 +453,8 @@ static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder,
 	lanes = crtc_state->lane_count;
 
 	drm_dbg_kms(&i915->drm,
-		    "h_active = %u link_clk = %u : lanes = %u vdsc_bpp = " BPP_X16_FMT " cdclk = %u\n",
-		    h_active, link_clk, lanes, BPP_X16_ARGS(vdsc_bppx16), cdclk);
+		    "h_active = %u link_clk = %u : lanes = %u vdsc_bpp = " FXP_Q4_FMT " cdclk = %u\n",
+		    h_active, link_clk, lanes, FXP_Q4_ARGS(vdsc_bppx16), cdclk);
 
 	if (WARN_ON(!link_clk || !pixel_clk || !lanes || !vdsc_bppx16 || !cdclk))
 		return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8172e8e700053..2755ebbbb9d23 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4682,9 +4682,9 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 
 	if (crtc_state->pipe_bpp > fxp_q4_to_int(crtc_state->max_link_bpp_x16)) {
 		drm_dbg_kms(&i915->drm,
-			    "[CRTC:%d:%s] Link bpp limited to " BPP_X16_FMT "\n",
+			    "[CRTC:%d:%s] Link bpp limited to " FXP_Q4_FMT "\n",
 			    crtc->base.base.id, crtc->base.name,
-			    BPP_X16_ARGS(crtc_state->max_link_bpp_x16));
+			    FXP_Q4_ARGS(crtc_state->max_link_bpp_x16));
 		crtc_state->bw_constrained = true;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 423e7ce187f65..ea6548ceab2f8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2200,9 +2200,6 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
 	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;
 }
 
-#define BPP_X16_FMT		"%d.%04d"
-#define BPP_X16_ARGS(bpp_x16)	fxp_q4_to_int(bpp_x16), (fxp_q4_to_frac(bpp_x16) * 625)
-
 /*
  * Conversion functions/macros from various pointer types to struct
  * intel_display pointer.
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3ed2b74d5eb56..49a37b9965304 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2366,17 +2366,17 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (ret < 0) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Cannot compute valid DSC parameters for Input Bpp = %d"
-			    "Compressed BPP = " BPP_X16_FMT "\n",
+			    "Compressed BPP = " FXP_Q4_FMT "\n",
 			    pipe_config->pipe_bpp,
-			    BPP_X16_ARGS(pipe_config->dsc.compressed_bpp_x16));
+			    FXP_Q4_ARGS(pipe_config->dsc.compressed_bpp_x16));
 		return ret;
 	}
 
 	pipe_config->dsc.compression_enable = true;
 	drm_dbg_kms(&dev_priv->drm, "DP DSC computed with Input Bpp = %d "
-		    "Compressed Bpp = " BPP_X16_FMT " Slice Count = %d\n",
+		    "Compressed Bpp = " FXP_Q4_FMT " Slice Count = %d\n",
 		    pipe_config->pipe_bpp,
-		    BPP_X16_ARGS(pipe_config->dsc.compressed_bpp_x16),
+		    FXP_Q4_ARGS(pipe_config->dsc.compressed_bpp_x16),
 		    pipe_config->dsc.slice_count);
 
 	return 0;
@@ -2429,7 +2429,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 	limits->link.max_bpp_x16 = max_link_bpp_x16;
 
 	drm_dbg_kms(&i915->drm,
-		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d max link_bpp " BPP_X16_FMT "\n",
+		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d max link_bpp " FXP_Q4_FMT "\n",
 		    encoder->base.base.id, encoder->base.name,
 		    crtc->base.base.id, crtc->base.name,
 		    adjusted_mode->crtc_clock,
@@ -2437,7 +2437,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 		    limits->max_lane_count,
 		    limits->max_rate,
 		    limits->pipe.max_bpp,
-		    BPP_X16_ARGS(limits->link.max_bpp_x16));
+		    FXP_Q4_ARGS(limits->link.max_bpp_x16));
 
 	return true;
 }
@@ -2568,10 +2568,10 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	}
 
 	drm_dbg_kms(&i915->drm,
-		    "DP lane count %d clock %d bpp input %d compressed " BPP_X16_FMT " link rate required %d available %d\n",
+		    "DP lane count %d clock %d bpp input %d compressed " FXP_Q4_FMT " link rate required %d available %d\n",
 		    pipe_config->lane_count, pipe_config->port_clock,
 		    pipe_config->pipe_bpp,
-		    BPP_X16_ARGS(pipe_config->dsc.compressed_bpp_x16),
+		    FXP_Q4_ARGS(pipe_config->dsc.compressed_bpp_x16),
 		    intel_dp_config_required_rate(pipe_config),
 		    intel_dp_max_link_data_rate(intel_dp,
 						pipe_config->port_clock,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 8c5f783abdc26..45d2230d1801b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -498,10 +498,10 @@ adjust_limits_for_dsc_hblank_expansion_quirk(const struct intel_connector *conne
 		return true;
 
 	drm_dbg_kms(&i915->drm,
-		    "[CRTC:%d:%s][CONNECTOR:%d:%s] Increasing link min bpp to " BPP_X16_FMT " in DSC mode due to hblank expansion quirk\n",
+		    "[CRTC:%d:%s][CONNECTOR:%d:%s] Increasing link min bpp to " FXP_Q4_FMT " in DSC mode due to hblank expansion quirk\n",
 		    crtc->base.base.id, crtc->base.name,
 		    connector->base.base.id, connector->base.name,
-		    BPP_X16_ARGS(min_bpp_x16));
+		    FXP_Q4_ARGS(min_bpp_x16));
 
 	if (limits->link.max_bpp_x16 < min_bpp_x16)
 		return false;
-- 
2.44.2

