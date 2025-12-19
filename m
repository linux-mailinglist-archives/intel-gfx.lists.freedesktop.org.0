Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C828CCFF61
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Dec 2025 14:06:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC8D610EF93;
	Fri, 19 Dec 2025 13:06:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VwuC5xMg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 396F910EF8F;
 Fri, 19 Dec 2025 13:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766149564; x=1797685564;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/SvXpB0Tr/2pEPvwqBytCX1+lLGAteArtUVcXgBaUUk=;
 b=VwuC5xMgxSQ8LBH2NBwi2N3M4/TeoO4JifIrdWWjcpsnPsO7pt5y4PEL
 7/an3dPae8PbkP2eUW1UsiVDBJWnQrJ1HT44T32mclKfYNww+/HeFExrx
 zBGjQGuWXMRwsX9PQn1Kr4bAvvio8GnO+Ry98PhA3jflEvxVOaAb0m0Tq
 ZUd1ZD35a1x6+xmwkjHdKB/Mpv8D6OWe7ITCyaJmYud+7wu1umqKrZyST
 h0UlQVX0P1IxRAKHo90WxWogzLi4+UUE4MWjqnMljzolUFUjxHImQnqTG
 dHX+YopNtThu4xGRcc+/xXLAmbE0vBK11hYsLDyfeiivMe6lPi852hYmB Q==;
X-CSE-ConnectionGUID: QVHguFaGQKqPtvRs2jJn0g==
X-CSE-MsgGUID: vXHNkDJcTUG4NZUjzaSEUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="68086570"
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="68086570"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 05:06:04 -0800
X-CSE-ConnectionGUID: dWZJWtgcRS+0WxxsWxXuGA==
X-CSE-MsgGUID: CuZpRnDFS5m5kDJJVg8uEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="199337710"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.49])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 05:06:02 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 3/7] drm/i915/vrr: Prepare to Use TRANS_PUSH mechanism for
 PSR frame change
Date: Fri, 19 Dec 2025 15:05:33 +0200
Message-ID: <20251219130537.3024373-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251219130537.3024373-1-jouni.hogander@intel.com>
References: <20251219130537.3024373-1-jouni.hogander@intel.com>
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

v6:
  - add HAS_PSR_FRAME_CHANGE macro
  - use TRANS_PUSH in instead of TRAN_VRR_CTL
v5: use intel_psr_use_trans_push for intel_vrr_psr_frame_change_enable
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
 drivers/gpu/drm/i915/display/intel_crtc.c |  4 +++-
 drivers/gpu/drm/i915/display/intel_psr.c  | 13 +++++++---
 drivers/gpu/drm/i915/display/intel_vrr.c  | 29 ++++++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_vrr.h  |  1 +
 4 files changed, 37 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 778ebc5095c3..ed3c6c4ce025 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -747,7 +747,9 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
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
index 170d65999ccd..4336ba188aa7 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -207,6 +207,8 @@
 #define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
 			   (intel_dp)->psr.source_support)
 
+#define HAS_PSR_FRAME_CHANGE(display)	(DISPLAY_VER(display) >= 20)
+
 bool intel_encoder_can_psr(struct intel_encoder *encoder)
 {
 	if (intel_encoder_is_dp(encoder) || encoder->type == INTEL_OUTPUT_DP_MST)
@@ -2120,6 +2122,9 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 		intel_dmc_block_pkgc(display, intel_dp->psr.pipe, true);
 
 	intel_alpm_configure(intel_dp, crtc_state);
+
+	if (intel_psr_use_trans_push(crtc_state))
+		intel_vrr_psr_frame_change_enable(crtc_state);
 }
 
 static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
@@ -2511,9 +2516,11 @@ void intel_psr_trigger_frame_change_event(struct intel_dsb *dsb,
 		intel_pre_commit_crtc_state(state, crtc);
 	struct intel_display *display = to_intel_display(crtc);
 
-	if (crtc_state->has_psr)
-		intel_de_write_dsb(display, dsb,
-				   CURSURFLIVE(display, crtc->pipe), 0);
+	if (!crtc_state->has_psr || HAS_PSR_FRAME_CHANGE(display))
+		return;
+
+	intel_de_write_dsb(display, dsb,
+			   CURSURFLIVE(display, crtc->pipe), 0);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index b92c42fde937..aaf0f6cf3cfe 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -584,16 +584,23 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
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
@@ -693,7 +700,7 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 vrr_ctl;
 
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), TRANS_PUSH_EN);
+	intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder), 0, TRANS_PUSH_EN);
 
 	vrr_ctl = VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
 
@@ -721,7 +728,8 @@ static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
 				       VRR_STATUS_VRR_EN_LIVE, 1000))
 		drm_err(display->drm, "Timed out waiting for VRR live status to clear\n");
 
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
+	intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder),
+		     TRANS_PUSH_EN, 0);
 }
 
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
@@ -737,6 +745,15 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 		intel_vrr_tg_enable(crtc_state, crtc_state->cmrr.enable);
 }
 
+void intel_vrr_psr_frame_change_enable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder), 0,
+		     LNL_TRANS_PUSH_PSR_PR_EN);
+}
+
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_display *display = to_intel_display(old_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index bc9044621635..4dc5bb3f6f28 100644
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

