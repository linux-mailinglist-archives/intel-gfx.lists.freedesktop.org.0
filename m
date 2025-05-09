Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2ADAB092F
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 06:28:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC93F10E97A;
	Fri,  9 May 2025 04:28:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LVr0cHRN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AC6610E97F;
 Fri,  9 May 2025 04:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746764913; x=1778300913;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x4KEl8Xh09lGEjy9ugroG3eXg4zF7Dkm8TpWABwWNVQ=;
 b=LVr0cHRNmZ7BxYtRACAYQPXzkzp8lFOttucNL9ZyzOAn6ppS0e404ZcL
 S3onKqrbj7hZWWns4wY2yG6SCWLgdWk6EAkvJjC+CHOU5hjuiIQqdl0XE
 WKrIT2B/+SY4rTLF4M7XFTg8/19uHc3cXj04V4E3RbJXRsHx3zqkSRnu4
 5UTb3J+j0TkAi8A7e4QmQdi/UYzFAWUTcHnhPSb/2NRoTeokLVn7wIp6p
 J1mzrONdNYDUvOdu9NISsWbWwBq68Z2ddujl09zw6vMBnRn61e2Mm3BQq
 QuQ9QqRk43gDZdNJGIDYB37zLbaX0wrE/uDlfzfLuQL9W0WHsF7gYe+Xy Q==;
X-CSE-ConnectionGUID: 6tyzjXjsThWNds4phKseLg==
X-CSE-MsgGUID: 68T7PWU2SeCVqWNGetrqwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="58794025"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="58794025"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 21:28:32 -0700
X-CSE-ConnectionGUID: tlKPWY1wQQyWMtpiU24Djw==
X-CSE-MsgGUID: Qy9VlME2SaOxGJb5zfD4ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="137430587"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 08 May 2025 21:28:31 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 14/18] drm/i915/dpll: Rename intel_[enable/disable]_dpll
Date: Fri,  9 May 2025 09:57:25 +0530
Message-Id: <20250509042729.1152004-15-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250509042729.1152004-1-suraj.kandpal@intel.com>
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
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

Rename  intel_[enable/disable]_dpll to intel_dpll_[enable/disable]
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
index b091faff6680..8ee4833daede 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1664,7 +1664,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	intel_encoders_pre_pll_enable(state, crtc);
 
 	if (new_crtc_state->intel_dpll)
-		intel_enable_dpll(new_crtc_state);
+		intel_dpll_enable(new_crtc_state);
 
 	intel_encoders_pre_enable(state, crtc);
 
@@ -1793,7 +1793,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	intel_encoders_disable(state, crtc);
 	intel_encoders_post_disable(state, crtc);
 
-	intel_disable_dpll(old_crtc_state);
+	intel_dpll_disable(old_crtc_state);
 
 	intel_encoders_post_pll_disable(state, crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 3a724d84861b..d1399ab24d8c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -257,12 +257,12 @@ static void _intel_disable_shared_dpll(struct intel_display *display,
 }
 
 /**
- * intel_enable_dpll - enable a CRTC's global DPLL
+ * intel_dpll_enable - enable a CRTC's global DPLL
  * @crtc_state: CRTC, and its state, which has a DPLL
  *
  * Enable DPLL used by @crtc.
  */
-void intel_enable_dpll(const struct intel_crtc_state *crtc_state)
+void intel_dpll_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -303,12 +303,12 @@ void intel_enable_dpll(const struct intel_crtc_state *crtc_state)
 }
 
 /**
- * intel_disable_dpll - disable a CRTC's shared DPLL
+ * intel_dpll_disable - disable a CRTC's shared DPLL
  * @crtc_state: CRTC, and its state, which has a shared DPLL
  *
  * Disable DPLL used by @crtc.
  */
-void intel_disable_dpll(const struct intel_crtc_state *crtc_state)
+void intel_dpll_disable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 49eb02d72f44..f497a9ec863d 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -417,8 +417,8 @@ int intel_dpll_get_freq(struct intel_crtc_state *crtc_state,
 bool intel_dpll_get_hw_state(struct intel_display *display,
 			     struct intel_dpll *pll,
 			     struct intel_dpll_hw_state *dpll_hw_state);
-void intel_enable_dpll(const struct intel_crtc_state *crtc_state);
-void intel_disable_dpll(const struct intel_crtc_state *crtc_state);
+void intel_dpll_enable(const struct intel_crtc_state *crtc_state);
+void intel_dpll_disable(const struct intel_crtc_state *crtc_state);
 void intel_dpll_swap_state(struct intel_atomic_state *state);
 void intel_dpll_init(struct intel_display *display);
 void intel_dpll_update_ref_clks(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index b59b3c94f711..ca85596dfc9e 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -394,11 +394,11 @@ void ilk_pch_enable(struct intel_atomic_state *state,
 	 * transcoder, and we actually should do this to not upset any PCH
 	 * transcoder that already use the clock when we share it.
 	 *
-	 * Note that enable_dpll tries to do the right thing, but
+	 * Note that dpll_enable tries to do the right thing, but
 	 * get_dpll unconditionally resets the pll - we need that
 	 * to have the right LVDS enable sequence.
 	 */
-	intel_enable_dpll(crtc_state);
+	intel_dpll_enable(crtc_state);
 
 	/* set transcoder timing, panel must allow it */
 	assert_pps_unlocked(display, pipe);
@@ -472,7 +472,7 @@ void ilk_pch_post_disable(struct intel_atomic_state *state,
 
 	ilk_fdi_pll_disable(crtc);
 
-	intel_disable_dpll(old_crtc_state);
+	intel_dpll_disable(old_crtc_state);
 }
 
 static void ilk_pch_clock_get(struct intel_crtc_state *crtc_state)
-- 
2.34.1

