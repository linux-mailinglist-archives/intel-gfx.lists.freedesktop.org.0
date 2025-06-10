Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8A3AD335F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jun 2025 12:15:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8624510E4E7;
	Tue, 10 Jun 2025 10:15:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tg5tzR0i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3143810E4E6;
 Tue, 10 Jun 2025 10:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749550543; x=1781086543;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8va84pnfoj+24Xm+7ewk9Tb30e+brsYXmVUzw0K9YYo=;
 b=Tg5tzR0iqnf5qlkvZy1VvYSu5tQBfwK2rCduCIMZCOAxvAdzdr/m0M12
 3SAT97mmaa5y2D8KPGzNrk1Br3vO+Esw+UEefj1FBKDM6fmTgVdGJSK/g
 RvRgGxevy/JiY0AnBN9+pCqQWuaBzzYGUCjxOo0/Oaht1Y5QW1BEaSKLU
 3dSip4lWLSaV4GRNGp2F/mgVwYN3s1leg2X4GbRTlTwup/kCbxw0kbJ1M
 X3bhFr8uwPprUsRt1pcOw197j08oQJvcAbKqyY62G7yfAj9p0iq8atswQ
 lV9Jl+VG31jGUlzrsWwYFLOBu5Xcvd+Abb0lnMfk4nJeEk+Uu4EPpxcxF Q==;
X-CSE-ConnectionGUID: lA24IZ2gSQyOL5OudodA3A==
X-CSE-MsgGUID: j8Y1Etw7TEaUTQheYbVxwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="51738627"
X-IronPort-AV: E=Sophos;i="6.16,224,1744095600"; d="scan'208";a="51738627"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 03:15:42 -0700
X-CSE-ConnectionGUID: L4KhgTNCQnCyhNRhVgzCow==
X-CSE-MsgGUID: lT1+Br0kRayCF/23p0fj9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,224,1744095600"; d="scan'208";a="169969252"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 03:15:40 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@linux.intel.com
Subject: [PATCH 2/2] drm/i915/dp: Add kernel param to limit eDP rate to HBR2"
Date: Tue, 10 Jun 2025 15:34:49 +0530
Message-ID: <20250610100449.185927-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250610100449.185927-1-ankit.k.nautiyal@intel.com>
References: <20250610100449.185927-1-ankit.k.nautiyal@intel.com>
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

Some ICL/TGL platforms with combo PHY ports can theoretically support HBR3,
but in practice, signal integrity issues may prevent stable operation.
While some systems include a Parade PS8461 mux chip to mitigate jitter and
enable HBR3, there is no reliable way to detect its presence.
Additionally, many systems have broken or missing VBT entries, making it
unsafe to rely on VBT for link rate limits.

To address this, introduce a new kernel parameter `limit_edp_hbr2`.
When set, this parameter forces the eDP link rate to be capped at
HBR2 (540000 kHz), overriding any higher advertised rates from the sink or
DPCD. By default, the higher rates will be allowed, i.e. the parameter
will be set to false.

This provides a manual override for users and OEMs to limit the rate to
HBR2, where output with HBR3 is unstable.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../drm/i915/display/intel_display_params.c   |  2 +
 .../drm/i915/display/intel_display_params.h   |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 50 ++++++++++++++++---
 3 files changed, 46 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index c4f1ab43fc0c..84f36104f5ca 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -133,6 +133,8 @@ intel_display_param_named_unsafe(enable_dmc_wl, int, 0400,
 	"(-1=use per-chip default, 0=disabled, 1=enabled, 2=match any register, 3=always locked) "
 	"Default: -1");
 
+intel_display_param_named(limit_edp_hbr2, bool, 0400, "Limit EDP link rate to HBR2 (default: false)");
+
 __maybe_unused
 static void _param_print_bool(struct drm_printer *p, const char *driver_name,
 			      const char *name, bool val)
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 5317138e6044..f7ba9805f97f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -48,6 +48,7 @@ struct drm_printer;
 	param(bool, psr_safest_params, false, 0400) \
 	param(bool, enable_psr2_sel_fetch, true, 0400) \
 	param(int, enable_dmc_wl, -1, 0400) \
+	param(bool, limit_edp_hbr2, false, 0400) \
 
 #define MEMBER(T, member, ...) T member;
 struct intel_display_params {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2a0b76ae33cd..85022e5e64f4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -174,10 +174,29 @@ int intel_dp_link_symbol_clock(int rate)
 
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
+	 * Some platforms with combo PHY ports may not reliably support HBR3
+	 * due to signal integrity limitations, despite advertising it.
+	 * If the kernel parameter `limit_edp_hbr2` is set, cap the link
+	 * rate to HBR2 to avoid unstable configurations.
+	 */
+	if (max_rate >= 810000 && display->params.limit_edp_hbr2) {
+		drm_dbg_kms(display->drm,
+			    "[ENCODER:%d:%s] Forcing max link rate to HBR2 due to limit_edp_hbr2 set\n",
+			    encoder->base.base.id, encoder->base.name);
+		max_rate = 540000;
+	}
+
+	return max_rate;
 }
 
 static int max_dprx_lane_count(struct intel_dp *intel_dp)
@@ -4253,6 +4272,9 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
 static void
 intel_edp_set_sink_rates(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+
 	intel_dp->num_sink_rates = 0;
 
 	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
@@ -4263,10 +4285,7 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
 				 sink_rates, sizeof(sink_rates));
 
 		for (i = 0; i < ARRAY_SIZE(sink_rates); i++) {
-			int val = le16_to_cpu(sink_rates[i]);
-
-			if (val == 0)
-				break;
+			int rate;
 
 			/* Value read multiplied by 200kHz gives the per-lane
 			 * link rate in kHz. The source rates are, however,
@@ -4274,7 +4293,24 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
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
+			 * Some platforms cannot reliably drive HBR3 rates due to PHY limitations,
+			 * even if the sink advertises support. If kernel parameter `limit_edp_hbr2`
+			 * is set, reject any sink rates above HBR2 to ensure stable operation.
+			 */
+			if (rate >= 810000 && display->params.limit_edp_hbr2) {
+				drm_dbg_kms(display->drm,
+					    "[ENCODER:%d:%s] Limit the rate to HBR2 due to limit_edp_hbr2 param\n",
+					    encoder->base.base.id, encoder->base.name);
+				break;
+			}
+
+			intel_dp->sink_rates[i] = rate;
 		}
 		intel_dp->num_sink_rates = i;
 	}
-- 
2.45.2

