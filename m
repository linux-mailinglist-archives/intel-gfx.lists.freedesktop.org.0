Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C41BDBDE096
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 12:36:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3434510E77F;
	Wed, 15 Oct 2025 10:36:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TUadzELd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C13F910E772;
 Wed, 15 Oct 2025 10:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760524559; x=1792060559;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mJdm6akjfmU2NHYW0aDg75bGIkKdj5G87DXpcoPeg8w=;
 b=TUadzELdB0M/peRaCsxvQWTUMRP8wt9pA/bszkdh8yfuNt5ENvF3kkZq
 aPKGL60s7A2bK3AdmColXUwZPblnahxiTCoYmbfGNdGRF+qjoRCIIDM90
 eEAC5OhP9UfmMsKHsbAyyXr6YhvgMmtSoXfqGOM1K1Ms9NU1PNtGz9pRK
 nzpP0i5L2FumAOg/48fkY8bkFenNclTuemWySaI74A4q9e8TdKalqiEui
 pS28sxzXBGQFA8WVPfgSYOixEw867cXN8Upno/QmRFemIeLukKOCslbEy
 Ad9S2nc+VZQjgWjT89wDcHv4WhCx95aNCTxoAtRu3IRwjiD/SkHbT8aBL A==;
X-CSE-ConnectionGUID: R3MZu3pfR3qM4GqmGWLvvg==
X-CSE-MsgGUID: b6EyfWnuSnC8m9O22xgTiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="50262614"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="50262614"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 03:35:59 -0700
X-CSE-ConnectionGUID: +QXLH1YGQpKnZYbjcpevug==
X-CSE-MsgGUID: 9I0SNNeBT4ipWh/GOaVaRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="205842570"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 03:35:57 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 5/6] drm/i915/display: Add guardband check for feature
 latencies
Date: Wed, 15 Oct 2025 15:52:40 +0530
Message-ID: <20251015102241.1797828-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251015102241.1797828-1-ankit.k.nautiyal@intel.com>
References: <20251015102241.1797828-1-ankit.k.nautiyal@intel.com>
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

Add a check during atomic crtc check phase to ensure the programmed
guardband is sufficient to cover latencies introduced by enabled features
such as DSC, PSR/PR, scalers, and DP SDPs.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 56 ++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4367ecfab2b3..4e3f08a8cd9c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -126,6 +126,7 @@
 #include "intel_vga.h"
 #include "intel_vrr.h"
 #include "intel_wm.h"
+#include "skl_prefill.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 #include "skl_watermark.h"
@@ -4191,6 +4192,57 @@ static int hsw_compute_linetime_wm(struct intel_atomic_state *state,
 	return 0;
 }
 
+static int intel_crtc_guardband_atomic_check(struct intel_atomic_state *state,
+					     struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+	struct skl_prefill_ctx prefill_ctx;
+	int prefill_framestart_delay = 1;
+	int prefill_min_guardband;
+	int prefill_latency_us;
+	int prefill_wm0_lines;
+	int prefill_sagv_us;
+	int psr_latency = 0;
+	int sdp_latency = 0;
+	int min_guardband;
+	int guardband;
+
+	skl_prefill_init(&prefill_ctx, crtc_state);
+	prefill_wm0_lines = skl_wm0_prefill_lines(crtc_state);
+	prefill_sagv_us = display->sagv.block_time_us;
+	prefill_latency_us = prefill_sagv_us +
+			     intel_scanlines_to_usecs(adjusted_mode,
+						      prefill_framestart_delay +
+						      prefill_wm0_lines);
+	prefill_min_guardband =
+		skl_prefill_min_guardband(&prefill_ctx,
+					  crtc_state,
+					  prefill_latency_us);
+
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		psr_latency = intel_psr_max_link_wake_latency(crtc_state);
+		sdp_latency = intel_dp_compute_sdp_latency(crtc_state);
+	}
+
+	min_guardband = max(sdp_latency, psr_latency);
+
+	min_guardband = max(min_guardband, prefill_min_guardband);
+
+	guardband = intel_crtc_vblank_length(crtc_state);
+
+	if (guardband < min_guardband) {
+		drm_dbg_kms(display->drm, "actual guardband: %d shorter than min guardband: %d\n",
+			    guardband, min_guardband);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
@@ -4253,6 +4305,10 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
+	ret = intel_crtc_guardband_atomic_check(state, crtc);
+	if (ret)
+		return ret;
+
 	return 0;
 }
 
-- 
2.45.2

