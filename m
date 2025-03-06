Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CECA55851
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 22:07:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 789F710E2C7;
	Thu,  6 Mar 2025 21:07:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dg5MfaKl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3286810E2C7
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 21:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741295265; x=1772831265;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NMDzyEFEq7Tdt7WZDX4UpUNyBopFMvPxnGh/s21M0zY=;
 b=dg5MfaKleFMHuIeUUz8dIAl0v6Pb7aW/zG5q2wtFNneDk7yn43sF6MCd
 td1CFUdRXofU3gC+1knGhZ0j/LGoMHZy+SztiuKEa8LToyqHFhPdu5M59
 r4z9tsPJnmFYMi/uN8qBs3wSP5Lr+VWiMQWWdZb4xQOmBf2bCK/kAY2xd
 4UBizftvyPQNCqRK3ZFd16+qjYdxTWksT471luiHe6kNZCOZxr5EOG1FV
 qUKDmkHK3prK3cxOZQBB3oGAN1c9DMGeGca46mJy2gJWPFI4wXNCyn5mw
 Kp/sonKO+KL/clB++9d8yWBbaKiSGd2iI+bNR5IKwOgg3qNQDjQSGRWb6 g==;
X-CSE-ConnectionGUID: ODE7HKjTTemAHqsCYOfhzQ==
X-CSE-MsgGUID: OE+YcMYhS5aXelJAmJLjkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42529837"
X-IronPort-AV: E=Sophos;i="6.14,227,1736841600"; d="scan'208";a="42529837"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 13:07:44 -0800
X-CSE-ConnectionGUID: jdwyqicOTvGmpMh/acdlbA==
X-CSE-MsgGUID: hkRngcWlRneGiyDonJhvMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124339188"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 13:07:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 23:07:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stable@vger.kernel.org,
	Jani Nikula <jani.nikula@linux.intel.com>
Subject: [PATCH v2 1/2] drm/i915/dp: Reject HBR3 when sink doesn't support TPS4
Date: Thu,  6 Mar 2025 23:07:40 +0200
Message-ID: <20250306210740.11886-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250303123952.5669-1-ville.syrjala@linux.intel.com>
References: <20250303123952.5669-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

According to the DP spec TPS4 is mandatory for HBR3. We have
however seen some broken eDP sinks that violate this and
declare support for HBR3 without TPS4 support.

At least in the case of the icl Dell XPS 13 7390 this results
in an unstable output.

Reject HBR3 when TPS4 supports is unavailable on the sink.

v2: Leave breadcrumbs in dmesg to avoid head scratching (Jani)

Cc: stable@vger.kernel.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 49 +++++++++++++++++++++----
 1 file changed, 42 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 205ec315b413..70f5d1465f81 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -172,10 +172,28 @@ int intel_dp_link_symbol_clock(int rate)
 
 static int max_dprx_rate(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	int max_rate;
+
 	if (intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
-		return drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
+		max_rate = drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
+	else
+		max_rate = drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
 
-	return drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
+	/*
+	 * Some broken eDP sinks illegally declare support for
+	 * HBR3 without TPS4, and are unable to produce a stable
+	 * output. Reject HBR3 when TPS4 is not available.
+	 */
+	if (max_rate >= 810000 && !drm_dp_tps4_supported(intel_dp->dpcd)) {
+		drm_dbg_kms(display->drm,
+			    "[ENCODER:%d:%s] Rejecting HBR3 due to missing TPS4 support\n",
+			    encoder->base.base.id, encoder->base.name);
+		max_rate = 540000;
+	}
+
+	return max_rate;
 }
 
 static int max_dprx_lane_count(struct intel_dp *intel_dp)
@@ -4170,6 +4188,9 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
 static void
 intel_edp_set_sink_rates(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+
 	intel_dp->num_sink_rates = 0;
 
 	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
@@ -4180,10 +4201,7 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
 				 sink_rates, sizeof(sink_rates));
 
 		for (i = 0; i < ARRAY_SIZE(sink_rates); i++) {
-			int val = le16_to_cpu(sink_rates[i]);
-
-			if (val == 0)
-				break;
+			int rate;
 
 			/* Value read multiplied by 200kHz gives the per-lane
 			 * link rate in kHz. The source rates are, however,
@@ -4191,7 +4209,24 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
 			 * back to symbols is
 			 * (val * 200kHz)*(8/10 ch. encoding)*(1/8 bit to Byte)
 			 */
-			intel_dp->sink_rates[i] = (val * 200) / 10;
+			rate = le16_to_cpu(sink_rates[i]) * 200 / 10;
+
+			if (rate == 0)
+				break;
+
+			/*
+			 * Some broken eDP sinks illegally declare support for
+			 * HBR3 without TPS4, and are unable to produce a stable
+			 * output. Reject HBR3 when TPS4 is not available.
+			 */
+			if (rate >= 810000 && !drm_dp_tps4_supported(intel_dp->dpcd)) {
+				drm_dbg_kms(display->drm,
+					    "[ENCODER:%d:%s] Rejecting HBR3 due to missing TPS4 support\n",
+					    encoder->base.base.id, encoder->base.name);
+				break;
+			}
+
+			intel_dp->sink_rates[i] = rate;
 		}
 		intel_dp->num_sink_rates = i;
 	}
-- 
2.45.3

