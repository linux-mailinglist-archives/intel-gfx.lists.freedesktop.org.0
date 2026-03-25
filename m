Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6CxfMT/Cw2kOuAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B82323929
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AA0110E879;
	Wed, 25 Mar 2026 11:08:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SRO2zkL2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C81910E87A;
 Wed, 25 Mar 2026 11:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774436925; x=1805972925;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KL4dwsYvgWbDAobMyvtsUYhpckMd07nm/ahaFGwRDCY=;
 b=SRO2zkL22li4f0fMkwdIa+OwAI+9gdiygDg9MbCab0DVcHtgtEBy3AIB
 +cgOgNS/Crud4rQp0QrIaiMEHsB2+ZCeMNpo6hMnbHkotj7hhrSUUKO2Z
 FyX3PoB7XJsGFm5RhXb5DBF5IU4MIWrrDaZ2UwK95oXrqnp9pfl7fawaa
 0JwEdlW32McQNwlBICl+GToPoawXbVNbL5eG8xa3iZp5j9ovI2rNGkeh3
 mgnH0cdBXELxWs4lZvzk8mrhDrrOABtrChUNQCsD13Fye2YpySw9qv7hu
 04phB6/BzATr0V1LUC3agiLUvIcKKMRnArlIg0R7ff3y3j+chwpE1QFJd g==;
X-CSE-ConnectionGUID: FL6hQzOPRzqhOURCw/y5RA==
X-CSE-MsgGUID: jtYey6DwSs2fvy7Z3wgClQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="93047540"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="93047540"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 04:08:45 -0700
X-CSE-ConnectionGUID: mP6RcbjaTgyBAPSJpfxU+g==
X-CSE-MsgGUID: ik8FH+zuQZGAkhqx5XdCLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="219798436"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 25 Mar 2026 04:08:43 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 22/26] drm/i915/writeback: Enable writeback interrupts
Date: Wed, 25 Mar 2026 16:37:40 +0530
Message-Id: <20260325110744.1096786-23-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260325110744.1096786-1-suraj.kandpal@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
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
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 77B82323929
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable writeback interrupts while enabling writeback
and define the isr handler and schedule work for later
to signal completion job.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 10 ++++
 .../gpu/drm/i915/display/intel_display_regs.h |  1 +
 .../gpu/drm/i915/display/intel_writeback.c    | 50 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_writeback.h    |  1 +
 4 files changed, 62 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 70c1bba7c0a8..656fb314b985 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -29,6 +29,8 @@
 #include "intel_pmdemand.h"
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
+#include "intel_writeback.h"
+#include "intel_writeback_reg.h"
 
 static void irq_reset(struct intel_display *display, struct i915_irq_regs regs)
 {
@@ -1281,6 +1283,11 @@ gen8_de_misc_irq_handler(struct intel_display *display, u32 iir)
 		found = true;
 	}
 
+	if (iir & (GEN8_DE_MISC_WD0)) {
+		intel_writeback_isr_handler(display);
+		found = true;
+	}
+
 	if (iir & GEN8_DE_EDP_PSR) {
 		struct intel_encoder *encoder;
 		u32 psr_iir;
@@ -2337,6 +2344,9 @@ void gen8_de_irq_postinstall(struct intel_display *display)
 	if (DISPLAY_VER(display) < 11)
 		de_misc_masked |= GEN8_DE_MISC_GSE;
 
+	if (DISPLAY_VER(display) >= 13)
+		de_misc_masked |= GEN8_DE_MISC_WD0;
+
 	if (display->platform.geminilake || display->platform.broxton)
 		de_port_masked |= BXT_DE_PORT_GMBUS;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 4746e9ebd920..e637b10597c2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -1495,6 +1495,7 @@
 #define  XELPDP_RM_TIMEOUT		REG_BIT(29)
 #define  XELPDP_PMDEMAND_RSPTOUT_ERR	REG_BIT(27)
 #define  GEN8_DE_MISC_GSE		REG_BIT(27)
+#define  GEN8_DE_MISC_WD0		REG_BIT(23)
 #define  GEN8_DE_EDP_PSR		REG_BIT(19)
 #define  XELPDP_PMDEMAND_RSP		REG_BIT(3)
 #define  XE2LPD_DBUF_OVERLAP_DETECTED	REG_BIT(1)
diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index 54e74450e080..864d4a28de10 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -14,6 +14,7 @@
 #include <drm/drm_encoder.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_gem_framebuffer_helper.h>
+#include <drm/drm_vblank.h>
 
 #include "intel_atomic.h"
 #include "intel_connector.h"
@@ -323,6 +324,20 @@ void intel_writeback_atomic_commit(struct intel_atomic_state *state)
 	}
 }
 
+static void
+intel_writeback_enable_interrupts(struct intel_display *display,
+				  enum transcoder trans)
+{
+	u32 tmp;
+
+	tmp = intel_de_read(display, WD_IIR(trans));
+	intel_de_write_fw(display, WD_IIR(trans), tmp);
+
+	tmp = ~(WD_GTT_FAULT_INT | WD_WRITE_COMPLETE_INT |
+		WD_VBLANK_INT | WD_CAPTURING_INT);
+	intel_de_write(display, WD_IMR(trans), tmp);
+}
+
 static void intel_writeback_enable_encoder(struct intel_atomic_state *state,
 					   struct intel_encoder *encoder,
 					   const struct intel_crtc_state *crtc_state,
@@ -348,6 +363,7 @@ static void intel_writeback_enable_encoder(struct intel_atomic_state *state,
 	fb = job->fb;
 	hactive = adjusted_mode->hdisplay;
 	vactive = adjusted_mode->vdisplay;
+	intel_writeback_enable_interrupts(display, trans);
 
 	/* Configure WD_STRIDE, WD_SURF and WD_TAIL_CFG */
 	/* Enable Planes, Pipes and Transcoder */
@@ -509,6 +525,40 @@ intel_writeback_get_hw_state(struct intel_encoder *encoder,
 	return true;
 }
 
+void intel_writeback_isr_handler(struct intel_display *display)
+{
+	struct intel_encoder *encoder;
+	struct intel_writeback_connector *wb_conn;
+	struct intel_crtc *crtc;
+	u32 iir;
+
+	for_each_intel_encoder(display->drm, encoder) {
+		if (encoder->type != INTEL_OUTPUT_WRITEBACK)
+			continue;
+
+		wb_conn = enc_to_intel_writeback_connector(encoder);
+		if (!wb_conn->job) {
+			drm_err(display->drm, "No writeback job for the connector\n");
+			continue;
+		}
+
+		crtc = intel_crtc_for_pipe(display, wb_conn->pipe);
+		iir = intel_de_read(display, WD_IIR(wb_conn->trans));
+		if (iir & WD_GTT_FAULT_INT)
+			drm_err(display->drm, " GTT fault during writeback\n");
+		if (iir & WD_WRITE_COMPLETE_INT)
+			drm_dbg_kms(display->drm, "Writeback job write completed\n");
+		if (iir & WD_VBLANK_INT) {
+			drm_crtc_handle_vblank(&crtc->base);
+			drm_dbg_kms(display->drm, "Writeback vblank raised\n");
+		}
+		if (iir & WD_CAPTURING_INT)
+			drm_dbg_kms(display->drm, "Writeback job capture has started\n");
+
+		intel_de_write(display, WD_IIR(wb_conn->trans), iir);
+	}
+}
+
 int intel_writeback_init(struct intel_display *display)
 {
 	struct intel_encoder *encoder;
diff --git a/drivers/gpu/drm/i915/display/intel_writeback.h b/drivers/gpu/drm/i915/display/intel_writeback.h
index 3c145cf73e20..83a986753c4c 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.h
+++ b/drivers/gpu/drm/i915/display/intel_writeback.h
@@ -16,6 +16,7 @@ struct intel_writeback_connector;
 
 int intel_writeback_init(struct intel_display *display);
 void intel_writeback_atomic_commit(struct intel_atomic_state *state);
+void intel_writeback_isr_handler(struct intel_display *display);
 
 #endif /* __INTEL_WRITEBACK_H__ */
 
-- 
2.34.1

