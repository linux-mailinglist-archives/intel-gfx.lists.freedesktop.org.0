Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C62B5A14A4B
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 08:44:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67BE810EA79;
	Fri, 17 Jan 2025 07:44:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EWw+kb7z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E7BD10EA79;
 Fri, 17 Jan 2025 07:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737099894; x=1768635894;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yv6DxmYLw9n3xOSrm/j9NPP0CbXFRPly+J/nYEt3yNc=;
 b=EWw+kb7zqkdeQ3aDWTe+YdXBjS0muWYPgBBLwynhRNL2X3lcFD1O7i1T
 KXzrvYF0iPCnArqr5T1zIGqwRW1MM9ccES4l9J0Ql2ZbD18mH2Tlg531J
 PNtjs8HkBM5apVmMApwj3fhlG6m+B4nLkV4gHR8tXdlmdnfxYEMrptI1S
 egv79h/gP69hmb0srD1PbMRafJDpLLmkQDAU+ZZXp2tu3vYQd9iIo8fhl
 NNhkLAGJP1j232KaV9hElv7R6UyZRdXp0+xb38S9HWGTak956lw2Eog5m
 yF7qxfCEwvLAI9rI2cD/URfK0EBhH08HvTA94xvo3YMsWm7v/SSGNMYfB w==;
X-CSE-ConnectionGUID: YGbehijnQLWkBNYilChL0A==
X-CSE-MsgGUID: SETuMZL4TOuF9nJVaMOCrA==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="41454745"
X-IronPort-AV: E=Sophos;i="6.13,211,1732608000"; d="scan'208";a="41454745"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 23:44:54 -0800
X-CSE-ConnectionGUID: IBvfxgV5R2qagxxJ0vBABQ==
X-CSE-MsgGUID: 85M6zHp1QmSJNEYmNcBUJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106618543"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa008.jf.intel.com with ESMTP; 16 Jan 2025 23:44:51 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	v7-000intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v7 7/7] drm/i915/dsc: Check if vblank is sufficient for dsc
 prefill
Date: Fri, 17 Jan 2025 13:11:24 +0530
Message-ID: <20250117074124.3965392-8-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250117074124.3965392-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250117074124.3965392-1-mitulkumar.ajitkumar.golani@intel.com>
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
- Replace Ycbcr444 to Ycbcr420.[Anit]
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

Bspec: 70151
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 34 +++++++++++++++++++-
 1 file changed, 33 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index c8e540dd66cc..aacda7f7174c 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2307,6 +2307,38 @@ cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
 				   2 * cdclk_state->logical.cdclk));
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
+	return latency * cdclk_prefill_adjustment(crtc_state);
+}
+
 static int
 scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
 {
@@ -2346,10 +2378,10 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
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

