Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C609AB7EAF
	for <lists+intel-gfx@lfdr.de>; Thu, 15 May 2025 09:19:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C22DF10E78E;
	Thu, 15 May 2025 07:19:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ONa7yBZm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C71010E78C;
 Thu, 15 May 2025 07:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747293542; x=1778829542;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/onY7c6+fjqnI6/HBTG7HPeYudYaC9y1AAN3aD/G1sQ=;
 b=ONa7yBZmr5LWnv+3B/yTHkOv3XDY9qMNZi4fIbWCqPXpydZ4+Kdp+ddg
 2/9zl+J72HmyD8efNC1ZyAOi2w6k2M2kGaIj34b4A+jAyiCGEJtls1r3i
 xCBJW9l5NGv5JnI2LOy9SKqnt89Vr9SRX2ZIdvwCH+jh+NZQGAdrOzoDF
 TOVdtDO3jDEHQNHAVbHLa+eEQfvju7oGPL/HtPRWNzkna4X++LIVrSCtY
 CB3CxDC/pc5ZzxFIh5Xi1oPP/i4Nr7g04OYTpf30SOz+EtZ5njghfqEYr
 uYddrasu6XYhU/riP4A13pbWvwbPr+wxsXs0O5as6PvUUFbWmoXGL/11R g==;
X-CSE-ConnectionGUID: LK1W2MlsS0e9dO9jJ9uLEQ==
X-CSE-MsgGUID: MwllfcqmTtiZl4tQoqdkUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="48901366"
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="48901366"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 00:19:02 -0700
X-CSE-ConnectionGUID: akU5dAmfTROQdtQxPc+NBg==
X-CSE-MsgGUID: HvgN8YciRPWx5NCPXqG4CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="142290391"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa003.fm.intel.com with ESMTP; 15 May 2025 00:18:59 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 13/14] drm/i915/dpll: Rename intel_compute_dpll
Date: Thu, 15 May 2025 12:48:00 +0530
Message-Id: <20250515071801.2221120-14-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250515071801.2221120-1-suraj.kandpal@intel.com>
References: <20250515071801.2221120-1-suraj.kandpal@intel.com>
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
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c     | 6 +++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 8 ++++----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 6 +++---
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 6a0bb12eafc4..c15a9af53313 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1161,7 +1161,7 @@ static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
 		return 0;
 
-	ret = intel_compute_dplls(state, crtc, encoder);
+	ret = intel_dpll_compute(state, crtc, encoder);
 	if (ret)
 		return ret;
 
@@ -1223,7 +1223,7 @@ static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
-	/* TODO: Do the readback via intel_compute_dplls() */
+	/* TODO: Do the readback via intel_dpll_compute() */
 	crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder, &crtc_state->dpll_hw_state.cx0pll);
 
 	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
@@ -1394,7 +1394,7 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 	ilk_compute_dpll(crtc_state, &crtc_state->dpll,
 			 &crtc_state->dpll);
 
-	ret = intel_compute_dplls(state, crtc, NULL);
+	ret = intel_dpll_compute(state, crtc, NULL);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 6f56a8059242..bf66cbe5a11c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4361,7 +4361,7 @@ void intel_dpll_init(struct intel_display *display)
 }
 
 /**
- * intel_compute_dplls - compute DPLL state CRTC and encoder combination
+ * intel_dpll_compute - compute DPLL state CRTC and encoder combination
  * @state: atomic state
  * @crtc: CRTC to compute DPLLs for
  * @encoder: encoder
@@ -4374,9 +4374,9 @@ void intel_dpll_init(struct intel_display *display)
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
index 9c8a91b9639c..b388310af9c3 100644
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

