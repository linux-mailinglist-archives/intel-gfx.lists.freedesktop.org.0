Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id B9mHGzgBKGpO7AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:04:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9CA65FCF6
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:04:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ZZgH9SX+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8313C10E2F8;
	Tue,  9 Jun 2026 12:04:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90DDC10E2F8;
 Tue,  9 Jun 2026 12:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781006644; x=1812542644;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=GAOP/A4qOwUyUFA/Cxnn3gBJwtkUx/bFPf2dPNl8vGM=;
 b=ZZgH9SX+GtHf7oEjetdZkaAL0R7rhzT20yow5TDvhX4O+uyJnjzlwQoM
 0hX6Y0ZOt+tqm/xc6RTOHYbwmApolsTrlLset/0nYiUbSDi/eoNnHiUky
 OZ+2QGnWItcgztXIMy/+VfRsORFTf7z+oQmWYWtHhKu3WPIlsDzxdKNV5
 tIvKMf+gsEMYYjbL8DZ8/L4vmducNpxhfvyDswziJZKUpCOGKVMcIgoT0
 enek0NreRTvBHCzwhJ0XIeVppT6OHfm3T6hXtG5LOUP2EPoi0il6P98oB
 UPnDfCr+pXXVadctDzpe3xyjCineIaBBf9gRvS0odxWuvSfGAXqAC6roi Q==;
X-CSE-ConnectionGUID: WTX970yXRJO38DAt2Argvw==
X-CSE-MsgGUID: F/ygEiWbSKmiGnpRUWdWgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="99340402"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="99340402"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:04:04 -0700
X-CSE-ConnectionGUID: 7HCERisfT3C9iBD1Hu2Zwg==
X-CSE-MsgGUID: XQ1NH+uwQZGGzejTlqFJQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="244988406"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:04:03 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v3 18/36] drm/i915/cmtg: Add trigger to enable/disable cmtg
Date: Tue,  9 Jun 2026 17:32:32 +0530
Message-ID: <20260609120250.867750-19-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260609120250.867750-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260609120250.867750-1-dibin.moolakadan.subrahmanian@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1A9CA65FCF6

From: Animesh Manna <animesh.manna@intel.com>

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
index 5994103764d1..aee783d1316f 100644
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
@@ -6886,6 +6891,12 @@ static void intel_update_crtc(struct intel_atomic_state *state,
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
@@ -7555,6 +7566,19 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
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
2.43.0

