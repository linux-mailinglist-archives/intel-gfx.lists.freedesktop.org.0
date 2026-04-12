Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHnpJRx922mCCgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Apr 2026 13:08:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A4D3E37CA
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Apr 2026 13:08:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA22010E2B2;
	Sun, 12 Apr 2026 11:08:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RwFw7bQY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2E0E10E2B1;
 Sun, 12 Apr 2026 11:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775992089; x=1807528089;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2X0djYkI/UesYJOYG2xmQ/rlfdb6Q3E7kHmx7J8ZM2Q=;
 b=RwFw7bQY6RxKPaly+rHqyihiNNogSlAUEyESgH/d2trB37HBCz6bRetp
 9IxHBLVsvx85No08Gm/EBghkH/mnmPh8YuHc5gMa56RoYjI77EMQyvhtF
 lfCM2fu6nBiX46aI2jtYEuOIKfnvK6Zp5UFGyx99OqupfAeofa8sS7jAc
 60MPbkxSN6K3bc+OZzi2SZxJXAhMIB2xSBHsraUSJJL5napoSn2XxvMKu
 j3+T5oWmuQx3TBuI3d0TZ8AIq6UB6pzvw0ausgIAJL6Z39hreHC2R9+gS
 GVg46/OdyeK7zo61tajPvZV/NbkB+6JrU1UV2fjTr5f10CHMXKgtxVT+D Q==;
X-CSE-ConnectionGUID: HCFSJcgrRGmKqfCqO1ZyrA==
X-CSE-MsgGUID: xDwe4uaBQVucf5OuTHVeNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="76115126"
X-IronPort-AV: E=Sophos;i="6.23,175,1770624000"; d="scan'208";a="76115126"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 04:08:09 -0700
X-CSE-ConnectionGUID: r68sH1OnQny2Cwl3o0JEZA==
X-CSE-MsgGUID: LWgSTcuETpil5YQRs2Mgow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,175,1770624000"; d="scan'208";a="267507742"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa001.jf.intel.com with ESMTP; 12 Apr 2026 04:08:07 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 jani.nikula@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v4 09/13] drm/i915/cmtg: Modify existing hook to disable CMTG
Date: Sun, 12 Apr 2026 16:07:08 +0530
Message-Id: <20260412103712.4021213-10-animesh.manna@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 28A4D3E37CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>

Earlier cmtg_disable() used to disable all instances of CMTG
which cannot handle individual request for specific CMTG instance.
Introduce cmtg_disable_all() which will disable all cmtg instances
and cmtg_disable() only disable specific instance.

v2:
- Use intel_de_rmw to simplify. [Uma]

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c     | 30 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
 .../gpu/drm/i915/display/intel_cmtg_regs.h    |  1 +
 3 files changed, 29 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index c043fb4f9789..00e5bdd1b063 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -137,8 +137,8 @@ static bool intel_cmtg_disable_requires_modeset(struct intel_display *display,
 	return cmtg_config->trans_a_secondary || cmtg_config->trans_b_secondary;
 }
 
-static void intel_cmtg_disable(struct intel_display *display,
-			       struct intel_cmtg_config *cmtg_config)
+static void intel_cmtg_disable_all(struct intel_display *display,
+				   struct intel_cmtg_config *cmtg_config)
 {
 	u32 clk_sel_clr = 0;
 	u32 clk_sel_set = 0;
@@ -169,6 +169,30 @@ static void intel_cmtg_disable(struct intel_display *display,
 		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
 }
 
+void intel_cmtg_disable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	if (!intel_cmtg_is_supported(crtc_state))
+		return;
+
+	intel_de_rmw(display, TRANS_VRR_CTL_CMTG(cpu_transcoder),
+		     VRR_CTL_VRR_ENABLE | VRR_CTL_FLIP_LINE_EN, 0);
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
@@ -196,7 +220,7 @@ void intel_cmtg_sanitize(struct intel_display *display)
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
index d447a72bd9fa..d2f83829b8a7 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -22,6 +22,7 @@
 						    _TRANS_CMTG_CTL_A, _TRANS_CMTG_CTL_B)
 #define  CMTG_ENABLE			REG_BIT(31)
 #define  CMTG_SYNC_TO_PORT		REG_BIT(29)
+#define  CMTG_STATE			REG_BIT(23)
 
 #define _TRANS_HTOTAL_CMTG_A		0x6F000
 #define _TRANS_HTOTAL_CMTG_B		0x6F100
-- 
2.29.0

