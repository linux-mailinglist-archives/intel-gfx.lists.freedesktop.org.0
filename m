Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF5FB21C24
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Aug 2025 06:28:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C39D10E591;
	Tue, 12 Aug 2025 04:28:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mvole2iJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53AE710E58C;
 Tue, 12 Aug 2025 04:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754972910; x=1786508910;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yOQzcLNQCPgrkcmDPedSOY9xZeamKXTRlmHQv5U7xJE=;
 b=mvole2iJyVWqzDz+Y3v9gEJbKKkHR9tvIde+nERmYqNJXIe1XncEk8Qj
 GqrAcZXlXUEu6IxVwNkZBk+fL/dMyjkNJcRH8qT5XYU7VYpdHYGvwaJWO
 +3Oni3bHMdUY8Bk41//B/I4ZiIvjEwRekXC5BxgPvchjBABm9zPPuJ2d8
 VItlcSBlaLmIqq5mfauFUnSeX3e1KnOR9S+rg+MILtR82st3U7z+teFfx
 XjGZ4ACanJbMoboLkT5zPB2zeYr9ccf59MLYZEXRJXVoCkx3TtFt87TaO
 MnpBf8vB5rgkwbB17aIXLVNjlMAocepVYxEdWXDDDsVhmBf59xxfH+M0f Q==;
X-CSE-ConnectionGUID: 0GZNN9Z3T1q8yEXIAjlQbA==
X-CSE-MsgGUID: r1yGjl+fSnCi0qQI39A1Rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="68693393"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="68693393"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:28:30 -0700
X-CSE-ConnectionGUID: AJQXVQwbRHyoIBPOXz04dw==
X-CSE-MsgGUID: SpfrVnHSSyixAqIifc4ZXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165982384"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:28:29 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 5/6] drm/i915/vdsc: Account for overhead bubbles in horizontal
 slices
Date: Tue, 12 Aug 2025 09:44:26 +0530
Message-ID: <20250812041428.1820109-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250812041428.1820109-1-ankit.k.nautiyal@intel.com>
References: <20250812041428.1820109-1-ankit.k.nautiyal@intel.com>
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

Bspec:68912
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 45 +++++++++++++++++++++--
 1 file changed, 41 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 8e799e225af1..7513cecdeaf3 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1034,15 +1034,52 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
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
+							 adjusted_mode->htotal,
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
@@ -1050,7 +1087,7 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 	 * If there 2 VDSC engines, then pixel clock can't be higher than
 	 * VDSC clock(cdclk) * 2 and so on.
 	 */
-	min_cdclk = DIV_ROUND_UP(crtc_state->pixel_rate, num_vdsc_instances);
+	min_cdclk = DIV_ROUND_UP(pixel_rate, num_vdsc_instances);
 
 	if (crtc_state->joiner_pipes) {
 		int pixel_clock = intel_dp_mode_to_fec_clock(crtc_state->hw.adjusted_mode.clock);
@@ -1068,9 +1105,9 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
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

