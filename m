Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iZ52FisBKGpB7AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:03:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BE465FCC2
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:03:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ZoZ5dR6+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B49A10E310;
	Tue,  9 Jun 2026 12:03:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F038110E2D4;
 Tue,  9 Jun 2026 12:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781006630; x=1812542630;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+jRed7rP1PUpSbKAjlst/l3epwg+ZVY+Qy2JtDs4COw=;
 b=ZoZ5dR6+LU9Wppl2u1v56Cx/oTm0Zzd5R3x8/67ucr84dUq8XCp79a4r
 b/cYzR3qTT/Ddp4xVcLXTTHdpcUp/Rv09IOtaCM61Tx4U1PUXMuBIIyc4
 POTe5Bgn4SHqKXR+rJHCQ6Y0MCcirp7aYM3JyLUUyi574fJYM513l3lUV
 uL9o7/JvfC1klSNwH7LAi3D7DosI6jatAsBAGkF0OD+jYAjtQthetioh/
 SMQfgTTDgtSyqCcnqcOFhCp7ffHGOzdNhO1HhOPqU5fqELb33q26LeKtL
 pHikliNTWsserFaQRzVAxfW5xSdGD9JzwUJf/H6j3aOQ+iSsK6zPpNNMx A==;
X-CSE-ConnectionGUID: UuNDHCmkTQqSutDBVcfgcg==
X-CSE-MsgGUID: jie6a4b/SyS59IHeMDlzFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="99340355"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="99340355"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:03:49 -0700
X-CSE-ConnectionGUID: hy10bhpgQuWBZ2V87wOhMg==
X-CSE-MsgGUID: v4bQUFNoSwaatU/aEE7DvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="244988254"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:03:49 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v3 07/36] drm/i915/cmtg: Set timings for CMTG by using transcoder
 timing helpers
Date: Tue,  9 Jun 2026 17:32:21 +0530
Message-ID: <20260609120250.867750-8-dibin.moolakadan.subrahmanian@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C1BE465FCC2

From: Animesh Manna <animesh.manna@intel.com>

Expose intel_set_transcoder_timings() & intel_set_transcoder_timings_lrr()
so that they can program timings on any transcoder, and use them from a
new intel_cmtg_set_timings() helper instead of duplicating the timing
register write sequence for CMTG.

intel_cmtg_set_timings() maps the CPU transcoder to the corresponding
CMTG transcoder (TRANSCODER_A->TRANSCODER_CMTG0, TRANSCODER_B->
TRANSCODER_CMTG1) and calls the shared helper, gated by
intel_cmtg_is_allowed(). It is invoked from hsw_configure_cpu_transcoder()
for the full modeset path and from intel_pipe_fastset() for the LRR
update path.

v2:
- Use sw state instead of reading directly from hardware. [Jani]
- Move set_timing later after encoder enable. [Dibin]

v3:
- Replace id with trans. [Jani]
- Program cmtg set_timing() along with primary transcoder timing.

v4:
- Use _MMIO_TRANS() for cmtg registers instead of direct
multiplication. [Jani]

v5:
- Modify register definition approach and match existing
transcoder definition. [Ville]

v6:
- Reuse transcoder timing helpers. [Ville]

Bspec: 68989
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c    | 25 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cmtg.h    |  1 +
 drivers/gpu/drm/i915/display/intel_display.c | 13 +++++-----
 drivers/gpu/drm/i915/display/intel_display.h |  4 ++++
 4 files changed, 37 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index fbc8a4f2b9cb..082c04bec9ee 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -219,3 +219,28 @@ void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state)
 	if (clk_sel_set)
 		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
 }
+
+static inline enum transcoder to_cmtg_transcoder(enum transcoder cpu_transcoder)
+{
+	switch (cpu_transcoder) {
+	case TRANSCODER_A:
+		return TRANSCODER_CMTG0;
+	case TRANSCODER_B:
+		return TRANSCODER_CMTG1;
+	default:
+		return INVALID_TRANSCODER;
+	}
+}
+
+void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bool lrr)
+{
+	enum transcoder cmtg_transcoder = to_cmtg_transcoder(crtc_state->cpu_transcoder);
+
+	if (!intel_cmtg_is_allowed(crtc_state))
+		return;
+
+	if (lrr)
+		intel_set_transcoder_timings_lrr(crtc_state, cmtg_transcoder);
+	else
+		intel_set_transcoder_timings(crtc_state, cmtg_transcoder);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index 87092ce6d67b..53a44f505dd2 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -11,6 +11,7 @@
 struct intel_display;
 struct intel_crtc_state;
 
+void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bool lrr);
 void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_sanitize(struct intel_display *display);
 bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index dd33d1c55adb..77f65a1a12ca 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -60,6 +60,7 @@
 #include "intel_bw.h"
 #include "intel_cdclk.h"
 #include "intel_clock_gating.h"
+#include "intel_cmtg.h"
 #include "intel_color.h"
 #include "intel_crt.h"
 #include "intel_crtc.h"
@@ -132,8 +133,6 @@
 #include "vlv_dsi_pll.h"
 #include "vlv_dsi_regs.h"
 
-static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state,
-					 enum transcoder transcoder);
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state);
 static void hsw_set_transconf(const struct intel_crtc_state *crtc_state);
 static void bdw_set_pipe_misc(struct intel_dsb *dsb,
@@ -1637,6 +1636,7 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 	}
 
 	intel_set_transcoder_timings(crtc_state, crtc_state->cpu_transcoder);
+	intel_cmtg_set_timings(crtc_state, false);
 
 	if (cpu_transcoder != TRANSCODER_EDP)
 		intel_de_write(display, TRANS_MULT(display, cpu_transcoder),
@@ -2665,8 +2665,8 @@ transcoder_has_vrr(const struct intel_crtc_state *crtc_state)
 	return HAS_VRR(display) && !transcoder_is_dsi(cpu_transcoder);
 }
 
-static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state,
-					 enum transcoder transcoder)
+void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state,
+				  enum transcoder transcoder)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -2777,8 +2777,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	}
 }
 
-static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state,
-					     enum transcoder transcoder)
+void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state,
+				      enum transcoder transcoder)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
@@ -6681,6 +6681,7 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 
 	if (new_crtc_state->update_lrr) {
 		intel_set_transcoder_timings_lrr(new_crtc_state, new_crtc_state->cpu_transcoder);
+		intel_cmtg_set_timings(new_crtc_state, true);
 		intel_vrr_set_fixed_rr_timings(new_crtc_state);
 		intel_vrr_transcoder_enable(new_crtc_state);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 98b589e8360d..57ea4f2edf2a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -424,6 +424,10 @@ void intel_set_m_n(struct intel_display *display,
 		   const struct intel_link_m_n *m_n,
 		   intel_reg_t data_m_reg, intel_reg_t data_n_reg,
 		   intel_reg_t link_m_reg, intel_reg_t link_n_reg);
+void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state,
+				  enum transcoder transcoder);
+void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state,
+				      enum transcoder transcoder);
 void intel_get_m_n(struct intel_display *display,
 		   struct intel_link_m_n *m_n,
 		   intel_reg_t data_m_reg, intel_reg_t data_n_reg,
-- 
2.43.0

