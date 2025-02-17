Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 728A5A37BC2
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 08:01:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10EAF10E383;
	Mon, 17 Feb 2025 07:01:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bg/CzpGa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09A1510E382;
 Mon, 17 Feb 2025 07:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739775676; x=1771311676;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VcIDEBNRA0ZcjTyw/B9TzWT4yFavfUm/wfYQ5GnxjTM=;
 b=bg/CzpGaImNMZFvjiBX4J0oihZi12SNW89TITpM4oObD5chLyA0Cs97y
 bBYYO8pC/1rcjme6BySfFpk8sur2dhOngpMVJi762tevv+ct69IAZlLgx
 EQyrOopuL3dJeEmJxvRb0cUKZNawjc2swtU4JJJIK0gAZiy8s1jmwqpIg
 Imp1frcg7yTVcTUHqivOP6jrTuJSlw+6zTPMtbshuTWk1rgINAfwayqwV
 H+fHGQkJ5eADjdNP17VUqYzWOA77bg4iiLJwenjWytewVaDuL7/LSLgPd
 LxSt/pyrLQATz1w64nWnlSeO37qnqGZNlphHA7NrFdxYu2UQhOTcMbwOZ A==;
X-CSE-ConnectionGUID: TLslYm01Rp6E4Rz5yH4idA==
X-CSE-MsgGUID: ZgeXyvNHTGush0XdYiKUbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11347"; a="39676272"
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="39676272"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2025 23:01:16 -0800
X-CSE-ConnectionGUID: XD2ihTiuSK21qDIt6Kcd0Q==
X-CSE-MsgGUID: uQIH5VJRSwqO1VeIwqT4gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="114233532"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Feb 2025 23:01:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Feb 2025 09:01:12 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH v2 8/8] drm/i915: Hook up display fault interrupts for VLV/CHV
Date: Mon, 17 Feb 2025 09:00:47 +0200
Message-ID: <20250217070047.953-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250217070047.953-1-ville.syrjala@linux.intel.com>
References: <20250217070047.953-1-ville.syrjala@linux.intel.com>
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

v2: Use intel_display instead of dev_priv
    Move xe gen2_error_{init,reset}() out

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 132 +++++++++++++++++-
 .../gpu/drm/i915/display/intel_display_irq.h  |   3 +
 drivers/gpu/drm/i915/i915_irq.c               |  14 ++
 drivers/gpu/drm/i915/i915_reg.h               |  10 ++
 4 files changed, 158 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 1fa44f6bf880..99fb7fc7be39 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1784,6 +1784,114 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
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
+static void vlv_page_table_error_irq_ack(struct intel_display *display, u32 *dpinvgtt)
+{
+	u32 status, enable, tmp;
+
+	tmp = intel_de_read(display, DPINVGTT);
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
+	intel_de_write(display, DPINVGTT, status);
+	intel_de_write(display, DPINVGTT, enable << 16);
+}
+
+static void vlv_page_table_error_irq_handler(struct intel_display *display, u32 dpinvgtt)
+{
+	enum pipe pipe;
+
+	for_each_pipe(display, pipe) {
+		u32 fault_errors;
+
+		fault_errors = dpinvgtt & vlv_dpinvgtt_pipe_fault_mask(pipe);
+		if (fault_errors)
+			intel_pipe_fault_irq_handler(display, vlv_pipe_fault_handlers,
+						     pipe, fault_errors);
+	}
+}
+
+void vlv_display_error_irq_ack(struct intel_display *display,
+			       u32 *eir, u32 *dpinvgtt)
+{
+	u32 emr;
+
+	*eir = intel_de_read(display, VLV_EIR);
+
+	if (*eir & VLV_ERROR_PAGE_TABLE)
+		vlv_page_table_error_irq_ack(display, dpinvgtt);
+
+	intel_de_write(display, VLV_EIR, *eir);
+
+	/*
+	 * Toggle all EMR bits to make sure we get an edge
+	 * in the ISR master error bit if we don't clear
+	 * all the EIR bits.
+	 */
+	emr = intel_de_read(display, VLV_EMR);
+	intel_de_write(display, VLV_EMR, 0xffffffff);
+	intel_de_write(display, VLV_EMR, emr);
+}
+
+void vlv_display_error_irq_handler(struct intel_display *display,
+				   u32 eir, u32 dpinvgtt)
+{
+	drm_dbg(display->drm, "Master Error, EIR 0x%08x\n", eir);
+
+	if (eir & VLV_ERROR_PAGE_TABLE)
+		vlv_page_table_error_irq_handler(display, dpinvgtt);
+}
+
 static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_display *display = &dev_priv->display;
@@ -1793,6 +1901,9 @@ static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 	else
 		intel_de_write(display, DPINVGTT, DPINVGTT_STATUS_MASK_VLV);
 
+	gen2_error_reset(to_intel_uncore(display->drm),
+			 VLV_ERROR_REGS);
+
 	i915_hotplug_interrupt_update_locked(dev_priv, 0xffffffff, 0);
 	intel_de_rmw(display, PORT_HOTPLUG_STAT(dev_priv), 0, 0);
 
@@ -1820,6 +1931,12 @@ void i9xx_display_irq_reset(struct drm_i915_private *i915)
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
 	struct intel_display *display = &dev_priv->display;
@@ -1830,6 +1947,18 @@ void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
 	if (!dev_priv->display.irq.vlv_display_irqs_enabled)
 		return;
 
+	if (IS_CHERRYVIEW(dev_priv))
+		intel_de_write(display, DPINVGTT,
+			       DPINVGTT_STATUS_MASK_CHV |
+			       DPINVGTT_EN_MASK_CHV);
+	else
+		intel_de_write(display, DPINVGTT,
+			       DPINVGTT_STATUS_MASK_VLV |
+			       DPINVGTT_EN_MASK_VLV);
+
+	gen2_error_init(to_intel_uncore(display->drm),
+			VLV_ERROR_REGS, ~vlv_error_mask());
+
 	pipestat_mask = PIPE_CRC_DONE_INTERRUPT_STATUS;
 
 	i915_enable_pipestat(dev_priv, PIPE_A, PIPE_GMBUS_INTERRUPT_STATUS);
@@ -1840,7 +1969,8 @@ void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
 		I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
 		I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
 		I915_LPE_PIPE_A_INTERRUPT |
-		I915_LPE_PIPE_B_INTERRUPT;
+		I915_LPE_PIPE_B_INTERRUPT |
+		I915_MASTER_ERROR_INTERRUPT;
 
 	if (IS_CHERRYVIEW(dev_priv))
 		enable_mask |= I915_DISPLAY_PIPE_C_EVENT_INTERRUPT |
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index 75ab38a0908e..d9867cd0a220 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -76,6 +76,9 @@ void i915_pipestat_irq_handler(struct drm_i915_private *i915, u32 iir, u32 pipe_
 void i965_pipestat_irq_handler(struct drm_i915_private *i915, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);
 void valleyview_pipestat_irq_handler(struct drm_i915_private *i915, u32 pipe_stats[I915_MAX_PIPES]);
 
+void vlv_display_error_irq_ack(struct intel_display *display, u32 *eir, u32 *dpinvgtt);
+void vlv_display_error_irq_handler(struct intel_display *display, u32 eir, u32 dpinvgtt);
+
 void intel_display_irq_init(struct drm_i915_private *i915);
 
 void i915gm_irq_cstate_wa(struct drm_i915_private *i915, bool enable);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index da130e1b5cc1..37ca4a35daf2 100644
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
+			vlv_display_error_irq_ack(display, &eir, &dpinvgtt);
+
 		/* Call regardless, as some status bits might not be
 		 * signalled in IIR */
 		i9xx_pipestat_irq_ack(dev_priv, iir, pipe_stats);
@@ -304,6 +308,9 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 		if (hotplug_status)
 			i9xx_hpd_irq_handler(dev_priv, hotplug_status);
 
+		if (iir & I915_MASTER_ERROR_INTERRUPT)
+			vlv_display_error_irq_handler(display, eir, dpinvgtt);
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
+			vlv_display_error_irq_ack(display, &eir, &dpinvgtt);
+
 		/* Call regardless, as some status bits might not be
 		 * signalled in IIR */
 		i9xx_pipestat_irq_ack(dev_priv, iir, pipe_stats);
@@ -383,6 +394,9 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 		if (hotplug_status)
 			i9xx_hpd_irq_handler(dev_priv, hotplug_status);
 
+		if (iir & I915_MASTER_ERROR_INTERRUPT)
+			vlv_display_error_irq_handler(display, eir, dpinvgtt);
+
 		valleyview_pipestat_irq_handler(dev_priv, pipe_stats);
 	} while (0);
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index be1aab838be9..b31b26e9a685 100644
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
-- 
2.45.3

