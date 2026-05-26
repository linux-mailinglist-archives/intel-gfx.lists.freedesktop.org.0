Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6G/tFLapFWqJXAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 16:09:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F435D71F7
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 16:09:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C1BD10E515;
	Tue, 26 May 2026 14:09:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dlXqC2/v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACED410E51D;
 Tue, 26 May 2026 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779804594; x=1811340594;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XaW/MH2K8/uUPIBYk7lmOPi+x23IkN+JKax4NEVK1ms=;
 b=dlXqC2/vuw0EdRF/KtZqExvVBxyO6D/v1WnD+OLRkJ2CyYhpZBL/HzdZ
 Bi8ExNYwEtgcf2iSVnnKaXBEOBo+mV63SbyleXKkpSm1siVyBUoWVhGSX
 TM1ZpxrimuPzlZDSkkgVcEIKie3q7lD4Vi8AVjnXQfS88zBFxl70OntT1
 5+ncj3mpUD8fjKXsj/bKBV6xAgafo73czDa2qY1Y20n/1yYyDDf71zSPs
 BZOQHx+FEqHQWDOLLL8zFsE9PRRsat08pC2jCrZZhs9q+Pj5XdLlIptR/
 ZwbSE0LjJ3sA/tevazaq19D5oPNWrjDyzgo39uf9y/Ae2vPfEZvaC+Lhs g==;
X-CSE-ConnectionGUID: oXm8P4HFTI6QKiYyiDvY8Q==
X-CSE-MsgGUID: jnKWZr6SSu+lbi+9UNilrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="98041746"
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="98041746"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 07:09:54 -0700
X-CSE-ConnectionGUID: u4o5rspwRAmJhiNxL/siOA==
X-CSE-MsgGUID: bSiUBJsbRfmbNRX9zL0OdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="235578160"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa009.fm.intel.com with ESMTP; 26 May 2026 07:09:51 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v7 07/15] drm/i915/cmtg: Add hook to enable CMTG with sync to
 port
Date: Tue, 26 May 2026 19:08:03 +0530
Message-Id: <20260526133811.2621675-8-animesh.manna@intel.com>
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
X-Rspamd-Queue-Id: 05F435D71F7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a hook to enable CMTG by programming CMTG CTL with Sync to Port.
When CMTG starts running, the Sync to Port bit will be cleared. Add
a wait to check its running status and trigger WARN_ON() on timeout.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c     | 27 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
 .../gpu/drm/i915/display/intel_cmtg_regs.h    |  7 +++--
 3 files changed, 29 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index b66894407e6a..63e430f7e63b 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -104,11 +104,11 @@ static void intel_cmtg_get_config(struct intel_display *display,
 {
 	u32 val;
 
-	val = intel_de_read(display, TRANS_CMTG_CTL_A);
+	val = intel_de_read(display, TRANS_CMTG_CTL(TRANSCODER_A));
 	cmtg_config->cmtg_a_enable = val & CMTG_ENABLE;
 
 	if (intel_cmtg_has_cmtg_b(display)) {
-		val = intel_de_read(display, TRANS_CMTG_CTL_B);
+		val = intel_de_read(display, TRANS_CMTG_CTL(TRANSCODER_B));
 		cmtg_config->cmtg_b_enable = val & CMTG_ENABLE;
 	}
 
@@ -141,14 +141,14 @@ static void intel_cmtg_disable(struct intel_display *display,
 
 	if (cmtg_config->cmtg_a_enable) {
 		drm_dbg_kms(display->drm, "Disabling CMTG A\n");
-		intel_de_rmw(display, TRANS_CMTG_CTL_A, CMTG_ENABLE, 0);
+		intel_de_rmw(display, TRANS_CMTG_CTL(TRANSCODER_A), CMTG_ENABLE, 0);
 		clk_sel_clr |= CMTG_CLK_SEL_A_MASK;
 		clk_sel_set |= CMTG_CLK_SEL_A_DISABLED;
 	}
 
 	if (cmtg_config->cmtg_b_enable) {
 		drm_dbg_kms(display->drm, "Disabling CMTG B\n");
-		intel_de_rmw(display, TRANS_CMTG_CTL_B, CMTG_ENABLE, 0);
+		intel_de_rmw(display, TRANS_CMTG_CTL(TRANSCODER_B), CMTG_ENABLE, 0);
 		clk_sel_clr |= CMTG_CLK_SEL_B_MASK;
 		clk_sel_set |= CMTG_CLK_SEL_B_DISABLED;
 	}
@@ -340,3 +340,22 @@ void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, PIPE_LINK_M1(display, cmtg_transcoder), m_n->link_m);
 	intel_de_write(display, PIPE_LINK_N1(display, cmtg_transcoder), m_n->link_n);
 }
+
+void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 cmtg_ctl;
+
+	if (!intel_cmtg_is_allowed(crtc_state))
+		return;
+
+	cmtg_ctl = CMTG_SYNC_TO_PORT | CMTG_ENABLE;
+
+	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder), 0, cmtg_ctl);
+	if (intel_de_wait_for_clear_ms(display, TRANS_CMTG_CTL(cpu_transcoder),
+				       CMTG_SYNC_TO_PORT, 50)) {
+		drm_WARN(display->drm, 1, "CMTG: %s enable timeout\n",
+			 transcoder_name(cpu_transcoder));
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index 6796eb727eef..64ff6a19948a 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -11,6 +11,7 @@
 struct intel_display;
 struct intel_crtc_state;
 
+void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index 4a80b88d88fd..a93236bf7b75 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -16,8 +16,11 @@
 #define CMTG_CLK_SELECT_PHYB_ENABLE	REG_FIELD_PREP(CMTG_CLK_SEL_B_MASK, 0x6)
 #define CMTG_CLK_SEL_B_DISABLED		REG_FIELD_PREP(CMTG_CLK_SEL_B_MASK, 0)
 
-#define TRANS_CMTG_CTL_A		_MMIO(0x6fa88)
-#define TRANS_CMTG_CTL_B		_MMIO(0x6fb88)
+#define _TRANS_CMTG_CTL_A		0x6fa88
+#define _TRANS_CMTG_CTL_B		0x6fb88
+#define TRANS_CMTG_CTL(trans)		_MMIO_TRANS((trans), \
+						    _TRANS_CMTG_CTL_A, _TRANS_CMTG_CTL_B)
 #define  CMTG_ENABLE			REG_BIT(31)
+#define  CMTG_SYNC_TO_PORT		REG_BIT(29)
 
 #endif /* __INTEL_CMTG_REGS_H__ */
-- 
2.29.0

