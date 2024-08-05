Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 584C5947DAA
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2024 17:07:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E68E10E21B;
	Mon,  5 Aug 2024 15:07:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MD/gySk6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6B7110E21B
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2024 15:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722870467; x=1754406467;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7tk48SBt6GiGYeXDIBcKrwMNmZ8w8TQEWCzpYGcrUr0=;
 b=MD/gySk6SPwLEwLLmWzWNL8eZcFVAFIWy/IjcfOKKj4TAr9k3eBFsdXr
 0R8O5wySNgBYQKtwIx1y5lcryH075kgYRQGoyLwA/R154GZ2HvMz/R1TS
 r1lM3XihP06RiUojUcE29T7+DA0eZDQu41eZDC93we9h2wDgvhjciFkDW
 ZsZa3NTOFZeeVBdYUUhd4tPoXrpo8SySSyDsUgL4GQ56/f/w7GSg6L+gS
 3EnCp+X/HNX3KLyB44TbE+R/57ET8SJEFK9a40frFEtfW8NtawK8PGm+x
 YKn2puOxwHeC4Mj8Q0XxVKmFzUwtVvChB+5ipM7W8gY0orh/ho+MsWVY9 g==;
X-CSE-ConnectionGUID: l1bezVHITVuXwEnv0WlRaw==
X-CSE-MsgGUID: CdpVVYAvS0y6P5s8Glf0iw==
X-IronPort-AV: E=McAfee;i="6700,10204,11155"; a="20694408"
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="20694408"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 08:07:47 -0700
X-CSE-ConnectionGUID: g11+IE1fT/OM45+lWBvitA==
X-CSE-MsgGUID: Armi6iMSQX2iBKJdDL6lZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="60558861"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 08:07:45 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [CI 1/7] drm/i915: Replace to_bpp_x16() with fxp_q4_from_int()
Date: Mon,  5 Aug 2024 18:07:50 +0300
Message-ID: <20240805150802.3568970-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240805150802.3568970-1-imre.deak@intel.com>
References: <20240805150802.3568970-1-imre.deak@intel.com>
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

Replace the to_bpp_x16() helper defined by the driver with the
equivalent fxp_q4_from_int() helper defined by DRM core.

v2: Rebase on the s/drm_x16/fxp_q4 change.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c       |  5 +++--
 .../gpu/drm/i915/display/intel_display_types.h  |  5 -----
 drivers/gpu/drm/i915/display/intel_dp.c         | 17 +++++++++--------
 drivers/gpu/drm/i915/display/intel_dp_mst.c     | 14 +++++++-------
 drivers/gpu/drm/i915/display/intel_fdi.c        |  4 +++-
 drivers/gpu/drm/i915/display/intel_link_bw.c    |  4 +++-
 6 files changed, 25 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 460e83f0d5a5f..83fa093ccf8b0 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -30,6 +30,7 @@
 #include <drm/display/drm_dp_helper.h>
 #include <drm/display/drm_dsc_helper.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_fixed.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
@@ -3521,8 +3522,8 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 
 	crtc_state->pipe_bpp = bpc * 3;
 
-	crtc_state->dsc.compressed_bpp_x16 = to_bpp_x16(min(crtc_state->pipe_bpp,
-							    VBT_DSC_MAX_BPP(dsc->max_bpp)));
+	crtc_state->dsc.compressed_bpp_x16 = fxp_q4_from_int(min(crtc_state->pipe_bpp,
+								 VBT_DSC_MAX_BPP(dsc->max_bpp)));
 
 	/*
 	 * FIXME: This is ugly, and slice count should take DSC engine
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 327a4133030f3..3df6a058a3522 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2218,11 +2218,6 @@ static inline int to_bpp_int_roundup(int bpp_x16)
 	return (bpp_x16 + 0xf) >> 4;
 }
 
-static inline int to_bpp_x16(int bpp)
-{
-	return bpp << 4;
-}
-
 /*
  * Conversion functions/macros from various pointer types to struct
  * intel_display pointer.
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 09789d62001f7..c63fb59fa03cd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -43,6 +43,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_fixed.h>
 #include <drm/drm_probe_helper.h>
 
 #include "g4x_dp.h"
@@ -2022,7 +2023,7 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
 					      timeslots);
 		if (ret == 0) {
 			pipe_config->dsc.compressed_bpp_x16 =
-				to_bpp_x16(valid_dsc_bpp[i]);
+				fxp_q4_from_int(valid_dsc_bpp[i]);
 			return 0;
 		}
 	}
@@ -2275,7 +2276,7 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	dsc_max_bpp = min(dsc_max_bpp, pipe_bpp - 1);
 
 	pipe_config->dsc.compressed_bpp_x16 =
-		to_bpp_x16(max(dsc_min_bpp, dsc_max_bpp));
+		fxp_q4_from_int(max(dsc_min_bpp, dsc_max_bpp));
 
 	pipe_config->pipe_bpp = pipe_bpp;
 
@@ -2407,15 +2408,15 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 	int max_link_bpp_x16;
 
 	max_link_bpp_x16 = min(crtc_state->max_link_bpp_x16,
-			       to_bpp_x16(limits->pipe.max_bpp));
+			       fxp_q4_from_int(limits->pipe.max_bpp));
 
 	if (!dsc) {
-		max_link_bpp_x16 = rounddown(max_link_bpp_x16, to_bpp_x16(2 * 3));
+		max_link_bpp_x16 = rounddown(max_link_bpp_x16, fxp_q4_from_int(2 * 3));
 
-		if (max_link_bpp_x16 < to_bpp_x16(limits->pipe.min_bpp))
+		if (max_link_bpp_x16 < fxp_q4_from_int(limits->pipe.min_bpp))
 			return false;
 
-		limits->link.min_bpp_x16 = to_bpp_x16(limits->pipe.min_bpp);
+		limits->link.min_bpp_x16 = fxp_q4_from_int(limits->pipe.min_bpp);
 	} else {
 		/*
 		 * TODO: set the DSC link limits already here, atm these are
@@ -3061,8 +3062,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (pipe_config->dsc.compression_enable)
 		link_bpp_x16 = pipe_config->dsc.compressed_bpp_x16;
 	else
-		link_bpp_x16 = to_bpp_x16(intel_dp_output_bpp(pipe_config->output_format,
-							      pipe_config->pipe_bpp));
+		link_bpp_x16 = fxp_q4_from_int(intel_dp_output_bpp(pipe_config->output_format,
+								   pipe_config->pipe_bpp));
 
 	if (intel_dp->mso_link_count) {
 		int n = intel_dp->mso_link_count;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index faee7af0a8a48..c861a4263a72b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -212,8 +212,8 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 
 		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
 
-		link_bpp_x16 = to_bpp_x16(dsc ? bpp :
-					  intel_dp_output_bpp(crtc_state->output_format, bpp));
+		link_bpp_x16 = fxp_q4_from_int(dsc ? bpp :
+					       intel_dp_output_bpp(crtc_state->output_format, bpp));
 
 		local_bw_overhead = intel_dp_mst_bw_overhead(crtc_state, connector,
 							     false, dsc, link_bpp_x16);
@@ -290,7 +290,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 		if (!dsc)
 			crtc_state->pipe_bpp = bpp;
 		else
-			crtc_state->dsc.compressed_bpp_x16 = to_bpp_x16(bpp);
+			crtc_state->dsc.compressed_bpp_x16 = fxp_q4_from_int(bpp);
 		drm_dbg_kms(&i915->drm, "Got %d slots for pipe bpp %d dsc %d\n", slots, bpp, dsc);
 	}
 
@@ -479,10 +479,10 @@ adjust_limits_for_dsc_hblank_expansion_quirk(const struct intel_connector *conne
 			    crtc->base.base.id, crtc->base.name,
 			    connector->base.base.id, connector->base.name);
 
-		if (limits->link.max_bpp_x16 < to_bpp_x16(24))
+		if (limits->link.max_bpp_x16 < fxp_q4_from_int(24))
 			return false;
 
-		limits->link.min_bpp_x16 = to_bpp_x16(24);
+		limits->link.min_bpp_x16 = fxp_q4_from_int(24);
 
 		return true;
 	}
@@ -490,9 +490,9 @@ adjust_limits_for_dsc_hblank_expansion_quirk(const struct intel_connector *conne
 	drm_WARN_ON(&i915->drm, limits->min_rate != limits->max_rate);
 
 	if (limits->max_rate < 540000)
-		min_bpp_x16 = to_bpp_x16(13);
+		min_bpp_x16 = fxp_q4_from_int(13);
 	else if (limits->max_rate < 810000)
-		min_bpp_x16 = to_bpp_x16(10);
+		min_bpp_x16 = fxp_q4_from_int(10);
 
 	if (limits->link.min_bpp_x16 >= min_bpp_x16)
 		return true;
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index d33befd7994d5..d08331805d75b 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -5,6 +5,8 @@
 
 #include <linux/string_helpers.h>
 
+#include <drm/drm_fixed.h>
+
 #include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_crtc.h"
@@ -340,7 +342,7 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
 
 	pipe_config->fdi_lanes = lane;
 
-	intel_link_compute_m_n(to_bpp_x16(pipe_config->pipe_bpp),
+	intel_link_compute_m_n(fxp_q4_from_int(pipe_config->pipe_bpp),
 			       lane, fdi_dotclock,
 			       link_bw,
 			       intel_dp_bw_fec_overhead(false),
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
index dfd7d5e23f3fa..5db0724b65205 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
@@ -3,6 +3,8 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include <drm/drm_fixed.h>
+
 #include "i915_drv.h"
 
 #include "intel_atomic.h"
@@ -93,7 +95,7 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
 			 * is based on the pipe bpp value, set the actual link bpp
 			 * limit here once the MST BW allocation is fixed.
 			 */
-			link_bpp_x16 = to_bpp_x16(crtc_state->pipe_bpp);
+			link_bpp_x16 = fxp_q4_from_int(crtc_state->pipe_bpp);
 
 		if (link_bpp_x16 > max_bpp_x16) {
 			max_bpp_x16 = link_bpp_x16;
-- 
2.44.2

