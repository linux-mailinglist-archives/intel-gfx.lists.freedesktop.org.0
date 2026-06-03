Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +qICBumNIGr+4wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 22:26:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2AA63B17D
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 22:26:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=LHWAMsxn;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 108AF10FE11;
	Wed,  3 Jun 2026 20:26:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A53B2112262;
 Wed,  3 Jun 2026 20:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780518374; x=1812054374;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i3yaBngefjxLIdvPmGU9cuk75v35WZDjIOCfxqFOSHM=;
 b=LHWAMsxnpU7tVJ6yw1vVyfd6tJ4G790Az8/SfpJ/1QziMohew/XZFVm+
 vLnjpOgBYIQLRGx8bgDQlsAMbJJOKJOlE5BtAw6fbN0i+qrofBYy9oHJ7
 6kA71OKp9AV9DsenWeVVxoofw98AkwYM3jFGT70PLCT14L2xcQRVjXem2
 aUG8JXqjihRqMVlcQJTpTC1FWmHcvTYHBdq+DBhjyx/S64WauPSk93zKI
 IxYYtncF3gMsiQecWbgIyS/+0IOxxtA9Et4jb/itao+pFK9CRHwzcq1JT
 9aS96oJhspbXrD16GrQFFiN+cIlO5vkPHMNQ9DEr00jGLkWVgIwiZxh4O g==;
X-CSE-ConnectionGUID: 9Kerrt7VRbWppbfuw/hv7Q==
X-CSE-MsgGUID: lvLAs5cyTAWddhrcuYyocA==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="81337373"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="81337373"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 13:26:13 -0700
X-CSE-ConnectionGUID: v7LwmUoQRL2NrnBMEmKXSQ==
X-CSE-MsgGUID: +VcGErqDTTeh0t0hwptvvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="244424758"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa009.jf.intel.com with ESMTP; 03 Jun 2026 13:26:12 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v8 02/20] drm/i915/cmtg: Set CMTG clock select
Date: Thu,  4 Jun 2026 01:23:58 +0530
Message-Id: <20260603195416.91639-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260603195416.91639-1-animesh.manna@intel.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7C2AA63B17D

Program the CMTG Clock Select register based on the transcoder used.

v2:
- Correct mask for PHY B. [Jani]
- Use REG_FIELD_PREP() for enable value. [Dibin]
- Extend cmtg clock select for xe3plpd. [Dibin]

v3:
- CMTG support removed for old platform.

v4:
- Optimize further with else-if. [Uma]
- Correct CMTG_CLK_SEL_B_MASK. [Uma]

v5:
- Add transcoder-port compatibility check. [Dibin]

Bspec: 69103
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c     | 22 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
 .../gpu/drm/i915/display/intel_cmtg_regs.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 11 ++++++++++
 4 files changed, 36 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index a279f3dcd1ec..fbc8a4f2b9cb 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -197,3 +197,25 @@ bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state)
 
 	return false;
 }
+
+void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 clk_sel_clr = 0;
+	u32 clk_sel_set = 0;
+
+	if (!intel_cmtg_is_allowed(crtc_state))
+		return;
+
+	if (cpu_transcoder == TRANSCODER_A) {
+		clk_sel_clr = CMTG_CLK_SEL_A_MASK;
+		clk_sel_set = CMTG_CLK_SELECT_PHYA_ENABLE;
+	} else if (cpu_transcoder == TRANSCODER_B) {
+		clk_sel_clr = CMTG_CLK_SEL_B_MASK;
+		clk_sel_set = CMTG_CLK_SELECT_PHYB_ENABLE;
+	}
+
+	if (clk_sel_set)
+		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index ed540581738f..87092ce6d67b 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -11,6 +11,7 @@
 struct intel_display;
 struct intel_crtc_state;
 
+void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_sanitize(struct intel_display *display);
 bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index 945a35578284..4a80b88d88fd 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -10,8 +10,10 @@
 
 #define CMTG_CLK_SEL			_MMIO(0x46160)
 #define CMTG_CLK_SEL_A_MASK		REG_GENMASK(31, 29)
+#define CMTG_CLK_SELECT_PHYA_ENABLE	REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0x4)
 #define CMTG_CLK_SEL_A_DISABLED		REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0)
 #define CMTG_CLK_SEL_B_MASK		REG_GENMASK(15, 13)
+#define CMTG_CLK_SELECT_PHYB_ENABLE	REG_FIELD_PREP(CMTG_CLK_SEL_B_MASK, 0x6)
 #define CMTG_CLK_SEL_B_DISABLED		REG_FIELD_PREP(CMTG_CLK_SEL_B_MASK, 0)
 
 #define TRANS_CMTG_CTL_A		_MMIO(0x6fa88)
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 24a51ab21b55..452062417ce9 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -9,6 +9,7 @@
 #include <drm/drm_print.h>
 
 #include "intel_alpm.h"
+#include "intel_cmtg.h"
 #include "intel_cx0_phy.h"
 #include "intel_cx0_phy_regs.h"
 #include "intel_display_regs.h"
@@ -3418,10 +3419,20 @@ void intel_mtl_pll_enable(struct intel_encoder *encoder,
 void intel_mtl_pll_enable_clock(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_clock);
+
+	/*
+	 * CMTG can be enabled only when the transcoder and port are compatible
+	 * (transcoder A with port A, transcoder B with port B).
+	 */
+	if (HAS_LT_PHY(display) &&
+	    ((crtc_state->cpu_transcoder == TRANSCODER_A && encoder->port == PORT_A) ||
+	     (crtc_state->cpu_transcoder == TRANSCODER_B && encoder->port == PORT_B)))
+		intel_cmtg_set_clk_select(crtc_state);
 }
 
 /*
-- 
2.29.0

