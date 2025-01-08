Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EADA05BCC
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 13:39:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3101510EB6D;
	Wed,  8 Jan 2025 12:39:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YArAbKhX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F7FF10E89C;
 Wed,  8 Jan 2025 12:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736339960; x=1767875960;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wM7Za0a4OoyMu19nYapa2G0801DyohJL2nGjYwmkqWQ=;
 b=YArAbKhXwnm1nGeQkRn9sli1f2hWonL/Z7l9pNUa0g5ILzqp+slgl+Co
 k0ZqoY7DOPHGQMMPrpsEbm+CwOB3MlHmK4XSeMGiwUjS4fg7PqvW78g5a
 i38BN+x+6yoNP+uUM8P8Wiw0P9i7b9PPd15TbyzJfwZmbTHeXEwJi9kKX
 /bm/KHTpuydRphEfav/JuHY5TWk2NZX3Gcvh+SwUSbUTE3euy1dS/81NY
 dlXKwZVUPG88sgV8NI5R2ROL4KkGyAnY9tBZ4etNT9L8sEx8P0qwUhtjl
 2oeOcjD+t+cDG17nKMeeGnCB8pdTjbs13EvYiXnKMudbgImemUSPsPaqS Q==;
X-CSE-ConnectionGUID: +hfI78uVQR64UAsKTskJyw==
X-CSE-MsgGUID: Z6LqwylWTya8mRjMCEd0lQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="35855383"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="35855383"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 04:39:12 -0800
X-CSE-ConnectionGUID: rH5aMEQTRAmD0H93vP7XRA==
X-CSE-MsgGUID: Ow0O8gveTsCiTUs9Oyk5FQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="102886140"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 08 Jan 2025 04:39:10 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v4 6/7] drm/i915/scaler: Check if vblank is sufficient for
 scaler
Date: Wed,  8 Jan 2025 18:05:40 +0530
Message-ID: <20250108123541.2101643-7-mitulkumar.ajitkumar.golani@intel.com>
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

Check if vblank is too short for scaler prefill latency.

--v2:
- Use hweight* family of functions for counting bits. [Jani]
- Update precision handling for hscale and vscale. [Ankit]
- Consider chroma downscaling factor during latency
calculation. [Ankit]
- Replace function name from scaler_prefill_time to
scaler_prefill_latency.

--v3:
- hscale_k and vscale_k values are already left shifted by 16,
after multiplying by 1000, those need to be right shifted to 16. [Ankit]
- Replace YCBCR444 to YCBCR420. [Ankit]
- Divide by 1000 * 1000 in end to get correct precision. [Ankit]
- Initialise latency to 0 to avoid any garbage.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 31 ++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index f4458d1185b3..fe91854e456c 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2292,6 +2292,36 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
+static int
+scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
+{
+	const struct intel_crtc_scaler_state *scaler_state =
+					&crtc_state->scaler_state;
+	int count = hweight32(scaler_state->scaler_users);
+	int latency = 0;
+	long long  hscale_k =
+		mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16;
+	long long vscale_k =
+		mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16;
+
+	if (!count)
+		return latency;
+
+	if (count > 1) {
+		int chroma_downscaling_factor =
+			crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
+
+		latency = (4 * crtc_state->linetime) +
+			  (chroma_downscaling_factor *
+			   DIV_ROUND_UP_ULL((4 * crtc_state->linetime * hscale_k * vscale_k),
+					    1000000));
+	} else {
+		latency = 4 * crtc_state->linetime;
+	}
+
+	return latency;
+}
+
 static bool
 skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 			int wm0_lines, int latency)
@@ -2302,6 +2332,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 	/* FIXME missing scaler and DSC pre-fill time */
 	return crtc_state->framestart_delay +
 		intel_usecs_to_scanlines(adjusted_mode, latency) +
+		scaler_prefill_latency(crtc_state) +
 		wm0_lines >
 		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
 }
-- 
2.46.0

