Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A59DA02E59
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 17:54:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0B9110E991;
	Mon,  6 Jan 2025 16:54:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Me+9c+ee";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A3DE10E991;
 Mon,  6 Jan 2025 16:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736182478; x=1767718478;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ff6aCHtHwo6c4PfAtU+RJABooeKgo6iozunL+v6vhB8=;
 b=Me+9c+eegzwXHtoY8pXZoe4rKwSsMU9DYKZZ8+d3MdJAP8pkVEir6ClM
 sJKj2cMXeyHOIGNkMa80efVHBwWWDtRMJkeSPoIW0mp/Wc30sqMtGGBZg
 42+3GJjKVcHyz35uqL8DTH165aA73RfItUpWA8BfnRa05ESpqq6uu+0jZ
 5PKpNuTw2345ifPSsfryzG7JGq63K5WF1OJF8XoAyR4xZ8CDv7ikQLn9P
 PEBtPX2AU4Kti8yYTK+zo8q7BeVWuoPt/DSo3wNXHPEVB4NRYynHuZDPa
 lVN50nJnk/6RGf/TgVr4p2UZYlzR6BA5lxzAvYe7nbh//68dXj6msNnyb A==;
X-CSE-ConnectionGUID: 8YdOT4SDTouWx/Nb8zsl9A==
X-CSE-MsgGUID: iGfxnBWqTdexYRUfQdBPsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="53880892"
X-IronPort-AV: E=Sophos;i="6.12,293,1728975600"; d="scan'208";a="53880892"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 08:54:38 -0800
X-CSE-ConnectionGUID: WawhU5dPT2CcIUbkbo6IBg==
X-CSE-MsgGUID: AWtHoszGTDmwlCMbt0oLag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133408779"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa001.fm.intel.com with ESMTP; 06 Jan 2025 08:54:36 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v3 4/5] drm/i915/scaler: Check if vblank is sufficient for
 scaler
Date: Mon,  6 Jan 2025 22:21:10 +0530
Message-ID: <20250106165111.1672722-5-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20250106165111.1672722-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250106165111.1672722-1-mitulkumar.ajitkumar.golani@intel.com>
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

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 31 ++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 29e8ea91c858..95f60819fe0a 100644
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
+	int latency;
+	long long  hscale_k =
+		mul_u32_u32(scaler_state->scalers[0].hscale, 1000);
+	long long vscale_k =
+		mul_u32_u32(scaler_state->scalers[0].vscale, 1000);
+
+	if (!count)
+		return 0;
+
+	if (count > 1) {
+		int chroma_downscaling_factor =
+			crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 ? 2 : 1;
+
+		latency = (4 * crtc_state->linetime) +
+			  (chroma_downscaling_factor *
+			   DIV_ROUND_UP_ULL((4 * crtc_state->linetime * hscale_k * vscale_k),
+					    USHRT_MAX));
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

