Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKWYNIgCgmmYNgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 15:13:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDC4DA6A5
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 15:13:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6930210E688;
	Tue,  3 Feb 2026 14:13:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T4csPcCS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41A3710E688;
 Tue,  3 Feb 2026 14:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770128004; x=1801664004;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pLiCql9XZf30OL2qeZvz8mzFUWkLCrSQi7tKgsKGOXA=;
 b=T4csPcCS6igToVqkm95q+nP+XJBqBmkhGoAZk27zGQCYq5/Wyh22FPO0
 ej6ZUa5TFqjDKZZKWNpRfBQAeOHOMq4RcJaeENvij38fR6Qr+51qRCXLX
 gXPpvVMtaWwb+jM/Vd5U5AwfYfxqILUj+ieyNLYMDhDBFWnfBpbUAK75A
 JaY55cDPAyW8Yorw6rtsy3ilp4P0EidEc9lEOs8K74PhecFGqHSUwggW+
 O5VtHXVf1p+PBnjFzHoMvtBytnvuL6wyt2I+s+QeqfIErberVgD+4EnJZ
 9CCVix10hkA6ik7egDHnC4KCCfMW2x89DArXRKUba9qNMPcWt7sNdM77S A==;
X-CSE-ConnectionGUID: 4v07RuAqRHSUnQLm7WLGGg==
X-CSE-MsgGUID: OUbLynQISoKDqf1VGr+MeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="75156438"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="75156438"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 06:13:21 -0800
X-CSE-ConnectionGUID: 2/Y/NYw1TduUsN2U6qjj8Q==
X-CSE-MsgGUID: /AO/XsgqQ3mh0HmSrSNoRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="208956294"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa006.jf.intel.com with ESMTP; 03 Feb 2026 06:13:19 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dibin.moolakadan.subrahmanian@intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 02/10] drm/i915/cmtg: cmtg set clock select
Date: Tue,  3 Feb 2026 19:13:59 +0530
Message-Id: <20260203134407.2823406-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260203134407.2823406-1-animesh.manna@intel.com>
References: <20260203134407.2823406-1-animesh.manna@intel.com>
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
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 2CDC4DA6A5
X-Rspamd-Action: no action

Program CMTG Clk Select.

v2:
- Correct mask for PHY B. [Jani]
- Use REG_FIELD_PREP() for enable value. [Dibin]
- Extend cmtg clock select for xe3plpd. [Dibin]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c     | 22 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  2 ++
 .../gpu/drm/i915/display/intel_cmtg_regs.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  5 +++++
 drivers/gpu/drm/i915/display/intel_lt_phy.c   |  9 ++++++--
 5 files changed, 38 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index e1fdc6fe9762..f5364f5a848f 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -16,6 +16,7 @@
 #include "intel_display_device.h"
 #include "intel_display_power.h"
 #include "intel_display_regs.h"
+#include "intel_display_types.h"
 
 /**
  * DOC: Common Primary Timing Generator (CMTG)
@@ -185,3 +186,24 @@ void intel_cmtg_sanitize(struct intel_display *display)
 
 	intel_cmtg_disable(display, &cmtg_config);
 }
+
+void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 clk_sel_clr = 0;
+	u32 clk_sel_set = 0;
+
+	if (cpu_transcoder == TRANSCODER_A) {
+		clk_sel_clr = CMTG_CLK_SEL_A_MASK;
+		clk_sel_set = CMTG_CLK_SELECT_PHYA_ENABLE;
+	}
+
+	if (cpu_transcoder == TRANSCODER_B) {
+		clk_sel_clr = CMTG_CLK_SEL_B_MASK;
+		clk_sel_set = CMTG_CLK_SELECT_PHYB_ENABLE;
+	}
+
+	if (clk_sel_set)
+		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index ba62199adaa2..bef2426b2787 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -7,7 +7,9 @@
 #define __INTEL_CMTG_H__
 
 struct intel_display;
+struct intel_crtc_state;
 
+void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_sanitize(struct intel_display *display);
 
 #endif /* __INTEL_CMTG_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index 945a35578284..8a767b659a23 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -10,8 +10,10 @@
 
 #define CMTG_CLK_SEL			_MMIO(0x46160)
 #define CMTG_CLK_SEL_A_MASK		REG_GENMASK(31, 29)
+#define CMTG_CLK_SELECT_PHYA_ENABLE	REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0x4)
 #define CMTG_CLK_SEL_A_DISABLED		REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0)
 #define CMTG_CLK_SEL_B_MASK		REG_GENMASK(15, 13)
+#define CMTG_CLK_SELECT_PHYB_ENABLE	REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0x6)
 #define CMTG_CLK_SEL_B_DISABLED		REG_FIELD_PREP(CMTG_CLK_SEL_B_MASK, 0)
 
 #define TRANS_CMTG_CTL_A		_MMIO(0x6fa88)
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 6a471c021c0e..a88f013e472b 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -9,6 +9,7 @@
 #include <drm/drm_print.h>
 
 #include "intel_alpm.h"
+#include "intel_cmtg.h"
 #include "intel_cx0_phy.h"
 #include "intel_cx0_phy_regs.h"
 #include "intel_display_regs.h"
@@ -3417,9 +3418,13 @@ void intel_mtl_pll_enable_clock(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state)
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_clock);
+
+	if (crtc->cmtg.enable)
+		intel_cmtg_set_clk_select(crtc_state);
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 04f63bdd0b87..f6c45bf9d0f3 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -6,6 +6,7 @@
 #include <drm/drm_print.h>
 
 #include "i915_reg.h"
+#include "intel_cmtg.h"
 #include "intel_cx0_phy.h"
 #include "intel_cx0_phy_regs.h"
 #include "intel_ddi.h"
@@ -2246,11 +2247,15 @@ void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state)
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	if (intel_tc_port_in_tbt_alt_mode(dig_port))
+	if (intel_tc_port_in_tbt_alt_mode(dig_port)) {
 		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_clock);
-	else
+	} else {
 		intel_lt_phy_pll_enable(encoder, crtc_state);
+		if (crtc->cmtg.enable)
+			intel_cmtg_set_clk_select(crtc_state);
+	}
 }
 
 void intel_xe3plpd_pll_disable(struct intel_encoder *encoder)
-- 
2.29.0

