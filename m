Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0587AC63FE6
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 13:09:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 914A710E36A;
	Mon, 17 Nov 2025 12:09:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qcf0KLEd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1304F10E36A;
 Mon, 17 Nov 2025 12:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763381387; x=1794917387;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3QmJTfKV9ji1aPzGEReFbIdcA5RdWM6UUKDsPymRKLA=;
 b=Qcf0KLEdut98lhL7Rvw5xgZS7sge+ulaUaW5e9hcWIuBNZx6MFF9A7uM
 YmgseVUUVUs/KmCw2GzXxtV1m1ZwrO3uPnGZLcEhAuqEbNrurIWOD/dqD
 PVcyJGmjzIaPD3oVRQAQ0nPgU+ecLlFXa44zTbTSpVz1OhzrkZeWO8dgS
 MUEZD1qNGgMbzbXqUW6qLSvJintwIhM4PsISeGt4m/a8QZnPgAXwRcjw3
 p+GfSc6pQlJIeApFTlV/Vt05yJxCSI+sW61JuM0xmhV3IJPoh3clSvLd6
 88ZrlNNjyWla4Qk0qmc83Tqm16jlR6dXsxmSkXcyzcH8u2KxfhSbn3IZO Q==;
X-CSE-ConnectionGUID: f81UIIxbQUip9ZsBHJiqXQ==
X-CSE-MsgGUID: xRn7sppdRSCGknquEZOuSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="52945778"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="52945778"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 04:09:47 -0800
X-CSE-ConnectionGUID: 4rd2YIbcTxSw6JTArN1J1A==
X-CSE-MsgGUID: nD8JrozlTICO7y1ySR3Fag==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 04:09:45 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>
Subject: [RFC 2/8] drm/i915/cmtg: cmtg set clock select
Date: Mon, 17 Nov 2025 17:12:10 +0530
Message-Id: <20251117114216.1522615-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20251117114216.1522615-1-animesh.manna@intel.com>
References: <20251117114216.1522615-1-animesh.manna@intel.com>
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

Program CMTG Clk Select.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c     | 22 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  2 ++
 .../gpu/drm/i915/display/intel_cmtg_regs.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  8 +++++--
 4 files changed, 32 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 165138b95cb2..4640cafe8dde 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -16,6 +16,7 @@
 #include "intel_display_device.h"
 #include "intel_display_power.h"
 #include "intel_display_regs.h"
+#include "intel_display_types.h"
 
 /**
  * DOC: Common Primary Timing Generator (CMTG)
@@ -186,3 +187,24 @@ void intel_cmtg_sanitize(struct intel_display *display)
 
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
+		clk_sel_clr = CMTG_CLK_SEL_A_MASK;
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
index 945a35578284..9fd54f7e9d1f 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -10,8 +10,10 @@
 
 #define CMTG_CLK_SEL			_MMIO(0x46160)
 #define CMTG_CLK_SEL_A_MASK		REG_GENMASK(31, 29)
+#define CMTG_CLK_SELECT_PHYA_ENABLE	0x4
 #define CMTG_CLK_SEL_A_DISABLED		REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0)
 #define CMTG_CLK_SEL_B_MASK		REG_GENMASK(15, 13)
+#define CMTG_CLK_SELECT_PHYB_ENABLE	0x6
 #define CMTG_CLK_SEL_B_DISABLED		REG_FIELD_PREP(CMTG_CLK_SEL_B_MASK, 0)
 
 #define TRANS_CMTG_CTL_A		_MMIO(0x6fa88)
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index d98b4cf6b60e..32969985d6f7 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -9,6 +9,7 @@
 #include <drm/drm_print.h>
 
 #include "intel_alpm.h"
+#include "intel_cmtg.h"
 #include "intel_cx0_phy.h"
 #include "intel_cx0_phy_regs.h"
 #include "intel_ddi.h"
@@ -3209,10 +3210,13 @@ void intel_mtl_pll_enable(struct intel_encoder *encoder,
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
-	if (intel_tc_port_in_tbt_alt_mode(dig_port))
+	if (intel_tc_port_in_tbt_alt_mode(dig_port)) {
 		intel_mtl_tbt_pll_enable(encoder, crtc_state);
-	else
+	} else {
 		intel_cx0pll_enable(encoder, crtc_state);
+		if (crtc_state->enable_cmtg)
+			intel_cmtg_set_clk_select(crtc_state);
+	}
 }
 
 /*
-- 
2.29.0

