Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOQlMkk1tGn4igAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 17:03:21 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6198228693C
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 17:03:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC7D910E46C;
	Fri, 13 Mar 2026 16:03:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="en0XgcGm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 082E210E469;
 Fri, 13 Mar 2026 16:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773417798; x=1804953798;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s7QMClEu0QFDnt0C2jziQ0y2ALliaqsjUAkK41sXGac=;
 b=en0XgcGmwIB75giUoHr6Z7E5Kon5Lo5xxW+p30iE1kz0pLWFKS2HnFdX
 lVrpuYdkLrUfAB72FRaVIOwyL4hOvQrWEzVnYeimpUB2p46XcRfeSvYVP
 25mAp96BPK7+iL2/JdQkTe6fTS1/qIvZ0hdV8TQ7QFv90HARm/wU/PR8U
 +uQ2f1Tr+EpJjTNWtrjNzHYDYFwzlVeihYWW32Ix41z6C0bH6kBZPm4qk
 7flVfkEZNjdAAYYBugOUOKocOxVSfMIPGnnsjRwqXUfLFF1+asMPvmHge
 NNUVcCJeU5sSIafQNBHcBoMrZSPlqcsusWZO5u8NS+MQwuDi5kg+rMeiG A==;
X-CSE-ConnectionGUID: xV1N7ASFTGmz2WLYENZoIg==
X-CSE-MsgGUID: LcNj57gtSgKYOphU1wACyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11728"; a="74715384"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="74715384"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 09:03:17 -0700
X-CSE-ConnectionGUID: 8D8z31ihTi2uHqntbTsLUw==
X-CSE-MsgGUID: U1q45uFSSe+wuEfSpn+uig==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 13 Mar 2026 09:03:15 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, uma.shankar@intel.com,
 dibin.moolakadan.subrahmanian@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v3 08/12] drm/i915/cmtg: modify existing hook to disable CMTG
Date: Fri, 13 Mar 2026 21:02:56 +0530
Message-Id: <20260313153300.3530695-9-animesh.manna@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 6198228693C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>

Earlier cmtg_disable() used to disable all instances of CMTG
which cannot handle individual request for specific CMTG instance.
Introduce cmtg_disable_all() which will disable all cmtg instances
and cmtg_disable() only disable specific instance.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c     | 36 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
 .../gpu/drm/i915/display/intel_cmtg_regs.h    |  1 +
 3 files changed, 35 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 703828339d4d..a6ac87fd552e 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -125,8 +125,8 @@ static bool intel_cmtg_disable_requires_modeset(struct intel_display *display,
 	return cmtg_config->trans_a_secondary || cmtg_config->trans_b_secondary;
 }
 
-static void intel_cmtg_disable(struct intel_display *display,
-			       struct intel_cmtg_config *cmtg_config)
+static void intel_cmtg_disable_all(struct intel_display *display,
+				   struct intel_cmtg_config *cmtg_config)
 {
 	u32 clk_sel_clr = 0;
 	u32 clk_sel_set = 0;
@@ -157,6 +157,36 @@ static void intel_cmtg_disable(struct intel_display *display,
 		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
 }
 
+void intel_cmtg_disable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 val;
+
+	if (!HAS_DC3CO(display))
+		return;
+
+	if (cpu_transcoder != TRANSCODER_A && cpu_transcoder != TRANSCODER_B)
+		return;
+
+	val = intel_de_read(display, TRANS_VRR_CTL_CMTG(cpu_transcoder));
+	val &= ~VRR_CTL_VRR_ENABLE;
+	val &= ~VRR_CTL_FLIP_LINE_EN;
+	intel_de_write(display, TRANS_VRR_CTL_CMTG(cpu_transcoder), val);
+
+	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, cpu_transcoder),
+		     PORT_SYNC_MODE_ENABLE, 0);
+
+	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder), CMTG_ENABLE, 0);
+
+	if (intel_de_wait_for_clear_ms(display, TRANS_CMTG_CTL(cpu_transcoder), CMTG_STATE, 50)) {
+		drm_WARN(display->drm, 1, "CMTG: %s disable timeout\n",
+			 transcoder_name(cpu_transcoder));
+		return;
+	}
+
+	drm_dbg_kms(display->drm, "CMTG: %s disabled\n", transcoder_name(cpu_transcoder));
+}
 /*
  * Read out CMTG configuration and, on platforms that allow disabling it without
  * a modeset, do it.
@@ -184,7 +214,7 @@ void intel_cmtg_sanitize(struct intel_display *display)
 	if (intel_cmtg_disable_requires_modeset(display, &cmtg_config))
 		return;
 
-	intel_cmtg_disable(display, &cmtg_config);
+	intel_cmtg_disable_all(display, &cmtg_config);
 }
 
 bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index 12abbafa7d08..79785afccc51 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -11,6 +11,7 @@
 struct intel_display;
 struct intel_crtc_state;
 
+void intel_cmtg_disable(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index 93bdf8e23546..d53891f3e3c3 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -19,6 +19,7 @@
 #define TRANS_CMTG_CTL(trans)		_MMIO(0x6fa88 + (trans) * 0x100)
 #define  CMTG_ENABLE			REG_BIT(31)
 #define  CMTG_SYNC_TO_PORT		REG_BIT(29)
+#define  CMTG_STATE			REG_BIT(23)
 
 #define TRANS_HTOTAL_CMTG(trans)	_MMIO(0x6F000 + (trans) * 0x100)
 #define TRANS_HBLANK_CMTG(trans)	_MMIO(0x6F004 + (trans) * 0x100)
-- 
2.29.0

