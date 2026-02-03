Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPrbI50CgmmYNgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 15:13:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E72AADA6EE
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 15:13:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F34C10E693;
	Tue,  3 Feb 2026 14:13:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KMnY9/vl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AA6D10E698;
 Tue,  3 Feb 2026 14:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770128023; x=1801664023;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tiwkYgZt5Zorrhz5HKomf66E0NJdixzyryNCtAhyCLw=;
 b=KMnY9/vl1fcIY77rFJA0Gslkq3SO7op47q4ybX3vrQAAKye63rMoXcxN
 Ni4D/d8eOvId18OEO+Anad3vYwLLy76WWErXGD1lbDXodyy8ZOxDMSdGO
 ZxMcjvBvRxxrI49u8M7UbaKllCKiICn138qzsDgKEEn49mYbBJ7fxsh6K
 9HdQ4HdGGIBlU1LBOwOY7RUu7hQYnGztqYPYGsatH23jIknxQpbh8GTFT
 SnBEszhGtYEhym4UoPAPQEpU8GyB36sYPq001jL4mff3uebgQNpUKh3vw
 sCZNWF5BbIrkBRuaOAeJuGmgDETPn2zJ8e/kj7R68ZcdCwoZCt+iVy07D w==;
X-CSE-ConnectionGUID: 2ed60qepSCiPtLRxxts9CQ==
X-CSE-MsgGUID: HW/NOLzfTnGS1LnXcp3ncQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="75156459"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="75156459"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 06:13:42 -0800
X-CSE-ConnectionGUID: G0RNyRiQRQWdLpXON+XX9w==
X-CSE-MsgGUID: iXRNL92UQ2Cbf7vtG8jWXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="208956327"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa006.jf.intel.com with ESMTP; 03 Feb 2026 06:13:41 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dibin.moolakadan.subrahmanian@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v2 10/10] drm/i915/cmtg: disable CMTG on transcoder disable
Date: Tue,  3 Feb 2026 19:14:07 +0530
Message-Id: <20260203134407.2823406-11-animesh.manna@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E72AADA6EE
X-Rspamd-Action: no action

From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>

Add intel_cmtg_disable() to disable CMTG when the transcoder is disabled.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c     | 33 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
 .../gpu/drm/i915/display/intel_cmtg_regs.h    |  1 +
 drivers/gpu/drm/i915/display/intel_crt.c      |  1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  1 +
 5 files changed, 34 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index d1ec9b79cef2..844e01b6fc9f 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -18,6 +18,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_vrr.h"
+#include "intel_vrr_regs.h"
 
 /**
  * DOC: Common Primary Timing Generator (CMTG)
@@ -126,8 +127,8 @@ static bool intel_cmtg_disable_requires_modeset(struct intel_display *display,
 	return cmtg_config->trans_a_secondary || cmtg_config->trans_b_secondary;
 }
 
-static void intel_cmtg_disable(struct intel_display *display,
-			       struct intel_cmtg_config *cmtg_config)
+static void intel_cmtg_disable_all(struct intel_display *display,
+				   struct intel_cmtg_config *cmtg_config)
 {
 	u32 clk_sel_clr = 0;
 	u32 clk_sel_set = 0;
@@ -158,6 +159,32 @@ static void intel_cmtg_disable(struct intel_display *display,
 		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
 }
 
+void intel_cmtg_disable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 val;
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
+		drm_WARN(display->drm, 1, "CMTG:%d disable timeout\n", cpu_transcoder);
+		return;
+	}
+
+	drm_dbg_kms(display->drm, "CMTG:%d disabled\n", cpu_transcoder);
+}
 /*
  * Read out CMTG configuration and, on platforms that allow disabling it without
  * a modeset, do it.
@@ -185,7 +212,7 @@ void intel_cmtg_sanitize(struct intel_display *display)
 	if (intel_cmtg_disable_requires_modeset(display, &cmtg_config))
 		return;
 
-	intel_cmtg_disable(display, &cmtg_config);
+	intel_cmtg_disable_all(display, &cmtg_config);
 }
 
 void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index b2bb60d160fa..4f70577be136 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -10,6 +10,7 @@ struct intel_display;
 struct intel_crtc_state;
 
 void intel_cmtg_enable(const struct intel_crtc_state *crtc_state);
+void intel_cmtg_disable(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_sanitize(struct intel_display *display);
 
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index 0ed767a797c0..f11d5514c376 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -21,6 +21,7 @@
 #define TRANS_CMTG_CTL(id)		_MMIO(0x6fa88 + (id) * 0x100)
 #define  CMTG_ENABLE			REG_BIT(31)
 #define  CMTG_SYNC_TO_PORT		REG_BIT(29)
+#define  CMTG_STATE			REG_BIT(23)
 
 #define TRANS_HTOTAL_CMTG(id)		_MMIO(0x6F000 + (id) * 0x100)
 #define TRANS_HBLANK_CMTG(id)		_MMIO(0x6F004 + (id) * 0x100)
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index b71a8d97cdbb..37a6a139f67b 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -35,6 +35,7 @@
 #include <drm/drm_probe_helper.h>
 #include <video/vga.h>
 
+#include "intel_cmtg.h"
 #include "intel_connector.h"
 #include "intel_crt.h"
 #include "intel_crt_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 976af9eb3c3a..622f9b690342 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1773,6 +1773,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	struct intel_crtc *pipe_crtc;
 	int i;
 
+	intel_cmtg_disable(old_crtc_state);
 	/*
 	 * FIXME collapse everything to one hook.
 	 * Need care with mst->ddi interactions.
-- 
2.29.0

