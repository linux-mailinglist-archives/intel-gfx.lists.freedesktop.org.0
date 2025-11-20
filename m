Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD69BC72900
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 08:19:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 347F910E6F7;
	Thu, 20 Nov 2025 07:19:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n1DoyOht";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 510E710E6F7;
 Thu, 20 Nov 2025 07:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763623168; x=1795159168;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gZ2lnzUrbWJiIQ879feveCLRv29TbNmOQvslKeGs0bs=;
 b=n1DoyOhtvMOwush10oRgp/cCrsZOy9fB3rjM7Lb1T8xbzYM9u2e5IGBd
 83C65soovc1Cbl/STVq+6MG5BItET/6KE3xFTUZrGk0f+UXwpttufMjBo
 pto05NAWdTSv0sZiLRZ2DhR/5Yd3h7ELVs9IdHj1yatBvs+2aeEbGGLm7
 TilpbwEVJSQ5ZjOAJMFf2S3VErI5WvS+zR3Ykot1AbL/t1fLnRRtAweDi
 45pU9fSbxZNcegax0EkEXOV3XqBhj8RLZdnvVUEKBsYl89DivaA2flxZ/
 QloHBjqwZBdzZW9HCKKM8TgTF/h9PqqRVLjp2TJSVls28L77uBUA8hYjU w==;
X-CSE-ConnectionGUID: GMZr7ZQCR7yP6NaUF/YVfQ==
X-CSE-MsgGUID: nb897fVWS/azwsvtjmaPKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65559101"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="65559101"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:19:28 -0800
X-CSE-ConnectionGUID: X8MwM53/ROuK9zmxhvRQCA==
X-CSE-MsgGUID: Wf+VOyXyRG+PztzHrmniig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="191073631"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:19:26 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 05/11] drm/i915/dp: Refactor DSC BW calculation
Date: Thu, 20 Nov 2025 12:36:33 +0530
Message-ID: <20251120070640.727040-6-ankit.k.nautiyal@intel.com>
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

Switch DSC bandwidth check to use explicit 64-bit math and kbits/sec units.
Use DIV_ROUND_UP_ULL for required bandwidth making it safe to allow
available_bw >= required_bw (exact fit).

While at it, drop the unused output_format argument.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 97b4894b1efd..94fe8ecaf4bf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2008,15 +2008,24 @@ static bool intel_dp_dsc_supports_format(const struct intel_connector *connector
 
 static bool is_bw_sufficient_for_dsc_config(int dsc_bpp_x16, u32 link_clock,
 					    u32 lane_count, u32 mode_clock,
-					    enum intel_output_format output_format,
 					    int timeslots)
 {
-	u32 available_bw, required_bw;
+	u32 fec_pixel_clk_khz = intel_dp_mode_to_fec_clock(mode_clock);
+	u64 available_bw_kbps;
+	u64 required_bw_kbps;
 
-	available_bw = (link_clock * lane_count * timeslots * 16)  / 8;
-	required_bw = dsc_bpp_x16 * (intel_dp_mode_to_fec_clock(mode_clock));
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
 
-	return available_bw > required_bw;
+	return available_bw_kbps >= required_bw_kbps;
 }
 
 static int dsc_compute_link_config(struct intel_dp *intel_dp,
@@ -2064,7 +2073,6 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 			} else {
 				if (!is_bw_sufficient_for_dsc_config(dsc_bpp_x16, link_rate,
 								     lane_count, adjusted_mode->clock,
-								     pipe_config->output_format,
 								     timeslots))
 					continue;
 			}
-- 
2.45.2

