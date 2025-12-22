Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93AA0CD4B40
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 05:57:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04CA710E412;
	Mon, 22 Dec 2025 04:57:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A/4jrpxI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 975E210E412;
 Mon, 22 Dec 2025 04:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766379421; x=1797915421;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QD7mkJTKC0gNDxt4CUY/ut7Kjp7ngBgYoUDDEpfkaJ4=;
 b=A/4jrpxISni3WM4pKHC2hp0hiQwnKiTUtWlW0YE1AwPQP0CGBPxjSFxs
 wd4fYK4P0FBwzTGGZ1wwOIo/SVTr9YubnJlesSNl4MWFd/Z/UqSYoTgIZ
 UNjKs14an8kJWfJ4Cwym002w1L66+Y8zNn38tFSVwLCfHR/OXEd5ZAtrU
 LiM8w1US5EDi2kWbiNSEXyH7tHvwPg0S2dnt2oJMh/lGmwsFHEFSl8Q5f
 97PGUTOaytCfO5szEN2UOKq5evo9v9IxzqCCjVLlixM5ijst6PUP6dozM
 cbWFDAs3JjHkjMfLBwRg/efKR62/v4hC6BkTh+abPrpUKJg8sH0bfQrIO A==;
X-CSE-ConnectionGUID: a8ZBrfmBRYyZR6n1sHV8nA==
X-CSE-MsgGUID: F2OTRwerSNStJGFMOs1T+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11649"; a="68214235"
X-IronPort-AV: E=Sophos;i="6.21,167,1763452800"; d="scan'208";a="68214235"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2025 20:57:01 -0800
X-CSE-ConnectionGUID: d1iK/ISQQUSq7U5bMjSy0w==
X-CSE-MsgGUID: GnOKLbx3RsyNCU26O2ge2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,167,1763452800"; d="scan'208";a="236849514"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2025 20:56:59 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH] drm/i915/vdsc: Account for DSC slice overhead in
 intel_vdsc_min_cdclk()
Date: Mon, 22 Dec 2025 10:14:43 +0530
Message-ID: <20251222044443.2443411-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

v2: Get rid of the scaling factor and return unchanged pixel-rate
instead of 0.

Bspec:68912
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 45 +++++++++++++++++++++--
 1 file changed, 41 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index ad5fe841e4b3..b91cd009be9d 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1050,15 +1050,52 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
 	drm_dsc_dump_config(p, indent, &crtc_state->dsc.config);
 }
 
+static
+int intel_dsc_get_pixel_rate_with_dsc_bubbles(int pixel_rate, int htotal,
+					      int dsc_horizontal_slices)
+{
+	int dsc_slice_bubbles;
+	u64 num;
+
+	if (!htotal)
+		return pixel_rate;
+
+	dsc_slice_bubbles = 14 * dsc_horizontal_slices;
+	num = (u64)pixel_rate * (u64)(htotal + dsc_slice_bubbles);
+
+	return (int)DIV_ROUND_UP_ULL(num, (u64)htotal);
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
+		return pixel_rate;
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

