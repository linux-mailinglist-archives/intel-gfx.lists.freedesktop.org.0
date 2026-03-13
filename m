Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SAX5GDk1tGn4igAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 17:03:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E4A286907
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 17:03:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C62E10E463;
	Fri, 13 Mar 2026 16:03:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hoq4D7XC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2982710E463;
 Fri, 13 Mar 2026 16:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773417782; x=1804953782;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s00Dwv1uozgEyukZBN2B9lHY/gPN6li6PfNqQkoNuTc=;
 b=Hoq4D7XChXQfDf6Y5rhMrJYzJgLFk6ivr6AgfNqpwG+fZx4WsCGhJo/+
 JNqlyWd4PiVd6VWLqS+ejjQk8nxTnOHYU6isVkQtEmok9SqWDy9QZfVXz
 ayRARVQin5VeB+VUA4VzllePNxy9xCl0b4hR9BOcJ4UJV5e6ELUwQWiZK
 hanDwXp4SWgPJUzhJtwxRrEo4yyQhbW41h3gecGQIoc+S0wvsJyE9paQ8
 U0WysQx0gv+aPztcuwgeRJNcVZ4LyWVKU+0VGUva9BIEPmQt+vlwzGhXv
 oVjur8GpPcfuXSXEwYRoCinDEoqZMNObwdGK5J3HdfVh0XRzsLXlOuJrH A==;
X-CSE-ConnectionGUID: fvI23o0JQa+wqBKLoKri+Q==
X-CSE-MsgGUID: +oAP2bIgRwWOAGekC24aEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11728"; a="74715314"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="74715314"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 09:03:02 -0700
X-CSE-ConnectionGUID: R0X9LvlYTZmivxORaDtUxQ==
X-CSE-MsgGUID: pMyCYz96TyyqPdndO/lIUQ==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 13 Mar 2026 09:03:00 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, uma.shankar@intel.com,
 dibin.moolakadan.subrahmanian@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v3 03/12] drm/i915/cmtg: set timings for CMTG
Date: Fri, 13 Mar 2026 21:02:51 +0530
Message-Id: <20260313153300.3530695-4-animesh.manna@intel.com>
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
X-Rspamd-Queue-Id: 14E4A286907
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Timing registers are separate for CMTG, read transcoder register
and program cmtg transcoder with those values.

v2:
- Use sw state instead of reading directly from hardware. [Jani]
- Move set_timing later after encoder enable. [Dibin]

v3:
- replace id with trans. [Jani]
- program cmtg set_timing() along with primary transcoder timing.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c     | 48 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  3 ++
 .../gpu/drm/i915/display/intel_cmtg_regs.h    |  9 ++++
 drivers/gpu/drm/i915/display/intel_display.c  |  4 ++
 4 files changed, 63 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 644522b96288..e0f12925f5c2 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -4,7 +4,6 @@
  */
 
 #include <linux/string_choices.h>
-#include <linux/types.h>
 
 #include <drm/drm_device.h>
 #include <drm/drm_print.h>
@@ -223,3 +222,50 @@ void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state)
 	if (clk_sel_set)
 		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
 }
+
+void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bool lrr)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
+
+	if (!intel_cmtg_is_allowed(crtc_state))
+		return;
+
+	crtc_vdisplay = adjusted_mode->crtc_vdisplay;
+	crtc_vtotal = 1;
+	crtc_vblank_start = 1;
+	crtc_vblank_end = adjusted_mode->crtc_vblank_end;
+
+	if (lrr) {
+		intel_de_write(display, TRANS_VTOTAL_CMTG(cpu_transcoder),
+			       VACTIVE(crtc_vdisplay - 1) |
+			       VTOTAL(crtc_vtotal - 1));
+		intel_de_write(display, TRANS_VBLANK_CMTG(cpu_transcoder),
+			       VBLANK_START(crtc_vblank_start - 1) |
+			       VBLANK_END(crtc_vblank_end - 1));
+		return;
+	}
+
+	intel_de_write(display, TRANS_HTOTAL_CMTG(cpu_transcoder),
+		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
+		       HTOTAL(adjusted_mode->crtc_htotal - 1));
+	intel_de_write(display, TRANS_HBLANK_CMTG(cpu_transcoder),
+		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
+		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
+	intel_de_write(display, TRANS_HSYNC_CMTG(cpu_transcoder),
+		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
+		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
+	intel_de_write(display, TRANS_VTOTAL_CMTG(cpu_transcoder),
+		       VACTIVE(crtc_vdisplay - 1) |
+		       VTOTAL(crtc_vtotal - 1));
+	intel_de_write(display, TRANS_VBLANK_CMTG(cpu_transcoder),
+		       VBLANK_START(crtc_vblank_start - 1) |
+		       VBLANK_END(crtc_vblank_end - 1));
+	intel_de_write(display, TRANS_VSYNC_CMTG(cpu_transcoder),
+		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
+		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
+	intel_de_write(display, TRANS_SET_CTX_LATENCY_CMTG(cpu_transcoder),
+		       crtc_state->set_context_latency);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index 660ec513626e..53a44f505dd2 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -6,9 +6,12 @@
 #ifndef __INTEL_CMTG_H__
 #define __INTEL_CMTG_H__
 
+#include <linux/types.h>
+
 struct intel_display;
 struct intel_crtc_state;
 
+void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bool lrr);
 void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_sanitize(struct intel_display *display);
 bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index 8a767b659a23..60714a2080c7 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -20,4 +20,13 @@
 #define TRANS_CMTG_CTL_B		_MMIO(0x6fb88)
 #define  CMTG_ENABLE			REG_BIT(31)
 
+#define TRANS_HTOTAL_CMTG(trans)	_MMIO(0x6F000 + (trans) * 0x100)
+#define TRANS_HBLANK_CMTG(trans)	_MMIO(0x6F004 + (trans) * 0x100)
+#define TRANS_HSYNC_CMTG(trans)		_MMIO(0x6F008 + (trans) * 0x100)
+#define TRANS_VTOTAL_CMTG(trans)	_MMIO(0x6F00C + (trans) * 0x100)
+#define TRANS_VBLANK_CMTG(trans)	_MMIO(0x6F010 + (trans) * 0x100)
+#define TRANS_VSYNC_CMTG(trans)		_MMIO(0x6F014 + (trans) * 0x100)
+
+#define TRANS_SET_CTX_LATENCY_CMTG(trans)	_MMIO(0x6F07C + (trans) * 0x100)
+
 #endif /* __INTEL_CMTG_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b18ce0c36a64..82e4d0524d54 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -61,6 +61,7 @@
 #include "intel_casf.h"
 #include "intel_cdclk.h"
 #include "intel_clock_gating.h"
+#include "intel_cmtg.h"
 #include "intel_color.h"
 #include "intel_crt.h"
 #include "intel_crtc.h"
@@ -2775,6 +2776,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 		intel_de_write(display, DP_MIN_HBLANK_CTL(cpu_transcoder),
 			       crtc_state->min_hblank);
 	}
+
+	intel_cmtg_set_timings(crtc_state, false);
 }
 
 static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state)
@@ -2836,6 +2839,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 		       VACTIVE(crtc_vdisplay - 1) |
 		       VTOTAL(crtc_vtotal - 1));
 
+	intel_cmtg_set_timings(crtc_state, true);
 	intel_vrr_set_fixed_rr_timings(crtc_state);
 	intel_vrr_transcoder_enable(crtc_state);
 }
-- 
2.29.0

