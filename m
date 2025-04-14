Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E82E0A87CD8
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 12:05:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B19110E541;
	Mon, 14 Apr 2025 10:05:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FRDqghnJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6552210E537;
 Mon, 14 Apr 2025 10:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744625125; x=1776161125;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M09xs6wnCEoQdfLQ8UZ9t1qFZvh/hqSvB8fHXzjkGlY=;
 b=FRDqghnJRY9ZV7/7IrCv8ciw4DcVwJHTwTI0Ize3FS2agchPfd7tbWNS
 LJsZUqGJoFmNAaKnQ93l6rGSN4aa0mwG7nUUyB5bhjjgsDJKok/tvbYkv
 Q2YJIIiIu/+Lg40LCbepjpz9xcOASPd/FmTDPeSLIKP/a+rtGJQrMRb82
 7WM7Ls8G7B1/OCwM5VK2DnAxt/lZMKRLIX++oIAV4UkUS4JoO5bYlGpQO
 cXmgeRVQGAL+GBR7JknsDK8u1tus/Jy6pae3WXSpPxluk8jhwDZsA+ZGI
 oFQ0FaTTQrP+Le+noSsD6uj0CLtGqLTk6LZVzN8KqoIWDjDfPVlaTNt8b Q==;
X-CSE-ConnectionGUID: wOr0H9T1RQKadQ5I4DWeUg==
X-CSE-MsgGUID: Macm4rEaSG2Py8iTZxKXBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="48789112"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="48789112"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:25 -0700
X-CSE-ConnectionGUID: g7n60gyARcCy24HWmgkZ4g==
X-CSE-MsgGUID: bZSUQPlUT+S6up/ZcWQmuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="129743186"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.194])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:24 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 02/13] drm/i915/psr: Store enabled non-psr pipes into
 intel_crtc_state
Date: Mon, 14 Apr 2025 13:04:57 +0300
Message-ID: <20250414100508.1208774-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250414100508.1208774-1-jouni.hogander@intel.com>
References: <20250414100508.1208774-1-jouni.hogander@intel.com>
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

To implement workaround for underrun on idle PSR HW issue (Wa_16025596647)
we need to know enabled. Figure out which non-PSR pipes we will have active
and store it into intel_crtc_state->active_non_psr_pipes. This is currently
assuming only one eDP on a time. I.e. possible secondary eDP with PSR
capable panel is not considered.

Bspec: 74151

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  3 +++
 drivers/gpu/drm/i915/display/intel_psr.c      | 23 +++++++++++++++++++
 2 files changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 94468a9d2e0d..0e2945aa6057 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1114,6 +1114,7 @@ struct intel_crtc_state {
 	bool wm_level_disabled;
 	u32 dc3co_exitline;
 	u16 su_y_granularity;
+	u8 active_non_psr_pipes;
 
 	/*
 	 * Frequency the dpll for the port should run at. Differs from the
@@ -1650,6 +1651,8 @@ struct intel_psr {
 	u8 entry_setup_frames;
 
 	bool link_ok;
+
+	u8 active_non_psr_pipes;
 };
 
 struct intel_dp {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index eef48c014112..20d53292c3b3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1649,6 +1649,9 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
+	struct intel_crtc *crtc;
+	u8 active_pipes = 0;
 
 	if (!psr_global_enabled(intel_dp)) {
 		drm_dbg_kms(display->drm, "PSR disabled by flag\n");
@@ -1702,6 +1705,24 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		drm_dbg_kms(display->drm,
 			    "PSR disabled to workaround PSR FSM hang issue\n");
 	}
+
+	/* Rest is for Wa_16025596647 */
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
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
@@ -1985,6 +2006,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
 	intel_dp->psr.req_psr2_sdp_prior_scanline =
 		crtc_state->req_psr2_sdp_prior_scanline;
+	intel_dp->psr.active_non_psr_pipes = crtc_state->active_non_psr_pipes;
 
 	if (!psr_interrupt_error_check(intel_dp))
 		return;
@@ -2159,6 +2181,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	intel_dp->psr.psr2_sel_fetch_enabled = false;
 	intel_dp->psr.su_region_et_enabled = false;
 	intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
+	intel_dp->psr.active_non_psr_pipes = 0;
 }
 
 /**
-- 
2.43.0

