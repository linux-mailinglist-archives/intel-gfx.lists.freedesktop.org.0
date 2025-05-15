Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA949AB7EAE
	for <lists+intel-gfx@lfdr.de>; Thu, 15 May 2025 09:19:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7796310E788;
	Thu, 15 May 2025 07:19:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z8fwKPvd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9031B10E788;
 Thu, 15 May 2025 07:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747293540; x=1778829540;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5RulUVx1OFSDX+aBHeJyW/K5QH++6LYGHdSRLrCUaCI=;
 b=Z8fwKPvdABu+rRlVUysquDNLjRlw5OOOw53XtkDPiEnERjBnMVuXpNsH
 0SiC5Q0z9ljZXt0Itd2Qbg6sREHDzx2OsJDTRu695oVDo6A3L4O6njF+I
 4REptKdbRiURTGxRKvwS74reHGX4NYgisBVX6aqCXLlrra7yqF7U1DUwx
 4Ca1rVJklPo2TOR/X3l8qbq/CBy4ZwqAAMugJWpecL9fTXxzWVltS3bqV
 MOB1TU2vhOsSjv93nh/6KDyGrUMn5s4PeHbD+AlxGIaMPQLRNykN0YaKR
 0EluE8l/nFTgm0EfpTD9z06jYsfl4aLQEa+KTv/6M5PRwc99MtMxXcOPd A==;
X-CSE-ConnectionGUID: Uuknh4OnS0mbjDAW3S6LXA==
X-CSE-MsgGUID: tVEQuJIGSPim6VOKElf5oQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="48901364"
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="48901364"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 00:19:00 -0700
X-CSE-ConnectionGUID: IdPHM6AZS+SCupMmYpxrNA==
X-CSE-MsgGUID: 52jgCrHRSVicF5okfFqcRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="142290387"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa003.fm.intel.com with ESMTP; 15 May 2025 00:18:57 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 12/14] drm/i915/dpll: Rename intel_<release/reserve>_dpll
Date: Thu, 15 May 2025 12:47:59 +0530
Message-Id: <20250515071801.2221120-13-suraj.kandpal@intel.com>
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

Rename intel_<release/reserve>_dpll to
intel_dpll_<release/reserve> in an effort to keep names of
exported functions start with the filename.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  4 +--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 26 +++++++++----------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 10 +++----
 4 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7cdb6dc78c5b..9bbb670c39f3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6428,7 +6428,7 @@ int intel_atomic_check(struct drm_device *dev,
 
 		any_ms = true;
 
-		intel_release_dplls(state, crtc);
+		intel_dpll_release(state, crtc);
 	}
 
 	if (any_ms && !check_digital_port_conflicts(state)) {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index e25411c4171c..6a0bb12eafc4 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1189,7 +1189,7 @@ static int hsw_crtc_get_dpll(struct intel_atomic_state *state,
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
 		return 0;
 
-	return intel_reserve_dplls(state, crtc, encoder);
+	return intel_dpll_reserve(state, crtc, encoder);
 }
 
 static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
@@ -1414,7 +1414,7 @@ static int ilk_crtc_get_dpll(struct intel_atomic_state *state,
 	if (!crtc_state->has_pch_encoder)
 		return 0;
 
-	return intel_reserve_dplls(state, crtc, NULL);
+	return intel_dpll_reserve(state, crtc, NULL);
 }
 
 static u32 vlv_dpll(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index db15d4f0328c..6f56a8059242 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -56,8 +56,8 @@
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
@@ -4388,7 +4388,7 @@ int intel_compute_dplls(struct intel_atomic_state *state,
 }
 
 /**
- * intel_reserve_dplls - reserve DPLLs for CRTC and encoder combination
+ * intel_dpll_reserve - reserve DPLLs for CRTC and encoder combination
  * @state: atomic state
  * @crtc: CRTC to reserve DPLLs for
  * @encoder: encoder
@@ -4401,15 +4401,15 @@ int intel_compute_dplls(struct intel_atomic_state *state,
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
@@ -4421,18 +4421,18 @@ int intel_reserve_dplls(struct intel_atomic_state *state,
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
@@ -4440,7 +4440,7 @@ void intel_release_dplls(struct intel_atomic_state *state,
 	/*
 	 * FIXME: this function is called for every platform having a
 	 * compute_clock hook, even though the platform doesn't yet support
-	 * the DPLL framework and intel_reserve_dplls() is not
+	 * the DPLL framework and intel_dpll_reserve() is not
 	 * called on those.
 	 */
 	if (!dpll_mgr)
@@ -4456,7 +4456,7 @@ void intel_release_dplls(struct intel_atomic_state *state,
  * @encoder: encoder determining the type of port DPLL
  *
  * Update the active DPLL for the given @crtc/@encoder in @crtc's atomic state,
- * from the port DPLLs reserved previously by intel_reserve_dplls(). The
+ * from the port DPLLs reserved previously by intel_dpll_reserve(). The
  * DPLL selected will be based on the current mode of the encoder's port.
  */
 void intel_update_active_dpll(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index f8ba7b52a7ad..9c8a91b9639c 100644
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
 void intel_dpll_crtc_put(const struct intel_crtc *crtc,
 			 const struct intel_dpll *pll,
 			 struct intel_dpll_state *shared_dpll_state);
-- 
2.34.1

