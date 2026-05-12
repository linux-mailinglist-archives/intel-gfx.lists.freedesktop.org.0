Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCJ3AkkzA2oA1gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 16:03:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE153521EAB
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 16:03:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2328510EB37;
	Tue, 12 May 2026 14:03:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kmull3HB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26F2510EB37;
 Tue, 12 May 2026 14:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778594631; x=1810130631;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jfKB4iaBn/MWpKiq/GLE9zcuEo+4eQymYfIm95ViMcc=;
 b=kmull3HBfYRAvLlR98TLEU+PU5FTHRIZrkX/P8Di6oqTjt9O+ASsEy+V
 Lild1IjEv+yGrNdQ2cTAKWURdnduKHYPrWgBfL8YuDxHqaJMnEUgemZ2J
 yrHbCAffjRuxvWPSGXqu21VbiHQWvMdprYBlcmL4m/eZqPx/wqyMkKMy2
 KZnKW4DVTU88MuuPe2BqkTG/ui+1cVPhdrvV/SdGTFoBjxavcUkQJnVbH
 ZSfYwExV8MepQrMGLPHS2TuG7lEBzAwUsE8QAkabIjfJEh9FOCG4qBXNZ
 SYnBzoAA3RDImgmAeYbDphinc54z672AD2abMaGX7+T0hKM97ERWoYdE1 w==;
X-CSE-ConnectionGUID: RWnUEB7mTWmO2/cNzfT1VQ==
X-CSE-MsgGUID: M2zIDx0qQMS7ie45TMZALg==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="89806382"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="89806382"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 07:03:51 -0700
X-CSE-ConnectionGUID: O7yaSje5RfSWM9dfry2iLw==
X-CSE-MsgGUID: O/gkCvO0QPmZTpAsU+qxfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="233311396"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa006.fm.intel.com with ESMTP; 12 May 2026 07:03:47 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v5 11/15] drm/i915/cmtg: Add CMTG interrupt handling
Date: Tue, 12 May 2026 19:02:04 +0530
Message-Id: <20260512133208.1363116-12-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260512133208.1363116-1-animesh.manna@intel.com>
References: <20260512133208.1363116-1-animesh.manna@intel.com>
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
X-Rspamd-Queue-Id: AE153521EAB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

Add support fot vsync, vblank, and delayed vlank interrupts of
CMTG which are part of DE port interrupt.

v2:
- Use consistent DC3co check as used in earlier patches. [Uma]
- Use else-if instead of separate if block. [Uma]
- Merge mask and unmask function as it is similar. [Uma]
- Modify DISPLAY_VER() check. [Uma]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c     | 42 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  2 +
 .../gpu/drm/i915/display/intel_display_irq.c  | 12 ++++++
 .../gpu/drm/i915/display/intel_display_regs.h |  6 +++
 4 files changed, 62 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 2ebab6f56c8b..e70e4c0941d5 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -13,6 +13,7 @@
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_device.h"
+#include "intel_display_irq.h"
 #include "intel_display_power.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
@@ -406,3 +407,44 @@ void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
 
 	drm_dbg_kms(display->drm, "CMTG: %s enabled\n", transcoder_name(cpu_transcoder));
 }
+
+static void intel_cmtg_mask_interrupt(const struct intel_crtc_state *crtc_state, bool mask)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 interrupt_mask = 0;
+
+	if (!intel_cmtg_is_supported(crtc_state))
+		return;
+
+	if (cpu_transcoder == TRANSCODER_A)
+		interrupt_mask = CMTG_VBLANK_A | CMTG_DELAYED_VBLANK_A | CMTG_VSYNC_A;
+	else if (cpu_transcoder == TRANSCODER_B)
+		interrupt_mask = CMTG_VBLANK_B | CMTG_DELAYED_VBLANK_B | CMTG_VSYNC_B;
+
+	if (mask)
+		bdw_update_port_irq(display, interrupt_mask, 0);
+	else
+		bdw_update_port_irq(display, interrupt_mask, interrupt_mask);
+}
+
+void intel_cmtg_enable_interrupt(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (!intel_cmtg_is_allowed(crtc_state))
+		return;
+
+	spin_lock_irq(&display->irq.lock);
+	intel_cmtg_mask_interrupt(crtc_state, false);
+	spin_unlock_irq(&display->irq.lock);
+}
+
+void intel_cmtg_disable_interrupt(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	spin_lock_irq(&display->irq.lock);
+	intel_cmtg_mask_interrupt(crtc_state, true);
+	spin_unlock_irq(&display->irq.lock);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index 79785afccc51..8fcb44d6398f 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -21,5 +21,7 @@ void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bool lrr)
 void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_sanitize(struct intel_display *display);
 bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
+void intel_cmtg_enable_interrupt(const struct intel_crtc_state *crtc_state);
+void intel_cmtg_disable_interrupt(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_CMTG_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index b5bfdebc66ca..cf5881d96587 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1467,6 +1467,18 @@ void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
 				found = true;
 			}
 
+			if (DISPLAY_VER(display) == 35) {
+				if (iir & (CMTG_VBLANK_A | CMTG_VSYNC_A | CMTG_DELAYED_VBLANK_A)) {
+					intel_handle_vblank(display, PIPE_A);
+					found = true;
+				}
+
+				if (iir & (CMTG_VBLANK_B | CMTG_VSYNC_B | CMTG_DELAYED_VBLANK_B)) {
+					intel_handle_vblank(display, PIPE_B);
+					found = true;
+				}
+			}
+
 			if (DISPLAY_VER(display) >= 11) {
 				u32 te_trigger = iir & (DSI0_TE | DSI1_TE);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index bc508995ad8b..a5ffe5420b0b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -1458,6 +1458,12 @@
 #define  GEN9_AUX_CHANNEL_B		(1 << 25)
 #define  DSI1_TE			(1 << 24)
 #define  DSI0_TE			(1 << 23)
+#define  CMTG_VSYNC_B			(1 << 19)
+#define  CMTG_DELAYED_VBLANK_B		(1 << 18)
+#define  CMTG_VBLANK_B			(1 << 17)
+#define  CMTG_VSYNC_A			(1 << 16)
+#define  CMTG_DELAYED_VBLANK_A		(1 << 15)
+#define  CMTG_VBLANK_A			(1 << 14)
 #define  GEN8_DE_PORT_HOTPLUG(hpd_pin)	REG_BIT(3 + _HPD_PIN_DDI(hpd_pin))
 #define  BXT_DE_PORT_HOTPLUG_MASK	(GEN8_DE_PORT_HOTPLUG(HPD_PORT_A) | \
 					 GEN8_DE_PORT_HOTPLUG(HPD_PORT_B) | \
-- 
2.29.0

