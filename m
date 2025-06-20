Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC2AAE1B43
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jun 2025 14:55:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E52610E226;
	Fri, 20 Jun 2025 12:55:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nxmf9ydn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD61510E123;
 Fri, 20 Jun 2025 12:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750424103; x=1781960103;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9fb+srY19VYdPw3foZC31TOfBLZjeJAiB1CUL4Vll98=;
 b=Nxmf9ydnitYvWXZnw0HqK0LUXZHQD8WDxbRdQtHv6kI+p/1N5s6vQXqy
 J3ineSTf/ZvIBZy30marZ2OobtY07xBUnEILxz9YCNGS19PEA/of0QYey
 Fv7MniZXC3TUrtSrTEq5tPM0x46J0w46d3ij68BnIn8alm/7ZyXPt2aO4
 qiWArrh4jvGYxpYaWvN9JVinQX6cJBehW1RtrQ5K/Ub/OXPY2Kfg6Vrru
 JJcBysluQW+MvEz/vAtyXJTaGXwMQwg6MX5b1aDIOa68osDV/ajdxlLDh
 HOr4gcHIIyWfwI/Q7s5R0KJzQSIg7fAvLQuMQcksTDyOwHWZ2u+ptQcUC A==;
X-CSE-ConnectionGUID: R5l3y+r3TvGff0DN918Oeg==
X-CSE-MsgGUID: 5zA8qjtUSy2DFTCGMlfwcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11469"; a="63738790"
X-IronPort-AV: E=Sophos;i="6.16,251,1744095600"; d="scan'208";a="63738790"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2025 05:55:03 -0700
X-CSE-ConnectionGUID: cxFgMXnKS9iK2G6GKSezYQ==
X-CSE-MsgGUID: Fn3nO4oYQP+mYcG9D5W1wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,251,1744095600"; d="scan'208";a="151216182"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2025 05:55:01 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 1/2] Revert "drm/i915/dp: Reject HBR3 when sink doesn't
 support TPS4"
Date: Fri, 20 Jun 2025 18:14:16 +0530
Message-ID: <20250620124417.2041233-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250620124417.2041233-1-ankit.k.nautiyal@intel.com>
References: <20250620124417.2041233-1-ankit.k.nautiyal@intel.com>
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

This reverts commit 584cf613c24a4250d9be4819efc841aa2624d5b6.
Commit 584cf613c24a ("drm/i915/dp: Reject HBR3 when sink doesn't support
TPS4") introduced a blanket rejection of HBR3 link rate when the sink does
not support TPS4. While this was intended to address instability observed
on certain eDP panels [1], the TPS4 requirement is only mandated for DPRX
and not for eDPRX.

This change inadvertently causes blank screens on some eDP panels that do
not advertise TPS4 support, and require HBR3 to operate at their fixed
native resolution.

Revert the commit to restore functionality for such panels.

[1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 49 ++++---------------------
 1 file changed, 7 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 277b40b13948..74f331ae97ff 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -173,28 +173,10 @@ int intel_dp_link_symbol_clock(int rate)
 
 static int max_dprx_rate(struct intel_dp *intel_dp)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	int max_rate;
-
 	if (intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
-		max_rate = drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
-	else
-		max_rate = drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
+		return drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
 
-	/*
-	 * Some broken eDP sinks illegally declare support for
-	 * HBR3 without TPS4, and are unable to produce a stable
-	 * output. Reject HBR3 when TPS4 is not available.
-	 */
-	if (max_rate >= 810000 && !drm_dp_tps4_supported(intel_dp->dpcd)) {
-		drm_dbg_kms(display->drm,
-			    "[ENCODER:%d:%s] Rejecting HBR3 due to missing TPS4 support\n",
-			    encoder->base.base.id, encoder->base.name);
-		max_rate = 540000;
-	}
-
-	return max_rate;
+	return drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
 }
 
 static int max_dprx_lane_count(struct intel_dp *intel_dp)
@@ -4270,9 +4252,6 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
 static void
 intel_edp_set_sink_rates(struct intel_dp *intel_dp)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-
 	intel_dp->num_sink_rates = 0;
 
 	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
@@ -4283,7 +4262,10 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
 				 sink_rates, sizeof(sink_rates));
 
 		for (i = 0; i < ARRAY_SIZE(sink_rates); i++) {
-			int rate;
+			int val = le16_to_cpu(sink_rates[i]);
+
+			if (val == 0)
+				break;
 
 			/* Value read multiplied by 200kHz gives the per-lane
 			 * link rate in kHz. The source rates are, however,
@@ -4291,24 +4273,7 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
 			 * back to symbols is
 			 * (val * 200kHz)*(8/10 ch. encoding)*(1/8 bit to Byte)
 			 */
-			rate = le16_to_cpu(sink_rates[i]) * 200 / 10;
-
-			if (rate == 0)
-				break;
-
-			/*
-			 * Some broken eDP sinks illegally declare support for
-			 * HBR3 without TPS4, and are unable to produce a stable
-			 * output. Reject HBR3 when TPS4 is not available.
-			 */
-			if (rate >= 810000 && !drm_dp_tps4_supported(intel_dp->dpcd)) {
-				drm_dbg_kms(display->drm,
-					    "[ENCODER:%d:%s] Rejecting HBR3 due to missing TPS4 support\n",
-					    encoder->base.base.id, encoder->base.name);
-				break;
-			}
-
-			intel_dp->sink_rates[i] = rate;
+			intel_dp->sink_rates[i] = (val * 200) / 10;
 		}
 		intel_dp->num_sink_rates = i;
 	}
-- 
2.45.2

