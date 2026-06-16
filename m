Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zaQCLX5FMWo4fwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:45:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F6A68F81C
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:45:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=I9vFz5UF;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA41D10EB20;
	Tue, 16 Jun 2026 12:45:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0120310EB14;
 Tue, 16 Jun 2026 12:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781613946; x=1813149946;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=gAv7EwoAnXXA6Mb7UDZlImBv0s9q+EgbjpJHg0iLJEI=;
 b=I9vFz5UFrkKGPhRfdbOOTIy8a67nkLVH2TIIOiyiIKh0y1nu3QxKY8a0
 yfP1kVIGW/2OYeybE1wD/Aj8MzZlhSNdYW3g8vA8LT2qPktCbBkcVw82w
 RcJ+DF2skznZk4XRjeYUGo1WsHLY5bb11Msf75Y3aBvS3DlDb5VqhG8aB
 jtkeG5ESlF5mgYeUnwC+yc3jTZlvmXKTVOxB5etoLRbwHywH29idrYldK
 uYCa7cCzHQ7yknHDuExbscfKxr1u35dlGDsBSl9rBg2Pxb1Mvt2g6siEb
 fPacYAQdFqe0i6SEquL7L8s5Q2FKFnWy1hx4bayhXgxtZxaDq+cy12BLY w==;
X-CSE-ConnectionGUID: qLmrlPXUSd65fLLiILzVYA==
X-CSE-MsgGUID: L+PsN3YJS/idCPYUr+zTTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="81513258"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="81513258"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:45:46 -0700
X-CSE-ConnectionGUID: 5mUdmRK8S/miZW8+91kiWA==
X-CSE-MsgGUID: gqKszpE7TritIi5wQ8Fzrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="244876327"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:45:45 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v4 22/39] drm/i915/cmtg: Add CMTG interrupt handling
Date: Tue, 16 Jun 2026 18:13:58 +0530
Message-ID: <20260616124416.2442161-23-dibin.moolakadan.subrahmanian@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 60F6A68F81C

From: Animesh Manna <animesh.manna@intel.com>

Add support for the CMTG vblank interrupt, which is delivered
through the DE port interrupt block. Enable/disable the interrupt
via the DE port IMR around CMTG enable/disable, and dispatch the
CMTG_VBLANK_{A,B} bits to the corresponding pipe vblank handler in
the gen8 DE IRQ handler.

Wired up for DISPLAY_VER 35. The CMTG interrupt is not enabled via
IER today because CMTG is brought up together with the eDP
transcoder; this can be revisited later.

v2:
- Use consistent DC3co check as used in earlier patches. [Uma]
- Use else-if instead of separate if block. [Uma]
- Merge mask and unmask function as it is similar. [Uma]
- Modify DISPLAY_VER() check. [Uma]

v3:
- Enable only vblank interrupt. [Dibin]

v4:
- Keep irq related code to intel_display_irq.c. [Jani, Uma]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c     | 24 ++++++++++++++++++-
 .../gpu/drm/i915/display/intel_display_irq.c  | 19 +++++++++++++++
 .../gpu/drm/i915/display/intel_display_irq.h  |  2 ++
 .../gpu/drm/i915/display/intel_display_regs.h |  2 ++
 4 files changed, 46 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index ae59d7e755f3..6da28c185080 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -14,6 +14,7 @@
 #include "intel_de.h"
 #include "intel_display.h"
 #include "intel_display_device.h"
+#include "intel_display_irq.h"
 #include "intel_display_power.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
@@ -177,7 +178,7 @@ void intel_cmtg_disable(const struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	enum transcoder cmtg_transcoder = to_cmtg_transcoder(crtc_state->cpu_transcoder);
-	u32 clk_sel_clr = 0;
+	u32 clk_sel_clr = 0, interrupt_mask = 0;
 
 	if (!crtc->cmtg.enabled)
 		return;
@@ -210,6 +211,13 @@ void intel_cmtg_disable(const struct intel_crtc_state *crtc_state)
 	intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, 0);
 
 	drm_dbg_kms(display->drm, "CMTG: %s disabled\n", transcoder_name(cpu_transcoder));
+
+	if (cpu_transcoder == TRANSCODER_A)
+		interrupt_mask = CMTG_VBLANK_A;
+	else if (cpu_transcoder == TRANSCODER_B)
+		interrupt_mask = CMTG_VBLANK_B;
+
+	intel_display_irq_port_interrupt_mask(display, interrupt_mask, true);
 }
 
 /*
@@ -355,11 +363,25 @@ static void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 interrupt_mask = 0;
 
 	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, cpu_transcoder), 0, CMTG_SECONDARY_MODE);
 	intel_de_rmw(display, CMTG_SCANLINE_GB1(cpu_transcoder), 0, CMTG_HW_GB_ENABLE);
 	crtc->cmtg.enabled = true;
 	drm_dbg_kms(display->drm, "CMTG: %s enabled\n", transcoder_name(cpu_transcoder));
+
+	/*
+	 * TODO: Currently cmtg is enabled along with eDP transcoder so cmtg
+	 * interrupt is not enabled through IER, need to do some fine
+	 * tuning in future.
+	 */
+
+	if (cpu_transcoder == TRANSCODER_A)
+		interrupt_mask = CMTG_VBLANK_A;
+	else if (cpu_transcoder == TRANSCODER_B)
+		interrupt_mask = CMTG_VBLANK_B;
+
+	intel_display_irq_port_interrupt_mask(display, interrupt_mask, false);
 }
 
 /* Bspec: 75253 */
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 4a821b0674fd..bcb0ee22fb56 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1469,6 +1469,18 @@ static void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
 				found = true;
 			}
 
+			if (DISPLAY_VER(display) == 35) {
+				if (iir & CMTG_VBLANK_A) {
+					intel_handle_vblank(display, PIPE_A);
+					found = true;
+				}
+
+				if (iir & CMTG_VBLANK_B) {
+					intel_handle_vblank(display, PIPE_B);
+					found = true;
+				}
+			}
+
 			if (DISPLAY_VER(display) >= 11) {
 				u32 te_trigger = iir & (DSI0_TE | DSI1_TE);
 
@@ -2666,3 +2678,10 @@ void intel_display_irq_snapshot_print(const struct intel_display_irq_snapshot *s
 	drm_printf(p, "DERRMR: 0x%08x\n", snapshot->derrmr);
 	drm_printf(p, "ERR_INT: 0x%08x\n", snapshot->err_int);
 }
+
+void intel_display_irq_port_interrupt_mask(struct intel_display *display, u32 bits, bool mask)
+{
+	spin_lock_irq(&display->irq.lock);
+	bdw_update_port_irq(display, bits, mask ? 0 : bits);
+	spin_unlock_irq(&display->irq.lock);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index a1227cee885a..84446bf53401 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -82,4 +82,6 @@ void i915gm_irq_cstate_wa(struct intel_display *display, bool enable);
 struct intel_display_irq_snapshot *intel_display_irq_snapshot_capture(struct intel_display *display);
 void intel_display_irq_snapshot_print(const struct intel_display_irq_snapshot *snapshot, struct drm_printer *p);
 
+void intel_display_irq_port_interrupt_mask(struct intel_display *display, u32 bits, bool mask);
+
 #endif /* __INTEL_DISPLAY_IRQ_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 4321f8b529da..fe851fe39222 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -1458,6 +1458,8 @@
 #define  GEN9_AUX_CHANNEL_B		(1 << 25)
 #define  DSI1_TE			(1 << 24)
 #define  DSI0_TE			(1 << 23)
+#define  CMTG_VBLANK_B			(1 << 17)
+#define  CMTG_VBLANK_A			(1 << 14)
 #define  GEN8_DE_PORT_HOTPLUG(hpd_pin)	REG_BIT(3 + _HPD_PIN_DDI(hpd_pin))
 #define  BXT_DE_PORT_HOTPLUG_MASK	(GEN8_DE_PORT_HOTPLUG(HPD_PORT_A) | \
 					 GEN8_DE_PORT_HOTPLUG(HPD_PORT_B) | \
-- 
2.43.0

