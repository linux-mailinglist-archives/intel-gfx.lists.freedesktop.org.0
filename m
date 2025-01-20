Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02588A16CA5
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 13:58:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C4DB10E403;
	Mon, 20 Jan 2025 12:58:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vfv8ayAs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DCFA10E401;
 Mon, 20 Jan 2025 12:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737377884; x=1768913884;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IRI69xAK4mvNGRs6PwWr+kOXCbnGQJvWDbxb37CLACY=;
 b=Vfv8ayAstnL1C0LVY6Ljfw3YmK/TBaoGCYNiKlz7pUK6zokvK9GZQOwq
 msHGsufE+7alua5xH7mF0d3tss9BV83x5j52QGdU83OCZnaoaxEh0WNAk
 n5Vp2KSi3uLwPeA57k1yDEwABIwF6X71NyuqHnezlVywVxImToUfXd1wC
 lx5miG8f7zGnCOXogusaXJ7VDgo8aCKAFVYvnrDa6S1RL8wBltTEByEoH
 af5JqqChEYOz0ztlZdWknIg4Mkayq9EitKF/MiQEsUTkmRidD6nycS4l8
 jxctYEybHkkWKRv12rmygUg5bmurOcntfL14E7nGAJqtEHte5nr0DPzrL Q==;
X-CSE-ConnectionGUID: 6f1hB/mnQECyGDZzlT6PVA==
X-CSE-MsgGUID: iI/MGrkOQKKWZGvSphDNVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="37930648"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="37930648"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 04:58:03 -0800
X-CSE-ConnectionGUID: iDsGoqNEQyyeB1twptepcw==
X-CSE-MsgGUID: FHdPP5M6TCm7W2KAs8Bh+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="106326449"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 20 Jan 2025 04:58:01 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v8 6/7] drm/i915/scaler: Check if vblank is sufficient for
 scaler
Date: Mon, 20 Jan 2025 18:24:38 +0530
Message-ID: <20250120125439.4188626-7-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250120125439.4188626-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250120125439.4188626-1-mitulkumar.ajitkumar.golani@intel.com>
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

--v5:
- Add Bspec link in commit message trailer. [Ankit]
- Correct hscale, vscale data type.
- Use intel_crtc_compute_min_cdclk. [Ankit]

--v6:
- Update FIXME comment.
- Use cdclk_state->logical.cdclk instead of
intel_crtc_compute_min_cdclk. [Ankit]

--v7:
- Handle error return from cdclk_prefill_adjustment. [Ankit]
- Avoid incorrect round off for linetime. [Ankit]
- Correct precision. [Ankit]

Bspec: 70151
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 54 +++++++++++++++++++-
 1 file changed, 53 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index f4458d1185b3..448d320e0d47 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2292,6 +2292,57 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
+static int
+cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_atomic_state *state =
+		to_intel_atomic_state(crtc_state->uapi.state);
+	const struct intel_cdclk_state *cdclk_state;
+
+	cdclk_state = intel_atomic_get_cdclk_state(state);
+	if (IS_ERR(cdclk_state)) {
+		drm_WARN_ON(display->drm, PTR_ERR(cdclk_state));
+		return 1;
+	}
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
+	int scaler_prefill_latency = 0;
+	int linetime = DIV_ROUND_UP(1000 * crtc_state->hw.adjusted_mode.htotal,
+				    crtc_state->hw.adjusted_mode.clock);
+
+	if (!num_scaler_users)
+		return scaler_prefill_latency;
+
+	scaler_prefill_latency = 4 * linetime;
+
+	if (num_scaler_users > 1) {
+		u64 hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
+		u64 vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
+		int chroma_downscaling_factor =
+			crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
+		int latency;
+
+		latency = DIV_ROUND_UP_ULL((4 * linetime * hscale_k * vscale_k *
+					    chroma_downscaling_factor), 1000000);
+		latency *= chroma_downscaling_factor;
+		scaler_prefill_latency += latency;
+	}
+
+	scaler_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
+
+	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, scaler_prefill_latency);
+}
+
 static bool
 skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 			int wm0_lines, int latency)
@@ -2299,9 +2350,10 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	/* FIXME missing scaler and DSC pre-fill time */
+	/* FIXME missing DSC pre-fill time */
 	return crtc_state->framestart_delay +
 		intel_usecs_to_scanlines(adjusted_mode, latency) +
+		scaler_prefill_latency(crtc_state) +
 		wm0_lines >
 		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
 }
-- 
2.48.1

