Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A143FAFDFC0
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jul 2025 08:02:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BADEF10E726;
	Wed,  9 Jul 2025 06:02:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DzevgAsC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D01A310E728;
 Wed,  9 Jul 2025 06:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752040935; x=1783576935;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H3mTUjBKp6px4W1/KXvdfT70lNijbDgpF3Gvq1wizIc=;
 b=DzevgAsC1yHhQUb4WGHmgIOF56dF+D9+WwRNDXSmSZJtNjOvnXDGl2xY
 xpc/Nx52ZJgdCHjU/U+Szhn5JrNd/Ez2dFIqq8wpHZAzKAKhof2C/NM1p
 oMqVgOQNG1RSrFrkTJ1Lmu1YFIFZor3g3j3UBy8dCoKM3RT3BcXKetLC8
 hLK5W/Xln3YSc6YVru7wJ+osqs4kAna0oNPTGYd7za5BJ4MF2+OrNcFZg
 WsFafD4Ssy2919W2pg4uHlXYg/Wq/i9HF3VEyLDEkMEU9P/30ZIVckBmP
 ZFYBuX6rbIfSeNZK0LOOEMJLctw2SbgObFdK661XJKrm3YlFkU2nwUmYd A==;
X-CSE-ConnectionGUID: ff93gMf3Q26nFe5hgep4lg==
X-CSE-MsgGUID: vq6O8z4eQh6KOAA9rN94pA==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="64539054"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="64539054"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 23:02:15 -0700
X-CSE-ConnectionGUID: x5H6+p0STBOjxL+aUeZfAw==
X-CSE-MsgGUID: 9CSmhdlFQL+SdwTrINF6ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="155311810"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 23:02:12 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 1/2] Revert "drm/i915/dp: Reject HBR3 when sink doesn't
 support TPS4"
Date: Wed,  9 Jul 2025 11:21:42 +0530
Message-ID: <20250709055144.879393-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250709055144.879393-1-ankit.k.nautiyal@intel.com>
References: <20250709055144.879393-1-ankit.k.nautiyal@intel.com>
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

This reverts commit 584cf613c24a4250d9be4819efc841aa2624d5b6.
Commit 584cf613c24a ("drm/i915/dp: Reject HBR3 when sink doesn't support
TPS4") introduced a blanket rejection of HBR3 link rate when the sink does
not support TPS4. While this was intended to address instability observed
on certain eDP panels [1], the TPS4 requirement is only mandated for DPRX
and not for eDPRX.

This change inadvertently causes blank screens on some eDP panels that do
not advertise TPS4 support, and require HBR3 to operate at their fixed
native resolution [2].

Revert the commit to restore functionality for such panels.

[1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
[2] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14517

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
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

