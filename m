Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7CE97BE22
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:42:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7D3C10E5BD;
	Wed, 18 Sep 2024 14:42:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jfr8OZo6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9A1710E5C4;
 Wed, 18 Sep 2024 14:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726670538; x=1758206538;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BqVa+6YbbhDq1LWy9JMj+cQZHNP3AXmPFzsVKBOP7IE=;
 b=jfr8OZo6fZfDKBFBWyisB926kDmOHpyVj3qBhjIBE83ITqokWt6Am90d
 VCHdkD2Sr/CKARI3Ph+15ZMsh2aHguYqdt19f5UXOHmpkwlX5EbqAbyb1
 TTzlY0GdWBYl1U2zrBCuQZC4sitFu2+YKyiB77UfvVZwfewhosApT0tNH
 XmR5h+ac5BX5UZbN+OFXP3gQR4EaeW4JGoKb210qem/NASytwdSDViYgT
 IJJnMMFfEnOKrD53F2D7DsQXyglrzx3ZfnrhIu6jy/ZUP37CRorDTHOFR
 slLgC4pJXuj6pCe9meQYGZ2ldyc+CP6MwYv+aLisPkLYpjcTOnN39+IyE w==;
X-CSE-ConnectionGUID: Wc581I+hQWKSsWKlavuxIw==
X-CSE-MsgGUID: 9us6mkFrQ2O4GSJemop/hA==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="29481770"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="29481770"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:42:18 -0700
X-CSE-ConnectionGUID: /rClPja4ReSTWKnCCBaVpQ==
X-CSE-MsgGUID: Jm0Rx6q1Re+dsKR5guGGMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69200400"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:42:15 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 13/15] drm/i915: Compute config and mode valid changes for
 ultrajoiner
Date: Wed, 18 Sep 2024 20:13:41 +0530
Message-ID: <20240918144343.2876184-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Implement required changes for mode validation and compute config,
to support Ultrajoiner.

v2:
-Drop changes for HDMI.
-Separate out DSC changes into another patch.
v3: Fix check in can_ultrajoiner. (Ankit)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 44 +++++++++++++++++++++----
 1 file changed, 37 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 369829ea5a12..4005700ab043 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -871,24 +871,34 @@ u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
 				       int num_joined_pipes)
 {
 	u32 max_bpp_small_joiner_ram;
+	u32 max_bpp_joiner;
 
 	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
 	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) / mode_hdisplay;
+	max_bpp_joiner = max_bpp_small_joiner_ram;
 
-	if (num_joined_pipes == 2) {
-		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
+	/* if ultra joiner is enabled, we have 2 bigjoiners enabled */
+	if (num_joined_pipes == 2 ||
+	    num_joined_pipes == 4) {
+		int joiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
 		/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
 		int ppc = 2;
-		u32 max_bpp_bigjoiner =
-			i915->display.cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits /
+		max_bpp_joiner =
+			i915->display.cdclk.max_cdclk_freq * ppc * joiner_interface_bits /
 			intel_dp_mode_to_fec_clock(mode_clock);
 
 		max_bpp_small_joiner_ram *= 2;
 
-		return min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
 	}
+	if (num_joined_pipes == 4) {
+		/* TODO: Check for ultrajoiner ram constraints */
 
-	return max_bpp_small_joiner_ram;
+		/* both get multiplied by 2, because ram bits/ppc now doubled */
+		max_bpp_small_joiner_ram *= 2;
+		max_bpp_joiner *= 2;
+	}
+
+	return min(max_bpp_small_joiner_ram, max_bpp_joiner);
 }
 
 u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
@@ -994,6 +1004,10 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		if (num_joined_pipes == 2 && test_slice_count < 4)
 			continue;
 
+		/* ultrajoiner needs 2 bigjoiners to be enabled */
+		if (num_joined_pipes == 4 && test_slice_count < 8)
+			continue;
+
 		if (min_slice_count <= test_slice_count)
 			return test_slice_count;
 	}
@@ -1270,6 +1284,18 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	return MODE_OK;
 }
 
+static
+bool intel_dp_needs_ultrajoiner(struct intel_dp *dp, int clock)
+{
+	const struct intel_encoder *encoder = &dp_to_dig_port(dp)->base;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	if (!HAS_ULTRAJOINER(i915))
+		return false;
+
+	return clock > (i915->display.cdclk.max_dotclk_freq * 2);
+}
+
 static
 bool intel_dp_needs_bigjoiner(struct intel_dp *intel_dp,
 			      struct intel_connector *connector,
@@ -1296,6 +1322,8 @@ int intel_dp_compute_num_pipes(struct intel_dp *intel_dp,
 		MISSING_CASE(connector->force_joined_pipes);
 		fallthrough;
 	case 0:
+		if (intel_dp_needs_ultrajoiner(intel_dp, clock))
+			return 4;
 		if (intel_dp_needs_bigjoiner(intel_dp, connector, hdisplay, clock))
 			return 2;
 	}
@@ -2542,8 +2570,10 @@ bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
 	 * Pipe joiner needs compression up to display 12 due to bandwidth
 	 * limitation. DG2 onwards pipe joiner can be enabled without
 	 * compression.
+	 * Ultrajoiner always needs compression.
 	 */
-	return !HAS_UNCOMPRESSED_JOINER(i915) && num_joined_pipes == 2;
+	return (!HAS_UNCOMPRESSED_JOINER(i915) && num_joined_pipes == 2) ||
+		num_joined_pipes == 4;
 }
 
 static int
-- 
2.45.2

