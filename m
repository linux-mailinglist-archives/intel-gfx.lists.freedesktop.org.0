Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D99E674B07
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 05:42:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C270010EA38;
	Fri, 20 Jan 2023 04:42:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B72210EA2A;
 Fri, 20 Jan 2023 04:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674189740; x=1705725740;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hEJPl5NSBca+4rGUayrTlsTjmXFLAoMTm0puQb/STzk=;
 b=N066QNAydRQzTub+ypcLvFpBPQTwsWcfLq/gKjEOjp8dMj2NvYVixUQ9
 AUWdRU2FMxk2rdgrb8th89E+9wDt1gIpqw0d812D1DQl5XuV3T03p+83H
 kyiFfzLiPxFjam5iHzVN5gquZd+7VaCt5QTAJC1XToObh9WKqb5zQBIrL
 xBFZ6jkdRISMUP4FobjBAEXR1IsXib8mxBSldl7RGwnxB7YXYFyNldXDK
 8g6Pkpyx3rtKguIGs1sC/9f+H/6P5gUsySSsKskDGnM+AHcQO13My8AOV
 S9E+o4oqfRPxXJP7Zm+7ulSxtTnU6vkCsKIAarcz89k3mm0xav5T9Exm3 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="323195569"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="323195569"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 20:42:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="692735008"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="692735008"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 20:42:17 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Fri, 20 Jan 2023 10:08:38 +0530
Message-Id: <20230120043844.3761895-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230120043844.3761895-1-ankit.k.nautiyal@intel.com>
References: <20230120043844.3761895-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/16] drm/i915/audio : Consider fractional vdsc
 bpp while computing tu_data
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

MTL+ supports fractional compressed bits_per_pixel, with precision of
1/16. This compressed bpp is stored in U6.4 format.
Accommodate the precision during calculation of transfer unit data
for hblank_early calculation.

v2:
-Fixed tu_data calculation while dealing with U6.4 format. (Stan)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index a73cf477b5e6..30d75f637793 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -510,14 +510,14 @@ static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder,
 	unsigned int link_clks_available, link_clks_required;
 	unsigned int tu_data, tu_line, link_clks_active;
 	unsigned int h_active, h_total, hblank_delta, pixel_clk;
-	unsigned int fec_coeff, cdclk, vdsc_bpp;
+	unsigned int fec_coeff, cdclk, vdsc_bppx16;
 	unsigned int link_clk, lanes;
 	unsigned int hblank_rise;
 
 	h_active = crtc_state->hw.adjusted_mode.crtc_hdisplay;
 	h_total = crtc_state->hw.adjusted_mode.crtc_htotal;
 	pixel_clk = crtc_state->hw.adjusted_mode.crtc_clock;
-	vdsc_bpp = dsc_integral_compressed_bpp(crtc_state->dsc.compressed_bpp);
+	vdsc_bppx16 = crtc_state->dsc.compressed_bpp;
 	cdclk = i915->display.cdclk.hw.cdclk;
 	/* fec= 0.972261, using rounding multiplier of 1000000 */
 	fec_coeff = 972261;
@@ -525,10 +525,10 @@ static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder,
 	lanes = crtc_state->lane_count;
 
 	drm_dbg_kms(&i915->drm, "h_active = %u link_clk = %u :"
-		    "lanes = %u vdsc_bpp = %u cdclk = %u\n",
-		    h_active, link_clk, lanes, vdsc_bpp, cdclk);
+		    "lanes = %u vdsc_bppx16 = %u cdclk = %u\n",
+		    h_active, link_clk, lanes, vdsc_bppx16, cdclk);
 
-	if (WARN_ON(!link_clk || !pixel_clk || !lanes || !vdsc_bpp || !cdclk))
+	if (WARN_ON(!link_clk || !pixel_clk || !lanes || !vdsc_bppx16 || !cdclk))
 		return 0;
 
 	link_clks_available = (h_total - h_active) * link_clk / pixel_clk - 28;
@@ -540,8 +540,8 @@ static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder,
 		hblank_delta = DIV64_U64_ROUND_UP(mul_u32_u32(5 * (link_clk + cdclk), pixel_clk),
 						  mul_u32_u32(link_clk, cdclk));
 
-	tu_data = div64_u64(mul_u32_u32(pixel_clk * vdsc_bpp * 8, 1000000),
-			    mul_u32_u32(link_clk * lanes, fec_coeff));
+	tu_data = div64_u64(mul_u32_u32(pixel_clk * vdsc_bppx16 * 8, 1000000),
+			    mul_u32_u32(link_clk * lanes * 16, fec_coeff));
 	tu_line = div64_u64(h_active * mul_u32_u32(link_clk, fec_coeff),
 			    mul_u32_u32(64 * pixel_clk, 1000000));
 	link_clks_active  = (tu_line - 1) * 64 + tu_data;
-- 
2.25.1

