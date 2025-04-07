Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C12EBA7D779
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 10:17:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4050310E3DB;
	Mon,  7 Apr 2025 08:17:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G1heM5J3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEA8F10E3DA;
 Mon,  7 Apr 2025 08:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744013855; x=1775549855;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V1JqfjRRZQrTes34Eqa+oKOrYny0ntaM0UcBWc1vvCM=;
 b=G1heM5J3QVQF5dyGwpqDxE7ATo/xQXpbI8E9XsBSGGP3QSovKFEVhh03
 rdaZQiqa9mM4J3j5p61kdPiUew0idU1F8UWGaRKlEo7VznuVjcp0zrsGo
 m0G/C3qpCVLjvkYXcxy3k+QdV5dbMKX/eaKLtPo1Sz84jqvUO90+5+8DP
 5Kq5aHF/HetwZXOLNpJherTA2K0x2OjauxVS7J4qKNC2O1O1CV8HcFmBO
 wPjCeKGZnioU+o23jnMiYm/JkHWgVOyHyivfDXZmsHSxqgdzP9818pV1R
 ENem3Pe17VLHPYavi8SaYLQ1AhpmGJlwnYHeuNpC3VIwBUr2+P7rUXCba A==;
X-CSE-ConnectionGUID: atnlfwWXRu6/wnWZG0j44w==
X-CSE-MsgGUID: jzJIayNRSbeBM7O1kQ2ROw==
X-IronPort-AV: E=McAfee;i="6700,10204,11396"; a="56755819"
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="56755819"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 01:17:35 -0700
X-CSE-ConnectionGUID: Lo2q2NtxSb26Be1HQ4j1JA==
X-CSE-MsgGUID: dhr4jGRdQliRZbQIIpfIxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="127728216"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 07 Apr 2025 01:17:32 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 17/18] drm/i915/dpll: Rename intel_compute_dpll
Date: Mon,  7 Apr 2025 13:46:53 +0530
Message-Id: <20250407081654.2013680-18-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250407081654.2013680-1-suraj.kandpal@intel.com>
References: <20250407081654.2013680-1-suraj.kandpal@intel.com>
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

Rename intel_compute_dpll to intel_dpll_compute in an
effort to make sure all function names that are exported have
the filename at start.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c     | 6 +++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 8 ++++----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 6 +++---
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 85bceb83033d..077b2f42a4e4 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1162,7 +1162,7 @@ static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
 		return 0;
 
-	ret = intel_compute_dplls(state, crtc, encoder);
+	ret = intel_dpll_compute(state, crtc, encoder);
 	if (ret)
 		return ret;
 
@@ -1224,7 +1224,7 @@ static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
-	/* TODO: Do the readback via intel_compute_dplls() */
+	/* TODO: Do the readback via intel_dpll_compute() */
 	crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder, &crtc_state->dpll_hw_state.cx0pll);
 
 	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
@@ -1397,7 +1397,7 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 	ilk_compute_dpll(crtc_state, &crtc_state->dpll,
 			 &crtc_state->dpll);
 
-	ret = intel_compute_dplls(state, crtc, NULL);
+	ret = intel_dpll_compute(state, crtc, NULL);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 84f4e2924e75..4d1ab06237f8 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4384,7 +4384,7 @@ void intel_dpll_init(struct intel_display *display)
 }
 
 /**
- * intel_compute_dplls - compute DPLL state CRTC and encoder combination
+ * intel_dpll_compute - compute DPLL state CRTC and encoder combination
  * @state: atomic state
  * @crtc: CRTC to compute DPLLs for
  * @encoder: encoder
@@ -4397,9 +4397,9 @@ void intel_dpll_init(struct intel_display *display)
  * Returns:
  * 0 on success, negative error code on failure.
  */
-int intel_compute_dplls(struct intel_atomic_state *state,
-			struct intel_crtc *crtc,
-			struct intel_encoder *encoder)
+int intel_dpll_compute(struct intel_atomic_state *state,
+		       struct intel_crtc *crtc,
+		       struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_dpll_mgr *dpll_mgr = display->dpll.mgr;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 4f8074580582..c2658ad409e4 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -396,9 +396,9 @@ void assert_dpll(struct intel_display *display,
 		 bool state);
 #define assert_dpll_enabled(d, p) assert_dpll(d, p, true)
 #define assert_dpll_disabled(d, p) assert_dpll(d, p, false)
-int intel_compute_dplls(struct intel_atomic_state *state,
-			struct intel_crtc *crtc,
-			struct intel_encoder *encoder);
+int intel_dpll_compute(struct intel_atomic_state *state,
+		       struct intel_crtc *crtc,
+		       struct intel_encoder *encoder);
 int intel_dpll_reserve(struct intel_atomic_state *state,
 		       struct intel_crtc *crtc,
 		       struct intel_encoder *encoder);
-- 
2.34.1

