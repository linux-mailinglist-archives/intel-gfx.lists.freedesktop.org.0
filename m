Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB00A12729
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 16:20:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6B4810E743;
	Wed, 15 Jan 2025 15:20:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OieIh9yN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 925BB10E736;
 Wed, 15 Jan 2025 15:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736954445; x=1768490445;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tTamYh7+FgVkTqBMBmaHgppTjcsR1I32AisMWQoyijI=;
 b=OieIh9yNS+WPwKeGnlDRlF01yn3fl9eT7r4GT9G52uoU3AJvVyPvB454
 F+oc5+R9TjvE3G81eNuUbiGJAlu3xYakP0cQ9PqK4BJ1+6D6c+YGBDn7R
 PRhTkDVBj2YrmsO5Vpf3UMspkwcOTx3IkzjevnqTAMfPicXO3P+sd/tOv
 SihljwqvufyQRbgBjT1drVfTvBCas38iJj5qi+XiOqvpKmZSseK7B6um2
 LCOqheia70YkibdCdrdTRTHrg5MzMLzi3zCRjTHVvNR4gcGppr8rGPzg9
 HGqs8mQHRTuYLtXiPIJ/RF1UjiBdPYhsTl8zdDJQT3iKXD6MKWX5I81Dl Q==;
X-CSE-ConnectionGUID: cbVPPSNDRbKPi8gFKIR0Cg==
X-CSE-MsgGUID: 2RiJV6a8Sp+qudIrIbWTmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="24894522"
X-IronPort-AV: E=Sophos;i="6.13,206,1732608000"; d="scan'208";a="24894522"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 07:20:44 -0800
X-CSE-ConnectionGUID: b225Tga0QxOOmRvztJpVng==
X-CSE-MsgGUID: CcxHoGMKSuqRpoKCgTeX3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110298568"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa005.jf.intel.com with ESMTP; 15 Jan 2025 07:20:42 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	v5-000intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v5 6/7] drm/i915/scaler: Check if vblank is sufficient for
 scaler
Date: Wed, 15 Jan 2025 20:47:13 +0530
Message-ID: <20250115151714.3665211-7-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.0
In-Reply-To: <20250115151714.3665211-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250115151714.3665211-1-mitulkumar.ajitkumar.golani@intel.com>
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
enabled scaler users.

Bspec: 70151

--v2:
- Use hweight* family of functions for counting bits. [Jani]
- Update precision handling for hscale and vscale. [Ankit]
- Consider chroma downscaling factor during latency
calculation. [Ankit]
- Replace function name from scaler_prefill_time to
scaler_prefill_latency.

--v3:
- hscale_k and vscale_k values are already left shifted
by 16, after multiplying by 1000, those need to be right
shifted to 16. [Ankit]
- Replace YCBCR444 to YCBCR420. [Ankit]
- Divide by 1000 * 1000 in end to get correct precision. [Ankit]
- Initialise latency to 0 to avoid any garbage.

--v4:
- Elaborate commit message and add Bspec number. [Ankit]
- Improvise latency calculation. [Ankit]
- Use ceiling value for down scaling factor when less than 1
as per bspec. [Ankit]
- Correct linetime calculation. [Ankit]
- Consider cdclk prefill adjustment while prefill
computation.[Ankit]

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 49 ++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index f4458d1185b3..ca9d5677c356 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2292,6 +2292,54 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
+static int
+cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_atomic_state *state =
+		to_intel_atomic_state(crtc_state->uapi.state);
+	const struct intel_cdclk_state *cdclk_state;
+
+	cdclk_state = intel_atomic_get_cdclk_state(state);
+	if (IS_ERR(cdclk_state))
+		return PTR_ERR(cdclk_state);
+
+	return min(1, DIV_ROUND_UP(crtc_state->pixel_rate,
+				   2 * cdclk_state->logical.cdclk));
+}
+
+static int
+scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
+{
+	const struct intel_crtc_scaler_state *scaler_state =
+					&crtc_state->scaler_state;
+	int num_scaler_users = hweight32(scaler_state->scaler_users);
+	int latency = 0;
+	int linetime =
+		intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
+					 DIV_ROUND_UP(1000 * crtc_state->hw.adjusted_mode.htotal,
+						      crtc_state->pixel_rate));
+	long long  hscale_k, vscale_k;
+
+	if (!num_scaler_users)
+		return latency;
+
+	latency = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, 4 * linetime);
+
+	if (num_scaler_users > 1) {
+		int chroma_downscaling_factor =
+			crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
+		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
+		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
+
+		latency += chroma_downscaling_factor *
+			   DIV_ROUND_UP_ULL((4 * linetime * hscale_k * vscale_k),
+					    1000000);
+		latency *= cdclk_prefill_adjustment(crtc_state);
+	}
+
+	return latency;
+}
+
 static bool
 skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 			int wm0_lines, int latency)
@@ -2302,6 +2350,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 	/* FIXME missing scaler and DSC pre-fill time */
 	return crtc_state->framestart_delay +
 		intel_usecs_to_scanlines(adjusted_mode, latency) +
+		scaler_prefill_latency(crtc_state) +
 		wm0_lines >
 		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
 }
-- 
2.48.0

