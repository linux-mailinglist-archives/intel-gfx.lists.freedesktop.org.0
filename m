Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35ADAA7D778
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 10:17:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A77DD10E3D3;
	Mon,  7 Apr 2025 08:17:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LyuqW62s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F70010E3D7;
 Mon,  7 Apr 2025 08:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744013852; x=1775549852;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/La0k5DlmGrONPQG3F+MYwzAOsGRNo5dazw0kMS4Hq8=;
 b=LyuqW62sUfRD/F+LL9/PGE68GPAL1wrtctdLssMJ7HPv0Xl/SZ3VRApq
 +DuXtgCuBavDXSiGpaDiWA8hDypIx972mO0Mbu0m65JTkZ6mHMXR4HsUN
 01JJF/27Sbyu/3sh9jd/oRc1sSIenu4e57i8JaD45N+p1n7mYdqnYaiBP
 lNb6NZOux64htZUwqLqOcGOOfD8wHiNZItslETl2lYf5mWTRKEuc8vwMC
 xtrSim5pV1U82cnE6KHXCTWFbxwvCXffSZb1YAffmKQocb2XoJwtFWuPV
 zEjsJt1pZ3EiX0OdAeX8ugxgIXytv7Uu0ZlCmGL2Z7OxatL/8AgJvtwN8 A==;
X-CSE-ConnectionGUID: W/h0M35LTJCiFa4mf+frpA==
X-CSE-MsgGUID: VtzX7LeOSD6c3HXy2ENgYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11396"; a="56755815"
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="56755815"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 01:17:32 -0700
X-CSE-ConnectionGUID: Wn4O5dOrToGb+M5zPW2TFQ==
X-CSE-MsgGUID: nRrVZkVEQIWZouwMnNGN7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="127728197"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 07 Apr 2025 01:17:29 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 16/18] drm/i915/dpll: Rename intel_<release/reserve>_dpll
Date: Mon,  7 Apr 2025 13:46:52 +0530
Message-Id: <20250407081654.2013680-17-suraj.kandpal@intel.com>
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

Rename intel_<release/reserve>_dpll to
intel_dpll_<release/reserve> in an effort to keep names of
exported functions start with the filename.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  4 +--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 26 +++++++++----------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 10 +++----
 4 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8e30fa70c05a..7e9aec9deece 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6429,7 +6429,7 @@ int intel_atomic_check(struct drm_device *dev,
 
 		any_ms = true;
 
-		intel_release_dplls(state, crtc);
+		intel_dpll_release(state, crtc);
 	}
 
 	if (any_ms && !check_digital_port_conflicts(state)) {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 80f230c61888..85bceb83033d 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1190,7 +1190,7 @@ static int hsw_crtc_get_dpll(struct intel_atomic_state *state,
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
 		return 0;
 
-	return intel_reserve_dplls(state, crtc, encoder);
+	return intel_dpll_reserve(state, crtc, encoder);
 }
 
 static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
@@ -1417,7 +1417,7 @@ static int ilk_crtc_get_dpll(struct intel_atomic_state *state,
 	if (!crtc_state->has_pch_encoder)
 		return 0;
 
-	return intel_reserve_dplls(state, crtc, NULL);
+	return intel_dpll_reserve(state, crtc, NULL);
 }
 
 static u32 vlv_dpll(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index c5d7f2db4a6b..84f4e2924e75 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -53,8 +53,8 @@
  * users of a PLL are tracked and that tracking is integrated with the atomic
  * modset interface. During an atomic operation, required PLLs can be reserved
  * for a given CRTC and encoder configuration by calling
- * intel_reserve_dplls() and previously reserved PLLs can be released
- * with intel_release_dplls().
+ * intel_dpll_reserve() and previously reserved PLLs can be released
+ * with intel_dpll_release().
  * Changes to the users are first staged in the atomic state, and then made
  * effective by calling intel_dpll_swap_state() during the atomic
  * commit phase.
@@ -4411,7 +4411,7 @@ int intel_compute_dplls(struct intel_atomic_state *state,
 }
 
 /**
- * intel_reserve_dplls - reserve DPLLs for CRTC and encoder combination
+ * intel_dpll_reserve - reserve DPLLs for CRTC and encoder combination
  * @state: atomic state
  * @crtc: CRTC to reserve DPLLs for
  * @encoder: encoder
@@ -4424,15 +4424,15 @@ int intel_compute_dplls(struct intel_atomic_state *state,
  * calling intel_dpll_swap_state().
  *
  * The reserved DPLLs should be released by calling
- * intel_release_dplls().
+ * intel_dpll_release().
  *
  * Returns:
  * 0 if all required DPLLs were successfully reserved,
  * negative error code otherwise.
  */
-int intel_reserve_dplls(struct intel_atomic_state *state,
-			struct intel_crtc *crtc,
-			struct intel_encoder *encoder)
+int intel_dpll_reserve(struct intel_atomic_state *state,
+		       struct intel_crtc *crtc,
+		       struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_dpll_mgr *dpll_mgr = display->dpll.mgr;
@@ -4444,18 +4444,18 @@ int intel_reserve_dplls(struct intel_atomic_state *state,
 }
 
 /**
- * intel_release_dplls - end use of DPLLs by CRTC in atomic state
+ * intel_dpll_release - end use of DPLLs by CRTC in atomic state
  * @state: atomic state
  * @crtc: crtc from which the DPLLs are to be released
  *
- * This function releases all DPLLs reserved by intel_reserve_dplls()
+ * This function releases all DPLLs reserved by intel_dpll_reserve()
  * from the current atomic commit @state and the old @crtc atomic state.
  *
  * The new configuration in the atomic commit @state is made effective by
  * calling intel_dpll_swap_state().
  */
-void intel_release_dplls(struct intel_atomic_state *state,
-			 struct intel_crtc *crtc)
+void intel_dpll_release(struct intel_atomic_state *state,
+			struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_dpll_mgr *dpll_mgr = display->dpll.mgr;
@@ -4463,7 +4463,7 @@ void intel_release_dplls(struct intel_atomic_state *state,
 	/*
 	 * FIXME: this function is called for every platform having a
 	 * compute_clock hook, even though the platform doesn't yet support
-	 * the global DPLL framework and intel_reserve_dplls() is not
+	 * the global DPLL framework and intel_dpll_reserve() is not
 	 * called on those.
 	 */
 	if (!dpll_mgr)
@@ -4479,7 +4479,7 @@ void intel_release_dplls(struct intel_atomic_state *state,
  * @encoder: encoder determining the type of port DPLL
  *
  * Update the active DPLL for the given @crtc/@encoder in @crtc's atomic state,
- * from the port DPLLs reserved previously by intel_reserve_dplls(). The
+ * from the port DPLLs reserved previously by intel_dpll_reserve(). The
  * DPLL selected will be based on the current mode of the encoder's port.
  */
 void intel_update_active_dpll(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 8b596a96344f..4f8074580582 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -399,11 +399,11 @@ void assert_dpll(struct intel_display *display,
 int intel_compute_dplls(struct intel_atomic_state *state,
 			struct intel_crtc *crtc,
 			struct intel_encoder *encoder);
-int intel_reserve_dplls(struct intel_atomic_state *state,
-			struct intel_crtc *crtc,
-			struct intel_encoder *encoder);
-void intel_release_dplls(struct intel_atomic_state *state,
-			 struct intel_crtc *crtc);
+int intel_dpll_reserve(struct intel_atomic_state *state,
+		       struct intel_crtc *crtc,
+		       struct intel_encoder *encoder);
+void intel_dpll_release(struct intel_atomic_state *state,
+			struct intel_crtc *crtc);
 void intel_dpll_unreference_crtc(const struct intel_crtc *crtc,
 				 const struct intel_dpll *pll,
 				 struct intel_dpll_state *shared_dpll_state);
-- 
2.34.1

