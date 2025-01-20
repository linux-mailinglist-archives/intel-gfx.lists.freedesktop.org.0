Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43247A17198
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 18:25:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7CBE10E46A;
	Mon, 20 Jan 2025 17:25:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B5pmY5F6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A1E110E478;
 Mon, 20 Jan 2025 17:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737393935; x=1768929935;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VkGNPg0mpt4pUAx0xanX4T/lQ5vgJu7EYF8yYx+7Zwk=;
 b=B5pmY5F62uVW533JOdceULYy2UWKIn6UvwdazNOeve937gqEAp5uIa6y
 g8RKvASRI+p9qorWS+18VA1GV7x9HV3Yw93FTm2DIol4lTQOfq9A39JNP
 iKu0cnf8r6LMuLWAT5o/MsQgtabIJXGSE0ZW8Ze2xSPsTWrjfXAHpz62u
 /if+lSL0gF7w9O2sr905B6AVAKTU99+ziKKQX7EeHWM3pgGn3z9kwFnYj
 TE4jsGYK+uwps/NnH45ockO3JI1a0ZqwMuwKtClYQxn2Mr3rD/G5amMod
 4EG7QDpkndIlxqISweWoaJSL5bqgsIYvEa4WUvTRDBOVIjoN3uw4K5I8D A==;
X-CSE-ConnectionGUID: XM4JOpAeRzioiAGFtbcwXw==
X-CSE-MsgGUID: 4Qwy+l91Qx2eulYH0D2ctg==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="48462499"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="48462499"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 09:25:35 -0800
X-CSE-ConnectionGUID: wtjgnHAvTVCgi8EhbdZL2g==
X-CSE-MsgGUID: 7vcKuVKaQWKZU2zXYvU4Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="107121102"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa010.fm.intel.com with ESMTP; 20 Jan 2025 09:25:32 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v9 7/7] drm/i915/dsc: Check if vblank is sufficient for dsc
 prefill
Date: Mon, 20 Jan 2025 22:52:08 +0530
Message-ID: <20250120172209.188488-8-mitulkumar.ajitkumar.golani@intel.com>
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

--v6:
- Use cdclk_state->logical.cdclk instead of
intel_crtc_compute_min_cdclk. [Ankit]

--v7:
- Fix linetime calculation. [Ankit]
- Reduce redandancy use of variables. [Ankit]
- Fix typos. [Ankit]
- Update calculation for precision. [Ankit]

--v8:
- Initialise variable to return garbage later. [Ankit]
- Initialise few variables to use at local loop, where
it is used. [Ankit]

Bspec: 70151
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 33 +++++++++++++++++++-
 1 file changed, 32 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index b263d2526cf9..b7131891725d 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2310,6 +2310,37 @@ cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
 				   2 * cdclk_state->logical.cdclk));
 }
 
+static int
+dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
+{
+	const struct intel_crtc_scaler_state *scaler_state =
+					&crtc_state->scaler_state;
+	int linetime = DIV_ROUND_UP(1000 * crtc_state->hw.adjusted_mode.htotal,
+				    crtc_state->hw.adjusted_mode.clock);
+	int num_scaler_users = hweight32(scaler_state->scaler_users);
+	int chroma_downscaling_factor =
+		crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
+	u32 dsc_prefill_latency = 0;
+
+	if (!crtc_state->dsc.compression_enable || !num_scaler_users)
+		return dsc_prefill_latency;
+
+	dsc_prefill_latency = DIV_ROUND_UP(15 * linetime * chroma_downscaling_factor, 10);
+
+	for (int i = 0; i < num_scaler_users; i++) {
+		u64 hscale_k, vscale_k;
+
+		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
+		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
+		dsc_prefill_latency = DIV_ROUND_UP_ULL(dsc_prefill_latency * hscale_k * vscale_k,
+						       1000000);
+	}
+
+	dsc_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
+
+	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, dsc_prefill_latency);
+}
+
 static int
 scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
 {
@@ -2349,10 +2380,10 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	/* FIXME missing DSC pre-fill time */
 	return crtc_state->framestart_delay +
 		intel_usecs_to_scanlines(adjusted_mode, latency) +
 		scaler_prefill_latency(crtc_state) +
+		dsc_prefill_latency(crtc_state) +
 		wm0_lines >
 		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
 }
-- 
2.48.1

