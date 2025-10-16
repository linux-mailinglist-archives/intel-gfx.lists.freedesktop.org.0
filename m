Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F11D4BE1A4E
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 08:07:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E768B10E2D3;
	Thu, 16 Oct 2025 06:07:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YntXaBCg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4505410E2D3;
 Thu, 16 Oct 2025 06:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760594855; x=1792130855;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SO5xhKUdHPgjNrlXMqRjWZV/VaishcUArOFUmlO9J8E=;
 b=YntXaBCg9wLwC/PQhubIAFSGHOs7qwe7n0+80trxK2Gyb8OLDdciITRU
 glPOaTKwMzKDGw/W5LWixiyungz0cQ5SAbKS+sNJULCWBPcma1spUddMD
 iX78boeFj96HWJhM4+pPUs9XBda1D0NbTGf6fOmcSe2f1x66gsvYYw7iA
 VTaQY2ynLllfuOvv7AVKfVgcHPlX8cHc0vwU59FrZBK6ZtUm5Ke693+R1
 q+yEJ6jK5QC5757/LxOMdp6gZC4nICmvCdPXemSzwuPdWG6CEm7r/qWzW
 v+4PIjanxSso2bgWDsC6O+hkHdXPs7RqLRjGgUeqW4rdEinofQPxyfDn2 w==;
X-CSE-ConnectionGUID: jjI5YoruSyioNyQ2mg0EyA==
X-CSE-MsgGUID: rZQ/XvdKRjygCC5qcyzFmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="74120426"
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="74120426"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 23:07:34 -0700
X-CSE-ConnectionGUID: j8y/wWQASke7lAN5ikJ9gw==
X-CSE-MsgGUID: B/wdTIR4Ty6tLsZOQTotcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="187650828"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 23:07:32 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 06/10] drm/i915/psr: Introduce helper
 intel_psr_set_non_psr_pipes()
Date: Thu, 16 Oct 2025 11:24:10 +0530
Message-ID: <20251016055415.2101347-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251016055415.2101347-1-ankit.k.nautiyal@intel.com>
References: <20251016055415.2101347-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Add a function to set non-psr pipes in crtc_state based on psr features.
This will help to move this part later where we re-evaluate psr features
and update the non-psr pipes.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 49 ++++++++++++++----------
 1 file changed, 29 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1d06011a97ce..e97dcfa7673c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1711,15 +1711,40 @@ static bool intel_psr_needs_wa_18037818876(struct intel_dp *intel_dp,
 		!crtc_state->has_sel_update);
 }
 
+static
+void intel_psr_set_non_psr_pipes(struct intel_dp *intel_dp,
+				 struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
+	struct intel_crtc *crtc;
+	u8 active_pipes = 0;
+
+	/* Wa_16025596647 */
+	if (DISPLAY_VER(display) != 20 &&
+	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
+		return;
+
+	/* Not needed by Panel Replay  */
+	if (crtc_state->has_panel_replay)
+		return;
+
+	/* We ignore possible secondary PSR/Panel Replay capable eDP */
+	for_each_intel_crtc(display->drm, crtc)
+		active_pipes |= crtc->active ? BIT(crtc->pipe) : 0;
+
+	active_pipes = intel_calc_active_pipes(state, active_pipes);
+
+	crtc_state->active_non_psr_pipes = active_pipes &
+		~BIT(to_intel_crtc(crtc_state->uapi.crtc)->pipe);
+}
+
 void intel_psr_compute_config(struct intel_dp *intel_dp,
 			      struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
-	struct intel_crtc *crtc;
-	u8 active_pipes = 0;
 
 	if (!psr_global_enabled(intel_dp)) {
 		drm_dbg_kms(display->drm, "PSR disabled by flag\n");
@@ -1768,23 +1793,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 			    "PSR disabled to workaround PSR FSM hang issue\n");
 	}
 
-	/* Rest is for Wa_16025596647 */
-	if (DISPLAY_VER(display) != 20 &&
-	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
-		return;
-
-	/* Not needed by Panel Replay  */
-	if (crtc_state->has_panel_replay)
-		return;
-
-	/* We ignore possible secondary PSR/Panel Replay capable eDP */
-	for_each_intel_crtc(display->drm, crtc)
-		active_pipes |= crtc->active ? BIT(crtc->pipe) : 0;
-
-	active_pipes = intel_calc_active_pipes(state, active_pipes);
-
-	crtc_state->active_non_psr_pipes = active_pipes &
-		~BIT(to_intel_crtc(crtc_state->uapi.crtc)->pipe);
+	intel_psr_set_non_psr_pipes(intel_dp, crtc_state);
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
-- 
2.45.2

