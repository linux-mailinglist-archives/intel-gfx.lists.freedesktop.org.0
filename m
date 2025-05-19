Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0451ABB671
	for <lists+intel-gfx@lfdr.de>; Mon, 19 May 2025 09:52:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 301C210E22D;
	Mon, 19 May 2025 07:52:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a7VydpWO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AF6110E22D;
 Mon, 19 May 2025 07:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747641161; x=1779177161;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iJQuEkvs7mfQ3xV7upbYSEnkgwNB80H+Cjj/oYKOXcc=;
 b=a7VydpWOFBpKIvhxlY4mQpQpoQqM7HSdxADV8uYXOIy3M5fBaeNvjNQK
 g2P3P2xeBnrupuG4Jh1skHVbZv0GsvhxDh1usYJ5L2hjIEuXqBn9I6TH+
 LqojZhBIQYWKp18F2H/0hxdnYwrMdhZjMxM7mi6LhRzRK6q2VbZHXEXYB
 eLd2/gjdIX2IOwOKcKD0dAZxnU94nIkTAvSf778mfTf7uvS8kiOYL8Z5W
 9/hiO2ciw6IFSj6pKGhih9a3q4RKzmUtxsWuGXt2L6t+s6CQ+vRdbezn9
 sTmo/sZgH9FdnA5GXOrWRddFNhgRL0g2SIktzOW4ZY4qcVkJis8ksGr1J A==;
X-CSE-ConnectionGUID: VUxW8bjsSEWTn6fnAzwsng==
X-CSE-MsgGUID: 9XFh1pZISWGl0rpsNB1HKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11437"; a="67084765"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="67084765"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 00:52:40 -0700
X-CSE-ConnectionGUID: TFKomgeIR1GYxPE7Zqo8wQ==
X-CSE-MsgGUID: ua8/+l9tTjGx0Yffu4oqwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="139133309"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.135])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 00:52:39 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/psr: Underrun on idle PSR wa only when pkgc latency
 > delayed vblank
Date: Mon, 19 May 2025 10:52:23 +0300
Message-ID: <20250519075223.443266-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Underrun on idle PSR workaround (Wa_16025596647) is supposed to be
applied only when pkg c latency > delayed vblank. Currently we are
applying it always when other criterias are met.

Fix this by adding new boolean flag which is supposed to be set when
calculating watermark levels and pkgc latency > delayed vblank is
detected. currently this scenario is blocked but might be added
later. Due to this add also TODO comment into
skl_max_wm_level_for_vblank.

Bspec: 74151
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_display_types.h   |  2 ++
 drivers/gpu/drm/i915/display/intel_psr.c         | 16 ++++++++++------
 drivers/gpu/drm/i915/display/skl_watermark.c     |  5 +++++
 3 files changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 056219272c36..209ead520660 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1116,6 +1116,7 @@ struct intel_crtc_state {
 	bool req_psr2_sdp_prior_scanline;
 	bool has_panel_replay;
 	bool wm_level_disabled;
+	bool pkg_c_latency_used;
 	u32 dc3co_exitline;
 	u16 su_y_granularity;
 	u8 active_non_psr_pipes;
@@ -1655,6 +1656,7 @@ struct intel_psr {
 	u8 entry_setup_frames;
 
 	bool link_ok;
+	bool pkg_c_latency_used;
 
 	u8 active_non_psr_pipes;
 };
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 430ad4ef7146..a75ef515d016 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -931,7 +931,7 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
 	/* Wa_16025596647 */
 	if ((DISPLAY_VER(display) == 20 ||
 	     IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0)) &&
-	    is_dc5_dc6_blocked(intel_dp))
+	    is_dc5_dc6_blocked(intel_dp) && intel_dp->psr.pkg_c_latency_used)
 		intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(display,
 								       intel_dp->psr.pipe,
 								       true);
@@ -1021,7 +1021,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	/* Wa_16025596647 */
 	if ((DISPLAY_VER(display) == 20 ||
 	     IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0)) &&
-	    is_dc5_dc6_blocked(intel_dp))
+	    is_dc5_dc6_blocked(intel_dp) && intel_dp->psr.pkg_c_latency_used)
 		idle_frames = 0;
 	else
 		idle_frames = psr_compute_idle_frames(intel_dp);
@@ -2022,6 +2022,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	intel_dp->psr.req_psr2_sdp_prior_scanline =
 		crtc_state->req_psr2_sdp_prior_scanline;
 	intel_dp->psr.active_non_psr_pipes = crtc_state->active_non_psr_pipes;
+	intel_dp->psr.pkg_c_latency_used = crtc_state->pkg_c_latency_used;
 
 	if (!psr_interrupt_error_check(intel_dp))
 		return;
@@ -2202,6 +2203,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	intel_dp->psr.su_region_et_enabled = false;
 	intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
 	intel_dp->psr.active_non_psr_pipes = 0;
+	intel_dp->psr.pkg_c_latency_used = 0;
 }
 
 /**
@@ -3696,7 +3698,7 @@ static void intel_psr_apply_underrun_on_idle_wa_locked(struct intel_dp *intel_dp
 	struct intel_display *display = to_intel_display(intel_dp);
 	bool dc5_dc6_blocked;
 
-	if (!intel_dp->psr.active)
+	if (!intel_dp->psr.active || !intel_dp->psr.pkg_c_latency_used)
 		return;
 
 	dc5_dc6_blocked = is_dc5_dc6_blocked(intel_dp);
@@ -3721,7 +3723,8 @@ static void psr_dc5_dc6_wa_work(struct work_struct *work)
 
 		mutex_lock(&intel_dp->psr.lock);
 
-		if (intel_dp->psr.enabled && !intel_dp->psr.panel_replay_enabled)
+		if (intel_dp->psr.enabled && !intel_dp->psr.panel_replay_enabled &&
+		    !intel_dp->psr.pkg_c_latency_used)
 			intel_psr_apply_underrun_on_idle_wa_locked(intel_dp);
 
 		mutex_unlock(&intel_dp->psr.lock);
@@ -3799,7 +3802,8 @@ void intel_psr_notify_pipe_change(struct intel_atomic_state *state,
 			goto unlock;
 
 		if ((enable && intel_dp->psr.active_non_psr_pipes) ||
-		    (!enable && !intel_dp->psr.active_non_psr_pipes)) {
+		    (!enable && !intel_dp->psr.active_non_psr_pipes) ||
+		    !intel_dp->psr.pkg_c_latency_used) {
 			intel_dp->psr.active_non_psr_pipes = active_non_psr_pipes;
 			goto unlock;
 		}
@@ -3834,7 +3838,7 @@ void intel_psr_notify_vblank_enable_disable(struct intel_display *display,
 			break;
 		}
 
-		if (intel_dp->psr.enabled)
+		if (intel_dp->psr.enabled && intel_dp->psr.pkg_c_latency_used)
 			intel_psr_apply_underrun_on_idle_wa_locked(intel_dp);
 
 		mutex_unlock(&intel_dp->psr.lock);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 8080f777910a..ccde151fa9fd 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2333,6 +2333,11 @@ static int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
 	return wm0_lines;
 }
 
+/*
+ * TODO: In case we use PKG_C_LATENCY to allow C-states when the delayed vblank
+ * size is too small for the package C exit latency we need to notify PSR about
+ * the scenario to apply Wa_16025596647.
+ */
 static int skl_max_wm_level_for_vblank(struct intel_crtc_state *crtc_state,
 				       int wm0_lines)
 {
-- 
2.43.0

