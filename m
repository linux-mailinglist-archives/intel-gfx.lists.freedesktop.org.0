Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cEmQM8GpFWqJXAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 16:10:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D705D721D
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 16:10:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 136A710E65E;
	Tue, 26 May 2026 14:10:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bmg5dcc8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2819510E63A;
 Tue, 26 May 2026 14:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779804606; x=1811340606;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JwBcqMkehUPcZ+/EyNnoHqwHxGoWf+jBtS9cqh8YYO4=;
 b=Bmg5dcc8ZYrMF/jBMpq4PVLj67GtbTrYl8Z7FIIPUGzwkIPWLy10ia5e
 0zeMlALyUIN0hH4nI0xBT0WzXkkECSOubmJYJVzVmZ8H+5xlS3iTpmC6E
 0G3NSqf+3NvvXaMdEXxPYmNyITbRMF3iboSaGQ3cbm2ASmiWOP0iI+jT3
 Z6g5O4FG0w+0/8N1AIruNayUeeR2mFBoFxhTFso8am8f9Z80O+W7l0/1p
 XzWO09Cf3BhNQVIbASIFLwKvqHTCvLGeL6zReX2pdktoI/pQAhI10TVMo
 8gyMn08pyd4uvPJrEaAKQO7qdGHElf7oplzdcnAFExCnrry9Sg2lpTiVF Q==;
X-CSE-ConnectionGUID: SYB5qjP+T5GOnf+77TT3Pw==
X-CSE-MsgGUID: UA060tMRRpWVgg5pPLolPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="98041765"
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="98041765"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 07:10:05 -0700
X-CSE-ConnectionGUID: pCstBeykRueCBHrDKv0brw==
X-CSE-MsgGUID: HCxsJb69T6qvIw36Zk6zEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="235578197"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa009.fm.intel.com with ESMTP; 26 May 2026 07:10:03 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [PATCH v7 11/15] drm/i915/cmtg: Add CMTG HWGB programming
Date: Tue, 26 May 2026 19:08:07 +0530
Message-Id: <20260526133811.2621675-12-animesh.manna@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 84D705D721D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>

Program CMTG guardband to generate the Lower/Upper and early entry
guardband indicators to the DMC for DC3co control.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c     | 31 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
 .../gpu/drm/i915/display/intel_cmtg_regs.h    |  8 +++++
 3 files changed, 40 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 17e8da4fa7ee..09ab91dc9bfe 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -444,3 +444,34 @@ void intel_cmtg_disable_interrupt(const struct intel_crtc_state *crtc_state)
 	intel_cmtg_mask_interrupt(crtc_state, true);
 	spin_unlock_irq(&display->irq.lock);
 }
+
+#define DC3CO_ENTRY_LATENCY	55
+#define DC3CO_EXIT_LATENCY	40
+
+void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 breakeven_gb;
+	u32 dc5_exit_latency;
+	u32 line_time_us = 75;
+	u32 val;
+
+	if (!intel_cmtg_is_allowed(crtc_state))
+		return;
+
+	if (crtc_state->linetime)
+		line_time_us = DIV_ROUND_UP(crtc_state->linetime, 8);
+
+	/* Break Even Guardband - DC3co Entry Latency / linetime */
+	breakeven_gb = DIV_ROUND_UP(DC3CO_ENTRY_LATENCY, line_time_us);
+
+	/* DC5 Exit Latency - DC3co Exit Latency / linetime */
+	dc5_exit_latency = DIV_ROUND_UP(DC3CO_EXIT_LATENCY, line_time_us);
+
+	val = REG_FIELD_PREP(CMTG_HW_GB_BREAKEVEN_MASK, breakeven_gb) |
+	      REG_FIELD_PREP(CMTG_HW_GB_DC5_EXIT_LATENCY_MASK, dc5_exit_latency) |
+	      REG_FIELD_PREP(CMTG_HW_GB_UP_LW_BG_DIFF_MASK, 1);
+
+	intel_de_write(display, CMTG_HW_GB(cpu_transcoder), val);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index 8fcb44d6398f..2c801a74acf9 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -23,5 +23,6 @@ void intel_cmtg_sanitize(struct intel_display *display);
 bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_enable_interrupt(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_disable_interrupt(const struct intel_crtc_state *crtc_state);
+void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_CMTG_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index 240a02cd4a3a..a4a2a2fe6b66 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -24,4 +24,12 @@
 #define  CMTG_SYNC_TO_PORT		REG_BIT(29)
 #define  CMTG_STATE			REG_BIT(23)
 
+#define _CMTG_HW_GB_A				0x6fa8c
+#define _CMTG_HW_GB_B				0x6fb8c
+#define CMTG_HW_GB(trans)			_MMIO_TRANS((trans), \
+							    _CMTG_HW_GB_A, _CMTG_HW_GB_B)
+#define CMTG_HW_GB_BREAKEVEN_MASK		REG_GENMASK(11, 0)
+#define CMTG_HW_GB_DC5_EXIT_LATENCY_MASK	REG_GENMASK(27, 16)
+#define CMTG_HW_GB_UP_LW_BG_DIFF_MASK		REG_GENMASK(31, 28)
+
 #endif /* __INTEL_CMTG_REGS_H__ */
-- 
2.29.0

