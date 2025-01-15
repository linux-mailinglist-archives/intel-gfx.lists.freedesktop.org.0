Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F22A1272B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 16:20:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0348610E746;
	Wed, 15 Jan 2025 15:20:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iMNHBBMf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2151010E762;
 Wed, 15 Jan 2025 15:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736954447; x=1768490447;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nihD+WgmgQqrBHx1J26UZNpRpsaMhOyRdWuSmfm//YE=;
 b=iMNHBBMf9LFvEftAjXlB+pubK7dFKMCdMXW1Ynj9GJpMJjzSpKMNJLr5
 CotlKyXOgjM1BI+V7ASrPqATuN1jPHRuRWdhAs3YHndSHVCsa7q1Kg8B5
 wkaULQsyyqwwSRaV2aFxVAf/m82PHBm481ZQaJ/ipw7nn8kZ1tnINuxwD
 FcYaBIV0+1K+awvAqKJKuBSNhwYSKPMfjA0//TuqB8CM0xx0ZPNspBSNu
 Wqnn5WhPl+6fhZQeOz/qY7n5tkif65lR6yzYik9nOWrCwO7ng0ORQXcsE
 vPAKjGb2kTRbHeNd0OT5lTg2emPgb0Kj65Chlwr9y4JQuo0EHeKjLdLxW g==;
X-CSE-ConnectionGUID: 3WpgYzFsQgeerY7rwZf0Ow==
X-CSE-MsgGUID: 2NOg5gfmQ2qwLRPusv/oow==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="24894540"
X-IronPort-AV: E=Sophos;i="6.13,206,1732608000"; d="scan'208";a="24894540"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 07:20:47 -0800
X-CSE-ConnectionGUID: ka+J5rMjQSe7dKCVNnHXWw==
X-CSE-MsgGUID: dM+eKLALRz+5S+Fgow0jbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110298613"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa005.jf.intel.com with ESMTP; 15 Jan 2025 07:20:45 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	v5-000intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v5 7/7] drm/i915/dsc: Check if vblank is sufficient for dsc
 prefill
Date: Wed, 15 Jan 2025 20:47:14 +0530
Message-ID: <20250115151714.3665211-8-mitulkumar.ajitkumar.golani@intel.com>
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
dsc prefill latency.

Bspec: 70151

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

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 35 +++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index ca9d5677c356..13666adb8e36 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2307,6 +2307,39 @@ cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
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
+	long long hscale_k[2] = {0, 0};
+	long long vscale_k[2] = {0, 0};
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
+	latency *= DIV_ROUND_UP(15 * crtc_state->linetime, 10) * chroma_downscaling_factor *
+		   cdclk_prefill_adjustment(crtc_state);
+
+	return latency;
+}
+
 static int
 scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
 {
@@ -2347,10 +2380,10 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	/* FIXME missing scaler and DSC pre-fill time */
 	return crtc_state->framestart_delay +
 		intel_usecs_to_scanlines(adjusted_mode, latency) +
 		scaler_prefill_latency(crtc_state) +
+		dsc_prefill_latency(crtc_state) +
 		wm0_lines >
 		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
 }
-- 
2.48.0

