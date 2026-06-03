Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fjcxACaOIGoX5AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 22:27:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A4963B1CE
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 22:27:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="IK/tERnh";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B3C511236F;
	Wed,  3 Jun 2026 20:27:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B4BD11236E;
 Wed,  3 Jun 2026 20:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780518435; x=1812054435;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8czfH8zehHo1GlxgKwWWqqIwpsgf8mF60fkkvrD4/Xs=;
 b=IK/tERnhBcHsOy5hReT6rr6Gxb2YCZW/h4JqLF6Dsr/dWvmVy/bQkkp7
 WveZ1DpwKU9lhl/6dH9TCO8E3YZEMvARAukpwNxpNcH+yXOJ8eShd8me7
 yMggPH4zmM/ZuPnYb3nbXyWG1/zGlDtAXe7geQKBQhEJHiEj+7Ssi+Xd6
 2bZtde4oLo36p9eV3UGpRmEBdmWIbknKZ3GMzChj/HDqe74Rk7HobOi9s
 5tiF9Xn09sAEBKD8l/s2JefIq2didLoawyhKtd+kk1adN2TXPq7ag2b5X
 YyZT/lqKBG8yOLQgqDlnVe2ZAMJ/UW2Z+fdmUpgd0FEzL2i3T6Ew+9S3E w==;
X-CSE-ConnectionGUID: lRTWaRgFR3Ga2uAulSsCoQ==
X-CSE-MsgGUID: Rq/3MSWdTlqzS1WJlkOrWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="81337477"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="81337477"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 13:27:14 -0700
X-CSE-ConnectionGUID: MTxdKqkGStO+UxQsf6h3ng==
X-CSE-MsgGUID: gVMTAzvRTgmyARknhjQqrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="244424970"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa009.jf.intel.com with ESMTP; 03 Jun 2026 13:27:12 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v8 18/20] drm/i915/cmtg: Add trigger to enable/disable cmtg
Date: Thu,  4 Jun 2026 01:24:14 +0530
Message-Id: <20260603195416.91639-19-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260603195416.91639-1-animesh.manna@intel.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 63A4963B1CE

Enable CMTG with fixed refresh rate mode and with dynamic
dc state enabled.

Disable CMTG with transcoder disable or if there is a transition
to vrr mode from fixed refresh rate mode.

v2:
- Move the enabled flag update to avoid issue in the disable timeout
path. [Uma]

v3:
- Introduce intel_cmtg_program() rather calling multiple cmtg
functions. [Dibin]
- Set clock select before cmtg disable as can lost during dc6
entry. [Dibin]
- Disable cmtg interrupt in crtc-disable(). [Dibin]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c    | 25 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_cmtg.h    |  4 +---
 drivers/gpu/drm/i915/display/intel_display.c | 24 +++++++++++++++++++
 3 files changed, 38 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 1d63b612c44b..b7f4be33ce2e 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -323,15 +323,12 @@ void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, PIPE_LINK_N1(display, cmtg_transcoder), m_n->link_n);
 }
 
-void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state)
+static void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 cmtg_ctl;
 
-	if (!intel_cmtg_is_allowed(crtc_state))
-		return;
-
 	cmtg_ctl = CMTG_SYNC_TO_PORT | CMTG_ENABLE;
 
 	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder), 0, cmtg_ctl);
@@ -342,15 +339,12 @@ void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state)
 	}
 }
 
-void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
+static void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!intel_cmtg_is_allowed(crtc_state))
-		return;
-
 	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, cpu_transcoder), 0, CMTG_SECONDARY_MODE);
 	intel_de_rmw(display, CMTG_SCANLINE_GB1(cpu_transcoder), 0, CMTG_HW_GB_ENABLE);
 	crtc->cmtg.enabled = true;
@@ -406,7 +400,7 @@ void intel_cmtg_disable_interrupt(const struct intel_crtc_state *crtc_state)
 #define DC3CO_ENTRY_LATENCY	55
 #define DC3CO_EXIT_LATENCY	40
 
-void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state)
+static void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
@@ -415,9 +409,6 @@ void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state)
 	u32 line_time_us = 75;
 	u32 val;
 
-	if (!intel_cmtg_is_allowed(crtc_state))
-		return;
-
 	if (crtc_state->linetime)
 		line_time_us = DIV_ROUND_UP(crtc_state->linetime, 8);
 
@@ -433,3 +424,13 @@ void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state)
 
 	intel_de_write(display, CMTG_HW_GB(cpu_transcoder), val);
 }
+
+void intel_cmtg_program(const struct intel_crtc_state *crtc_state)
+{
+	if (!intel_cmtg_is_allowed(crtc_state))
+		return;
+
+	intel_cmtg_enable_sync(crtc_state);
+	intel_cmtg_set_hwgb(crtc_state);
+	intel_cmtg_enable_ddi(crtc_state);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index 2c801a74acf9..51fc3f5a89f4 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -12,8 +12,6 @@ struct intel_display;
 struct intel_crtc_state;
 
 void intel_cmtg_disable(const struct intel_crtc_state *crtc_state);
-void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state);
-void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state);
@@ -23,6 +21,6 @@ void intel_cmtg_sanitize(struct intel_display *display);
 bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_enable_interrupt(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_disable_interrupt(const struct intel_crtc_state *crtc_state);
-void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state);
+void intel_cmtg_program(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_CMTG_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e4763ac81c39..e751a4c37842 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1790,6 +1790,11 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc *pipe_crtc;
 
+	if (crtc->cmtg.enabled) {
+		intel_cmtg_set_clk_select(old_crtc_state);
+		intel_cmtg_disable(old_crtc_state);
+		intel_cmtg_disable_interrupt(old_crtc_state);
+	}
 	/*
 	 * FIXME collapse everything to one hook.
 	 * Need care with mst->ddi interactions.
@@ -6878,6 +6883,12 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	if (intel_crtc_needs_fastset(new_crtc_state) &&
 	    old_crtc_state->inherited)
 		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
+
+	if (crtc->cmtg.enabled && (intel_crtc_vrr_enabling(state, crtc))) {
+		intel_cmtg_set_clk_select(new_crtc_state);
+		intel_cmtg_disable(new_crtc_state);
+		intel_cmtg_disable_interrupt(new_crtc_state);
+	}
 }
 
 static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
@@ -7547,6 +7558,19 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	/* FIXME probably need to sequence this properly */
 	intel_program_dpkgc_latency(state);
 
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
+		bool modeset = intel_crtc_needs_modeset(new_crtc_state);
+
+		/*
+		 * TODO: CMTG needs to be restored on DC6 exit and DC3co entry condition
+		 * need to be checked before calling CMTG functions.
+		 */
+		if (modeset && new_crtc_state->hw.active && !crtc->cmtg.enabled) {
+			intel_cmtg_program(new_crtc_state);
+			intel_cmtg_enable_interrupt(new_crtc_state);
+		}
+	}
+
 	intel_wait_for_vblank_workers(state);
 
 	/* FIXME: We should call drm_atomic_helper_commit_hw_done() here
-- 
2.29.0

