Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CN8nAMepFWqJXAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 16:10:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3475D723B
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 16:10:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E076510E661;
	Tue, 26 May 2026 14:10:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m7CryknC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0CC210E657;
 Tue, 26 May 2026 14:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779804612; x=1811340612;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bVahi44bKRBnd0N5PODDQ4P8+pqgdG62+bHquSsngtE=;
 b=m7CryknCPJxjQEsGeUxr6ZjCashU6pojCRZiJBPb7WtuG4PSQsVLHrFE
 +VF6BOjnZZSDRIHURJJXRiQwjc8830wAPRRDXO2pf2bpf3IOzetzXREIv
 fKYDp1BcHLXtHF/zQ0jarZRG14zrx8TjbpBTfEZAKtpyGV12WzuKlJBrl
 1dw82Sl0iqJaFS3P7X+FVKalvZOR9q8yj2abZcoG059bPq0U/4KB4Cew6
 GughdfZfxIf8w9mtFvkAxeKqzOEoYNybBjvKZ7r7MEJDcfmXXl8TTBRTk
 RsZ9VXTAXNOECKJktS+4haDkZ1+A7ndYFMtNqNaZmJ6nFvcbrnDTS315c g==;
X-CSE-ConnectionGUID: bdfxW471RrG7MIrTPh9Now==
X-CSE-MsgGUID: rkQ0JSV9SXefnfrb0qjFig==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="98041773"
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="98041773"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 07:10:11 -0700
X-CSE-ConnectionGUID: pz4cnzMHR+OAtyxhOeEXpw==
X-CSE-MsgGUID: pjHpsGVsRDaSTIzsnoE2iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="235578216"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa009.fm.intel.com with ESMTP; 26 May 2026 07:10:08 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v7 13/15] drm/i915/cmtg: Add trigger to enable/disable cmtg
Date: Tue, 26 May 2026 19:08:09 +0530
Message-Id: <20260526133811.2621675-14-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260526133811.2621675-1-animesh.manna@intel.com>
References: <20260526133811.2621675-1-animesh.manna@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 6A3475D723B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable CMTG with fixed refresh rate mode and with dynamic
dc state enabled.

Disable CMTG with transcoder disable or if there is a transition
to vrr mode from fixed refresh rate mode.

v2:
- Move the enabled flag update to avoid issue in the disable timeout
path. [Uma]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c     |  4 ++++
 drivers/gpu/drm/i915/display/intel_display.c  | 24 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  4 ++++
 3 files changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index a0413013ec43..d808c62e14b1 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -173,6 +173,7 @@ static void intel_cmtg_disable_all(struct intel_display *display,
 void intel_cmtg_disable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	enum transcoder cmtg_transcoder = to_cmtg_transcoder(crtc_state->cpu_transcoder);
 	u32 clk_sel_clr = 0;
@@ -180,6 +181,7 @@ void intel_cmtg_disable(const struct intel_crtc_state *crtc_state)
 	if (!intel_cmtg_is_allowed(crtc_state))
 		return;
 
+	crtc->cmtg.enabled = false;
 	intel_de_rmw(display, TRANS_VRR_CTL(display, cmtg_transcoder),
 		     VRR_CTL_VRR_ENABLE | VRR_CTL_FLIP_LINE_EN, 0);
 
@@ -395,6 +397,7 @@ void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state)
 void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (!intel_cmtg_is_allowed(crtc_state))
@@ -403,6 +406,7 @@ void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
 	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, cpu_transcoder), 0, CMTG_SECONDARY_MODE);
 	intel_de_rmw(display, CMTG_SCANLINE_GB1(cpu_transcoder), 0, CMTG_HW_GB_ENABLE);
 
+	crtc->cmtg.enabled = true;
 	drm_dbg_kms(display->drm, "CMTG: %s enabled\n", transcoder_name(cpu_transcoder));
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 354eca79bac0..36ff17b88be7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1771,6 +1771,9 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	struct intel_crtc *pipe_crtc;
 	int i;
 
+	if (crtc->cmtg.enabled)
+		intel_cmtg_disable(old_crtc_state);
+
 	/*
 	 * FIXME collapse everything to one hook.
 	 * Need care with mst->ddi interactions.
@@ -6868,6 +6871,12 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	if (intel_crtc_needs_fastset(new_crtc_state) &&
 	    old_crtc_state->inherited)
 		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
+
+	if (crtc->cmtg.enabled && (intel_crtc_vrr_enabling(state, crtc) ||
+				   !intel_cmtg_is_allowed(new_crtc_state))) {
+		intel_cmtg_disable(new_crtc_state);
+		intel_cmtg_disable_interrupt(new_crtc_state);
+	}
 }
 
 static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
@@ -7545,6 +7554,21 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	/* FIXME probably need to sequence this properly */
 	intel_program_dpkgc_latency(state);
 
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		bool modeset = intel_crtc_needs_modeset(new_crtc_state);
+
+		/*
+		 * TODO: CMTG needs to be restored on DC6 exit and DC3co entry condition
+		 * need to be checked before calling CMTG functions.
+		 */
+		if (modeset && new_crtc_state->hw.active && !crtc->cmtg.enabled) {
+			intel_cmtg_enable_sync(new_crtc_state);
+			intel_cmtg_set_hwgb(new_crtc_state);
+			intel_cmtg_enable_ddi(new_crtc_state);
+			intel_cmtg_enable_interrupt(new_crtc_state);
+		}
+	}
+
 	intel_wait_for_vblank_workers(state);
 
 	/* FIXME: We should call drm_atomic_helper_commit_hw_done() here
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 1c0c32c4e43a..74c719b52759 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1573,6 +1573,10 @@ struct intel_crtc {
 #endif
 
 	bool vblank_psr_notify;
+
+	struct {
+		bool enabled;
+	} cmtg;
 };
 
 struct intel_plane_error {
-- 
2.29.0

