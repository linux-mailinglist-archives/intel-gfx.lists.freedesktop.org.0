Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E86BA280D
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 08:13:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79EE110E9D9;
	Fri, 26 Sep 2025 06:13:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CyPee3z6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B7F710E339;
 Fri, 26 Sep 2025 06:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758867184; x=1790403184;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RHibbxt2s5JQn18vhUH/mWx4W3weR2JqcvU/QIp7VcI=;
 b=CyPee3z6nU93a38gF1oK4m1cFS9F+6flsw3TTJrUSvkQC7atxEDWldqf
 hG9mqMfWKXygu/YiqkqBPzwhOwBtR7KsifWU7cCT6Mydrn8SXc+/GTdId
 gj/dTZg5zgoHS8Ph5nFTCk0i0bc9LzqoNq5UVD2smfJKP/wnpZDd4hWhY
 8/y9XfI7JNqkhWnCVyGtljzP75Xe8DcWQshU9tQ3+dx2zDk9GdL6IhOYA
 nUq268wgb9QBAiLbj4xKFBs9D7esb017VD/u0WqgTneAN8RrYi9xZMJ69
 xGCVCqTdNn1qvzKUpUusLu/kdB2QIDhA2Gvj/Xq9YGlbolXM5+Cy6ISqA w==;
X-CSE-ConnectionGUID: KQfGh2cqTWudx05X9BxYfw==
X-CSE-MsgGUID: AUaP19BAQbSyR/XxWs9djg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65007589"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65007589"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 23:13:04 -0700
X-CSE-ConnectionGUID: 96ZBvwdjS6qplz3a3zJbsg==
X-CSE-MsgGUID: Tjwp6piPTUerd0Io5yr7Lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,294,1751266800"; d="scan'208";a="177092859"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 23:13:03 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 04/14] drm/i915/skl_scaler: Introduce helper for chroma
 downscale factor
Date: Fri, 26 Sep 2025 11:29:25 +0530
Message-ID: <20250926055935.3532568-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250926055935.3532568-1-ankit.k.nautiyal@intel.com>
References: <20250926055935.3532568-1-ankit.k.nautiyal@intel.com>
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

For 444 to 420 output format conversion, scaler uses 2x downscaling in
each direction. Introduce skl_scaler_chroma_downscale_factor() to
encapsulate the chroma subsampling adjustment used in scaler/dsc
pre-fill latency calculations.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c    | 5 +++++
 drivers/gpu/drm/i915/display/skl_scaler.h    | 3 +++
 drivers/gpu/drm/i915/display/skl_watermark.c | 7 +++----
 3 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index c6cccf170ff1..af2cbd54c32e 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -968,3 +968,8 @@ void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state)
 			  1);
 	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, 0);
 }
+
+int skl_scaler_chroma_downscale_factor(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1;
+}
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 12a19016c5f6..257330d4c329 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -45,4 +45,7 @@ skl_scaler_mode_valid(struct intel_display *display,
 void adl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state);
 
 void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state);
+
+int skl_scaler_chroma_downscale_factor(const struct intel_crtc_state *crtc_state);
+
 #endif
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index be87a861eb70..2da54569f06a 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -30,6 +30,7 @@
 #include "intel_plane.h"
 #include "intel_wm.h"
 #include "skl_universal_plane_regs.h"
+#include "skl_scaler.h"
 #include "skl_watermark.h"
 #include "skl_watermark_regs.h"
 
@@ -2185,8 +2186,7 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
 	const struct intel_crtc_scaler_state *scaler_state =
 					&crtc_state->scaler_state;
 	int num_scaler_users = hweight32(scaler_state->scaler_users);
-	int chroma_downscaling_factor =
-		crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1;
+	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
 	u32 dsc_prefill_latency = 0;
 
 	if (!crtc_state->dsc.compression_enable ||
@@ -2226,8 +2226,7 @@ scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
 	if (num_scaler_users > 1) {
 		u64 hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
 		u64 vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
-		int chroma_downscaling_factor =
-			crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1;
+		int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
 		int latency;
 
 		latency = DIV_ROUND_UP_ULL((4 * linetime * hscale_k * vscale_k *
-- 
2.45.2

