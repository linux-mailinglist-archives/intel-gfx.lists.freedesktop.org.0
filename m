Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07833CD9C22
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 16:21:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9623510E184;
	Tue, 23 Dec 2025 15:20:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mvoVG31b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0323310E15A;
 Tue, 23 Dec 2025 15:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766503243; x=1798039243;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gNmQoXBlQoh3OTmQZyrk14qlyhnnjLQZoMHedHo39cc=;
 b=mvoVG31b4v6npqYtjucU+AAklDutEnuA5u0QTt8S7P+irehanfDSnh8k
 TFZXPIDwseWz9rX8ymTDb9kjlJ+mUIduRuBVJEQrKt+YK82Pq7Ow7TWIh
 lMoWrlc8n/urvzfpCnponaf4qgq2WDRXOcpP9l1mSLaXmvVCoDRV74jev
 4htFNj7+AY89KizbbQJTd55/0Bs9diL3r4lOPmCVJcAEFBq9Oqd7+qD/b
 fTlBhNOoleV6VFmE7XugzeQ7j+Ev8/xKCyCMRDT579t8gM2rksdB0Oxa5
 IFU4LMSFQTaycG4gZ6Kyt5c4tCxD7PVf4dyddvnbilDLQlh4rwAYrtEnx w==;
X-CSE-ConnectionGUID: omVSeffMTMCbmcSfokE9SA==
X-CSE-MsgGUID: n7AH1qlBSQC2Z6Dsibniow==
X-IronPort-AV: E=McAfee;i="6800,10657,11651"; a="79802747"
X-IronPort-AV: E=Sophos;i="6.21,171,1763452800"; d="scan'208";a="79802747"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 07:20:42 -0800
X-CSE-ConnectionGUID: Jc0ljNGKTmG7WZ1v9un91g==
X-CSE-MsgGUID: KujYCTdeSbuIGbTkw1XWpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,171,1763452800"; d="scan'208";a="200703626"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 07:20:40 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v3] drm/i915/vdsc: Account for DSC slice overhead in
 intel_vdsc_min_cdclk()
Date: Tue, 23 Dec 2025 20:38:26 +0530
Message-ID: <20251223150826.2591182-1-ankit.k.nautiyal@intel.com>
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

v2:
 - Get rid of the scaling factor and return unchanged pixel-rate
   instead of 0.
v3:
 - Use mul_u32_u32() for the bubble-adjusted pixel rate to avoid 64x64
   multiplication and drop redundant casts in DIV_ROUND_UP_ULL(). (Imre)

Bspec:68912
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 35 ++++++++++++++++++++---
 1 file changed, 31 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index ad5fe841e4b3..5493082f30a7 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1050,15 +1050,40 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
 	drm_dsc_dump_config(p, indent, &crtc_state->dsc.config);
 }
 
+static
+int intel_dsc_get_pixel_rate_with_dsc_bubbles(struct intel_display *display,
+					      int pixel_rate, int htotal,
+					      int dsc_horizontal_slices)
+{
+	int dsc_slice_bubbles;
+	u64 num;
+
+	if (drm_WARN_ON(display->drm, !htotal))
+		return pixel_rate;
+
+	dsc_slice_bubbles = 14 * dsc_horizontal_slices;
+	num = mul_u32_u32(pixel_rate, (htotal + dsc_slice_bubbles));
+
+	return DIV_ROUND_UP_ULL(num, htotal);
+}
+
 int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
+	int htotal = crtc_state->hw.adjusted_mode.crtc_htotal;
+	int dsc_slices = crtc_state->dsc.slice_count;
+	int pixel_rate;
 	int min_cdclk;
 
 	if (!crtc_state->dsc.compression_enable)
 		return 0;
 
+	pixel_rate = intel_dsc_get_pixel_rate_with_dsc_bubbles(display,
+							       crtc_state->pixel_rate,
+							       htotal,
+							       dsc_slices);
+
 	/*
 	 * When we decide to use only one VDSC engine, since
 	 * each VDSC operates with 1 ppc throughput, pixel clock
@@ -1066,7 +1091,7 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 	 * If there 2 VDSC engines, then pixel clock can't be higher than
 	 * VDSC clock(cdclk) * 2 and so on.
 	 */
-	min_cdclk = DIV_ROUND_UP(crtc_state->pixel_rate, num_vdsc_instances);
+	min_cdclk = DIV_ROUND_UP(pixel_rate, num_vdsc_instances);
 
 	if (crtc_state->joiner_pipes) {
 		int pixel_clock = intel_dp_mode_to_fec_clock(crtc_state->hw.adjusted_mode.clock);
@@ -1084,9 +1109,11 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 		 * => CDCLK >= compressed_bpp * Pixel clock  / 2 * Bigjoiner Interface bits
 		 */
 		int bigjoiner_interface_bits = DISPLAY_VER(display) >= 14 ? 36 : 24;
-		int min_cdclk_bj =
-			(fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
-			 pixel_clock) / (2 * bigjoiner_interface_bits);
+		int adjusted_pixel_rate =
+			intel_dsc_get_pixel_rate_with_dsc_bubbles(display, pixel_clock,
+								  htotal, dsc_slices);
+		int min_cdclk_bj = (fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
+				   adjusted_pixel_rate) / (2 * bigjoiner_interface_bits);
 
 		min_cdclk = max(min_cdclk, min_cdclk_bj);
 	}
-- 
2.45.2

