Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE933BA69CA
	for <lists+intel-gfx@lfdr.de>; Sun, 28 Sep 2025 09:19:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C04010E38F;
	Sun, 28 Sep 2025 07:19:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hls36CFQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 132EA10E1E8;
 Sun, 28 Sep 2025 07:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759043948; x=1790579948;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lcqoCud+107fk6QGjC06EUZzZljtGOI54TD1kPRrINY=;
 b=hls36CFQzlqTZoZBi26INCvUx8Q1XfHS8cR0Dx1w+WJRbVrFteetFZge
 4kkoyeT6gWF84Lm+BSCiUgdBoQrEL+Kk86BZuC9V4zMw3eL3P7oMtOhW2
 KyulChSh8jIX+VcpF1yqYZeN4MnoIgou67lpLxnFqiH3PWs1XU6dBOASJ
 WpaZXRfTikfU40qwVk4DCWVsTrpli7f3Pe5edncdfr1BkscBDvQoRAfvt
 rztOD2e0JHVWRUZqqexunWE9VHEgtJajvNc9QvHon44q57RQtpyjysN3Q
 n1p7vAklSawEBvukXEnsS3ZJeQIQPzcpCxEM980cDlLIndaDAQvl5CDr0 w==;
X-CSE-ConnectionGUID: RFGTEavkRvirys52bCRiAg==
X-CSE-MsgGUID: /NSlsyD/QA2iQdNkj963dQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11566"; a="60528487"
X-IronPort-AV: E=Sophos;i="6.18,299,1751266800"; d="scan'208";a="60528487"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 00:19:07 -0700
X-CSE-ConnectionGUID: YTya9UW+ReSe1Q5Pgocgqw==
X-CSE-MsgGUID: mBbMbmGORc+xv3gtaK+/Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,299,1751266800"; d="scan'208";a="215094018"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 00:19:06 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 03/15] drm/i915/skl_watermark: Pass linetime as argument to
 latency helpers
Date: Sun, 28 Sep 2025 12:35:28 +0530
Message-ID: <20250928070541.3892890-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250928070541.3892890-1-ankit.k.nautiyal@intel.com>
References: <20250928070541.3892890-1-ankit.k.nautiyal@intel.com>
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

Refactor dsc_prefill_latency and scaler_prefill_latency to take
linetime as an explicit parameter instead of computing it internally.

This avoids redundant calculations and simplifies scanline conversion
logic in skl_is_vblank_too_short().

This change also facilitates future extraction of these helpers for use
cases where latencies are computed for an optimized guardband, based on the
highest resolution mode, rather than the current mode.

v2: Sum all latency numbers and use intel_usecs_to_scanlines() to
convert to scanlines. (Ville).

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 4b1ef4fa8ed2..be87a861eb70 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2179,13 +2179,11 @@ cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
 }
 
 static int
-dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
+dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct intel_crtc_scaler_state *scaler_state =
 					&crtc_state->scaler_state;
-	int linetime = DIV_ROUND_UP(1000 * crtc_state->hw.adjusted_mode.htotal,
-				    crtc_state->hw.adjusted_mode.clock);
 	int num_scaler_users = hweight32(scaler_state->scaler_users);
 	int chroma_downscaling_factor =
 		crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1;
@@ -2209,18 +2207,16 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
 
 	dsc_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
 
-	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, dsc_prefill_latency);
+	return dsc_prefill_latency;
 }
 
 static int
-scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
+scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
 {
 	const struct intel_crtc_scaler_state *scaler_state =
 					&crtc_state->scaler_state;
 	int num_scaler_users = hweight32(scaler_state->scaler_users);
 	int scaler_prefill_latency = 0;
-	int linetime = DIV_ROUND_UP(1000 * crtc_state->hw.adjusted_mode.htotal,
-				    crtc_state->hw.adjusted_mode.clock);
 
 	if (!num_scaler_users)
 		return scaler_prefill_latency;
@@ -2241,7 +2237,7 @@ scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
 
 	scaler_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
 
-	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, scaler_prefill_latency);
+	return scaler_prefill_latency;
 }
 
 static bool
@@ -2250,11 +2246,14 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 {
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
+	int linetime = DIV_ROUND_UP(1000 * adjusted_mode->htotal,
+				    adjusted_mode->clock);
+
+	latency += scaler_prefill_latency(crtc_state, linetime) +
+		   dsc_prefill_latency(crtc_state, linetime);
 
 	return crtc_state->framestart_delay +
 		intel_usecs_to_scanlines(adjusted_mode, latency) +
-		scaler_prefill_latency(crtc_state) +
-		dsc_prefill_latency(crtc_state) +
 		wm0_lines >
 		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
 }
-- 
2.45.2

