Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B93A02E5B
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 17:54:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A1BD10E999;
	Mon,  6 Jan 2025 16:54:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fX2+EZOK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0491310E999;
 Mon,  6 Jan 2025 16:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736182481; x=1767718481;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J7SGXMEhe+WW8O2rguEhLMgTvSSbXtB7UGHkoXhHIl4=;
 b=fX2+EZOKrhpZNqhDZKOcLjANvumfQyWJj0jbp5T2qcEGkzIHq4wMTJnT
 NrH26i2Cv26BKELtwO9dnktfKZ3NefkEi4sD3MW8jE5MqppSb7lOU/Pw6
 bjU3oCoEB5fp8b1mZBSdqg22Dd/BRuGxuJ0mmtQtWC1DS7K0bxEnnK5EX
 WXllVwMns40S6JmN3VTC8pOn8IvFrB6FPGyjzBacxLzgXJenuebD0EYx1
 mw0CHRybOZadDq694WRXIPSeo6IsgqEEqMD0Ij67YyznjMOXeXTnhvYXs
 Ca1iLwA4iZ+nk3BpHs510Xo53tomtLpmbseY15ON9uUbG3ISJwh/3YLk7 Q==;
X-CSE-ConnectionGUID: xMvdGyIuQ9ub6Tkf83OByA==
X-CSE-MsgGUID: BCJvdUEDSEeHlDfDrIJedA==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="53880895"
X-IronPort-AV: E=Sophos;i="6.12,293,1728975600"; d="scan'208";a="53880895"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 08:54:40 -0800
X-CSE-ConnectionGUID: FIL74sfCSo+pjRLwVBXMiQ==
X-CSE-MsgGUID: tBp7EeNcQimbWaIBt+LkZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133408798"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa001.fm.intel.com with ESMTP; 06 Jan 2025 08:54:38 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v3 5/5] drm/i915/dsc: Check if dsc prefill sufficient for
 vblank
Date: Mon,  6 Jan 2025 22:21:11 +0530
Message-ID: <20250106165111.1672722-6-mitulkumar.ajitkumar.golani@intel.com>
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

Check if dsc prefill latency is sufficient for vblank.

--v2:
- Consider chroma downscaling factor in latency calculation. [Ankit]
- Replace function name from dsc_prefill_time to dsc_prefill_latency.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 25 ++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 95f60819fe0a..900e1c54450d 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2292,6 +2292,30 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
+static int
+dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
+{
+	const struct intel_crtc_scaler_state *scaler_state =
+					&crtc_state->scaler_state;
+	int hscale = scaler_state->scalers[0].hscale;
+	int vscale = scaler_state->scalers[0].vscale;
+
+	if (!crtc_state->dsc.compression_enable)
+		return 0;
+	/*
+	 * FIXME: CDCLK Prefill adjustment to add
+	 */
+	if (scaler_state->scaler_users) {
+		int chroma_downscaling_factor =
+			crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 ? 2 : 1;
+
+		return DIV_ROUND_UP(15 * crtc_state->linetime * hscale * vscale *
+				    chroma_downscaling_factor, 10);
+	}
+
+	return 0;
+}
+
 static int
 scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
 {
@@ -2333,6 +2357,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 	return crtc_state->framestart_delay +
 		intel_usecs_to_scanlines(adjusted_mode, latency) +
 		scaler_prefill_latency(crtc_state) +
+		dsc_prefill_latency(crtc_state) +
 		wm0_lines >
 		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
 }
-- 
2.46.0

