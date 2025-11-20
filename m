Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA26C7290F
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 08:19:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3582C10E6F9;
	Thu, 20 Nov 2025 07:19:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ndmI4c1n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A35410E702;
 Thu, 20 Nov 2025 07:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763623175; x=1795159175;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xN0azXn9NlG+KtFX6KYwAWV7Kb+KzO2ZDbRo6NYde10=;
 b=ndmI4c1nBowaBwuvUkr56K0Szpvlj6ykfuWOJLll3qvvYJUqEijZBI4T
 tCkGD+VJxogWHBxzn7ZQ5Gu5pZxmDJ6g1rPAcQI2p54IExPkdu20rZMJf
 mLdWFSMdOHHC5LFHZKjWBFofgRM33JCUTerNEl9brr/+JUKODwcZ6AHvh
 OrxaybSIsiBJYntJizzxqedc0nSm+gIbYydvs+P7eouJ8BT8YfDlCm1va
 LXMpOoRVsvnpCTCQKdMrAf3mGnY9Ti7GZuSAs9btLLxvjyp06ue62hvUp
 r+T6kP4j10MfnXFw+4g+enmYFyoqPfzKvIYnifrOFG0/kMCUccB7AFRMK Q==;
X-CSE-ConnectionGUID: UK9gj81eS5a6uXZmakEv3w==
X-CSE-MsgGUID: RwA19qg7TWie5UdVZ9T64w==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65559108"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="65559108"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:19:35 -0800
X-CSE-ConnectionGUID: 7akZPH66TsGB8/zieAIimg==
X-CSE-MsgGUID: nxNB+8rRTGW05sXYyPSnmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="191073685"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:19:33 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 09/11] drm/i915/vdsc: Account for DSC slice overhead in
 intel_vdsc_min_cdclk()
Date: Thu, 20 Nov 2025 12:36:37 +0530
Message-ID: <20251120070640.727040-10-ankit.k.nautiyal@intel.com>
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

When DSC is enabled on a pipe, the pipe pixel rate input to the
CDCLK frequency and pipe joining calculation needs an adjustment to
account for compression overhead "bubbles" added at each horizontal
slice boundary.

Account for this overhead while computing min cdclk required for DSC.

Bspec:68912
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 45 +++++++++++++++++++++--
 1 file changed, 41 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 0e727fc5e80c..31b59e9491a3 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1050,15 +1050,52 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
 	drm_dsc_dump_config(p, indent, &crtc_state->dsc.config);
 }
 
+static
+int intel_dsc_get_pixel_rate_with_dsc_bubbles(int pixel_rate, int htotal,
+					      int dsc_horizontal_slices)
+{
+	int dsc_slice_factor_x100;
+	int dsc_slice_bubbles;
+
+	if (!htotal)
+		return 0;
+
+	dsc_slice_bubbles = 14 * dsc_horizontal_slices;
+	dsc_slice_factor_x100 = (100 * htotal + dsc_slice_bubbles) / htotal;
+
+	return (dsc_slice_factor_x100 * pixel_rate) / 100;
+}
+
+static
+int pixel_rate_with_dsc_bubbles(const struct intel_crtc_state *crtc_state, int pixel_rate)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
+	int dsc_horizontal_slices;
+
+	if (drm_WARN_ON(display->drm, !vdsc_cfg->slice_width))
+		return 0;
+
+	dsc_horizontal_slices = vdsc_cfg->pic_width / vdsc_cfg->slice_width;
+
+	return intel_dsc_get_pixel_rate_with_dsc_bubbles(pixel_rate,
+							 adjusted_mode->crtc_htotal,
+							 dsc_horizontal_slices);
+}
+
 int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
+	int pixel_rate;
 	int min_cdclk;
 
 	if (!crtc_state->dsc.compression_enable)
 		return 0;
 
+	pixel_rate = pixel_rate_with_dsc_bubbles(crtc_state, crtc_state->pixel_rate);
+
 	/*
 	 * When we decide to use only one VDSC engine, since
 	 * each VDSC operates with 1 ppc throughput, pixel clock
@@ -1066,7 +1103,7 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 	 * If there 2 VDSC engines, then pixel clock can't be higher than
 	 * VDSC clock(cdclk) * 2 and so on.
 	 */
-	min_cdclk = DIV_ROUND_UP(crtc_state->pixel_rate, num_vdsc_instances);
+	min_cdclk = DIV_ROUND_UP(pixel_rate, num_vdsc_instances);
 
 	if (crtc_state->joiner_pipes) {
 		int pixel_clock = intel_dp_mode_to_fec_clock(crtc_state->hw.adjusted_mode.clock);
@@ -1084,9 +1121,9 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 		 * => CDCLK >= compressed_bpp * Pixel clock  / 2 * Bigjoiner Interface bits
 		 */
 		int bigjoiner_interface_bits = DISPLAY_VER(display) >= 14 ? 36 : 24;
-		int min_cdclk_bj =
-			(fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
-			 pixel_clock) / (2 * bigjoiner_interface_bits);
+		int adjusted_pixel_rate = pixel_rate_with_dsc_bubbles(crtc_state, pixel_clock);
+		int min_cdclk_bj = (fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
+				   adjusted_pixel_rate) / (2 * bigjoiner_interface_bits);
 
 		min_cdclk = max(min_cdclk, min_cdclk_bj);
 	}
-- 
2.45.2

