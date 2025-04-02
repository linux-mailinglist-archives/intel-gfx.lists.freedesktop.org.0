Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 282CFA789FE
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 10:32:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9642010E6F8;
	Wed,  2 Apr 2025 08:32:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IGIecHYE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4825110E705;
 Wed,  2 Apr 2025 08:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743582753; x=1775118753;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VbxjhFMrCTLD8mz0Prde9Wc8dRob0lKIA5n62iWEoEw=;
 b=IGIecHYEvhei0YfGmMa3zUvSJzAXm0qk5B/3H8VzDNHwM+mZe1dpJ/WW
 dgw5vmi/AF67KqvMD5NM+NdeeeWYphkbzIKCrtctZHmWdky0aV0M+IYU8
 k8DPIsJnezcTvU1AsZivtYcrPHPon5gK9NhbJK0763NbBC8dev3arWXvT
 a3GTM4YP05p+LKuNb9ON/irJjndde+DdY7GpbjCjh0f9R+pc450DvXpQ9
 4J0DDVuvxOVixIRaYUZZJoePi7uQGAA96kf/6uFtnxcYxKx8GDHLhENOy
 Q5mrOy5SvVsIT8qT5R9WKSqjbW3VxLiGvoNTk/BXerKbNzeQ2/B0nrEnr g==;
X-CSE-ConnectionGUID: 3qW0dA6bQlC0XZ5Tk8ZKDA==
X-CSE-MsgGUID: zYWaY6SjQGmvtPlXVR+1jw==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="44828729"
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="44828729"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 01:32:33 -0700
X-CSE-ConnectionGUID: jc7oHtw1RN2cHSlo9Ikbwg==
X-CSE-MsgGUID: ygOfsukWRk+yaZNC9/E/kQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="126612460"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2025 01:32:29 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 12/16] drm/i915/dpll: Rename intel_[enable/disable]_global_dpll
Date: Wed,  2 Apr 2025 14:02:00 +0530
Message-Id: <20250402083204.1523470-13-suraj.kandpal@intel.com>
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

Rename  intel_[enable/disable]_global_dpll to intel_dpll_[enable/disable]
in an effort to make sure all functions that are exported
start with the filename.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c     | 4 ++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c    | 8 ++++----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h    | 4 ++--
 drivers/gpu/drm/i915/display/intel_pch_display.c | 6 +++---
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0c77fb02c565..759479f576d8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1662,7 +1662,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	intel_encoders_pre_pll_enable(state, crtc);
 
 	if (new_crtc_state->dpll_global)
-		intel_enable_dpll_global(new_crtc_state);
+		intel_dpll_enable(new_crtc_state);
 
 	intel_encoders_pre_enable(state, crtc);
 
@@ -1791,7 +1791,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	intel_encoders_disable(state, crtc);
 	intel_encoders_post_disable(state, crtc);
 
-	intel_disable_dpll_global(old_crtc_state);
+	intel_dpll_disable(old_crtc_state);
 
 	intel_encoders_post_pll_disable(state, crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 8b4c35245190..97447ac0fcdf 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -254,12 +254,12 @@ static void _intel_disable_shared_dpll(struct intel_display *display,
 }
 
 /**
- * intel_enable_dpll_global - enable a CRTC's global DPLL
+ * intel_dpll_enable - enable a CRTC's global DPLL
  * @crtc_state: CRTC, and its state, which has a DPLL
  *
  * Enable DPLL used by @crtc.
  */
-void intel_enable_dpll_global(const struct intel_crtc_state *crtc_state)
+void intel_dpll_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -300,12 +300,12 @@ void intel_enable_dpll_global(const struct intel_crtc_state *crtc_state)
 }
 
 /**
- * intel_disable_dpll_global - disable a CRTC's shared DPLL
+ * intel_dpll_disable - disable a CRTC's shared DPLL
  * @crtc_state: CRTC, and its state, which has a shared DPLL
  *
  * Disable DPLL used by @crtc.
  */
-void intel_disable_dpll_global(const struct intel_crtc_state *crtc_state)
+void intel_dpll_disable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index d039056efbbc..bc93cb36b737 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -417,8 +417,8 @@ int intel_dpll_get_freq(struct intel_crtc_state *crtc_state,
 bool intel_dpll_get_hw_state(struct intel_display *display,
 			     struct intel_dpll_global *pll,
 			     struct intel_dpll_hw_state *dpll_hw_state);
-void intel_enable_dpll_global(const struct intel_crtc_state *crtc_state);
-void intel_disable_dpll_global(const struct intel_crtc_state *crtc_state);
+void intel_dpll_enable(const struct intel_crtc_state *crtc_state);
+void intel_dpll_disable(const struct intel_crtc_state *crtc_state);
 void intel_dpll_swap_state(struct intel_atomic_state *state);
 void intel_dpll_global_init(struct intel_display *display);
 void intel_dpll_update_ref_clks(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index aa39d0fb1e23..4297afd5a37f 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -400,11 +400,11 @@ void ilk_pch_enable(struct intel_atomic_state *state,
 	 * transcoder, and we actually should do this to not upset any PCH
 	 * transcoder that already use the clock when we share it.
 	 *
-	 * Note that enable_dpll_global tries to do the right thing, but
+	 * Note that dpll_enable tries to do the right thing, but
 	 * get_dpll_global unconditionally resets the pll - we need that
 	 * to have the right LVDS enable sequence.
 	 */
-	intel_enable_dpll_global(crtc_state);
+	intel_dpll_enable(crtc_state);
 
 	/* set transcoder timing, panel must allow it */
 	assert_pps_unlocked(display, pipe);
@@ -479,7 +479,7 @@ void ilk_pch_post_disable(struct intel_atomic_state *state,
 
 	ilk_fdi_pll_disable(crtc);
 
-	intel_disable_dpll_global(old_crtc_state);
+	intel_dpll_disable(old_crtc_state);
 }
 
 static void ilk_pch_clock_get(struct intel_crtc_state *crtc_state)
-- 
2.34.1

