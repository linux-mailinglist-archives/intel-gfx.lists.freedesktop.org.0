Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EC6B01745
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jul 2025 11:09:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EE5B10E9E1;
	Fri, 11 Jul 2025 09:09:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DaGIlbd5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEFB810E9E0;
 Fri, 11 Jul 2025 09:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752224957; x=1783760957;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E4C3JwpWnf1q8DYEYdNhtfcnZC/zLP6EggoFnGwMayg=;
 b=DaGIlbd5HS452XC32wfC3VnC6tkL8mURZOFtYYDPo0Q7vLu9VunsHzoZ
 3FA6bh2B95pN4Cj5ugxwA19fUI+wlqYApsrj9GEE18t+sQe89xG4m52d0
 StuJnbYx+LBIqS1DgqU+uY1hAMrY0bzjtZVlj9nq5/XJ+7jwT849hJbhG
 PDsDwmZ1Q9UJJ5auHpZ0GJ3f68eo+sbpqOJvwXFLpcwMd1SNCqljt4NUt
 +bsOSfOl95UK+df6TQ8sm2cJ31D2rpGVMED/0zyOX3B2mN+k8AGGn8huH
 OYtpgAeOHjNdVHeVPuuOTH++S+kIYiIL8TuLx+bt6mQb0Sz+MLVYsblbo Q==;
X-CSE-ConnectionGUID: C3e/HKStTMOeMHTe3bpmMw==
X-CSE-MsgGUID: I4HchhNoS4aHDbAZCOD6+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="53627669"
X-IronPort-AV: E=Sophos;i="6.16,303,1744095600"; d="scan'208";a="53627669"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 02:09:16 -0700
X-CSE-ConnectionGUID: ccZyIa3hSMGJ2gN1/qSugA==
X-CSE-MsgGUID: vm79t+ICRc2/5CsR6/WzBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,303,1744095600"; d="scan'208";a="160655328"
Received: from abityuts-desk.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.32])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 02:09:15 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 4/6] drm/i915/vrr: Prepare to Use TRANS_PUSH mechanism for
 PSR frame change
Date: Fri, 11 Jul 2025 12:08:56 +0300
Message-ID: <20250711090858.3297380-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250711090858.3297380-1-jouni.hogander@intel.com>
References: <20250711090858.3297380-1-jouni.hogander@intel.com>
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

On Lunarlake and onwards it is possible to generate PSR "frame change"
event using TRANS_PUSH mechanism. Implement function to enable this and
take PSR into account in intel_vrr_send_push.

v4:
  - use rmw when enabling/disabling transcoder
  - set TRANS_PUSH_EN conditionally in intel_vrr_send_push
  - do not call intel_vrr_send_push from intel_psr_trigger_frame_change
  - do not enable using TRANS_PUSH mechanism for PSR "Frame Change"
v3:
  - use rmw when enabling/disabling
  - keep LNL_TRANS_PUSH_PSR_PR_EN set always on LunarLake and onwards
v2: use intel_vrr_trans_push_enabled_set_clear instead of rmw

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c |  4 ++-
 drivers/gpu/drm/i915/display/intel_psr.c  | 11 +++++--
 drivers/gpu/drm/i915/display/intel_vrr.c  | 39 ++++++++++++++++-------
 drivers/gpu/drm/i915/display/intel_vrr.h  |  1 +
 4 files changed, 40 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index a187db6df2d3..5233970b95e5 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -723,7 +723,9 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 	 * which would cause the next frame to terminate already at vmin
 	 * vblank start instead of vmax vblank start.
 	 */
-	if (!state->base.legacy_cursor_update)
+	if (!state->base.legacy_cursor_update ||
+	    (intel_psr_use_trans_push(new_crtc_state) &&
+	     !new_crtc_state->vrr.enable))
 		intel_vrr_send_push(NULL, new_crtc_state);
 
 	local_irq_enable();
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 11d46b8df7d7..d3f4828279aa 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1971,6 +1971,9 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 		intel_dmc_block_pkgc(display, intel_dp->psr.pipe, true);
 
 	intel_alpm_configure(intel_dp, crtc_state);
+
+	if (DISPLAY_VER(display) >= 20)
+		intel_vrr_psr_frame_change_enable(crtc_state);
 }
 
 static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
@@ -2357,9 +2360,11 @@ void intel_psr_trigger_frame_change_event(struct intel_dsb *dsb,
 		intel_pre_commit_crtc_state(state, crtc);
 	struct intel_display *display = to_intel_display(crtc);
 
-	if (crtc_state->has_psr)
-		intel_de_write_dsb(display, dsb,
-				   CURSURFLIVE(display, crtc->pipe), 0);
+	if (!crtc_state->has_psr || DISPLAY_VER(display) >= 20)
+		return;
+
+	intel_de_write_dsb(display, dsb,
+			   CURSURFLIVE(display, crtc->pipe), 0);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 3eed37f271b0..9db6127abeaa 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -10,6 +10,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_psr.h"
 #include "intel_vrr.h"
 #include "intel_vrr_regs.h"
 
@@ -505,16 +506,23 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 trans_push;
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.enable && !intel_psr_use_trans_push(crtc_state))
 		return;
 
 	if (dsb)
 		intel_dsb_nonpost_start(dsb);
 
-	intel_de_write_dsb(display, dsb,
-			   TRANS_PUSH(display, cpu_transcoder),
-			   TRANS_PUSH_EN | TRANS_PUSH_SEND);
+	trans_push = TRANS_PUSH_SEND;
+
+	if (crtc_state->vrr.enable)
+		trans_push |= TRANS_PUSH_EN;
+	if (intel_psr_use_trans_push(crtc_state))
+		trans_push |= LNL_TRANS_PUSH_PSR_PR_EN;
+
+	intel_de_write_dsb(display, dsb, TRANS_PUSH(display, cpu_transcoder),
+			   trans_push);
 
 	if (dsb)
 		intel_dsb_nonpost_end(dsb);
@@ -609,9 +617,7 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 		       crtc_state->vrr.vmax - 1);
 	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
 		       crtc_state->vrr.flipline - 1);
-
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
-		       TRANS_PUSH_EN);
+	intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder), 0, TRANS_PUSH_EN);
 
 	if (!intel_vrr_always_use_vrr_tg(display)) {
 		intel_vrr_set_db_point_and_transmission_line(crtc_state);
@@ -627,6 +633,15 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	}
 }
 
+void intel_vrr_psr_frame_change_enable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	intel_de_rmw(display, TRANS_VRR_CTL(display, cpu_transcoder), 0,
+		     LNL_TRANS_PUSH_PSR_PR_EN);
+}
+
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_display *display = to_intel_display(old_crtc_state);
@@ -641,7 +656,8 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 		intel_de_wait_for_clear(display,
 					TRANS_VRR_STATUS(display, cpu_transcoder),
 					VRR_STATUS_VRR_EN_LIVE, 1000);
-		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
+		intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder),
+			     TRANS_PUSH_EN, 0);
 	}
 
 	intel_vrr_set_fixed_rr_timings(old_crtc_state);
@@ -664,8 +680,8 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
 		return;
 	}
 
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
-		       TRANS_PUSH_EN);
+	intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder),
+		     0, TRANS_PUSH_EN);
 
 	intel_vrr_set_db_point_and_transmission_line(crtc_state);
 
@@ -688,7 +704,8 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
 
 	intel_de_wait_for_clear(display, TRANS_VRR_STATUS(display, cpu_transcoder),
 				VRR_STATUS_VRR_EN_LIVE, 1000);
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
+	intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder),
+		     TRANS_PUSH_EN, 0);
 }
 
 bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 38bf9996b883..6f815fd05c36 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -30,6 +30,7 @@ void intel_vrr_check_push_sent(struct intel_dsb *dsb,
 			       const struct intel_crtc_state *crtc_state);
 bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
+void intel_vrr_psr_frame_change_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
 int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
-- 
2.43.0

