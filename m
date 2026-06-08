Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IcyAKKG7JmrcbwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 14:54:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D616565A8
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 14:54:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=d4DDy9tq;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D019610F366;
	Mon,  8 Jun 2026 12:54:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A874A10F362;
 Mon,  8 Jun 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780923294; x=1812459294;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mJZ7nsWWnEokAHYyxaXK7jBOONn0FERZ3+Y/uA1Q4F4=;
 b=d4DDy9tqvwSqJ4soRLMM+z8Mx1lr448r0cuTrwtbGD1w226NbfC7Qi9j
 urhYahpTFH4Q53FPC7YpVYzJcZmJAOOhVLU8F+Ijd/AgtJ5oVMXo6JPT1
 +5sYNtbbcR3pgJatNUu9FI/Czd9PfvQCjF4wKsdmLHTLQqXrrib33oyKn
 RM7bDOL+j2oMx2XhYe1TpUE9VBHNnzoWydAtxPJBEhKheJOPgjo+jcIen
 jDF9TDV1WgL3CFTHuhxDziSoxahOgIXHl0cdtwxrKm6IqZc1bpBN0u3+x
 V9NBUpxx7buAWmNRrb0rZg7KyoOgi2rgiCjF56yxm4YpSEIrROoCknzln A==;
X-CSE-ConnectionGUID: woojD1hfTGCPdyicyAkcQw==
X-CSE-MsgGUID: b8PENO5hQNq50uzXVBSiSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="85282748"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="85282748"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 05:54:54 -0700
X-CSE-ConnectionGUID: IrG25nzaRgOZT1bwlLYvGQ==
X-CSE-MsgGUID: tpMcruOZRDO8UoEK4eFFMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="242585943"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 05:54:52 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v2 2/2] drm/i915/dsb: Use safe window path when VRR TG is used
Date: Mon,  8 Jun 2026 18:07:10 +0530
Message-ID: <20260608123711.1121908-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260608123711.1121908-1-ankit.k.nautiyal@intel.com>
References: <20260608123711.1121908-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 49D616565A8

When the VRR timing generator is always used, the hardware behaves
as VRR-active regardless of crtc_state->vrr.enable.

The DSB paths that depend on the VRR safe window therefore need to follow
the VRR code paths in that case too:
- dsb_chicken(): program the SAFE_WINDOW chicken bits,
- intel_dsb_vblank_evade(): use vmin/vmax vblank starts for the
  wait window,
- intel_dsb_wait_for_delayed_vblank(): wait inside the vmin safe window
  before the scanline-based delayed vblank wait.

Introduce helper pre_commit_use_safe_window() and use it in the three sites

v2: Instead of modifying pre_commit_is_vrr_active() use a new helper and
use it only in the required places. (Ville).

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 07dd6318d9cc..d1441a86d1cc 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -210,6 +210,18 @@ static int dsb_scanline_to_hw(struct intel_atomic_state *state,
 	return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state)) % vtotal;
 }
 
+static
+bool pre_commit_use_safe_window(struct intel_atomic_state *state,
+				struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc->base.dev);
+
+	if (intel_vrr_always_use_vrr_tg(display))
+		return true;
+
+	return pre_commit_is_vrr_active(state, crtc);
+}
+
 /*
  * Bspec suggests that we should always set DSB_SKIP_WAITS_EN. We have approach
  * different from what is explained in Bspec on how flip is considered being
@@ -229,7 +241,7 @@ static u32 dsb_chicken(struct intel_atomic_state *state,
 	u32 chicken = intel_psr_use_trans_push(new_crtc_state) ?
 		DSB_SKIP_WAITS_EN : 0;
 
-	if (pre_commit_is_vrr_active(state, crtc))
+	if (pre_commit_use_safe_window(state, crtc))
 		chicken |= DSB_CTRL_WAIT_SAFE_WINDOW |
 			DSB_CTRL_NO_WAIT_VBLANK |
 			DSB_INST_WAIT_SAFE_WINDOW |
@@ -759,7 +771,7 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
 	if (crtc_state->has_psr)
 		intel_dsb_emit_wait_dsl(dsb, DSB_OPCODE_WAIT_DSL_OUT, 0, 0);
 
-	if (pre_commit_is_vrr_active(state, crtc) && crtc_state->vrr.dc_balance.enable) {
+	if (pre_commit_use_safe_window(state, crtc) && crtc_state->vrr.dc_balance.enable) {
 		int vblank_delay = crtc_state->set_context_latency;
 		int vmin_vblank_start, vmax_vblank_start;
 
@@ -788,7 +800,7 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
 		end = vmax_vblank_start;
 		start = end - vblank_delay - latency;
 		intel_dsb_wait_scanline_out(state, dsb, start, end);
-	} else if (pre_commit_is_vrr_active(state, crtc)) {
+	} else if (pre_commit_use_safe_window(state, crtc)) {
 		int vblank_delay = crtc_state->set_context_latency;
 
 		end = intel_vrr_vmin_vblank_start(crtc_state);
@@ -891,7 +903,7 @@ void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
 		&crtc_state->hw.adjusted_mode;
 	int wait_scanlines;
 
-	if (pre_commit_is_vrr_active(state, crtc)) {
+	if (pre_commit_use_safe_window(state, crtc)) {
 		/*
 		 * If the push happened before the vmin decision boundary
 		 * we don't know how far we are from the undelayed vblank.
-- 
2.45.2

