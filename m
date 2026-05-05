Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KJwK6C1+WlKBAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 11:17:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBAB4C9705
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 11:17:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76E6F10EA0F;
	Tue,  5 May 2026 09:17:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PRumxAir";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3603010EA10;
 Tue,  5 May 2026 09:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777972637; x=1809508637;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V5bVK8NgyGJLkuaR4b6HGNPnGvtbV+urlxJB3wYVY1w=;
 b=PRumxAirYP94sS627dR8Bc1HvnrCFXyZ/LA6HC7jp0dat19G3gSKKn18
 csPdJuZ15xOyI1dI++GjskMT70SOFQDkgV1l+2OklAD8sCOc5A330KZ7t
 dp8pAcK06mR5GsWTnPkNtUq9jxyNKlic2c86vQvjm3nufJhlTbKjdbjjR
 PFcqnIe4Pc2+umexqv/ogIbne0TwzlzNiKyfDBmss/mT+n1VVFEevq+yQ
 btknNToLEqoXcEo/e4T1wq2fsFxQg82TEmnWEUNvfk/SRV8CCdgtH9CcU
 kjFwx1tzY5QQXXnsKkdWCmMWxmqGbxvI4qQG3bgz0rTJwz/VWSj02sn3J w==;
X-CSE-ConnectionGUID: UJW1SeRERMajbmiP9haltw==
X-CSE-MsgGUID: NP0DPuKyRWeoR2VEGI9Z5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="78887980"
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="78887980"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 02:17:16 -0700
X-CSE-ConnectionGUID: jEQaFaSlTGu9oUT9hoFyuA==
X-CSE-MsgGUID: zeMsdVuUSMW7/hzdINnTOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="234752676"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.55])
 by orviesa006-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 May 2026 02:17:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>,
 ville.syrjala@linux.intel.com
Subject: [RESEND 4/4] drm/i915/display: define and use intel_reg_{offset, equal,
 valid}() helpers
Date: Tue,  5 May 2026 12:16:48 +0300
Message-ID: <7fe12d4e5465778209ccf29359767a197b031dd9.1777972548.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1777972548.git.jani.nikula@intel.com>
References: <cover.1777972548.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Queue-Id: 5CBAB4C9705
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.966];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

Add display specific helpers for getting the register offset, checking
for equality and validity. Add them as static inlines for increased type
safety.

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h       |  2 +-
 .../drm/i915/display/intel_display_device.c   |  2 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |  2 +-
 .../drm/i915/display/intel_display_reg_defs.h | 15 +++++++++++
 .../drm/i915/display/intel_display_types.h    |  4 +--
 drivers/gpu/drm/i915/display/intel_dmc.c      | 26 +++++++++----------
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   |  6 ++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  4 +--
 drivers/gpu/drm/i915/display/intel_dsb.c      | 10 +++----
 drivers/gpu/drm/i915/display/intel_mchbar.c   |  4 +--
 drivers/gpu/drm/i915/display/intel_pps.c      |  6 ++---
 11 files changed, 48 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index d17f14843f98..102979019429 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -56,7 +56,7 @@ intel_de_read64_2x32_volatile(struct intel_display *display,
 static inline u64
 intel_de_read64_2x32(struct intel_display *display, intel_reg_t reg)
 {
-	intel_reg_t upper_reg = _MMIO(i915_mmio_reg_offset(reg) + 4);
+	intel_reg_t upper_reg = _MMIO(intel_reg_offset(reg) + 4);
 	u32 lower, upper;
 
 	lower = intel_de_read(display, reg);
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 7260990038dd..69a9f782935c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1525,7 +1525,7 @@ probe_gmdid_display(struct intel_display *display, struct intel_display_ip_ver *
 	u32 val;
 	int i;
 
-	addr = pci_iomap_range(pdev, 0, i915_mmio_reg_offset(GMD_ID_DISPLAY), sizeof(u32));
+	addr = pci_iomap_range(pdev, 0, intel_reg_offset(GMD_ID_DISPLAY), sizeof(u32));
 	if (!addr) {
 		drm_err(display->drm,
 			"Cannot map MMIO BAR to read display GMD_ID\n");
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index b679992cb1e6..27fb72e5cefb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -56,7 +56,7 @@ static void assert_iir_is_zero(struct intel_display *display, intel_reg_t reg)
 
 	drm_WARN(display->drm, 1,
 		 "Interrupt register 0x%x is not zero: 0x%08x\n",
-		 i915_mmio_reg_offset(reg), val);
+		 intel_reg_offset(reg), val);
 	intel_de_write(display, reg, 0xffffffff);
 	intel_de_posting_read(display, reg);
 	intel_de_write(display, reg, 0xffffffff);
diff --git a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
index a56f8ed055f6..9220fcbfcb24 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
@@ -10,6 +10,21 @@
 
 typedef i915_reg_t intel_reg_t;
 
+static inline u32 intel_reg_offset(intel_reg_t r)
+{
+	return r.reg;
+}
+
+static inline bool intel_reg_equal(intel_reg_t a, intel_reg_t b)
+{
+	return intel_reg_offset(a) == intel_reg_offset(b);
+}
+
+static inline bool intel_reg_valid(intel_reg_t r)
+{
+	return !intel_reg_equal(r, INVALID_MMIO_REG);
+}
+
 /* A triplet for IMR/IER/IIR registers. */
 struct intel_irq_regs {
 	intel_reg_t imr;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 7fcee3ee319c..c9e69f8a3626 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2117,7 +2117,7 @@ static inline bool intel_encoder_is_dp(struct intel_encoder *encoder)
 		return true;
 	case INTEL_OUTPUT_DDI:
 		/* Skip pure HDMI/DVI DDI encoders */
-		return i915_mmio_reg_valid(enc_to_intel_dp(encoder)->output_reg);
+		return intel_reg_valid(enc_to_intel_dp(encoder)->output_reg);
 	default:
 		return false;
 	}
@@ -2130,7 +2130,7 @@ static inline bool intel_encoder_is_hdmi(struct intel_encoder *encoder)
 		return true;
 	case INTEL_OUTPUT_DDI:
 		/* See if the HDMI encoder is valid. */
-		return i915_mmio_reg_valid(enc_to_intel_hdmi(encoder)->hdmi_reg);
+		return intel_reg_valid(enc_to_intel_hdmi(encoder)->hdmi_reg);
 	default:
 		return false;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 6a39ad19b339..481fb65b7110 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -540,9 +540,9 @@ static u32 dmc_evt_ctl_disable(u32 dmc_evt_ctl)
 static bool is_dmc_evt_ctl_reg(struct intel_display *display,
 			       enum intel_dmc_id dmc_id, intel_reg_t reg)
 {
-	u32 offset = i915_mmio_reg_offset(reg);
-	u32 start = i915_mmio_reg_offset(DMC_EVT_CTL(display, dmc_id, 0));
-	u32 end = i915_mmio_reg_offset(DMC_EVT_CTL(display, dmc_id, DMC_EVENT_HANDLER_COUNT_GEN12));
+	u32 offset = intel_reg_offset(reg);
+	u32 start = intel_reg_offset(DMC_EVT_CTL(display, dmc_id, 0));
+	u32 end = intel_reg_offset(DMC_EVT_CTL(display, dmc_id, DMC_EVENT_HANDLER_COUNT_GEN12));
 
 	return offset >= start && offset < end;
 }
@@ -550,9 +550,9 @@ static bool is_dmc_evt_ctl_reg(struct intel_display *display,
 static bool is_dmc_evt_htp_reg(struct intel_display *display,
 			       enum intel_dmc_id dmc_id, intel_reg_t reg)
 {
-	u32 offset = i915_mmio_reg_offset(reg);
-	u32 start = i915_mmio_reg_offset(DMC_EVT_HTP(display, dmc_id, 0));
-	u32 end = i915_mmio_reg_offset(DMC_EVT_HTP(display, dmc_id, DMC_EVENT_HANDLER_COUNT_GEN12));
+	u32 offset = intel_reg_offset(reg);
+	u32 start = intel_reg_offset(DMC_EVT_HTP(display, dmc_id, 0));
+	u32 end = intel_reg_offset(DMC_EVT_HTP(display, dmc_id, DMC_EVENT_HANDLER_COUNT_GEN12));
 
 	return offset >= start && offset < end;
 }
@@ -578,8 +578,8 @@ static bool fixup_dmc_evt(struct intel_display *display,
 		return false;
 
 	/* make sure reg_ctl and reg_htp are for the same event */
-	if (i915_mmio_reg_offset(reg_ctl) - i915_mmio_reg_offset(DMC_EVT_CTL(display, dmc_id, 0)) !=
-	    i915_mmio_reg_offset(reg_htp) - i915_mmio_reg_offset(DMC_EVT_HTP(display, dmc_id, 0)))
+	if (intel_reg_offset(reg_ctl) - intel_reg_offset(DMC_EVT_CTL(display, dmc_id, 0)) !=
+	    intel_reg_offset(reg_htp) - intel_reg_offset(DMC_EVT_HTP(display, dmc_id, 0)))
 		return false;
 
 	/*
@@ -703,7 +703,7 @@ static void assert_dmc_loaded(struct intel_display *display,
 
 		drm_WARN(display->drm, found != expected,
 			 "DMC %d mmio[%d]/0x%x incorrect (expected 0x%x, current 0x%x)\n",
-			 dmc_id, i, i915_mmio_reg_offset(reg), expected, found);
+			 dmc_id, i, intel_reg_offset(reg), expected, found);
 	}
 }
 
@@ -1146,17 +1146,17 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 
 		drm_dbg_kms(display->drm,
 			    " mmio[%d]: 0x%x = 0x%x->0x%x (EVT_CTL)\n",
-			    i, i915_mmio_reg_offset(dmc_info->mmioaddr[i]),
+			    i, intel_reg_offset(dmc_info->mmioaddr[i]),
 			    orig_mmiodata[0], dmc_info->mmiodata[i]);
 		drm_dbg_kms(display->drm,
 			    " mmio[%d]: 0x%x = 0x%x->0x%x (EVT_HTP)\n",
-			    i+1, i915_mmio_reg_offset(dmc_info->mmioaddr[i+1]),
+			    i+1, intel_reg_offset(dmc_info->mmioaddr[i+1]),
 			    orig_mmiodata[1], dmc_info->mmiodata[i+1]);
 	}
 
 	for (i = 0; i < mmio_count; i++) {
 		drm_dbg_kms(display->drm, " mmio[%d]: 0x%x = 0x%x%s%s\n",
-			    i, i915_mmio_reg_offset(dmc_info->mmioaddr[i]), dmc_info->mmiodata[i],
+			    i, intel_reg_offset(dmc_info->mmioaddr[i]), dmc_info->mmiodata[i],
 			    is_dmc_evt_ctl_reg(display, dmc_id, dmc_info->mmioaddr[i]) ? " (EVT_CTL)" :
 			    is_dmc_evt_htp_reg(display, dmc_id, dmc_info->mmioaddr[i]) ? " (EVT_HTP)" : "",
 			    disable_dmc_evt(display, dmc_id, dmc_info->mmioaddr[i],
@@ -1672,7 +1672,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 	if (intel_dmc_get_dc6_allowed_count(display, &dc6_allowed_count))
 		seq_printf(m, "DC5 -> DC6 allowed count: %d\n",
 			   dc6_allowed_count);
-	else if (i915_mmio_reg_valid(dc6_reg))
+	else if (intel_reg_valid(dc6_reg))
 		seq_printf(m, "DC5 -> DC6 count: %d\n",
 			   intel_de_read(display, dc6_reg));
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 82afb60fa973..605a4a555601 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -227,7 +227,7 @@ static void __intel_dmc_wl_take(struct intel_display *display)
 static bool intel_dmc_wl_reg_in_range(intel_reg_t reg,
 				      const struct intel_dmc_wl_range ranges[])
 {
-	u32 offset = i915_mmio_reg_offset(reg);
+	u32 offset = intel_reg_offset(reg);
 
 	for (int i = 0; ranges[i].start; i++) {
 		u32 end = ranges[i].end ?: ranges[i].start;
@@ -441,7 +441,7 @@ void intel_dmc_wl_get(struct intel_display *display, intel_reg_t reg)
 
 	spin_lock_irqsave(&wl->lock, flags);
 
-	if (i915_mmio_reg_valid(reg) &&
+	if (intel_reg_valid(reg) &&
 	    !intel_dmc_wl_check_range(display, reg, wl->dc_state))
 		goto out_unlock;
 
@@ -474,7 +474,7 @@ void intel_dmc_wl_put(struct intel_display *display, intel_reg_t reg)
 
 	spin_lock_irqsave(&wl->lock, flags);
 
-	if (i915_mmio_reg_valid(reg) &&
+	if (intel_reg_valid(reg) &&
 	    !intel_dmc_wl_check_range(display, reg, wl->dc_state))
 		goto out_unlock;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 6acdfa97deaa..e2e2a1c2a6e3 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3842,9 +3842,9 @@ static void icl_dpll_write(struct intel_display *display,
 	intel_de_write(display, cfgcr0_reg, hw_state->cfgcr0);
 	intel_de_write(display, cfgcr1_reg, hw_state->cfgcr1);
 	drm_WARN_ON_ONCE(display->drm, display->vbt.override_afc_startup &&
-			 !i915_mmio_reg_valid(div0_reg));
+			 !intel_reg_valid(div0_reg));
 	if (display->vbt.override_afc_startup &&
-	    i915_mmio_reg_valid(div0_reg))
+	    intel_reg_valid(div0_reg))
 		intel_de_rmw(display, div0_reg,
 			     TGL_DPLL0_DIV0_AFC_STARTUP_MASK, hw_state->div0);
 	intel_de_posting_read(display, cfgcr1_reg);
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index ce4d452ae695..fec8a56e21ea 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -341,7 +341,7 @@ static bool intel_dsb_prev_ins_is_write(struct intel_dsb *dsb,
 	prev_opcode = dsb->ins[1] & ~DSB_REG_VALUE_MASK;
 	prev_reg =  dsb->ins[1] & DSB_REG_VALUE_MASK;
 
-	return prev_opcode == opcode && prev_reg == i915_mmio_reg_offset(reg);
+	return prev_opcode == opcode && prev_reg == intel_reg_offset(reg);
 }
 
 static bool intel_dsb_prev_ins_is_indexed_write(struct intel_dsb *dsb, intel_reg_t reg)
@@ -386,7 +386,7 @@ void intel_dsb_reg_write_indexed(struct intel_dsb *dsb,
 	if (!intel_dsb_prev_ins_is_indexed_write(dsb, reg))
 		intel_dsb_emit(dsb, 0, /* count */
 			       (DSB_OPCODE_INDEXED_WRITE << DSB_OPCODE_SHIFT) |
-			       i915_mmio_reg_offset(reg));
+			       intel_reg_offset(reg));
 
 	if (!assert_dsb_has_room(dsb))
 		return;
@@ -407,7 +407,7 @@ void intel_dsb_reg_write(struct intel_dsb *dsb,
 	intel_dsb_emit(dsb, val,
 		       (DSB_OPCODE_MMIO_WRITE << DSB_OPCODE_SHIFT) |
 		       (DSB_BYTE_EN << DSB_BYTE_EN_SHIFT) |
-		       i915_mmio_reg_offset(reg));
+		       intel_reg_offset(reg));
 }
 
 static u32 intel_dsb_mask_to_byte_en(u32 mask)
@@ -425,7 +425,7 @@ void intel_dsb_reg_write_masked(struct intel_dsb *dsb,
 	intel_dsb_emit(dsb, val,
 		       (DSB_OPCODE_MMIO_WRITE << DSB_OPCODE_SHIFT) |
 		       (intel_dsb_mask_to_byte_en(mask) << DSB_BYTE_EN_SHIFT) |
-		       i915_mmio_reg_offset(reg));
+		       intel_reg_offset(reg));
 }
 
 void intel_dsb_noop(struct intel_dsb *dsb, int count)
@@ -565,7 +565,7 @@ void intel_dsb_poll(struct intel_dsb *dsb,
 
 	intel_dsb_emit(dsb, val,
 		       (DSB_OPCODE_POLL << DSB_OPCODE_SHIFT) |
-		       i915_mmio_reg_offset(reg));
+		       intel_reg_offset(reg));
 }
 
 static void intel_dsb_align_tail(struct intel_dsb *dsb)
diff --git a/drivers/gpu/drm/i915/display/intel_mchbar.c b/drivers/gpu/drm/i915/display/intel_mchbar.c
index 8cfcee4a08a4..a3a69e11c390 100644
--- a/drivers/gpu/drm/i915/display/intel_mchbar.c
+++ b/drivers/gpu/drm/i915/display/intel_mchbar.c
@@ -44,7 +44,7 @@ static u32 mchbar_mirror_len(struct intel_display *display)
 static bool is_mchbar_reg(struct intel_display *display, intel_reg_t reg)
 {
 	return has_mchbar_mirror(display) &&
-		in_range32(i915_mmio_reg_offset(reg),
+		in_range32(intel_reg_offset(reg),
 			   mchbar_mirror_base(display),
 			   mchbar_mirror_len(display));
 }
@@ -53,7 +53,7 @@ static void assert_is_mchbar_reg(struct intel_display *display, intel_reg_t reg)
 {
 	drm_WARN(display->drm, !is_mchbar_reg(display, reg),
 		 "Reading non-MCHBAR register 0x%x\n",
-		 i915_mmio_reg_offset(reg));
+		 intel_reg_offset(reg));
 }
 
 u16 intel_mchbar_read16(struct intel_display *display, intel_reg_t reg)
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index ea5e8f75acef..d4c98b150fa2 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1388,7 +1388,7 @@ intel_pps_readout_hw_state(struct intel_dp *intel_dp, struct intel_pps_delays *s
 	seq->backlight_off = REG_FIELD_GET(PANEL_LIGHT_OFF_DELAY_MASK, pp_off);
 	seq->power_down = REG_FIELD_GET(PANEL_POWER_DOWN_DELAY_MASK, pp_off);
 
-	if (i915_mmio_reg_valid(regs.pp_div)) {
+	if (intel_reg_valid(regs.pp_div)) {
 		u32 pp_div;
 
 		pp_div = intel_de_read(display, regs.pp_div);
@@ -1647,7 +1647,7 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
 	/*
 	 * Compute the divisor for the pp clock, simply match the Bspec formula.
 	 */
-	if (i915_mmio_reg_valid(regs.pp_div))
+	if (intel_reg_valid(regs.pp_div))
 		intel_de_write(display, regs.pp_div,
 			       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK,
 					      (100 * div) / 2 - 1) |
@@ -1662,7 +1662,7 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
 		    "panel power sequencer register settings: PP_ON %#x, PP_OFF %#x, PP_DIV %#x\n",
 		    intel_de_read(display, regs.pp_on),
 		    intel_de_read(display, regs.pp_off),
-		    i915_mmio_reg_valid(regs.pp_div) ?
+		    intel_reg_valid(regs.pp_div) ?
 		    intel_de_read(display, regs.pp_div) :
 		    (intel_de_read(display, regs.pp_ctrl) & BXT_POWER_CYCLE_DELAY_MASK));
 }
-- 
2.47.3

