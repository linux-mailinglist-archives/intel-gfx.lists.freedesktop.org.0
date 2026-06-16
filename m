Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id m72ADnhFMWovfwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:45:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D863D68F7FE
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:45:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=bBqPifey;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50E5210EB10;
	Tue, 16 Jun 2026 12:45:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D611710EB05;
 Tue, 16 Jun 2026 12:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781613941; x=1813149941;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6cPJjAhu3qEU+Z1evo322XJmf+b6dqwHYXgmjB0bzPw=;
 b=bBqPifeybHhOKvPLgC6jBDG7bzJmQfBSaWayumokDNXvJnZvxXbOU2Rk
 oL2+xVktsgnAiQTNSsO48KwucTWwas+BGHWM3SFXVoj9tGjD9nYM07z95
 Lmi38SL6XPq9pQG0oKafgqpBgmAN9NhDW7P7aVFHHrtHWolORnN+dkAhu
 llt7VoFuqb9uNLA/PIOiKTeWU+J2Mou0tYJHXnehf7mbcu8D5SumvbE4p
 JUPF1yTPK7cjux2NklgMkVKpFomAvXei6xJlLUq8yruL8G6UwzJvvNAxj
 fjx3P0FdbWK5dQmrVb6BDK0oQoVtdjSaNdy9P4W+1i9i4yMu9AFhPPc08 Q==;
X-CSE-ConnectionGUID: KduT2cFfTGSGRXZI6UcJRg==
X-CSE-MsgGUID: OVOuy3zHRV2pkllxfe0XzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="81513251"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="81513251"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:45:41 -0700
X-CSE-ConnectionGUID: 3vNJNBAzR7GnqjADSAZyJw==
X-CSE-MsgGUID: At/9VXRXQLy7KMFBhWpsag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="244876293"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:45:40 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v4 18/39] drm/i915/cmtg: Add CMTG HWGB programming
Date: Tue, 16 Jun 2026 18:13:54 +0530
Message-ID: <20260616124416.2442161-19-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Queue-Id: D863D68F7FE

Program CMTG guardband to generate the Lower/Upper and early entry
guardband indicators to the DMC for DC3co control.

v2:
- Specify the unit for DC3CO entry/exit latency. [Uma]
- Add code comment for default line_time_us. [Uma]

Bspec: 75253
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c     | 32 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
 .../gpu/drm/i915/display/intel_cmtg_regs.h    |  8 +++++
 3 files changed, 41 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index ea39daded18a..89df0167f667 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -364,3 +364,35 @@ void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
 	crtc->cmtg.enabled = true;
 	drm_dbg_kms(display->drm, "CMTG: %s enabled\n", transcoder_name(cpu_transcoder));
 }
+
+/* Bspec: 75253 */
+#define DC3CO_ENTRY_LATENCY_US	55
+#define DC3CO_EXIT_LATENCY_US	40
+
+void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 breakeven_gb;
+	u32 dc5_exit_latency;
+	u32 line_time_us = 75;	/* Max default initialization value */
+	u32 val;
+
+	if (!intel_cmtg_is_allowed(crtc_state))
+		return;
+
+	if (crtc_state->linetime)
+		line_time_us = DIV_ROUND_UP(crtc_state->linetime, 8);
+
+	/* Break Even Guardband - DC3co Entry Latency / linetime */
+	breakeven_gb = DIV_ROUND_UP(DC3CO_ENTRY_LATENCY_US, line_time_us);
+
+	/* DC5 Exit Latency - DC3co Exit Latency / linetime */
+	dc5_exit_latency = DIV_ROUND_UP(DC3CO_EXIT_LATENCY_US, line_time_us);
+
+	val = REG_FIELD_PREP(CMTG_HW_GB_BREAKEVEN_MASK, breakeven_gb) |
+	      REG_FIELD_PREP(CMTG_HW_GB_DC5_EXIT_LATENCY_MASK, dc5_exit_latency) |
+	      REG_FIELD_PREP(CMTG_HW_GB_UP_LW_BG_DIFF_MASK, 1);
+
+	intel_de_write(display, CMTG_HW_GB(cpu_transcoder), val);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index 1b59deb38f2f..b2b68b38b7e3 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -26,5 +26,6 @@ void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, enum set_
 void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_sanitize(struct intel_display *display);
 bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
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
2.43.0

