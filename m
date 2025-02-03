Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8035A25F84
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 17:08:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A5AE10E04E;
	Mon,  3 Feb 2025 16:08:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dL1/fBTx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28E8510E4CB;
 Mon,  3 Feb 2025 16:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738598920; x=1770134920;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=J6yoKNAXV8eR4UQ/KVhU4xr4jPxyr3FDjTUa4eTB90w=;
 b=dL1/fBTxNGXEtK2aj9lpQ6qXL8uOJeH1Qz4u25ynx7ThFzfVGfYODBrG
 1FfQe7toVf5N4pBR0IaSFRirqWg921Wzcw4u/oPgtjnoTa7neGweo8JiY
 VmG39RKRVGmnvjEH/Mzys1im3R/IQXiyGMhxwRF+EVCkWSop6c6qvjgNN
 aY80kKVdI44hAZlq+izT/KMtlhAP34bIYWi7rdDf50AtglVIi796heocJ
 6OtLtVmQmZKdYuO8QbJEZirbupcfULUBa4dZgtfOHNndV0ceZkp664/fB
 P5tckdFHoFbKczjlMcFXwwqb0ZXIQAeoPCD4/MZGEyJhn5gCTqczqy12H A==;
X-CSE-ConnectionGUID: sXCt+oJsS72hIu6cszNsbA==
X-CSE-MsgGUID: Zsk9U+ehSYWHxMnbx1ZB4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="50088911"
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="50088911"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 08:08:40 -0800
X-CSE-ConnectionGUID: 6vr/hNoHThSxteAxoeMSUw==
X-CSE-MsgGUID: L4T09EmET4eqzPbkchrXag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111175165"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.71])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 08:08:38 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH] drm/i915/dp: Add support for DP UHBR SST DSC
Date: Mon,  3 Feb 2025 18:08:34 +0200
Message-Id: <20250203160834.2708027-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Drop the UHBR limitation from DP SST DSC, and handle SST DSC bandwidth
computation for UHBR using intel_dp_mtp_tu_compute_config().

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 35 +++++++++++++++++++------
 1 file changed, 27 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index cc6aba353c11..eb8f6806166c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1958,15 +1958,37 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 		for (lane_count = limits->min_lane_count;
 		     lane_count <= limits->max_lane_count;
 		     lane_count <<= 1) {
-			if (!is_bw_sufficient_for_dsc_config(dsc_bpp_x16, link_rate,
-							     lane_count, adjusted_mode->clock,
-							     pipe_config->output_format,
-							     timeslots))
-				continue;
 
+			/*
+			 * FIXME: intel_dp_mtp_tu_compute_config() requires
+			 * ->lane_count and ->port_clock set before we know
+			 * they'll work. If we end up failing altogether,
+			 * they'll remain in crtc state. This shouldn't matter,
+			 * as we'd then bail out from compute config, but it's
+			 * just ugly.
+			 */
 			pipe_config->lane_count = lane_count;
 			pipe_config->port_clock = link_rate;
 
+			if (drm_dp_is_uhbr_rate(link_rate)) {
+				int ret;
+
+				ret = intel_dp_mtp_tu_compute_config(intel_dp,
+								     pipe_config,
+								     conn_state,
+								     dsc_bpp_x16,
+								     dsc_bpp_x16,
+								     0, true);
+				if (ret)
+					continue;
+			} else {
+				if (!is_bw_sufficient_for_dsc_config(dsc_bpp_x16, link_rate,
+								     lane_count, adjusted_mode->clock,
+								     pipe_config->output_format,
+								     timeslots))
+					continue;
+			}
+
 			return 0;
 		}
 	}
@@ -2493,9 +2515,6 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 	limits->min_rate = intel_dp_min_link_rate(intel_dp);
 	limits->max_rate = intel_dp_max_link_rate(intel_dp);
 
-	/* FIXME 128b/132b SST+DSC support missing */
-	if (!is_mst && dsc)
-		limits->max_rate = min(limits->max_rate, 810000);
 	limits->min_rate = min(limits->min_rate, limits->max_rate);
 
 	limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
-- 
2.39.5

