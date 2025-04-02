Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CEF1A78A02
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 10:32:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20DF310E6FA;
	Wed,  2 Apr 2025 08:32:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nOfmMWzE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2806D10E6F2;
 Wed,  2 Apr 2025 08:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743582767; x=1775118767;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ft7pgM8s5aSd8IrCXePBQxFdfYMuPHui/HvJPfkOkuc=;
 b=nOfmMWzELRHmSpD1vAiEMMYtk2LTeELnlbkwJLGstZpqLTc0fjqFgckw
 A3wFhgWda0GtRWNAcV3XOuvunyoO9SnNlgmhN6TzrK7sszWx70yZF70pF
 2dQAYxr9BZ9qjzMDRB4QqAMTtHDwhZS8zjPcVhk7AFwAKBKTEi/ZJ/mui
 sdGpWm6njmsQrlg2BCJ9Xf8mvSjG3MMXHWjdgv8IBYGNX8T/fqbUshWGd
 aCAh/E0GBoF/fDoZkdAUP6DLPw6fI5e1M90Do9/QL+XSxZaUUocmDTl8x
 o7pXH0gY0ElgzJNGDdKO8kom0Dfr3k8BZ8yYpR8Kdk84i2PxuyXdGwPr6 g==;
X-CSE-ConnectionGUID: EOcq39OfT2uu5Bs8x/ji3A==
X-CSE-MsgGUID: yrIlSLh7QWa9lTW0I2nOMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="44828742"
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="44828742"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 01:32:38 -0700
X-CSE-ConnectionGUID: G3QQBuyVTDaHNaHqyHgZ8g==
X-CSE-MsgGUID: +is+Z48EQkWPwzy7Pu0+gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="126612481"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2025 01:32:35 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 14/16] drm/i915/dpll: Rename
 intel_<release/reserve>_dpll_globals
Date: Wed,  2 Apr 2025 14:02:02 +0530
Message-Id: <20250402083204.1523470-15-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250402083204.1523470-1-suraj.kandpal@intel.com>
References: <20250402083204.1523470-1-suraj.kandpal@intel.com>
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

Rename intel_<release/reserve>_dpll_globals to
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
index 759479f576d8..5afc5e678844 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6429,7 +6429,7 @@ int intel_atomic_check(struct drm_device *dev,
 
 		any_ms = true;
 
-		intel_release_dpll_globals(state, crtc);
+		intel_dpll_release(state, crtc);
 	}
 
 	if (any_ms && !check_digital_port_conflicts(state)) {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index eac588566d7c..13a70ef95804 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1190,7 +1190,7 @@ static int hsw_crtc_get_dpll_global(struct intel_atomic_state *state,
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
 		return 0;
 
-	return intel_reserve_dpll_globals(state, crtc, encoder);
+	return intel_dpll_reserve(state, crtc, encoder);
 }
 
 static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
@@ -1417,7 +1417,7 @@ static int ilk_crtc_get_dpll_global(struct intel_atomic_state *state,
 	if (!crtc_state->has_pch_encoder)
 		return 0;
 
-	return intel_reserve_dpll_globals(state, crtc, NULL);
+	return intel_dpll_reserve(state, crtc, NULL);
 }
 
 static u32 vlv_dpll(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index dd1f2104d5b1..7faf1b2e6399 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -53,8 +53,8 @@
  * users of a PLL are tracked and that tracking is integrated with the atomic
  * modset interface. During an atomic operation, required PLLs can be reserved
  * for a given CRTC and encoder configuration by calling
- * intel_reserve_dpll_globals() and previously reserved PLLs can be released
- * with intel_release_dpll_globals().
+ * intel_dpll_reserve() and previously reserved PLLs can be released
+ * with intel_dpll_release().
  * Changes to the users are first staged in the atomic state, and then made
  * effective by calling intel_dpll_swap_state() during the atomic
  * commit phase.
@@ -4412,7 +4412,7 @@ int intel_compute_dpll_globals(struct intel_atomic_state *state,
 }
 
 /**
- * intel_reserve_dpll_globals - reserve DPLLs for CRTC and encoder combination
+ * intel_dpll_reserve - reserve DPLLs for CRTC and encoder combination
  * @state: atomic state
  * @crtc: CRTC to reserve DPLLs for
  * @encoder: encoder
@@ -4425,15 +4425,15 @@ int intel_compute_dpll_globals(struct intel_atomic_state *state,
  * calling intel_dpll_swap_state().
  *
  * The reserved DPLLs should be released by calling
- * intel_release_dpll_globals().
+ * intel_dpll_release().
  *
  * Returns:
  * 0 if all required DPLLs were successfully reserved,
  * negative error code otherwise.
  */
-int intel_reserve_dpll_globals(struct intel_atomic_state *state,
-			       struct intel_crtc *crtc,
-			       struct intel_encoder *encoder)
+int intel_dpll_reserve(struct intel_atomic_state *state,
+		       struct intel_crtc *crtc,
+		       struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_dpll_mgr *dpll_mgr = display->dpll.mgr;
@@ -4445,18 +4445,18 @@ int intel_reserve_dpll_globals(struct intel_atomic_state *state,
 }
 
 /**
- * intel_release_dpll_globals - end use of DPLLs by CRTC in atomic state
+ * intel_dpll_release - end use of DPLLs by CRTC in atomic state
  * @state: atomic state
  * @crtc: crtc from which the DPLLs are to be released
  *
- * This function releases all DPLLs reserved by intel_reserve_dpll_globals()
+ * This function releases all DPLLs reserved by intel_dpll_reserve()
  * from the current atomic commit @state and the old @crtc atomic state.
  *
  * The new configuration in the atomic commit @state is made effective by
  * calling intel_dpll_swap_state().
  */
-void intel_release_dpll_globals(struct intel_atomic_state *state,
-				struct intel_crtc *crtc)
+void intel_dpll_release(struct intel_atomic_state *state,
+			struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_dpll_mgr *dpll_mgr = display->dpll.mgr;
@@ -4464,7 +4464,7 @@ void intel_release_dpll_globals(struct intel_atomic_state *state,
 	/*
 	 * FIXME: this function is called for every platform having a
 	 * compute_clock hook, even though the platform doesn't yet support
-	 * the global DPLL framework and intel_reserve_dpll_globals() is not
+	 * the global DPLL framework and intel_dpll_reserve() is not
 	 * called on those.
 	 */
 	if (!dpll_mgr)
@@ -4480,7 +4480,7 @@ void intel_release_dpll_globals(struct intel_atomic_state *state,
  * @encoder: encoder determining the type of port DPLL
  *
  * Update the active DPLL for the given @crtc/@encoder in @crtc's atomic state,
- * from the port DPLLs reserved previously by intel_reserve_dpll_globals(). The
+ * from the port DPLLs reserved previously by intel_dpll_reserve(). The
  * DPLL selected will be based on the current mode of the encoder's port.
  */
 void intel_update_active_dpll(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index f240018416c7..b6d5a15b8103 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -399,11 +399,11 @@ void assert_dpll_global(struct intel_display *display,
 int intel_compute_dpll_globals(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc,
 			       struct intel_encoder *encoder);
-int intel_reserve_dpll_globals(struct intel_atomic_state *state,
-			       struct intel_crtc *crtc,
-			       struct intel_encoder *encoder);
-void intel_release_dpll_globals(struct intel_atomic_state *state,
-				struct intel_crtc *crtc);
+int intel_dpll_reserve(struct intel_atomic_state *state,
+		       struct intel_crtc *crtc,
+		       struct intel_encoder *encoder);
+void intel_dpll_release(struct intel_atomic_state *state,
+			struct intel_crtc *crtc);
 void intel_dpll_unreference_crtc(const struct intel_crtc *crtc,
 				 const struct intel_dpll_global *pll,
 				 struct intel_dpll_state *shared_dpll_state);
-- 
2.34.1

