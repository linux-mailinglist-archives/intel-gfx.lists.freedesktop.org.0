Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED211B47967
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Sep 2025 09:46:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B50310E195;
	Sun,  7 Sep 2025 07:46:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HVPymxF9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CB5B10E037;
 Sun,  7 Sep 2025 07:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757231189; x=1788767189;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mwM0D9cHzW/DTtSc6SxyT81YUmAS+j4M8pwROD3/ABk=;
 b=HVPymxF92jbUXqEPUayLhCY0arF8Jv7jc7uublyRx1aNeSQjtVHvWEZq
 sVW+4G3pSysWZ3SzWxc9jUEFsOoOfi+AEdNGX1GszHpxM9E/fM82XzQP7
 cBnB60l4jocEksf6XxEUhI9nnJUnYAaftL9FBV+3m9trziw1kQbpU2fs6
 0/fVzZSOjzkEcoatpSwFjtRSfOqHfaFW2ConURCzt4MJykrNtkPjYgNhq
 HfwolgqIFsK3TCa9Lsgs2oigFBYxQHvM0pQCEDdlKIZV6YmYYMSOJ6U1/
 K03/kcr3whgNiZ32z9jnqXaUJ7570IUZe0kH31LbdRryucDcccgS6Bce1 w==;
X-CSE-ConnectionGUID: SZUoamhvQLuDBPIPDLOseQ==
X-CSE-MsgGUID: wFV3i40IS0uN5+4FGGCbJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11545"; a="70220291"
X-IronPort-AV: E=Sophos;i="6.18,246,1751266800"; d="scan'208";a="70220291"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 00:46:24 -0700
X-CSE-ConnectionGUID: ckqev+V3RaSGSOdxoiMgVQ==
X-CSE-MsgGUID: q0Wl/MxcSIi1odY537BDxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,246,1751266800"; d="scan'208";a="176873984"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 00:46:22 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 05/14] drm/i915/display: Extract helpers to set dsc/scaler
 prefill latencies
Date: Sun,  7 Sep 2025 13:02:32 +0530
Message-ID: <20250907073241.19632-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250907073241.19632-1-ankit.k.nautiyal@intel.com>
References: <20250907073241.19632-1-ankit.k.nautiyal@intel.com>
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

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c     | 33 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h     |  8 ++++
 drivers/gpu/drm/i915/display/skl_watermark.c | 47 +++++++++-----------
 3 files changed, 63 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 266cf5e1859d..fd690de5b45b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -772,3 +772,36 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	if (crtc_state->vrr.enable)
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
+
+int intel_vrr_guardband_scaler_latency(int num_scaler_users, u64 hscale, u64 vscale,
+				       int chroma_downscaling_factor,
+				       int cdclk_prefill_adjustment,
+				       int linetime)
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
+
+int intel_vrr_guardband_dsc_latency(int num_scaler_users, u64 *hscale, u64 *vscale,
+				    int chroma_downscaling_factor,
+				    int cdclk_prefill_adjustment,
+				    int linetime)
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
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 38bf9996b883..950041647e47 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -41,5 +41,13 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
+int intel_vrr_guardband_scaler_latency(int num_scaler_users, u64 hscale, u64 vscale,
+				       int chroma_downscaling_factor,
+				       int cdclk_prefill_adjustment,
+				       int linetime);
+int intel_vrr_guardband_dsc_latency(int num_scaler_users, u64 *hscale, u64 *vscale,
+				    int chroma_downscaling_factor,
+				    int cdclk_prefill_adjustment,
+				    int linetime);
 
 #endif /* __INTEL_VRR_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 3d322c39ce21..1ff2b4d9a35e 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -28,6 +28,7 @@
 #include "intel_flipq.h"
 #include "intel_pcode.h"
 #include "intel_plane.h"
+#include "intel_vrr.h"
 #include "intel_wm.h"
 #include "skl_universal_plane_regs.h"
 #include "skl_scaler.h"
@@ -2179,11 +2180,12 @@ cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
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
@@ -2191,18 +2193,16 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
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
+		intel_vrr_guardband_dsc_latency(num_scaler_users, hscale_k, vscale_k,
+						chroma_downscaling_factor,
+						cdclk_prefill_adjustment(crtc_state),
+						linetime);
 
 	return dsc_prefill_latency;
 }
@@ -2210,28 +2210,25 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
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
+		intel_vrr_guardband_scaler_latency(num_scaler_users, hscale_k, vscale_k,
+						   chroma_downscaling_factor,
+						   cdclk_prefill_adjustment(crtc_state),
+						   linetime);
 
 	return scaler_prefill_latency;
 }
-- 
2.45.2

