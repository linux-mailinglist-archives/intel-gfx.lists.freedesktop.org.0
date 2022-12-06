Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC2564417B
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 11:46:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 561E210E328;
	Tue,  6 Dec 2022 10:46:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0453B10E31D
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 10:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670323551; x=1701859551;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hEJPl5NSBca+4rGUayrTlsTjmXFLAoMTm0puQb/STzk=;
 b=IVP27jA8JzdZzZOoAzeHKlrrnrBz//OZBpRgUF1uIuo2KReZ98mtWCTV
 3CGOofJscD1mAFCbufQT9VlNn8swSv/POy0hSSR0WlZup/URAiW+jB2iV
 xIKwwpH7F2O+dRD0pnHjCnhhD3UoSSTWrWMd5Dv2Zcsyl8f/ZG2X2V/Cp
 j5C+wNIevAM+tJIScKT31/DLdglei2MF6rGqnjreTP6efCK1Y32kqh7HS
 4Lf8faFFkwth0F062aC5wI3lob2TxTqNIxhKh3opChBoWgpN6IzL4chdO
 DBfkeE016vTeLce6S9VAIkae+KA3nAppOGAxi5mHXn4Fimtf3GQTRSl+1 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317735414"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="317735414"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 02:45:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="714758011"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="714758011"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 02:45:48 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Dec 2022 16:16:26 +0530
Message-Id: <20221206104630.1263525-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221206104630.1263525-1-ankit.k.nautiyal@intel.com>
References: <20221206104630.1263525-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/12] drm/i915/audio : Consider fractional
 vdsc bpp while computing tu_data
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

