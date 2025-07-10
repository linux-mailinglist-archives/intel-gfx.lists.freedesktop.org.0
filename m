Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9F6AFF878
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 07:31:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D4EC10E362;
	Thu, 10 Jul 2025 05:31:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ARz9BnWD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1719610E362;
 Thu, 10 Jul 2025 05:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752125471; x=1783661471;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yDvRsWLEpSl9GMLHQt654vlR3pOi4ARvFFF+jyp9yGs=;
 b=ARz9BnWDzM/3w4j9dJD2te0TR2ifLb50G4a5OBOS5GiFGmzDOoYfJ/lj
 dk2aPddplIOD/+DoObCp+bRtyB43Hc6GrN6GWu1mWrwPW92h+0MphZgK4
 45bgFnlAvacxUfNNMy5nRGzclz2jMSKuAVypdYMDmlhX0utkcqNw1HzoH
 9klla5p3p9/m5L+LgjLeR/or1cFLMxRWAhNfH3FWbAtVaMKT7eMWg6bvu
 89z46eFhuG3mqY9FDy4ub9SaKhtq8Pw0tKNeFgVABTb3msyIyTggkKSOH
 6Y1q6ml2zqrhevBR7ymZ4UKsXLqmtBqjbItg6WW/w9Jqg5fBkx/ls0nH9 w==;
X-CSE-ConnectionGUID: k0LPPvBsQ2+WbSMMr/u4Jg==
X-CSE-MsgGUID: BVCNmDoaT/artyhi1KUTpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11489"; a="64654810"
X-IronPort-AV: E=Sophos;i="6.16,299,1744095600"; d="scan'208";a="64654810"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 22:31:11 -0700
X-CSE-ConnectionGUID: ChzhbmWARRKdzxjeEwcvSQ==
X-CSE-MsgGUID: cqrvnD09Sga6zaP35Qe4RA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,299,1744095600"; d="scan'208";a="156304722"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 22:31:09 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 1/2] Revert "drm/i915/dp: Reject HBR3 when sink doesn't
 support TPS4"
Date: Thu, 10 Jul 2025 10:50:40 +0530
Message-ID: <20250710052041.1238567-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250710052041.1238567-1-ankit.k.nautiyal@intel.com>
References: <20250710052041.1238567-1-ankit.k.nautiyal@intel.com>
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
not support TPS4.

While this was intended to address instability observed on certain eDP
panels [1], there seem to be edp panels that do not follow the
specification. These eDP panels do not advertise TPS4 support, but require
HBR3 to operate at their fixed native resolution [2].

As a result, the change causes blank screens on such panels. Apparently,
Windows driver does not enforce this restriction, and the issue is not seen
there.

Therefore, revert the commit to restore functionality for such panels,
and align behaviour with Windows driver.

[1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
[2] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14517

v2: Update the commit message with better justification. (Ville)

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14517
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 49 ++++---------------------
 1 file changed, 7 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f48912f308df..92abf819e60e 100644
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
@@ -4273,9 +4255,6 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
 static void
 intel_edp_set_sink_rates(struct intel_dp *intel_dp)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-
 	intel_dp->num_sink_rates = 0;
 
 	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
@@ -4286,7 +4265,10 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
 				 sink_rates, sizeof(sink_rates));
 
 		for (i = 0; i < ARRAY_SIZE(sink_rates); i++) {
-			int rate;
+			int val = le16_to_cpu(sink_rates[i]);
+
+			if (val == 0)
+				break;
 
 			/* Value read multiplied by 200kHz gives the per-lane
 			 * link rate in kHz. The source rates are, however,
@@ -4294,24 +4276,7 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
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

