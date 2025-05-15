Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D30AB7EAB
	for <lists+intel-gfx@lfdr.de>; Thu, 15 May 2025 09:18:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8FC210E786;
	Thu, 15 May 2025 07:18:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l5IQWCdb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38B3110E787;
 Thu, 15 May 2025 07:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747293533; x=1778829533;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DIyhlQOQeUKEIe0qvTnJkFxfEUfn5q1c5yNRQehJyzo=;
 b=l5IQWCdbBZ9NeK3VHyzskW1K7RlVOssMbZqoFfsb2A8Ec8rU0vHJIK2D
 RJvqwmfeBJsW8Otx84XgfYIXHBl281N/E6wU6IHRadVXaZfquzLsGuR/z
 9WVIMumlDWQ+/Nt1fHYdtKeHoZHU4qnA65dANiNc/ZGlI6Pjy5DFavA5U
 XQNtXeVYwqOuid2/i1S4VOUGSCHV+g6ROO41/DYVkYZesSBloym8zTnlr
 KRtgm83GIxhLdhSkfizyYL6UXPde7502aSp1c7DNlPdk7c1q27U1J8KH7
 azkDc7UKb+kMDfr+pbxs1ZhHWCghLfaeuLIrOAagmdFnMm6ZYVCG4zOCB g==;
X-CSE-ConnectionGUID: SgsVsdPqQPSWMWyvgNMzaQ==
X-CSE-MsgGUID: BQwG364DRSK8mKYCVbdt4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="48901360"
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="48901360"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 00:18:52 -0700
X-CSE-ConnectionGUID: YTDsKSfHR5aGlthH2I74ag==
X-CSE-MsgGUID: a4qc9VfNRJez3zAX1qIyUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="142290375"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa003.fm.intel.com with ESMTP; 15 May 2025 00:18:49 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 09/14] drm/i915/dpll: Rename intel_[enable/disable]_dpll
Date: Thu, 15 May 2025 12:47:56 +0530
Message-Id: <20250515071801.2221120-10-suraj.kandpal@intel.com>
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

Rename  intel_[enable/disable]_dpll to intel_dpll_[enable/disable]
in an effort to make sure all functions that are exported
start with the filename.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c     | 4 ++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c    | 8 ++++----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h    | 4 ++--
 drivers/gpu/drm/i915/display/intel_pch_display.c | 6 +++---
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3935508488e7..7cdb6dc78c5b 100644
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
index 69271892067a..2b592423e1d1 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -250,12 +250,12 @@ static void _intel_disable_shared_dpll(struct intel_display *display,
 }
 
 /**
- * intel_enable_dpll - enable a CRTC's DPLL
+ * intel_dpll_enable - enable a CRTC's DPLL
  * @crtc_state: CRTC, and its state, which has a DPLL
  *
  * Enable DPLL used by @crtc.
  */
-void intel_enable_dpll(const struct intel_crtc_state *crtc_state)
+void intel_dpll_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -296,12 +296,12 @@ void intel_enable_dpll(const struct intel_crtc_state *crtc_state)
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
index 60391a5b52ff..88a81c850cf0 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -418,8 +418,8 @@ int intel_dpll_get_freq(struct intel_display *display,
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

