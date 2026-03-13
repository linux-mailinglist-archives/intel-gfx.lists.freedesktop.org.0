Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GPcSOEI1tGn4igAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 17:03:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1A328692D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 17:03:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4BA910EB8E;
	Fri, 13 Mar 2026 16:03:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V4Hx5/0E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 462EF10EC61;
 Fri, 13 Mar 2026 16:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773417792; x=1804953792;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N9gZcWcyAwrggtYWcw8OEReyFR210+7Z4iTcUzEeaRQ=;
 b=V4Hx5/0EuKb1+oWZVBUTN5bH//GeeyrvOwosFQuZqOQEO8kdt0n5nO98
 v9XSwq768S5cwOaCebs8FwNJMjOS4BAVW+pkicHK5Y+YY6nDhrPqUXWXb
 b5utIuUZNewnTMSzcx1ThnsuBIMBIsUw9qJujR9RCM45OuOqEZ0Tdaj3c
 V4ia9RmQB/Ju9/3NeGFqSTj+ylocWtJ8i6iaOTavzTYUECAqS+EG63/EW
 5UNtBkdBpFxZ/9WdGPQoG/gLdKy2LMo68uZFWj6QtNpXVqWI1jUxkZdk/
 TV5i2992QO4qXXbz8hfVGiL6Xv8AeY8qk+hLge566uXpIx7OC2dzM3LA4 Q==;
X-CSE-ConnectionGUID: NxpJUQBRTmOFqTnfjZsGPQ==
X-CSE-MsgGUID: 1KTXuGpiQ0mg/JY8wbjMMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11728"; a="74715349"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="74715349"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 09:03:11 -0700
X-CSE-ConnectionGUID: ECIsrZ+IS3q7MGsBEnjCDA==
X-CSE-MsgGUID: DsiRdkhbQMKM9S4DEngd7w==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 13 Mar 2026 09:03:09 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, uma.shankar@intel.com,
 dibin.moolakadan.subrahmanian@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v3 06/12] drm/i915/cmtg: add hook to enable CMTG with sync to
 port
Date: Fri, 13 Mar 2026 21:02:54 +0530
Message-Id: <20260313153300.3530695-7-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260313153300.3530695-1-animesh.manna@intel.com>
References: <20260313153300.3530695-1-animesh.manna@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 5C1A328692D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a hook to enable CMTG by programming CMTG CTL with Sync to Port.
When CMTG starts running, the Sync to Port bit will be cleared. Add
a wait to check its running status and trigger WARN_ON() on timeout.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c     | 27 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
 .../gpu/drm/i915/display/intel_cmtg_regs.h    |  4 +--
 3 files changed, 26 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 0d4a8550be24..a802bf3e52e9 100644
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
@@ -315,3 +315,22 @@ void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, TRANS_LINKM1_CMTG(cpu_transcoder), m_n->link_m);
 	intel_de_write(display, TRANS_LINKN1_CMTG(cpu_transcoder), m_n->link_n);
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
index b91498ef5274..93bdf8e23546 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -16,9 +16,9 @@
 #define CMTG_CLK_SELECT_PHYB_ENABLE	REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0x6)
 #define CMTG_CLK_SEL_B_DISABLED		REG_FIELD_PREP(CMTG_CLK_SEL_B_MASK, 0)
 
-#define TRANS_CMTG_CTL_A		_MMIO(0x6fa88)
-#define TRANS_CMTG_CTL_B		_MMIO(0x6fb88)
+#define TRANS_CMTG_CTL(trans)		_MMIO(0x6fa88 + (trans) * 0x100)
 #define  CMTG_ENABLE			REG_BIT(31)
+#define  CMTG_SYNC_TO_PORT		REG_BIT(29)
 
 #define TRANS_HTOTAL_CMTG(trans)	_MMIO(0x6F000 + (trans) * 0x100)
 #define TRANS_HBLANK_CMTG(trans)	_MMIO(0x6F004 + (trans) * 0x100)
-- 
2.29.0

