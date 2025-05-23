Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC92DAC21C1
	for <lists+intel-gfx@lfdr.de>; Fri, 23 May 2025 13:06:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6652610E7DA;
	Fri, 23 May 2025 11:06:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="knycu6xI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AD5110E2BF;
 Fri, 23 May 2025 11:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747998382; x=1779534382;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h6AgsE6jp69WmE4y8/6tc5BlXEji3pP7GQdPywbfqWY=;
 b=knycu6xIuWd/OBW/gheKBYFDzfeTC1TaqRZpke7ZA6TCufMc1fD5wvrq
 JHYHHynzH2A5yT/WuCXHICt5UUM6TCkXvPCvSaxjFlzuPZOJ+Onl34rA/
 /aKPFWG6A7pA1gl40hD/7Zm0OZjlceqDExlJbGPPiDtDzhhgRVST1GeiI
 Lss8xt5yYULKvVzzy1Hh9lev2D0NZQhF4PYpX5TnTJQ+S2MEKEQZzjp1S
 auPpB8LniAGqyJWM/GA4mXhOl+CZSwldqlTEQoYShV6v8O/P+vu/eZijj
 CErS9KdbmjJL87gEXRtxSLtM6oYTpFXmFqPFK24GPZJYQkcCL6xJHwHfC w==;
X-CSE-ConnectionGUID: nKZY23wOTLuJ2P9Ys1rxvQ==
X-CSE-MsgGUID: dhoa10DUT/aZDUl/ULsxfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="67463927"
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="67463927"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 04:06:21 -0700
X-CSE-ConnectionGUID: wz6njkGrRImIfj0nPXT73Q==
X-CSE-MsgGUID: beediFa4Q0u3KIKQVfbKyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="164341816"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.108])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 04:06:19 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 4/4] drm/i915/vrr: Use TRANS_PUSH mechanism for PSR frame
 change
Date: Fri, 23 May 2025 14:05:55 +0300
Message-ID: <20250523110555.3494901-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250523110555.3494901-1-jouni.hogander@intel.com>
References: <20250523110555.3494901-1-jouni.hogander@intel.com>
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

On Lunarlake and onwards it is possible to generate "PSR frame change"
event using TRANS_PUSH mechanism. Implement function to enable this and
take PSR into account in intel_vrr_send_push. Also use
intel_vrr_send_push in intel_psr_trigger_frame_change_event.

v3:
  - use rmw when enabling/disabling
  - keep LNL_TRANS_PUSH_PSR_PR_EN set always on LunarLake and onwards
v2: use intel_vrr_trans_push_enabled_set_clear instead of rmw

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 10 +++++++
 drivers/gpu/drm/i915/display/intel_vrr.c | 33 +++++++++++++++++-------
 drivers/gpu/drm/i915/display/intel_vrr.h |  1 +
 3 files changed, 35 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 3d637d92ca89..5ba46f808c1a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1966,6 +1966,9 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 		intel_dmc_block_pkgc(display, intel_dp->psr.pipe, true);
 
 	intel_alpm_configure(intel_dp, crtc_state);
+
+	if (DISPLAY_VER(display) >= 20)
+		intel_vrr_psr_frame_change_enable(crtc_state);
 }
 
 static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
@@ -2350,11 +2353,18 @@ void intel_psr_trigger_frame_change_event(struct intel_dsb *dsb,
 {
 	const struct intel_crtc_state *crtc_state =
 		intel_pre_commit_crtc_state(state, crtc);
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_display *display = to_intel_display(crtc);
 
 	if (crtc_state->has_psr)
+		return;
+
+	if (DISPLAY_VER(display) < 20)
 		intel_de_write_dsb(display, dsb,
 				   CURSURFLIVE(display, crtc->pipe), 0);
+	else
+		intel_vrr_send_push(dsb, new_crtc_state);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index c55b8144e234..4120e58de35a 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -505,16 +505,22 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 trans_push;
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.enable && (DISPLAY_VER(display) < 20 ||
+					!crtc_state->has_psr))
 		return;
 
 	if (dsb)
 		intel_dsb_nonpost_start(dsb);
 
-	intel_de_write_dsb(display, dsb,
-			   TRANS_PUSH(display, cpu_transcoder),
-			   TRANS_PUSH_EN | TRANS_PUSH_SEND);
+	trans_push = TRANS_PUSH_EN | TRANS_PUSH_SEND;
+
+	if (DISPLAY_VER(display) >= 20 && crtc_state->has_psr)
+		trans_push |= LNL_TRANS_PUSH_PSR_PR_EN;
+
+	intel_de_write_dsb(display, dsb, TRANS_PUSH(display, cpu_transcoder),
+			   trans_push);
 
 	if (dsb)
 		intel_dsb_nonpost_end(dsb);
@@ -559,7 +565,8 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.enable && (DISPLAY_VER(display) < 20 ||
+					!crtc_state->has_psr))
 		return false;
 
 	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
@@ -609,9 +616,7 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 		       crtc_state->vrr.vmax - 1);
 	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
 		       crtc_state->vrr.flipline - 1);
-
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
-		       TRANS_PUSH_EN);
+	intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder), 0, TRANS_PUSH_EN);
 
 	if (!intel_vrr_always_use_vrr_tg(display)) {
 		intel_vrr_set_db_point_and_transmission_line(crtc_state);
@@ -627,6 +632,15 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
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
@@ -641,7 +655,8 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 		intel_de_wait_for_clear(display,
 					TRANS_VRR_STATUS(display, cpu_transcoder),
 					VRR_STATUS_VRR_EN_LIVE, 1000);
-		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
+		intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder),
+			     TRANS_PUSH_EN, 0);
 	}
 
 	intel_vrr_set_fixed_rr_timings(old_crtc_state);
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

