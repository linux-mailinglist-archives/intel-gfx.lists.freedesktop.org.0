Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1D7A1412C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 18:48:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1A9110E9E2;
	Thu, 16 Jan 2025 17:48:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZAj/1cdC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B071310E576;
 Thu, 16 Jan 2025 17:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737049705; x=1768585705;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h4WmsYmiAaoKe4X8VJ3aB25rjQi7DaRHy506olMBbGA=;
 b=ZAj/1cdCuWSrFHl47bQlnuHko8tb3UvzZKzoXdH9q4s89ZiQl2ykzpOk
 psksuJZSMqFFpWM8EOTnmvKoiE/AJjcABihzaL+hELxWc6XLfGz/MEp8+
 K8i2Q6IiuFw5yA9Q/AUhWcyYWGgHI+NzMQksHe2HIRNX6ltK9By9N/L99
 AHUZvbsFql4VgUUl+EGllDWrMSCWe/G8EZGbEp+WQfr4DYsPFndZGoZia
 2Oj3cwWznZOVVLv+vglxp0bDk3YyKWQI963YZ37YDxRRQtLLksmK64MiH
 /M1VGv6vKq9tEE3H2hpGcNPA+akPu9zwxtykFbnclolo1OH811Ob/XPPM Q==;
X-CSE-ConnectionGUID: QscAcrTgQouaBqXPWaEzNQ==
X-CSE-MsgGUID: 0v++3NQVRO2vmrjWAb4xhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="48847613"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="48847613"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 09:48:25 -0800
X-CSE-ConnectionGUID: LZITXMSbQAWCEGNDivVlHg==
X-CSE-MsgGUID: RrSF0KngRreHHbB8+dGXeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="105712645"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Jan 2025 09:48:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jan 2025 19:48:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 8/8] drm/i915: Hook up display fault interrupts for VLV/CHV
Date: Thu, 16 Jan 2025 19:47:58 +0200
Message-ID: <20250116174758.18298-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250116174758.18298-1-ville.syrjala@linux.intel.com>
References: <20250116174758.18298-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Hook up the display fault irq handlers for VLV/CHV.

Unfortunately the actual hardware doesn't agree with the
spec on how DPINVGTT should behave. The docs claim that
the status bits can be cleared by writing '1' to them,
but in reality there doesn't seem to be any way to clear
them. So we must disable and ignore any fault we've already
seen in the past. The entire register does reset when
the display power well goes down, so we can just always
re-enable all the bits in irq postinstall without having
to track the state beyond that.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 131 +++++++++++++++++-
 .../gpu/drm/i915/display/intel_display_irq.h  |   3 +
 drivers/gpu/drm/i915/i915_irq.c               |  14 ++
 drivers/gpu/drm/i915/i915_reg.h               |  10 ++
 drivers/gpu/drm/xe/display/ext/i915_irq.c     |  23 +++
 5 files changed, 180 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index c80183b0acaf..071b7fdf7da3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1729,6 +1729,115 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
 		schedule_work(&display->irq.vblank_dc_work);
 }
 
+static u32 vlv_dpinvgtt_pipe_fault_mask(enum pipe pipe)
+{
+	switch (pipe) {
+	case PIPE_A:
+		return SPRITEB_INVALID_GTT_STATUS |
+			SPRITEA_INVALID_GTT_STATUS |
+			PLANEA_INVALID_GTT_STATUS |
+			CURSORA_INVALID_GTT_STATUS;
+	case PIPE_B:
+		return SPRITED_INVALID_GTT_STATUS |
+			SPRITEC_INVALID_GTT_STATUS |
+			PLANEB_INVALID_GTT_STATUS |
+			CURSORB_INVALID_GTT_STATUS;
+	case PIPE_C:
+		return SPRITEF_INVALID_GTT_STATUS |
+			SPRITEE_INVALID_GTT_STATUS |
+			PLANEC_INVALID_GTT_STATUS |
+			CURSORC_INVALID_GTT_STATUS;
+	default:
+		return 0;
+	}
+}
+
+static const struct pipe_fault_handler vlv_pipe_fault_handlers[] = {
+	{ .fault = SPRITEB_INVALID_GTT_STATUS, .handle = handle_plane_fault, .plane_id = PLANE_SPRITE1, },
+	{ .fault = SPRITEA_INVALID_GTT_STATUS, .handle = handle_plane_fault, .plane_id = PLANE_SPRITE0, },
+	{ .fault = PLANEA_INVALID_GTT_STATUS,  .handle = handle_plane_fault, .plane_id = PLANE_PRIMARY, },
+	{ .fault = CURSORA_INVALID_GTT_STATUS, .handle = handle_plane_fault, .plane_id = PLANE_CURSOR,  },
+	{ .fault = SPRITED_INVALID_GTT_STATUS, .handle = handle_plane_fault, .plane_id = PLANE_SPRITE1, },
+	{ .fault = SPRITEC_INVALID_GTT_STATUS, .handle = handle_plane_fault, .plane_id = PLANE_SPRITE0, },
+	{ .fault = PLANEB_INVALID_GTT_STATUS,  .handle = handle_plane_fault, .plane_id = PLANE_PRIMARY, },
+	{ .fault = CURSORB_INVALID_GTT_STATUS, .handle = handle_plane_fault, .plane_id = PLANE_CURSOR,  },
+	{ .fault = SPRITEF_INVALID_GTT_STATUS, .handle = handle_plane_fault, .plane_id = PLANE_SPRITE1, },
+	{ .fault = SPRITEE_INVALID_GTT_STATUS, .handle = handle_plane_fault, .plane_id = PLANE_SPRITE0, },
+	{ .fault = PLANEC_INVALID_GTT_STATUS,  .handle = handle_plane_fault, .plane_id = PLANE_PRIMARY, },
+	{ .fault = CURSORC_INVALID_GTT_STATUS, .handle = handle_plane_fault, .plane_id = PLANE_CURSOR,  },
+	{}
+};
+
+static void vlv_page_table_error_irq_ack(struct drm_i915_private *i915, u32 *dpinvgtt)
+{
+	u32 status, enable, tmp;
+
+	tmp = intel_uncore_read(&i915->uncore, DPINVGTT);
+
+	enable = tmp >> 16;
+	status = tmp & 0xffff;
+
+	/*
+	 * Despite what the docs claim, the status bits seem to get
+	 * stuck permanently (similar the old PGTBL_ER register), so
+	 * we have to disable and ignore them once set. They do get
+	 * reset if the display power well goes down, so no need to
+	 * track the enable mask explicitly.
+	 */
+	*dpinvgtt = status & enable;
+	enable &= ~status;
+
+	/* customary ack+disable then re-enable to guarantee an edge */
+	intel_uncore_write(&i915->uncore, DPINVGTT, status);
+	intel_uncore_write(&i915->uncore, DPINVGTT, enable << 16);
+}
+
+static void vlv_page_table_error_irq_handler(struct drm_i915_private *i915, u32 dpinvgtt)
+{
+	struct intel_display *display = &i915->display;
+	enum pipe pipe;
+
+	for_each_pipe(i915, pipe) {
+		u32 fault_errors;
+
+		fault_errors = dpinvgtt & vlv_dpinvgtt_pipe_fault_mask(pipe);
+		if (fault_errors)
+			intel_pipe_fault_irq_handler(display, vlv_pipe_fault_handlers,
+						     pipe, fault_errors);
+	}
+}
+
+void vlv_display_error_irq_ack(struct drm_i915_private *dev_priv,
+			       u32 *eir, u32 *dpinvgtt)
+{
+	u32 emr;
+
+	*eir = intel_uncore_read(&dev_priv->uncore, VLV_EIR);
+
+	if (*eir & VLV_ERROR_PAGE_TABLE)
+		vlv_page_table_error_irq_ack(dev_priv, dpinvgtt);
+
+	intel_uncore_write(&dev_priv->uncore, VLV_EIR, *eir);
+
+	/*
+	 * Toggle all EMR bits to make sure we get an edge
+	 * in the ISR master error bit if we don't clear
+	 * all the EIR bits.
+	 */
+	emr = intel_uncore_read(&dev_priv->uncore, VLV_EMR);
+	intel_uncore_write(&dev_priv->uncore, VLV_EMR, 0xffffffff);
+	intel_uncore_write(&dev_priv->uncore, VLV_EMR, emr);
+}
+
+void vlv_display_error_irq_handler(struct drm_i915_private *dev_priv,
+				   u32 eir, u32 dpinvgtt)
+{
+	drm_dbg(&dev_priv->drm, "Master Error, EIR 0x%08x\n", eir);
+
+	if (eir & VLV_ERROR_PAGE_TABLE)
+		vlv_page_table_error_irq_handler(dev_priv, dpinvgtt);
+}
+
 static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
@@ -1738,6 +1847,8 @@ static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 	else
 		intel_uncore_write(uncore, DPINVGTT, DPINVGTT_STATUS_MASK_VLV);
 
+	gen2_error_reset(&dev_priv->uncore, VLV_ERROR_REGS);
+
 	i915_hotplug_interrupt_update_locked(dev_priv, 0xffffffff, 0);
 	intel_uncore_rmw(uncore, PORT_HOTPLUG_STAT(dev_priv), 0, 0);
 
@@ -1764,6 +1875,12 @@ void i9xx_display_irq_reset(struct drm_i915_private *i915)
 	i9xx_pipestat_irq_reset(i915);
 }
 
+static u32 vlv_error_mask(void)
+{
+	/* TODO enable other errors too? */
+	return VLV_ERROR_PAGE_TABLE;
+}
+
 void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
@@ -1775,6 +1892,17 @@ void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
 	if (!dev_priv->display.irq.vlv_display_irqs_enabled)
 		return;
 
+	if (IS_CHERRYVIEW(dev_priv))
+		intel_uncore_write(uncore, DPINVGTT,
+				   DPINVGTT_STATUS_MASK_CHV |
+				   DPINVGTT_EN_MASK_CHV);
+	else
+		intel_uncore_write(uncore, DPINVGTT,
+				   DPINVGTT_STATUS_MASK_VLV |
+				   DPINVGTT_EN_MASK_VLV);
+
+	gen2_error_init(&dev_priv->uncore, VLV_ERROR_REGS, ~vlv_error_mask());
+
 	pipestat_mask = PIPE_CRC_DONE_INTERRUPT_STATUS;
 
 	i915_enable_pipestat(dev_priv, PIPE_A, PIPE_GMBUS_INTERRUPT_STATUS);
@@ -1785,7 +1913,8 @@ void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
 		I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
 		I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
 		I915_LPE_PIPE_A_INTERRUPT |
-		I915_LPE_PIPE_B_INTERRUPT;
+		I915_LPE_PIPE_B_INTERRUPT |
+		I915_MASTER_ERROR_INTERRUPT;
 
 	if (IS_CHERRYVIEW(dev_priv))
 		enable_mask |= I915_DISPLAY_PIPE_C_EVENT_INTERRUPT |
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index b077712b7be1..c3651a4750e4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -75,6 +75,9 @@ void i915_pipestat_irq_handler(struct drm_i915_private *i915, u32 iir, u32 pipe_
 void i965_pipestat_irq_handler(struct drm_i915_private *i915, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);
 void valleyview_pipestat_irq_handler(struct drm_i915_private *i915, u32 pipe_stats[I915_MAX_PIPES]);
 
+void vlv_display_error_irq_ack(struct drm_i915_private *i915, u32 *eir, u32 *dpinvgtt);
+void vlv_display_error_irq_handler(struct drm_i915_private *i915, u32 eir, u32 dpinvgtt);
+
 void intel_display_irq_init(struct drm_i915_private *i915);
 
 void i915gm_irq_cstate_wa(struct drm_i915_private *i915, bool enable);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index bd5956262c6d..e582a33fac23 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -241,6 +241,7 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 
 	do {
 		u32 iir, gt_iir, pm_iir;
+		u32 eir = 0, dpinvgtt = 0;
 		u32 pipe_stats[I915_MAX_PIPES] = {};
 		u32 hotplug_status = 0;
 		u32 ier = 0;
@@ -278,6 +279,9 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 		if (iir & I915_DISPLAY_PORT_INTERRUPT)
 			hotplug_status = i9xx_hpd_irq_ack(dev_priv);
 
+		if (iir & I915_MASTER_ERROR_INTERRUPT)
+			vlv_display_error_irq_ack(dev_priv, &eir, &dpinvgtt);
+
 		/* Call regardless, as some status bits might not be
 		 * signalled in IIR */
 		i9xx_pipestat_irq_ack(dev_priv, iir, pipe_stats);
@@ -304,6 +308,9 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 		if (hotplug_status)
 			i9xx_hpd_irq_handler(dev_priv, hotplug_status);
 
+		if (iir & I915_MASTER_ERROR_INTERRUPT)
+			vlv_display_error_irq_handler(dev_priv, eir, dpinvgtt);
+
 		valleyview_pipestat_irq_handler(dev_priv, pipe_stats);
 	} while (0);
 
@@ -328,6 +335,7 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 
 	do {
 		u32 master_ctl, iir;
+		u32 eir = 0, dpinvgtt = 0;
 		u32 pipe_stats[I915_MAX_PIPES] = {};
 		u32 hotplug_status = 0;
 		u32 ier = 0;
@@ -361,6 +369,9 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 		if (iir & I915_DISPLAY_PORT_INTERRUPT)
 			hotplug_status = i9xx_hpd_irq_ack(dev_priv);
 
+		if (iir & I915_MASTER_ERROR_INTERRUPT)
+			vlv_display_error_irq_ack(dev_priv, &eir, &dpinvgtt);
+
 		/* Call regardless, as some status bits might not be
 		 * signalled in IIR */
 		i9xx_pipestat_irq_ack(dev_priv, iir, pipe_stats);
@@ -383,6 +394,9 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 		if (hotplug_status)
 			i9xx_hpd_irq_handler(dev_priv, hotplug_status);
 
+		if (iir & I915_MASTER_ERROR_INTERRUPT)
+			vlv_display_error_irq_handler(dev_priv, eir, dpinvgtt);
+
 		valleyview_pipestat_irq_handler(dev_priv, pipe_stats);
 	} while (0);
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index aed109adfedf..de67547e738c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -475,6 +475,16 @@
 
 #define GEN2_ERROR_REGS		I915_ERROR_REGS(EMR, EIR)
 
+#define VLV_EIR		_MMIO(VLV_DISPLAY_BASE + 0x20b0)
+#define VLV_EMR		_MMIO(VLV_DISPLAY_BASE + 0x20b4)
+#define VLV_ESR		_MMIO(VLV_DISPLAY_BASE + 0x20b8)
+#define   VLV_ERROR_GUNIT_TLB_DATA			(1 << 6)
+#define   VLV_ERROR_GUNIT_TLB_PTE			(1 << 5)
+#define   VLV_ERROR_PAGE_TABLE				(1 << 4)
+#define   VLV_ERROR_CLAIM				(1 << 0)
+
+#define VLV_ERROR_REGS		I915_ERROR_REGS(VLV_EMR, VLV_EIR)
+
 #define INSTPM	        _MMIO(0x20c0)
 #define   INSTPM_SELF_EN (1 << 12) /* 915GM only */
 #define   INSTPM_AGPBUSY_INT_EN (1 << 11) /* gen3: when disabled, pending interrupts
diff --git a/drivers/gpu/drm/xe/display/ext/i915_irq.c b/drivers/gpu/drm/xe/display/ext/i915_irq.c
index ac4cda2d81c7..3c6bca66ddab 100644
--- a/drivers/gpu/drm/xe/display/ext/i915_irq.c
+++ b/drivers/gpu/drm/xe/display/ext/i915_irq.c
@@ -51,6 +51,29 @@ void gen2_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
 	intel_uncore_posting_read(uncore, regs.imr);
 }
 
+void gen2_error_reset(struct intel_uncore *uncore, struct i915_error_regs regs)
+{
+	intel_uncore_write(uncore, regs.emr, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.emr);
+
+	intel_uncore_write(uncore, regs.eir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.eir);
+	intel_uncore_write(uncore, regs.eir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.eir);
+}
+
+void gen2_error_init(struct intel_uncore *uncore, struct i915_error_regs regs,
+		     u32 emr_val)
+{
+	intel_uncore_write(uncore, regs.eir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.eir);
+	intel_uncore_write(uncore, regs.eir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.eir);
+
+	intel_uncore_write(uncore, regs.emr, emr_val);
+	intel_uncore_posting_read(uncore, regs.emr);
+}
+
 bool intel_irqs_enabled(struct xe_device *xe)
 {
 	return atomic_read(&xe->irq.enabled);
-- 
2.45.2

