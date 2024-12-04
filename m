Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D519E366B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 10:24:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEF3B10E4BE;
	Wed,  4 Dec 2024 09:23:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aKW+fKKC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2671C10E49D;
 Wed,  4 Dec 2024 09:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733304237; x=1764840237;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nSqNV7nsCtP7Fmy50ieyWPRWThcmZcBJQIxLs8bkxVY=;
 b=aKW+fKKCH/ziacMtKP0oZIgCY5acRrjoEGFIpvgDwECYxgjFm6kwG3cN
 GKEO8WzzeH53KPhyKXqdkMM3tBkgb3u1sHHwBxaFVvX5qxhLol2iufKwr
 2thuIQkY1Emc89yk7RxNovRqHg5AY0fQl3VAptfWAD25SFI/VXr3fyXsX
 1IainfymCU6vuSheq0+hH/P6Vdai1Vd9xKNQIlUnnfieM2NE7+mS2Sf8Z
 CbQMDKVlSvAss702bb/1bK87OmCZNgaaj2K29ArijIoQr9SZPlp7U+EKc
 jfM7IMxRF81BD0+3gi7RvlXrCBk7NR7FF5Fzy6Hu18/NSrJs1/YwuDlZp A==;
X-CSE-ConnectionGUID: p20Fj0XTRImTKP7a5YzYAw==
X-CSE-MsgGUID: kM0ynD58S/6OEgDH3rJtBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44038451"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44038451"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:23:57 -0800
X-CSE-ConnectionGUID: 7pRrH8J2QrmjFYJAw6U6lA==
X-CSE-MsgGUID: l7VqKswkTz+Jk1bMxPL9eA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93555078"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:23:55 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 01/14] drm/i915/dp: Refactor FEC support check in
 intel_dp_supports_dsc
Date: Wed,  4 Dec 2024 14:56:29 +0530
Message-ID: <20241204092642.1835807-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
References: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
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

Forward Error Correction is required for DP if we are using DSC but
is optional for eDP.

Currently the helper intel_dp_supports_dsc checks if fec_enable is set for
DP or not. The helper is called after fec_enable is set in crtc_state.

Instead of this a better approach would be to:
first, call intel_dp_supports_dsc to check for DSC support
(along with FEC requirement for DP) and then set fec_enable for DP
(if not already set) in crtc_state.

To achieve this, remove the check for fec_enable in the helper and instead
check for FEC support for DP. With this change the helper
intel_dp_supports_dsc can be called earlier and return early if DSC is
not supported. The structure intel_dp is added to the helper to get the
FEC support for DP.

v2: Pass intel_dp to adjust_limits_for_dsc_hblank_expansion_quirk
instead of deriving it from connector. (Jani)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  8 +++++---
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 ++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++++++----
 3 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4471c8fcd478..eb65c7a64a32 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1624,13 +1624,15 @@ bool intel_dp_supports_fec(struct intel_dp *intel_dp,
 		drm_dp_sink_supports_fec(connector->dp.fec_capability);
 }
 
-bool intel_dp_supports_dsc(const struct intel_connector *connector,
+bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
+			   const struct intel_connector *connector,
 			   const struct intel_crtc_state *crtc_state)
 {
 	if (!intel_dp_has_dsc(connector))
 		return false;
 
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) && !crtc_state->fec_enable)
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) &&
+	    !intel_dp_supports_fec(intel_dp, connector, crtc_state))
 		return false;
 
 	return intel_dsc_source_support(crtc_state);
@@ -2368,7 +2370,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		 intel_dp_supports_fec(intel_dp, connector, pipe_config) &&
 		 !intel_dp_is_uhbr(pipe_config));
 
-	if (!intel_dp_supports_dsc(connector, pipe_config))
+	if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
 		return -EINVAL;
 
 	if (!intel_dp_dsc_supports_format(connector, pipe_config->output_format))
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 48f10876be65..4ae54e9718ce 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -170,7 +170,8 @@ bool intel_dp_supports_fec(struct intel_dp *intel_dp,
 			   const struct intel_connector *connector,
 			   const struct intel_crtc_state *pipe_config);
 
-bool intel_dp_supports_dsc(const struct intel_connector *connector,
+bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
+			   const struct intel_connector *connector,
 			   const struct intel_crtc_state *crtc_state);
 
 u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 pipe_bpp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index c59c2c14679c..9b64c8a0e55e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -488,7 +488,8 @@ hblank_expansion_quirk_needs_dsc(const struct intel_connector *connector,
 }
 
 static bool
-adjust_limits_for_dsc_hblank_expansion_quirk(const struct intel_connector *connector,
+adjust_limits_for_dsc_hblank_expansion_quirk(struct intel_dp *intel_dp,
+					     const struct intel_connector *connector,
 					     const struct intel_crtc_state *crtc_state,
 					     struct link_config_limits *limits,
 					     bool dsc)
@@ -501,7 +502,7 @@ adjust_limits_for_dsc_hblank_expansion_quirk(const struct intel_connector *conne
 		return true;
 
 	if (!dsc) {
-		if (intel_dp_supports_dsc(connector, crtc_state)) {
+		if (intel_dp_supports_dsc(intel_dp, connector, crtc_state)) {
 			drm_dbg_kms(display->drm,
 				    "[CRTC:%d:%s][CONNECTOR:%d:%s] DSC needed by hblank expansion quirk\n",
 				    crtc->base.base.id, crtc->base.name,
@@ -582,7 +583,8 @@ mst_stream_compute_config_limits(struct intel_dp *intel_dp,
 						     limits))
 		return false;
 
-	return adjust_limits_for_dsc_hblank_expansion_quirk(connector,
+	return adjust_limits_for_dsc_hblank_expansion_quirk(intel_dp,
+							    connector,
 							    crtc_state,
 							    limits,
 							    dsc);
@@ -646,7 +648,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
 			    str_yes_no(intel_dp->force_dsc_en));
 
-		if (!intel_dp_supports_dsc(connector, pipe_config))
+		if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
 			return -EINVAL;
 
 		if (!mst_stream_compute_config_limits(intel_dp, connector,
-- 
2.45.2

