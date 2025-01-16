Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B812A13F93
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 17:35:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26A4A10E9D7;
	Thu, 16 Jan 2025 16:34:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GKy8pWQO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0296310E9DA;
 Thu, 16 Jan 2025 16:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737045297; x=1768581297;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fT8tJE3JX2nGLyNQV66/AJRzWQJyVa+Jyvalbwg3r6I=;
 b=GKy8pWQOMk+gvjR6tfroBwxUOz6u9G1grB5BDSHXfBmnu4NdqwgBV9yX
 phAtP1OQtcd8zO3QonnBDAqYoh2/Mn5WdJ7jStWGFCPgbiMr+h1tw7ZiO
 5AcRBD4qmvpAT2Vyi9Pm5LIMRvW+8YithGmPNVxqTDEbk3JTsgmMxutW4
 FmDuqn4a6Cx3pV52/kg8IVY0yvDLObIw1jLBbFHP7X/PFb1xq50MhM8qH
 ZC0cuWnlYetu1I0IE6idaZAdzKFM92AdHDfy1QMx/11VcPMOjaUpmW95g
 /TAJ/UKWA6wgIoXblK8Cse81MlNX9j2ExEW0kfPyJEZHMM0WyV04ktQ50 Q==;
X-CSE-ConnectionGUID: HzVOGlEpSIikaaSBva8lXQ==
X-CSE-MsgGUID: hxDde/A2QV6o8AHMme32Hg==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="37602047"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="37602047"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 08:34:57 -0800
X-CSE-ConnectionGUID: +g9bjBwUQUKDYXUu61sicQ==
X-CSE-MsgGUID: uNYSDP2HTgWagxc2ol9rUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109600793"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 16 Jan 2025 08:34:54 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v6 6/7] drm/i915/scaler: Check if vblank is sufficient for
 scaler
Date: Thu, 16 Jan 2025 22:01:29 +0530
Message-ID: <20250116163130.3816719-7-mitulkumar.ajitkumar.golani@intel.com>
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

Bspec: 70151

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 33 ++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index f4458d1185b3..792e59685578 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2292,6 +2292,38 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
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
+	u64 hscale_k, vscale_k;
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
+	}
+
+	return latency * intel_crtc_compute_min_cdclk(crtc_state);
+}
+
 static bool
 skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 			int wm0_lines, int latency)
@@ -2302,6 +2334,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 	/* FIXME missing scaler and DSC pre-fill time */
 	return crtc_state->framestart_delay +
 		intel_usecs_to_scanlines(adjusted_mode, latency) +
+		scaler_prefill_latency(crtc_state) +
 		wm0_lines >
 		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
 }
-- 
2.48.0

