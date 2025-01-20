Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9734DA17197
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 18:25:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AFAB10E476;
	Mon, 20 Jan 2025 17:25:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RzJupSaV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D41110E474;
 Mon, 20 Jan 2025 17:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737393933; x=1768929933;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vYQsAF5kHuUi/3YbQn4BbcFkVexCACzJ0wjJB9+QTuo=;
 b=RzJupSaV2+7byZCgEUYYdj/S+DD/UqztpN2OnrPQwo+V7jn6uV6PPozw
 b8tCDYk8prdmXUpz1B90+bYpyrVBTR8pJVfnbTJr8POzzoWmSQSrTdQX2
 lbhcocM0LXs9BCoOn1JC+rsDrLjln8X24SLwzG/pVWd61JP+gmKDjddNu
 +6CHEqopuHVJ9NHPzJEt+DG7DXqNKNQf8QO7Z3Eh/NQr226wnPp99LYzk
 gD0Zv13/nh8AhURengTpr3g7FUBv55Zrxz0bwToUwsddcAz3gmhhsPknn
 u55eQy1uxBdKIId679XLNgOtBGs0wEEXVS/FRsXeGO/FKjwFJ4ixDbocS Q==;
X-CSE-ConnectionGUID: c2dSCo3RTyK7JJnwQjp6dg==
X-CSE-MsgGUID: b+ACfCM6R1+/QMYbKRj+Yw==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="48462496"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="48462496"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 09:25:32 -0800
X-CSE-ConnectionGUID: FJJD7cYMS4mwhMW4w13P0Q==
X-CSE-MsgGUID: t/vveqRIQUmfY8w7sU/PTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="107121097"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa010.fm.intel.com with ESMTP; 20 Jan 2025 09:25:30 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v9 6/7] drm/i915/scaler: Check if vblank is sufficient for
 scaler
Date: Mon, 20 Jan 2025 22:52:07 +0530
Message-ID: <20250120172209.188488-7-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250120172209.188488-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250120172209.188488-1-mitulkumar.ajitkumar.golani@intel.com>
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

--v8:
- Remove redundancy calculation added from previous patch. [Ankit]

Bspec: 70151
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 53 +++++++++++++++++++-
 1 file changed, 52 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index f4458d1185b3..b263d2526cf9 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2292,6 +2292,56 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
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
@@ -2299,9 +2349,10 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
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

