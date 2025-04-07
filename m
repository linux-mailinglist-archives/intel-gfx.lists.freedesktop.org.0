Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2885A7D776
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 10:17:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C74E10E3D1;
	Mon,  7 Apr 2025 08:17:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RWIejBBV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9811110E3D1;
 Mon,  7 Apr 2025 08:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744013847; x=1775549847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R4bSrqXtzbhryTIl3jqNPgwifP/27ckrnHIuZGAMmf8=;
 b=RWIejBBVqdXE3SSBsXd1pe9HZvBlVVA31xl2UJP6wp+N6B9RO23fzpbO
 8xtd94jUn/hseXdS0ucbETh3H7W/w6TCu0wjLkLJeqjTMD+5dg976mx6J
 5UJZBCtuFdS354x6vNFlM78XgUK4DgDUKx9spcjEWKBUGeHTmDI5/kg+y
 sf2SSe4guVOWJFHJNxk40K2Sq1gDZyk3WYxtMBso7qvwll/TvO70zky/q
 DCu8j1BA9bWPvKoM7Q8c83HMbx0Rq36UbIAui+TqQhg/fMsqeYSsgHIMy
 p8uQ5HKu0F6uCZlT6RNC9Yrf2UvWIGQohdbV+ZAYjI64bVDTMINLpsZgW g==;
X-CSE-ConnectionGUID: NIn/f31KQrOYvkVMcgtUMA==
X-CSE-MsgGUID: HiqYHFwkQj+4PMIWJqIfrA==
X-IronPort-AV: E=McAfee;i="6700,10204,11396"; a="56755807"
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="56755807"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 01:17:27 -0700
X-CSE-ConnectionGUID: aTZcZZ5NRI6aFLVs46bQvg==
X-CSE-MsgGUID: 9RcPxjS6QXCgMbz307mM5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="127728163"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 07 Apr 2025 01:17:24 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 14/18] drm/i915/dpll: Rename intel_[enable/disable]_dpll
Date: Mon,  7 Apr 2025 13:46:50 +0530
Message-Id: <20250407081654.2013680-15-suraj.kandpal@intel.com>
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
index 96b823f4ea5a..8e30fa70c05a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1662,7 +1662,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	intel_encoders_pre_pll_enable(state, crtc);
 
 	if (new_crtc_state->intel_dpll)
-		intel_enable_dpll(new_crtc_state);
+		intel_dpll_enable(new_crtc_state);
 
 	intel_encoders_pre_enable(state, crtc);
 
@@ -1791,7 +1791,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	intel_encoders_disable(state, crtc);
 	intel_encoders_post_disable(state, crtc);
 
-	intel_disable_dpll(old_crtc_state);
+	intel_dpll_disable(old_crtc_state);
 
 	intel_encoders_post_pll_disable(state, crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index b4d04e0cc3d4..2c99104d3855 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -254,12 +254,12 @@ static void _intel_disable_shared_dpll(struct intel_display *display,
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
@@ -300,12 +300,12 @@ void intel_enable_dpll(const struct intel_crtc_state *crtc_state)
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
index eef2365d092b..55671cee4c0a 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -400,11 +400,11 @@ void ilk_pch_enable(struct intel_atomic_state *state,
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
@@ -479,7 +479,7 @@ void ilk_pch_post_disable(struct intel_atomic_state *state,
 
 	ilk_fdi_pll_disable(crtc);
 
-	intel_disable_dpll(old_crtc_state);
+	intel_dpll_disable(old_crtc_state);
 }
 
 static void ilk_pch_clock_get(struct intel_crtc_state *crtc_state)
-- 
2.34.1

