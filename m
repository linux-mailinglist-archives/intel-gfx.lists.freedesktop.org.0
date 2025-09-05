Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBF2B44F65
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 09:27:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F311210EB33;
	Fri,  5 Sep 2025 07:27:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RySbU/Lj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E432110EB35;
 Fri,  5 Sep 2025 07:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757057247; x=1788593247;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d3pq+zWbRvj5q6dyabqfgl5HQ+KF5Fj0iGNKUsPFHdY=;
 b=RySbU/LjsFZwnOcYaBLPVbINCBt2Ay9ZR70RXjMO1FOEHb4Nkvk+Kmwb
 8hrGCeidAJ+iQe7H300V2NLFZj6M24t1Tqb/6sIaZ0SGEpOGcOd9GpsfW
 WeDuvWZTZMaUUzkcEFnVKyoEjWiJKkLzEirrTTrLXFRyakSfoz87YAHMj
 T4+LsUQuB6Srkqgsh42cBAcnGbByIXc0ISkV4nYgO31iI0jCL2BzpBDQY
 nLi/Yh3KFRYMktBcVKoyETuUJo6fE4lYjQhSQSSIz/1Pm1kgPqMomapxM
 xHLYgJgh13dQwPA92m24vupVz4ZDIfdvqXYCFXaxvs6ler//WFYXyXAYq A==;
X-CSE-ConnectionGUID: xx+U6latRzKLOgM1FquBkA==
X-CSE-MsgGUID: hO38c8zXSviUwGnrA/pZig==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="63047065"
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="63047065"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 00:27:27 -0700
X-CSE-ConnectionGUID: SX8b321zS9yaoG72oINmcg==
X-CSE-MsgGUID: nluFAECiQgSVtypBIdWoLA==
X-ExtLoop1: 1
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.5])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 00:27:25 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v3 3/4] drm/i915/psr: New interface adding PSR idle poll into
 dsb commit
Date: Fri,  5 Sep 2025 10:27:07 +0300
Message-ID: <20250905072708.2659411-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250905072708.2659411-1-jouni.hogander@intel.com>
References: <20250905072708.2659411-1-jouni.hogander@intel.com>
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

We are currently observing crc failures after we started using dsb for PSR
updates as well. This seems to happen because PSR HW is still sending
couple of updates using old framebuffers on wake-up.

This patch is preparing to fix that by adding interface which can be used
to add poll ensuring PSR HW is idle into dsb commit.

v3: add intel_dsb as a parameter to intel_psr_wait_for_idle_dsb
v2: add pass crtc_state->dsb_commit as parameter

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 39 +++++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_psr.h |  2 ++
 2 files changed, 37 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index eae1eedbbb26..1aa4a127afaf 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -42,6 +42,7 @@
 #include "intel_dmc.h"
 #include "intel_dp.h"
 #include "intel_dp_aux.h"
+#include "intel_dsb.h"
 #include "intel_frontbuffer.h"
 #include "intel_hdmi.h"
 #include "intel_psr.h"
@@ -3006,7 +3007,8 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 #define PSR_IDLE_TIMEOUT_MS 50
 
 static int
-_psr2_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state)
+_psr2_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state,
+				   struct intel_dsb *dsb)
 {
 	struct intel_display *display = to_intel_display(new_crtc_state);
 	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
@@ -3016,6 +3018,13 @@ _psr2_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state
 	 * As all higher states has bit 4 of PSR2 state set we can just wait for
 	 * EDP_PSR2_STATUS_STATE_DEEP_SLEEP to be cleared.
 	 */
+	if (dsb) {
+		intel_dsb_poll(dsb, EDP_PSR2_STATUS(display, cpu_transcoder),
+			       EDP_PSR2_STATUS_STATE_DEEP_SLEEP, 0, 200,
+			       PSR_IDLE_TIMEOUT_MS * 1000 / 200);
+		return true;
+	}
+
 	return intel_de_wait_for_clear(display,
 				       EDP_PSR2_STATUS(display, cpu_transcoder),
 				       EDP_PSR2_STATUS_STATE_DEEP_SLEEP,
@@ -3023,11 +3032,19 @@ _psr2_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state
 }
 
 static int
-_psr1_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state)
+_psr1_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state,
+				   struct intel_dsb *dsb)
 {
 	struct intel_display *display = to_intel_display(new_crtc_state);
 	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 
+	if (dsb) {
+		intel_dsb_poll(dsb, psr_status_reg(display, cpu_transcoder),
+			       EDP_PSR_STATUS_STATE_MASK, 0, 200,
+			       PSR_IDLE_TIMEOUT_MS * 1000 / 200);
+		return true;
+	}
+
 	return intel_de_wait_for_clear(display,
 				       psr_status_reg(display, cpu_transcoder),
 				       EDP_PSR_STATUS_STATE_MASK,
@@ -3060,9 +3077,11 @@ void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_stat
 			continue;
 
 		if (intel_dp->psr.sel_update_enabled)
-			ret = _psr2_ready_for_pipe_update_locked(new_crtc_state);
+			ret = _psr2_ready_for_pipe_update_locked(new_crtc_state,
+								 NULL);
 		else
-			ret = _psr1_ready_for_pipe_update_locked(new_crtc_state);
+			ret = _psr1_ready_for_pipe_update_locked(new_crtc_state,
+								 NULL);
 
 		if (ret)
 			drm_err(display->drm,
@@ -3070,6 +3089,18 @@ void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_stat
 	}
 }
 
+void intel_psr_wait_for_idle_dsb(struct intel_dsb *dsb,
+				 const struct intel_crtc_state *new_crtc_state)
+{
+	if (!new_crtc_state->has_psr || new_crtc_state->has_panel_replay)
+		return;
+
+	if (new_crtc_state->has_sel_update)
+		_psr2_ready_for_pipe_update_locked(new_crtc_state, dsb);
+	else
+		_psr1_ready_for_pipe_update_locked(new_crtc_state, dsb);
+}
+
 static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 9b061a22361f..077751aa599f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -52,6 +52,8 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir);
 void intel_psr_short_pulse(struct intel_dp *intel_dp);
 void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_state);
+void intel_psr_wait_for_idle_dsb(struct intel_dsb *dsb,
+				 const struct intel_crtc_state *new_crtc_state);
 bool intel_psr_enabled(struct intel_dp *intel_dp);
 int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
-- 
2.43.0

