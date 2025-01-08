Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D61EA05BCB
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 13:39:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A60410E894;
	Wed,  8 Jan 2025 12:39:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YlbpGIoa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3BE710E894;
 Wed,  8 Jan 2025 12:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736339961; x=1767875961;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=he07DjH+vg2eiymKM8MN9UBeJpZcDVoZlPjSrAQywo4=;
 b=YlbpGIoaCbsr8f6z3i/6gjrSZz4xGe5fWNWQV+SBio6onLGcTyTe5jtp
 t+mlSviIWXRRO/XUDHv8j7NapgsB/4aXNsIg14osiVWgaoeRayzVvSYxw
 fAhyYj8telsx7v2qO0aZ54DB0PDx7yHxVvWQecaUMCERFwJQ0UJ7pTiAl
 BPt53biY03ennP4gFtkVz9UBSim4i/TdXvVd1msbptAxaPf2VpRXqbA1N
 RTGlKp1/H+YMkRjkYu1SWfPWe+GPsnrTzn7WwPfivYOuYWLOxrsBt0urO
 W82Fmc3+A6LuuoJ32nJ1nqXk+QGjoJRLnxaAlFQnlgyD84xRnaBJYDvIv A==;
X-CSE-ConnectionGUID: UlgjbwUNSee3jIo01tdJNg==
X-CSE-MsgGUID: Mg0aBfuSQ1acQm8m88NWmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="35855387"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="35855387"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 04:39:14 -0800
X-CSE-ConnectionGUID: MpqAny94RAaoQHQjAUMwdA==
X-CSE-MsgGUID: epLouHk/QmOyt5nCIsooOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="102886146"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 08 Jan 2025 04:39:12 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v4 7/7] drm/i915/dsc: Check if vblank is sufficient for dsc
 prefill
Date: Wed,  8 Jan 2025 18:05:41 +0530
Message-ID: <20250108123541.2101643-8-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20250108123541.2101643-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250108123541.2101643-1-mitulkumar.ajitkumar.golani@intel.com>
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

Check if vblank is sufficient for dsc prefill latency.

--v2:
- Consider chroma downscaling factor in latency calculation. [Ankit]
- Replace with appropriate function name.

--v3:
- Remove FIXME tag.[Ankit]
- Replace Ycbcr444 to Ycbcr420.[Anit]
- Correct precision. [Ankit]
- Use some local valiables like linetime_factor and latency to
adjust precision.
- Declare latency to 0 initially to avoid returning any garbage values.
- Account for second scaler downscaling factor as well. [Ankit]

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 37 ++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index fe91854e456c..d275ec687748 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2292,6 +2292,42 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
+static int
+dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
+{
+	const struct intel_crtc_scaler_state *scaler_state =
+						&crtc_state->scaler_state;
+	int latency = 0;
+	int count = hweight32(scaler_state->scaler_users);
+	long long hscale_k[2] = {1, 1};
+	long long vscale_k[2] = {1, 1};
+
+	if (!crtc_state->dsc.compression_enable)
+		return latency;
+
+	for (int i = 0; i < count; i++) {
+		hscale_k[i] = mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16;
+		vscale_k[i] = mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16;
+	}
+
+	if (count) {
+		int chroma_downscaling_factor =
+			crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
+		long long total_scaling_factor;
+		int linetime_factor = DIV_ROUND_UP(15 * crtc_state->linetime, 10);
+
+		total_scaling_factor  = DIV_ROUND_UP_ULL(hscale_k[0] * vscale_k[0], 1000000);
+
+		if (count > 1)
+			total_scaling_factor *= DIV_ROUND_UP_ULL(hscale_k[1] * vscale_k[1],
+								 1000000);
+
+		latency = total_scaling_factor * linetime_factor * chroma_downscaling_factor;
+	}
+
+	return latency;
+}
+
 static int
 scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
 {
@@ -2333,6 +2369,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 	return crtc_state->framestart_delay +
 		intel_usecs_to_scanlines(adjusted_mode, latency) +
 		scaler_prefill_latency(crtc_state) +
+		dsc_prefill_latency(crtc_state) +
 		wm0_lines >
 		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
 }
-- 
2.46.0

