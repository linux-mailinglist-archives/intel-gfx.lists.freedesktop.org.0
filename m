Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 501AFA13F94
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 17:35:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E264010E9CC;
	Thu, 16 Jan 2025 16:34:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lXij6eV/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77F4810E9CC;
 Thu, 16 Jan 2025 16:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737045299; x=1768581299;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=apMY/zeedkKW/2Cqc6jDDtuzGOVjmLn1x+spMXY2z+A=;
 b=lXij6eV/ZDAK7cmvEgN2iGj0kl1z6yhNUTCtbaXUIu2jLW85Q4KoZUxB
 M8mcM/bJ2NOLP9APJ83m4j9vfDHN8u9BiBMIvGAP7xGTE8sSZSypBitA5
 UqD3xmkOlfQ2qbw7ULXMEqIfo1QcAkj5HkBL4NXYNmA/veY7DRPDhVYVu
 j34ouKThtbmCVxVHC7xGJDKvgcDtgnYlnI75mwPv3UNczSGDtgFxfAl4B
 RkHNRyuk2kxepExhbYOiAKNZWrjhx8sM0/nIu9OCoLNVC3HB9nU5+N57N
 hYMFBXlgiGDn3menBbcPxSvLVOTV0p40pQrclyd4s7eYke+Qgdt+ZU1oB Q==;
X-CSE-ConnectionGUID: 47vyJVsYSEaGEVWuf+ntmQ==
X-CSE-MsgGUID: U9xpDbJXQbGHhSaCIsNPJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="37602048"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="37602048"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 08:34:59 -0800
X-CSE-ConnectionGUID: JhnQWLQrTwuZ4SGBBlTeQg==
X-CSE-MsgGUID: VZgb0RcKR4+vscgxkDIogw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109600796"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 16 Jan 2025 08:34:57 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v6 7/7] drm/i915/dsc: Check if vblank is sufficient for dsc
 prefill
Date: Thu, 16 Jan 2025 22:01:30 +0530
Message-ID: <20250116163130.3816719-8-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.0
In-Reply-To: <20250116163130.3816719-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250116163130.3816719-1-mitulkumar.ajitkumar.golani@intel.com>
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

High refresh rate panels which may have small line times
and vblank sizes, Check if vblank size is sufficient for
dsc prefill latency.

--v2:
- Consider chroma downscaling factor in latency calculation. [Ankit]
- Replace with appropriate function name.

--v3:
- Remove FIXME tag.[Ankit]
- Replace Ycbcr444 to Ycbcr420.[Ankit]
- Correct precision. [Ankit]
- Use some local valiables like linetime_factor and latency to
adjust precision.
- Declare latency to 0 initially to avoid returning any garbage values.
- Account for second scaler downscaling factor as well. [Ankit]

--v4:
- Improvise hscale and vscale calculation. [Ankit]
- Use appropriate name for number of scaler users. [Ankit]
- Update commit message and rebase.
- Add linetime and cdclk prefill adjustment calculation. [Ankit]

--v5:
- Update bspec link in trailer. [Ankit]
- Correct hscale, vscale datatype. [Ankit]
- Use intel_crtc_compute_min_cdclk. [Ankit]

Bspec: 70151

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 34 +++++++++++++++++++-
 1 file changed, 33 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 792e59685578..22fc81a61977 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2292,6 +2292,38 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
+static int
+dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
+{
+	const struct intel_crtc_scaler_state *scaler_state =
+						&crtc_state->scaler_state;
+	int latency = 0;
+	int num_scaler_users = hweight32(scaler_state->scaler_users);
+	int chroma_downscaling_factor =
+		crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
+	u64 hscale_k[2] = {0, 0};
+	u64 vscale_k[2] = {0, 0};
+
+	if (!crtc_state->dsc.compression_enable || !num_scaler_users)
+		return latency;
+
+	for (int i = 0; i < num_scaler_users; i++) {
+		hscale_k[i] =
+			max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
+		vscale_k[i] =
+			max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
+	}
+
+	latency  = DIV_ROUND_UP_ULL(hscale_k[0] * vscale_k[0], 1000000);
+
+	if (num_scaler_users > 1)
+		latency *= DIV_ROUND_UP_ULL(hscale_k[1] * vscale_k[1], 1000000);
+
+	latency *= DIV_ROUND_UP(15 * crtc_state->linetime, 10) * chroma_downscaling_factor;
+
+	return latency * intel_crtc_compute_min_cdclk(crtc_state);
+}
+
 static int
 scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
 {
@@ -2331,10 +2363,10 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	/* FIXME missing scaler and DSC pre-fill time */
 	return crtc_state->framestart_delay +
 		intel_usecs_to_scanlines(adjusted_mode, latency) +
 		scaler_prefill_latency(crtc_state) +
+		dsc_prefill_latency(crtc_state) +
 		wm0_lines >
 		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
 }
-- 
2.48.0

