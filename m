Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1438BA2807
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 08:13:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F79F10E343;
	Fri, 26 Sep 2025 06:13:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KBdOS5ib";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 559A310E342;
 Fri, 26 Sep 2025 06:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758867186; x=1790403186;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+YbeRgDqlLbeVqsJp0T0/kIZcgVTSLA/2BnqfqFb8ME=;
 b=KBdOS5ibiXoFEELRzumD7mrkQMapzqiLbP4HUAc8Ncq2IJowa+HuSb0e
 gf5z0/eMP9vMuNBe3cDlNNQ9AiSdSEd2caWVH5415PBTP3LwFf+b8TcID
 1piDH62YN5UVwOJbXCUTORCVAkzULLk5tIcvci4hi3KZWh6Z4YVWMdT5c
 g6XqvNgiPN2UIdYKSFVBhfI6YD66TcBqVN8jYdcD6lCyUXTQmmyegwQ5V
 k33cBbXWOeMKUkGjJO+Ix48zyTSac7tM2ZQ0GM0NrgobhJR1PRSJHzby4
 v3NtsnxequqeFpMyfPzY3Aq6kImdNE0wJClWjzoe11sItgAQuDHmtrz0k Q==;
X-CSE-ConnectionGUID: ZPh4K3WdSpiyL6U6MhF/6Q==
X-CSE-MsgGUID: CTRN76vRR5mmy0se18clRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65007591"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65007591"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 23:13:06 -0700
X-CSE-ConnectionGUID: GQp4R4CYTDaCrd51+9tB9Q==
X-CSE-MsgGUID: IlaQe6wESiSDaSpQ9+POig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,294,1751266800"; d="scan'208";a="177092872"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 23:13:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 05/14] drm/i915/display: Extract helpers to set dsc/scaler
 prefill latencies
Date: Fri, 26 Sep 2025 11:29:26 +0530
Message-ID: <20250926055935.3532568-6-ankit.k.nautiyal@intel.com>
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

Currently dsc/scaler prefill latencies are handled during watermark
calculations. With the optimized guardband, we need to compute the
latencies to find the minimum guardband that works for most cases.
Extract the helpers to compute these latencies, so that they can be used
while computing vrr guardband.

While at it, put declarations in reverse xmas tree order for better
redability.

v2: Initialize {h,v}scale_k to 0, and simplify the check in
intel_display_scaler_prefill_latency(). (Mitul)

v3: Move helpers from intel_display.c to intel_vrr.c as they are specific
to account for latencies to program vrr guardband. (Jani)

v4: Move helpers to dsc/scaler files. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c    | 17 +++++++
 drivers/gpu/drm/i915/display/intel_vdsc.h    |  4 ++
 drivers/gpu/drm/i915/display/skl_scaler.c    | 16 +++++++
 drivers/gpu/drm/i915/display/skl_scaler.h    |  7 +++
 drivers/gpu/drm/i915/display/skl_watermark.c | 47 +++++++++-----------
 5 files changed, 66 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 8e799e225af1..e59d62994798 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1077,3 +1077,20 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 
 	return min_cdclk;
 }
+
+int intel_dsc_guardband_latency(int num_scaler_users, u64 *hscale, u64 *vscale,
+				int chroma_downscaling_factor,
+				int cdclk_prefill_adjustment,
+				int linetime)
+{
+	int dsc_prefill_latency;
+
+	dsc_prefill_latency = DIV_ROUND_UP(15 * linetime * chroma_downscaling_factor, 10);
+
+	for (int i = 0; i < num_scaler_users; i++)
+		dsc_prefill_latency = DIV_ROUND_UP_ULL(dsc_prefill_latency * hscale[i] * vscale[i],
+						       1000000);
+	dsc_prefill_latency *= cdclk_prefill_adjustment;
+
+	return dsc_prefill_latency;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 9e2812f99dd7..60aecadf95bf 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -32,5 +32,9 @@ void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
 void intel_vdsc_state_dump(struct drm_printer *p, int indent,
 			   const struct intel_crtc_state *crtc_state);
 int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state);
+int intel_dsc_guardband_latency(int num_scaler_users, u64 *hscale, u64 *vscale,
+				int chroma_downscaling_factor,
+				int cdclk_prefill_adjustment,
+				int linetime);
 
 #endif /* __INTEL_VDSC_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index af2cbd54c32e..69130744c09e 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -973,3 +973,19 @@ int skl_scaler_chroma_downscale_factor(const struct intel_crtc_state *crtc_state
 {
 	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1;
 }
+
+int skl_scaler_guardband_latency(int num_scaler_users, u64 hscale, u64 vscale,
+				 int chroma_downscaling_factor,
+				 int cdclk_prefill_adjustment,
+				 int linetime)
+{
+	int scaler_prefill_latency;
+
+	scaler_prefill_latency = 4 * linetime +
+				 DIV_ROUND_UP_ULL((4 * linetime * hscale * vscale *
+						   chroma_downscaling_factor), 1000000);
+
+	scaler_prefill_latency *= cdclk_prefill_adjustment;
+
+	return scaler_prefill_latency;
+}
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 257330d4c329..5aa53d576aba 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -5,6 +5,8 @@
 #ifndef INTEL_SCALER_H
 #define INTEL_SCALER_H
 
+#include <linux/types.h>
+
 enum drm_mode_status;
 struct drm_display_mode;
 struct intel_atomic_state;
@@ -48,4 +50,9 @@ void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state);
 
 int skl_scaler_chroma_downscale_factor(const struct intel_crtc_state *crtc_state);
 
+int skl_scaler_guardband_latency(int num_scaler_users, u64 hscale, u64 vscale,
+				 int chroma_downscaling_factor,
+				 int cdclk_prefill_adjustment,
+				 int linetime);
+
 #endif
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 2da54569f06a..deb43f0c348a 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -28,6 +28,7 @@
 #include "intel_flipq.h"
 #include "intel_pcode.h"
 #include "intel_plane.h"
+#include "intel_vdsc.h"
 #include "intel_wm.h"
 #include "skl_universal_plane_regs.h"
 #include "skl_scaler.h"
@@ -2182,11 +2183,12 @@ cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
 static int
 dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
 {
+	const struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
+	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	const struct intel_crtc_scaler_state *scaler_state =
-					&crtc_state->scaler_state;
 	int num_scaler_users = hweight32(scaler_state->scaler_users);
-	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
+	u64 hscale_k[ARRAY_SIZE(scaler_state->scalers)];
+	u64 vscale_k[ARRAY_SIZE(scaler_state->scalers)];
 	u32 dsc_prefill_latency = 0;
 
 	if (!crtc_state->dsc.compression_enable ||
@@ -2194,18 +2196,16 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
 	    num_scaler_users > crtc->num_scalers)
 		return dsc_prefill_latency;
 
-	dsc_prefill_latency = DIV_ROUND_UP(15 * linetime * chroma_downscaling_factor, 10);
-
 	for (int i = 0; i < num_scaler_users; i++) {
-		u64 hscale_k, vscale_k;
-
-		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
-		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
-		dsc_prefill_latency = DIV_ROUND_UP_ULL(dsc_prefill_latency * hscale_k * vscale_k,
-						       1000000);
+		hscale_k[i] = max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
+		vscale_k[i] = max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
 	}
 
-	dsc_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
+	dsc_prefill_latency =
+		intel_dsc_guardband_latency(num_scaler_users, hscale_k, vscale_k,
+					    chroma_downscaling_factor,
+					    cdclk_prefill_adjustment(crtc_state),
+					    linetime);
 
 	return dsc_prefill_latency;
 }
@@ -2213,28 +2213,25 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
 static int
 scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
 {
-	const struct intel_crtc_scaler_state *scaler_state =
-					&crtc_state->scaler_state;
+	const struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
+	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
 	int num_scaler_users = hweight32(scaler_state->scaler_users);
+	u64 hscale_k = 0, vscale_k = 0;
 	int scaler_prefill_latency = 0;
 
 	if (!num_scaler_users)
 		return scaler_prefill_latency;
 
-	scaler_prefill_latency = 4 * linetime;
-
 	if (num_scaler_users > 1) {
-		u64 hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
-		u64 vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
-		int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
-		int latency;
-
-		latency = DIV_ROUND_UP_ULL((4 * linetime * hscale_k * vscale_k *
-					    chroma_downscaling_factor), 1000000);
-		scaler_prefill_latency += latency;
+		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
+		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
 	}
 
-	scaler_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
+	scaler_prefill_latency =
+		skl_scaler_guardband_latency(num_scaler_users, hscale_k, vscale_k,
+					     chroma_downscaling_factor,
+					     cdclk_prefill_adjustment(crtc_state),
+					     linetime);
 
 	return scaler_prefill_latency;
 }
-- 
2.45.2

