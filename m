Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49859C72909
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 08:19:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFA5810E6FD;
	Thu, 20 Nov 2025 07:19:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TKUEirbX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFFE210E6F7;
 Thu, 20 Nov 2025 07:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763623170; x=1795159170;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X9RgWjoGzeiBne3LnWaytwEVwDPxXtTCk1T1c5uzoEQ=;
 b=TKUEirbXXy+W507zAWKc7qzws4xnMwJ9NskcjJgf54JyFEXWD23DNzaW
 QhMwNK09JIOjahsalYbz+CYPUBSOn8Qyt5A+mTxNp83FvIeBVAgiUMcu5
 7L0UT4E0yeVoxaCG/SK8s/GzDkjZKayXMPZk9kDKd6nv9nxwrszRZBd6r
 MCFTUUmQ7eH/EVLalrpNapim+LsvLXpWE0B13IgwgyXwEyKrFwUNOMLRY
 5UDj6FFmGHEXT2ZG83jIIVTIytKVWhtYbAYbKlla+Kq5N/kiN0Dc3FWXU
 GvEoUG5YIc5DwNEThgasKZ1FFxK6wiyYJ43Z1gLwljcjVTh51OaXINYgi g==;
X-CSE-ConnectionGUID: X1G37TSmTH67I7xm9LvbYA==
X-CSE-MsgGUID: 7MhVAuURQHC6sZZfvkhweQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65559103"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="65559103"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:19:30 -0800
X-CSE-ConnectionGUID: ozbAkDUnTnaggQO4BCiShA==
X-CSE-MsgGUID: iwDAnNWTQ1KvWXxVXOer7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="191073643"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:19:28 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 06/11] drm/i915/dp: Check if bandwidth is sufficient with DSC
 in intel_dp_mode_valid()
Date: Thu, 20 Nov 2025 12:36:34 +0530
Message-ID: <20251120070640.727040-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251120070640.727040-1-ankit.k.nautiyal@intel.com>
References: <20251120070640.727040-1-ankit.k.nautiyal@intel.com>
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

During modevalid we check if link rate is sufficient without DSC
otherwise we try to compute DSC configuration parameters with maximum
link rate, lane count etc. Currently we just check if we are able to get
a valid DSC compressed bpp and slice count, but not checking if the
bandwidth is sufficient with the computed compressed bpp.

Check for bandwidth with computed compressed bpp and max link config.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 49 ++++++++++++++-----------
 1 file changed, 27 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 94fe8ecaf4bf..4dce4726179a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1486,6 +1486,28 @@ static void get_dsc_slice_and_bpp(struct intel_connector *connector,
 	*dsc_slice_count = 0;
 }
 
+static bool is_bw_sufficient_for_dsc_config(int dsc_bpp_x16, u32 link_clock,
+					    u32 lane_count, u32 mode_clock,
+					    int timeslots)
+{
+	u32 fec_pixel_clk_khz = intel_dp_mode_to_fec_clock(mode_clock);
+	u64 available_bw_kbps;
+	u64 required_bw_kbps;
+
+	/*
+	 * Available Link Bandwidth(Kbits/sec):
+	 *  = NumberOfLanes * LinkSymbolClock * 8 * (TimeSlots / 64)
+	 *  = (NumberOfLanes * LinkSymbolClock * TimeSlots) / 8
+	 *
+	 * Required Bandwidth(Kbits/sec):
+	 * = Clock(Khz) * FEC Overhead * bpp
+	 */
+	available_bw_kbps = ((u64)link_clock * lane_count * timeslots) / 8;
+	required_bw_kbps = DIV_ROUND_UP_ULL((u64)fec_pixel_clk_khz * dsc_bpp_x16, 16);
+
+	return available_bw_kbps >= required_bw_kbps;
+}
+
 static enum drm_mode_status
 intel_dp_mode_valid(struct drm_connector *_connector,
 		    const struct drm_display_mode *mode)
@@ -1566,6 +1588,11 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (mode_rate > max_rate && !dsc)
 		return MODE_CLOCK_HIGH;
 
+	if (dsc && !is_bw_sufficient_for_dsc_config(dsc_max_compressed_bpp,
+						    max_link_clock, max_lanes,
+						    target_clock, 64))
+		return MODE_CLOCK_HIGH;
+
 	status = intel_dp_mode_valid_downstream(connector, mode, target_clock);
 	if (status != MODE_OK)
 		return status;
@@ -2006,28 +2033,6 @@ static bool intel_dp_dsc_supports_format(const struct intel_connector *connector
 	return drm_dp_dsc_sink_supports_format(connector->dp.dsc_dpcd, sink_dsc_format);
 }
 
-static bool is_bw_sufficient_for_dsc_config(int dsc_bpp_x16, u32 link_clock,
-					    u32 lane_count, u32 mode_clock,
-					    int timeslots)
-{
-	u32 fec_pixel_clk_khz = intel_dp_mode_to_fec_clock(mode_clock);
-	u64 available_bw_kbps;
-	u64 required_bw_kbps;
-
-	/*
-	 * Available Link Bandwidth(Kbits/sec):
-	 *  = NumberOfLanes * LinkSymbolClock * 8 * (TimeSlots / 64)
-	 *  = (NumberOfLanes * LinkSymbolClock * TimeSlots) / 8
-	 *
-	 * Required Bandwidth(Kbits/sec):
-	 * = Clock(Khz) * FEC Overhead * bpp
-	 */
-	available_bw_kbps = ((u64)link_clock * lane_count * timeslots) / 8;
-	required_bw_kbps = DIV_ROUND_UP_ULL((u64)fec_pixel_clk_khz * dsc_bpp_x16, 16);
-
-	return available_bw_kbps >= required_bw_kbps;
-}
-
 static int dsc_compute_link_config(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *pipe_config,
 				   struct drm_connector_state *conn_state,
-- 
2.45.2

