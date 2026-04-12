Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6BU3IBN922mCCgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Apr 2026 13:08:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C6F3E37B4
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Apr 2026 13:08:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 687D810E2AF;
	Sun, 12 Apr 2026 11:08:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SUpwUe0+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F90710E29F;
 Sun, 12 Apr 2026 11:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775992080; x=1807528080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vsXou9WcDL+R8mv0DDj7Mgt1GsTkgQYVrPa60jZ4pTM=;
 b=SUpwUe0+SQqtdLxotrY0t6YuioHoPpFwidFRWvtiKUjy3ptOOaAqPvYL
 PcQxw6Xvjai7+y0dB8sa3d0z7oErm87L+UrQN9gQdHM/NyRSK/DvIkLus
 WDfEbfof3AX6IMZkezG3wPWTe6SlQLYoHLrttvu+jQNJNtdNiWafLzBFR
 SPbmtRKbw6MJf+7Ez4lATSg/OTw6FOsS1hCHszRDqxdp0K9lhE1XWIQkV
 qPJmI0u4RPJhkgNPAj0l75t4Zi45Gwzi3phreTJrRBx/9T8fvBEe6G571
 /bc2kOm6upKMm+ys19daqfQxProg/dGGTRcUuW4gZb2r9alXHUrEZN90U A==;
X-CSE-ConnectionGUID: ZrgYK25vTNinxijOVMembQ==
X-CSE-MsgGUID: Pds2CX/UScCEyqXcDzVYsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="76115120"
X-IronPort-AV: E=Sophos;i="6.23,175,1770624000"; d="scan'208";a="76115120"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 04:07:59 -0700
X-CSE-ConnectionGUID: nPZec0HfS0qySobcG/SX4A==
X-CSE-MsgGUID: dN3jnZlQQyGE2uqZL5+DEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,175,1770624000"; d="scan'208";a="267507728"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa001.jf.intel.com with ESMTP; 12 Apr 2026 04:07:57 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 jani.nikula@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v4 06/13] drm/i915/cmtg: Add hook to enable CMTG with sync to
 port
Date: Sun, 12 Apr 2026 16:07:05 +0530
Message-Id: <20260412103712.4021213-7-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260412103712.4021213-1-animesh.manna@intel.com>
References: <20260412103712.4021213-1-animesh.manna@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 30C6F3E37B4
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
index aecee4157405..be8b513cde45 100644
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
@@ -327,3 +327,22 @@ void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state)
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
index b6a549aec033..d447a72bd9fa 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -16,9 +16,12 @@
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
 
 #define _TRANS_HTOTAL_CMTG_A		0x6F000
 #define _TRANS_HTOTAL_CMTG_B		0x6F100
-- 
2.29.0

