Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FXGvGn1FMWo1fwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:45:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1641568F816
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:45:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Nnwt9ZFR;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5464010EB1B;
	Tue, 16 Jun 2026 12:45:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AA6E10EB11;
 Tue, 16 Jun 2026 12:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781613943; x=1813149943;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ozQPOsbkn1aKg9PbKAP9HaT5okj2XOU61x8PsG1GGME=;
 b=Nnwt9ZFRYyFMt85M47AJ1RrtUBTEh7z/omEjA69uNzOKWM6WvJD6SuY7
 G4aGhOFmUyPFtlhsH5SXhgJ4T5XVW75HnPSHlA8vY5eeFftPUnX0nQ9lf
 T5UQ+ezH2g5ahSkFK6fHtIhxtwf6jsNlANgTFfMCuJcKg4IMsHdBjPA2u
 F8K4fdF6NelKj90rKjQXeg4vG6tO65qg1vccCl+VpfJ5A5989ToVujtN9
 vYx2UuiVNtukWLu2cMaRYJ2VKNYF/RDxEhQFSPzqzTWORIvFm0ZnCzB5a
 +IR62rIresMSGeKJSQynonxtpYoHVXPK4SuWUf+iAZuyFO9Eu8qK4/YfC g==;
X-CSE-ConnectionGUID: peAiTd1RTt2NUYDrnFhpkg==
X-CSE-MsgGUID: PSA+Qn+8Qcetx/OFVOZugw==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="81513255"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="81513255"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:45:43 -0700
X-CSE-ConnectionGUID: OjcaD0zgQDaeGJq/KtxFAQ==
X-CSE-MsgGUID: 1DxrWlioSsaff5UIjQl3Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="244876316"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:45:42 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v4 20/39] drm/i915/cmtg: Add trigger to enable/disable cmtg
Date: Tue, 16 Jun 2026 18:13:56 +0530
Message-ID: <20260616124416.2442161-21-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260616124416.2442161-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260616124416.2442161-1-dibin.moolakadan.subrahmanian@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1641568F816

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
- Got R-b from Uma.

v4:
- Simplify the code further by moving for_each_new_intel_crtc_in_state
inside intel_cmtg.c.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c    | 37 +++++++++++++-------
 drivers/gpu/drm/i915/display/intel_cmtg.h    |  5 ++-
 drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++
 3 files changed, 41 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 96c7608144b9..8684d2ec2f83 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -12,6 +12,7 @@
 #include "intel_cmtg_regs.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
+#include "intel_display.h"
 #include "intel_display_device.h"
 #include "intel_display_power.h"
 #include "intel_display_regs.h"
@@ -333,15 +334,12 @@ void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state)
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
@@ -352,15 +350,12 @@ void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state)
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
@@ -371,7 +366,7 @@ void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
 #define DC3CO_ENTRY_LATENCY_US	55
 #define DC3CO_EXIT_LATENCY_US	40
 
-void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state)
+static void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
@@ -380,9 +375,6 @@ void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state)
 	u32 line_time_us = 75;	/* Max default initialization value */
 	u32 val;
 
-	if (!intel_cmtg_is_allowed(crtc_state))
-		return;
-
 	if (crtc_state->linetime)
 		line_time_us = DIV_ROUND_UP(crtc_state->linetime, 8);
 
@@ -398,3 +390,24 @@ void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state)
 
 	intel_de_write(display, CMTG_HW_GB(cpu_transcoder), val);
 }
+
+void intel_cmtg_program(struct intel_atomic_state *state)
+{
+	struct intel_crtc *crtc;
+	struct intel_crtc_state *new_crtc_state;
+
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
+		bool modeset = intel_crtc_needs_modeset(new_crtc_state);
+
+		if (!intel_cmtg_is_allowed(new_crtc_state))
+			continue;
+		/*
+		 * TODO: CMTG needs to be restored on DC6 exit.
+		 */
+		if (modeset && new_crtc_state->hw.active && !crtc->cmtg.enabled) {
+			intel_cmtg_enable_sync(new_crtc_state);
+			intel_cmtg_set_hwgb(new_crtc_state);
+			intel_cmtg_enable_ddi(new_crtc_state);
+		}
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index b2b68b38b7e3..a08cb2dcee67 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -8,6 +8,7 @@
 
 #include <linux/types.h>
 
+struct intel_atomic_state;
 struct intel_display;
 struct intel_crtc_state;
 
@@ -17,8 +18,6 @@ enum set_timing_type {
 };
 
 void intel_cmtg_disable(const struct intel_crtc_state *crtc_state);
-void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state);
-void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state);
@@ -26,6 +25,6 @@ void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, enum set_
 void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_sanitize(struct intel_display *display);
 bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
-void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state);
+void intel_cmtg_program(struct intel_atomic_state *state);
 
 #endif /* __INTEL_CMTG_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 62dc2b414f3c..e76aa6c8dab6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1790,6 +1790,10 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc *pipe_crtc;
 
+	if (crtc->cmtg.enabled) {
+		intel_cmtg_set_clk_select(old_crtc_state);
+		intel_cmtg_disable(old_crtc_state);
+	}
 	/*
 	 * FIXME collapse everything to one hook.
 	 * Need care with mst->ddi interactions.
@@ -6898,6 +6902,11 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	if (intel_crtc_needs_fastset(new_crtc_state) &&
 	    old_crtc_state->inherited)
 		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
+
+	if (crtc->cmtg.enabled && (intel_crtc_vrr_enabling(state, crtc))) {
+		intel_cmtg_set_clk_select(new_crtc_state);
+		intel_cmtg_disable(new_crtc_state);
+	}
 }
 
 static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
@@ -7567,6 +7576,11 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	/* FIXME probably need to sequence this properly */
 	intel_program_dpkgc_latency(state);
 
+	/*
+	 * TODO: DC3co entry condition need to be checked before calling CMTG functions.
+	 */
+	intel_cmtg_program(state);
+
 	intel_wait_for_vblank_workers(state);
 
 	/* FIXME: We should call drm_atomic_helper_commit_hw_done() here
-- 
2.43.0

