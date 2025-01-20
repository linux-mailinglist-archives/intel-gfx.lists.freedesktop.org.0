Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD7CA16CA6
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 13:58:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CE5810E404;
	Mon, 20 Jan 2025 12:58:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T9/6vrX/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D867810E3E3;
 Mon, 20 Jan 2025 12:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737377886; x=1768913886;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MT1O6Z87VW3M9jdT9iAYShp+ghFJakARA1XiIeadJy8=;
 b=T9/6vrX/9sRev2JwFbFV3w7tP8NsQxPgz+DAvqs0n99pf7AE44PFVWQs
 oB6F1l+1UzubNpEkNi9btP+q2cCLYrwXYRJKzuldpUZJtGpt27t3vPxWn
 ppt2lsUwoDDb0KeTzr5gzZvQ5VjoBgx2j0mOCy0cnfOucYInoDvwnd5Bk
 91kqrSXlg22wDbsOt8FtwtLE6okD8HPp+zOSqrWKPHw7chnqNtxxKtJxY
 KJRaKb2jyC34EKfeFz41DH4hRO5xLl2JxXnumFx404m1YhrK8mKNmO7Zy
 FvnlcJYtLaRTlWHxySwmuF6WJnhMXwSOR5U9RSpDIAPyvK5PAwm3X2Big Q==;
X-CSE-ConnectionGUID: ib+oPGsDTnibLr2fy51XPA==
X-CSE-MsgGUID: nYoCheDwS92XdSKgs//KuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="37930654"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="37930654"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 04:58:06 -0800
X-CSE-ConnectionGUID: 1e6jukVQSL6xyan9UotUXQ==
X-CSE-MsgGUID: ZvECYpD4SB6vaMRLCSQg3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="106326454"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 20 Jan 2025 04:58:03 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v8 7/7] drm/i915/dsc: Check if vblank is sufficient for dsc
 prefill
Date: Mon, 20 Jan 2025 18:24:39 +0530
Message-ID: <20250120125439.4188626-8-mitulkumar.ajitkumar.golani@intel.com>
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

Bspec: 70151
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 32 +++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 448d320e0d47..89e8da70c333 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2310,6 +2310,36 @@ cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
 				   2 * cdclk_state->logical.cdclk));
 }
 
+static int
+dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
+{
+	const struct intel_crtc_scaler_state *scaler_state =
+					&crtc_state->scaler_state;
+	int linetime = DIV_ROUND_UP(1000 * crtc_state->hw.adjusted_mode.htotal,
+				    crtc_state->hw.adjusted_mode.clock);
+	u32 dsc_prefill_latency;
+	int num_scaler_users = hweight32(scaler_state->scaler_users);
+	int chroma_downscaling_factor =
+		crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
+	u64 hscale_k, vscale_k;
+
+	if (!crtc_state->dsc.compression_enable || !num_scaler_users)
+		return dsc_prefill_latency;
+
+	dsc_prefill_latency = DIV_ROUND_UP(15 * linetime * chroma_downscaling_factor, 10);
+
+	for (int i = 0; i < num_scaler_users; i++) {
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
@@ -2350,10 +2380,10 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
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

