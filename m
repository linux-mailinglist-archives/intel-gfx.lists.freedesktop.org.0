Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C85A6F42F
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 12:34:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A79610E548;
	Tue, 25 Mar 2025 11:34:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TuAJgESP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5439810E545;
 Tue, 25 Mar 2025 11:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742902481; x=1774438481;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vrMDsbnXw4hAnppdNthh0LROa0wxHSVqiKX9fmtn14U=;
 b=TuAJgESPnVP40fzQKzNQKwIkpQBa37RlfCEZLYB5A3tKCOpmMsIqypMY
 swHTuK5ujpoqAl39YH1f5n4Rz6GExz3jx5IPyrvlN3eEaLy5MkgP6cRA7
 PAK6JdNTfgnHXskwAEDT/3YYu6OYoD14LBqntXtyvT5fX9pL1Ra+ocsTJ
 dlzqBVoJ1GK/oAkyTdrJnuReGhoTuofltCUMKlFrUQUkO7irv+ag2cMU5
 RK+C2bgDCdH8KLyZuF7MHpl79wVbHT6BAewY1PH7hO7p891f7g9ho9BLH
 soRVob0+SUpsGYYzXOh7ZBQQ+KTC6ujGrdFNxFyHptwWT36RPwt8bTH+b w==;
X-CSE-ConnectionGUID: NLXg9cyxRjykH5TUORtIWQ==
X-CSE-MsgGUID: QMwSHMhqRbCmN12dl7B8Sg==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="44266902"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="44266902"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 04:34:41 -0700
X-CSE-ConnectionGUID: v3lABHRiRIakHCq5DLc9Sg==
X-CSE-MsgGUID: CcEwNuihTF6Yf1iLsZlUWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="124070538"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 04:34:39 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 02/16] drm/i915/dp_mst: Use VRR Timing generator for DP MST
 for fixed_rr
Date: Tue, 25 Mar 2025 16:52:35 +0530
Message-ID: <20250325112249.228444-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250325112249.228444-1-ankit.k.nautiyal@intel.com>
References: <20250325112249.228444-1-ankit.k.nautiyal@intel.com>
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

Currently the variable timings are supported only for DP and eDP and not
for DP MST. Call intel_vrr_compute_config() for MST which will configure
fixed refresh rate timings irrespective of whether VRR is supported or
not. Since vrr_capable still doesn't have support for DP MST this will be
just treated as non VRR case and vrr.vmin/vmax/flipline will be all set
to adjusted_mode->crtc_vtotal.

This will help to move away from the legacy timing generator and
always use VRR timing generator by default.

With this change, we need to exclude MST in intel_vrr_is_capable for
now, to avoid having LRR with MST.

v2: Exclude MST in intel_vrr_is_capable() for now. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +++
 drivers/gpu/drm/i915/display/intel_vrr.c    | 2 ++
 2 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 02f95108c637..bd47cf127b4c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -52,6 +52,7 @@
 #include "intel_pfit.h"
 #include "intel_psr.h"
 #include "intel_vdsc.h"
+#include "intel_vrr.h"
 #include "skl_scaler.h"
 
 /*
@@ -710,6 +711,8 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 		pipe_config->lane_lat_optim_mask =
 			bxt_dpio_phy_calc_lane_lat_optim_mask(pipe_config->lane_count);
 
+	intel_vrr_compute_config(pipe_config, conn_state);
+
 	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
 
 	intel_ddi_compute_min_voltage_level(pipe_config);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 6bdcdfed4b9b..c682c487eb25 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -32,6 +32,8 @@ bool intel_vrr_is_capable(struct intel_connector *connector)
 			return false;
 		fallthrough;
 	case DRM_MODE_CONNECTOR_DisplayPort:
+		if (connector->mst.dp)
+			return false;
 		intel_dp = intel_attached_dp(connector);
 
 		if (!drm_dp_sink_can_do_video_without_timing_msa(intel_dp->dpcd))
-- 
2.45.2

