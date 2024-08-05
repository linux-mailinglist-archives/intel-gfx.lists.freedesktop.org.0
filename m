Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34AEE947DAE
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2024 17:07:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F02810E22A;
	Mon,  5 Aug 2024 15:07:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cR8ICdHR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D333910E227
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2024 15:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722870469; x=1754406469;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G40BmeR0l7ryHiWZnRKbnqHIhB7uhes9IvX8vm1zl7U=;
 b=cR8ICdHRPGPkv4XnADQ9qMG9TamDzfyb0yN/tsbB66xLidN0ubxzSW2F
 M4r3IdssNRTSnL48g9EUucVxSBBBh0+msbvQdGjAO/JpeW4jRHhRxWNZ8
 nZLXZTNnj8QYMmLsDrO3ZltOkbM/SMsR41bSjDBv1ONM1Xmo0A7Pgr3RZ
 RQw79ha14yrtB9g84ZyQ2oA8w9pIiScmYR+1CYkpROAUpIjEsEzOBFUuA
 nw416WoExgu10n3OZ+/rErZ5qtnEgs4iG4g9rTa+U/GcI/aNcC8RvDB3u
 CTKUDFXI+FxSMEhdU0vZMIl+4xrjh3JiESSi3dZmPE5rMg3cWAlYVXA6v Q==;
X-CSE-ConnectionGUID: 9WpE1oK8QUWSV7sNiQ8oBA==
X-CSE-MsgGUID: 5/kU1m2USNqA4B91m9GR3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11155"; a="20694419"
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="20694419"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 08:07:49 -0700
X-CSE-ConnectionGUID: cPw9DjJwTYqAGvK7oHsh9g==
X-CSE-MsgGUID: yY6NhtMmRBKm7OHqSVtn/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="60558879"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 08:07:48 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [CI 3/7] drm/i915: Replace to_bpp_int_roundup() with
 fxp_q4_to_int_roundup()
Date: Mon,  5 Aug 2024 18:07:52 +0300
Message-ID: <20240805150802.3568970-4-imre.deak@intel.com>
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

Replace the to_bpp_int_roundup() helper defined by the driver with the
equivalent fxp_q4_to_int_roundup() helper defined by DRM core.

v2: Rebase on s/drm_x16/fxp_q4 change.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c         | 5 ++++-
 drivers/gpu/drm/i915/display/intel_display_types.h | 5 -----
 drivers/gpu/drm/i915/display/intel_dp.c            | 6 +++---
 drivers/gpu/drm/i915/display/intel_dp_mst.c        | 2 +-
 4 files changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 16d5550f7e5e5..aa3ba66c5307f 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -23,7 +23,10 @@
 
 #include <linux/time.h>
 
+#include <drm/drm_fixed.h>
+
 #include "soc/intel_dram.h"
+
 #include "hsw_ips.h"
 #include "i915_reg.h"
 #include "intel_atomic.h"
@@ -2750,7 +2753,7 @@ static int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 		 */
 		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
 		int min_cdclk_bj =
-			(to_bpp_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
+			(fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
 			 pixel_clock) / (2 * bigjoiner_interface_bits);
 
 		min_cdclk = max(min_cdclk, min_cdclk_bj);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 5f1f3e1a9e086..0f57065ea226e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2208,11 +2208,6 @@ static inline int to_bpp_frac(int bpp_x16)
 #define BPP_X16_FMT		"%d.%04d"
 #define BPP_X16_ARGS(bpp_x16)	fxp_q4_to_int(bpp_x16), (to_bpp_frac(bpp_x16) * 625)
 
-static inline int to_bpp_int_roundup(int bpp_x16)
-{
-	return (bpp_x16 + 0xf) >> 4;
-}
-
 /*
  * Conversion functions/macros from various pointer types to struct
  * intel_display pointer.
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7355b1fd73295..d132b8d5aaa99 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2101,7 +2101,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	dsc_src_min_bpp = dsc_src_min_compressed_bpp();
 	dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
 	dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
-	dsc_min_bpp = max(dsc_min_bpp, to_bpp_int_roundup(limits->link.min_bpp_x16));
+	dsc_min_bpp = max(dsc_min_bpp, fxp_q4_to_int_roundup(limits->link.min_bpp_x16));
 
 	dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
 	dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
@@ -2263,7 +2263,7 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	dsc_src_min_bpp = dsc_src_min_compressed_bpp();
 	dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
 	dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
-	dsc_min_bpp = max(dsc_min_bpp, to_bpp_int_roundup(limits->link.min_bpp_x16));
+	dsc_min_bpp = max(dsc_min_bpp, fxp_q4_to_int_roundup(limits->link.min_bpp_x16));
 
 	dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
 	dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
@@ -2489,7 +2489,7 @@ int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state)
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	int bpp = crtc_state->dsc.compression_enable ?
-		to_bpp_int_roundup(crtc_state->dsc.compressed_bpp_x16) :
+		fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) :
 		crtc_state->pipe_bpp;
 
 	return intel_dp_link_required(adjusted_mode->crtc_clock, bpp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index a4fbcae3139f0..8c5f783abdc26 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -379,7 +379,7 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 
 	min_compressed_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
 	min_compressed_bpp = max(min_compressed_bpp,
-				 to_bpp_int_roundup(limits->link.min_bpp_x16));
+				 fxp_q4_to_int_roundup(limits->link.min_bpp_x16));
 
 	drm_dbg_kms(&i915->drm, "DSC Sink supported compressed min bpp %d compressed max bpp %d\n",
 		    min_compressed_bpp, max_compressed_bpp);
-- 
2.44.2

