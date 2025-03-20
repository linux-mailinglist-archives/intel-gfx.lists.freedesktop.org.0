Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D513A6A8F2
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Mar 2025 15:46:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7E3510E641;
	Thu, 20 Mar 2025 14:46:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="khREZ1GK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A43310E641;
 Thu, 20 Mar 2025 14:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742482002; x=1774018002;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+/i6O4Vh5FXP+l+1ItC2zraYNJT9pTHmHyb34wq9euE=;
 b=khREZ1GKXGFzwbtI45gXuM8ksJEaFIL2EzHVOCpofaGvfPwGzb47LDuW
 cBoy0g60dL4Aoou2Wgms80RxcWhUep4552Btn668E5NfnkHOH1al3fNZ4
 o78n7Gs8Lfb61dbSZmxHyTdm1d5jqLypAjdjYb8mqQZTLu99Kccuj3om/
 1pAZbBoywpTucm++Vth3pz5yk+Dm0AL9xoC55zxN6Yg4b+MfeXqy75ne+
 HLjOzvR/T98Iot6gvmSQ5HEvSIe991dyiowXIEvM9AoMPAcB1ipjzwCKr
 ac0NnDUnj0Yo5CdbREvpxpRYhbT+0LXvh4jIqLDXPhjbwFYQpyzSiItE7 g==;
X-CSE-ConnectionGUID: 8ZdboyUoRWWhMB/7QOLqCQ==
X-CSE-MsgGUID: DODr2wihTJG92gkgjKCD4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="43638659"
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="43638659"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 07:46:42 -0700
X-CSE-ConnectionGUID: dsdnzQl0RPqwmQBGSuswhA==
X-CSE-MsgGUID: qgDOSOJfRDWPhMDplbO9Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="154116120"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 07:46:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Uma Shankar <uma.shankar@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [CI 7/9] drm/i915/irq: convert intel_display_irq.[ch] interfaces to
 struct intel_display
Date: Thu, 20 Mar 2025 16:46:03 +0200
Message-Id: <83b552154761d2790d8c774707e8d7612037bdf5.1742481923.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742481923.git.jani.nikula@intel.com>
References: <cover.1742481923.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Going forward, struct intel_display is the main display device data
pointer. Convert the external interfaces of intel_display_irq.[ch] to
struct intel_display.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  24 ++-
 .../drm/i915/display/intel_display_driver.c   |   2 +-
 .../gpu/drm/i915/display/intel_display_irq.c  | 204 +++++++++---------
 .../gpu/drm/i915/display/intel_display_irq.h  |  75 ++++---
 .../i915/display/intel_display_power_well.c   |  12 +-
 .../drm/i915/display/intel_fifo_underrun.c    |  27 +--
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |  22 +-
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |   3 +-
 drivers/gpu/drm/i915/display/intel_tv.c       |   4 +-
 .../drm/i915/display/skl_universal_plane.c    |   6 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |   6 +-
 drivers/gpu/drm/i915/i915_irq.c               |  98 +++++----
 drivers/gpu/drm/xe/display/xe_display.c       |  12 +-
 13 files changed, 263 insertions(+), 232 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 013295f66d56..5e8344fdfc28 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -630,84 +630,92 @@ vlv_primary_async_flip(struct intel_dsb *dsb,
 static void
 bdw_primary_enable_flip_done(struct intel_plane *plane)
 {
+	struct intel_display *display = to_intel_display(plane);
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 
 	spin_lock_irq(&i915->irq_lock);
-	bdw_enable_pipe_irq(i915, pipe, GEN8_PIPE_PRIMARY_FLIP_DONE);
+	bdw_enable_pipe_irq(display, pipe, GEN8_PIPE_PRIMARY_FLIP_DONE);
 	spin_unlock_irq(&i915->irq_lock);
 }
 
 static void
 bdw_primary_disable_flip_done(struct intel_plane *plane)
 {
+	struct intel_display *display = to_intel_display(plane);
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 
 	spin_lock_irq(&i915->irq_lock);
-	bdw_disable_pipe_irq(i915, pipe, GEN8_PIPE_PRIMARY_FLIP_DONE);
+	bdw_disable_pipe_irq(display, pipe, GEN8_PIPE_PRIMARY_FLIP_DONE);
 	spin_unlock_irq(&i915->irq_lock);
 }
 
 static void
 ivb_primary_enable_flip_done(struct intel_plane *plane)
 {
+	struct intel_display *display = to_intel_display(plane);
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 
 	spin_lock_irq(&i915->irq_lock);
-	ilk_enable_display_irq(i915, DE_PLANE_FLIP_DONE_IVB(plane->i9xx_plane));
+	ilk_enable_display_irq(display, DE_PLANE_FLIP_DONE_IVB(plane->i9xx_plane));
 	spin_unlock_irq(&i915->irq_lock);
 }
 
 static void
 ivb_primary_disable_flip_done(struct intel_plane *plane)
 {
+	struct intel_display *display = to_intel_display(plane);
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 
 	spin_lock_irq(&i915->irq_lock);
-	ilk_disable_display_irq(i915, DE_PLANE_FLIP_DONE_IVB(plane->i9xx_plane));
+	ilk_disable_display_irq(display, DE_PLANE_FLIP_DONE_IVB(plane->i9xx_plane));
 	spin_unlock_irq(&i915->irq_lock);
 }
 
 static void
 ilk_primary_enable_flip_done(struct intel_plane *plane)
 {
+	struct intel_display *display = to_intel_display(plane);
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 
 	spin_lock_irq(&i915->irq_lock);
-	ilk_enable_display_irq(i915, DE_PLANE_FLIP_DONE(plane->i9xx_plane));
+	ilk_enable_display_irq(display, DE_PLANE_FLIP_DONE(plane->i9xx_plane));
 	spin_unlock_irq(&i915->irq_lock);
 }
 
 static void
 ilk_primary_disable_flip_done(struct intel_plane *plane)
 {
+	struct intel_display *display = to_intel_display(plane);
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 
 	spin_lock_irq(&i915->irq_lock);
-	ilk_disable_display_irq(i915, DE_PLANE_FLIP_DONE(plane->i9xx_plane));
+	ilk_disable_display_irq(display, DE_PLANE_FLIP_DONE(plane->i9xx_plane));
 	spin_unlock_irq(&i915->irq_lock);
 }
 
 static void
 vlv_primary_enable_flip_done(struct intel_plane *plane)
 {
+	struct intel_display *display = to_intel_display(plane);
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 
 	spin_lock_irq(&i915->irq_lock);
-	i915_enable_pipestat(i915, pipe, PLANE_FLIP_DONE_INT_STATUS_VLV);
+	i915_enable_pipestat(display, pipe, PLANE_FLIP_DONE_INT_STATUS_VLV);
 	spin_unlock_irq(&i915->irq_lock);
 }
 
 static void
 vlv_primary_disable_flip_done(struct intel_plane *plane)
 {
+	struct intel_display *display = to_intel_display(plane);
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 
 	spin_lock_irq(&i915->irq_lock);
-	i915_disable_pipestat(i915, pipe, PLANE_FLIP_DONE_INT_STATUS_VLV);
+	i915_disable_pipestat(display, pipe, PLANE_FLIP_DONE_INT_STATUS_VLV);
 	spin_unlock_irq(&i915->irq_lock);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 4035482a2e1b..e4fbf1e5b2bb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -193,7 +193,7 @@ void intel_display_driver_early_probe(struct intel_display *display)
 	mutex_init(&display->pps.mutex);
 	mutex_init(&display->hdcp.hdcp_mutex);
 
-	intel_display_irq_init(i915);
+	intel_display_irq_init(display);
 	intel_dkl_phy_init(display);
 	intel_color_init_hooks(display);
 	intel_init_cdclk_hooks(display);
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index b37bcb8fb2e8..68f903c35978 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -125,14 +125,14 @@ intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
 
 /**
  * ilk_update_display_irq - update DEIMR
- * @dev_priv: driver private
+ * @display: display device
  * @interrupt_mask: mask of interrupt bits to update
  * @enabled_irq_mask: mask of interrupt bits to enable
  */
-void ilk_update_display_irq(struct drm_i915_private *dev_priv,
+void ilk_update_display_irq(struct intel_display *display,
 			    u32 interrupt_mask, u32 enabled_irq_mask)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 new_val;
 
 	lockdep_assert_held(&dev_priv->irq_lock);
@@ -150,26 +150,26 @@ void ilk_update_display_irq(struct drm_i915_private *dev_priv,
 	}
 }
 
-void ilk_enable_display_irq(struct drm_i915_private *i915, u32 bits)
+void ilk_enable_display_irq(struct intel_display *display, u32 bits)
 {
-	ilk_update_display_irq(i915, bits, bits);
+	ilk_update_display_irq(display, bits, bits);
 }
 
-void ilk_disable_display_irq(struct drm_i915_private *i915, u32 bits)
+void ilk_disable_display_irq(struct intel_display *display, u32 bits)
 {
-	ilk_update_display_irq(i915, bits, 0);
+	ilk_update_display_irq(display, bits, 0);
 }
 
 /**
  * bdw_update_port_irq - update DE port interrupt
- * @dev_priv: driver private
+ * @display: display device
  * @interrupt_mask: mask of interrupt bits to update
  * @enabled_irq_mask: mask of interrupt bits to enable
  */
-void bdw_update_port_irq(struct drm_i915_private *dev_priv,
+void bdw_update_port_irq(struct intel_display *display,
 			 u32 interrupt_mask, u32 enabled_irq_mask)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 new_val;
 	u32 old_val;
 
@@ -194,16 +194,16 @@ void bdw_update_port_irq(struct drm_i915_private *dev_priv,
 
 /**
  * bdw_update_pipe_irq - update DE pipe interrupt
- * @dev_priv: driver private
+ * @display: display device
  * @pipe: pipe whose interrupt to update
  * @interrupt_mask: mask of interrupt bits to update
  * @enabled_irq_mask: mask of interrupt bits to enable
  */
-static void bdw_update_pipe_irq(struct drm_i915_private *dev_priv,
+static void bdw_update_pipe_irq(struct intel_display *display,
 				enum pipe pipe, u32 interrupt_mask,
 				u32 enabled_irq_mask)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 new_val;
 
 	lockdep_assert_held(&dev_priv->irq_lock);
@@ -224,29 +224,29 @@ static void bdw_update_pipe_irq(struct drm_i915_private *dev_priv,
 	}
 }
 
-void bdw_enable_pipe_irq(struct drm_i915_private *i915,
+void bdw_enable_pipe_irq(struct intel_display *display,
 			 enum pipe pipe, u32 bits)
 {
-	bdw_update_pipe_irq(i915, pipe, bits, bits);
+	bdw_update_pipe_irq(display, pipe, bits, bits);
 }
 
-void bdw_disable_pipe_irq(struct drm_i915_private *i915,
+void bdw_disable_pipe_irq(struct intel_display *display,
 			  enum pipe pipe, u32 bits)
 {
-	bdw_update_pipe_irq(i915, pipe, bits, 0);
+	bdw_update_pipe_irq(display, pipe, bits, 0);
 }
 
 /**
  * ibx_display_interrupt_update - update SDEIMR
- * @dev_priv: driver private
+ * @display: display device
  * @interrupt_mask: mask of interrupt bits to update
  * @enabled_irq_mask: mask of interrupt bits to enable
  */
-void ibx_display_interrupt_update(struct drm_i915_private *dev_priv,
+void ibx_display_interrupt_update(struct intel_display *display,
 				  u32 interrupt_mask,
 				  u32 enabled_irq_mask)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 sdeimr = intel_de_read(display, SDEIMR);
 
 	sdeimr &= ~interrupt_mask;
@@ -263,14 +263,14 @@ void ibx_display_interrupt_update(struct drm_i915_private *dev_priv,
 	intel_de_posting_read(display, SDEIMR);
 }
 
-void ibx_enable_display_interrupt(struct drm_i915_private *i915, u32 bits)
+void ibx_enable_display_interrupt(struct intel_display *display, u32 bits)
 {
-	ibx_display_interrupt_update(i915, bits, bits);
+	ibx_display_interrupt_update(display, bits, bits);
 }
 
-void ibx_disable_display_interrupt(struct drm_i915_private *i915, u32 bits)
+void ibx_disable_display_interrupt(struct intel_display *display, u32 bits)
 {
-	ibx_display_interrupt_update(i915, bits, 0);
+	ibx_display_interrupt_update(display, bits, 0);
 }
 
 u32 i915_pipestat_enable_mask(struct intel_display *display,
@@ -318,10 +318,10 @@ u32 i915_pipestat_enable_mask(struct intel_display *display,
 	return enable_mask;
 }
 
-void i915_enable_pipestat(struct drm_i915_private *dev_priv,
+void i915_enable_pipestat(struct intel_display *display,
 			  enum pipe pipe, u32 status_mask)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	i915_reg_t reg = PIPESTAT(dev_priv, pipe);
 	u32 enable_mask;
 
@@ -342,10 +342,10 @@ void i915_enable_pipestat(struct drm_i915_private *dev_priv,
 	intel_de_posting_read(display, reg);
 }
 
-void i915_disable_pipestat(struct drm_i915_private *dev_priv,
+void i915_disable_pipestat(struct intel_display *display,
 			   enum pipe pipe, u32 status_mask)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	i915_reg_t reg = PIPESTAT(dev_priv, pipe);
 	u32 enable_mask;
 
@@ -381,11 +381,11 @@ static bool i915_has_legacy_blc_interrupt(struct intel_display *display)
 
 /**
  * i915_enable_asle_pipestat - enable ASLE pipestat for OpRegion
- * @dev_priv: i915 device private
+ * @display: display device
  */
-void i915_enable_asle_pipestat(struct drm_i915_private *dev_priv)
+void i915_enable_asle_pipestat(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
 	if (!intel_opregion_asle_present(display))
 		return;
@@ -395,9 +395,9 @@ void i915_enable_asle_pipestat(struct drm_i915_private *dev_priv)
 
 	spin_lock_irq(&dev_priv->irq_lock);
 
-	i915_enable_pipestat(dev_priv, PIPE_B, PIPE_LEGACY_BLC_EVENT_STATUS);
+	i915_enable_pipestat(display, PIPE_B, PIPE_LEGACY_BLC_EVENT_STATUS);
 	if (DISPLAY_VER(dev_priv) >= 4)
-		i915_enable_pipestat(dev_priv, PIPE_A,
+		i915_enable_pipestat(display, PIPE_A,
 				     PIPE_LEGACY_BLC_EVENT_STATUS);
 
 	spin_unlock_irq(&dev_priv->irq_lock);
@@ -524,10 +524,10 @@ static void i9xx_pipestat_irq_reset(struct drm_i915_private *dev_priv)
 	}
 }
 
-void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
+void i9xx_pipestat_irq_ack(struct intel_display *display,
 			   u32 iir, u32 pipe_stats[I915_MAX_PIPES])
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe pipe;
 
 	spin_lock(&dev_priv->irq_lock);
@@ -592,10 +592,10 @@ void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
 	spin_unlock(&dev_priv->irq_lock);
 }
 
-void i915_pipestat_irq_handler(struct drm_i915_private *dev_priv,
+void i915_pipestat_irq_handler(struct intel_display *display,
 			       u32 iir, u32 pipe_stats[I915_MAX_PIPES])
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	bool blc_event = false;
 	enum pipe pipe;
 
@@ -617,10 +617,10 @@ void i915_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 		intel_opregion_asle_intr(display);
 }
 
-void i965_pipestat_irq_handler(struct drm_i915_private *dev_priv,
+void i965_pipestat_irq_handler(struct intel_display *display,
 			       u32 iir, u32 pipe_stats[I915_MAX_PIPES])
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	bool blc_event = false;
 	enum pipe pipe;
 
@@ -645,10 +645,10 @@ void i965_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 		intel_gmbus_irq_handler(display);
 }
 
-void valleyview_pipestat_irq_handler(struct drm_i915_private *dev_priv,
+void valleyview_pipestat_irq_handler(struct intel_display *display,
 				     u32 pipe_stats[I915_MAX_PIPES])
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe pipe;
 
 	for_each_pipe(dev_priv, pipe) {
@@ -894,9 +894,9 @@ static void ilk_gtt_fault_irq_handler(struct intel_display *display)
 	}
 }
 
-void ilk_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
+void ilk_display_irq_handler(struct intel_display *display, u32 de_iir)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe pipe;
 	u32 hotplug_trigger = de_iir & DE_DP_A_HOTPLUG;
 
@@ -946,9 +946,9 @@ void ilk_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
 		gen5_rps_irq_handler(&to_gt(dev_priv)->rps);
 }
 
-void ivb_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
+void ivb_display_irq_handler(struct intel_display *display, u32 de_iir)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe pipe;
 	u32 hotplug_trigger = de_iir & DE_DP_A_HOTPLUG_IVB;
 
@@ -1359,9 +1359,9 @@ static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_i
 		intel_de_write(display, PICAINTERRUPT_IER, pica_ier);
 }
 
-void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
+void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 iir;
 	enum pipe pipe;
 
@@ -1517,9 +1517,8 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 	}
 }
 
-u32 gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32 master_ctl)
+u32 gen11_gu_misc_irq_ack(struct intel_display *display, const u32 master_ctl)
 {
-	struct intel_display *display = &i915->display;
 	u32 iir;
 
 	if (!(master_ctl & GEN11_GU_MISC_IRQ))
@@ -1532,17 +1531,15 @@ u32 gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32 master_ctl)
 	return iir;
 }
 
-void gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir)
+void gen11_gu_misc_irq_handler(struct intel_display *display, const u32 iir)
 {
-	struct intel_display *display = &i915->display;
-
 	if (iir & GEN11_GU_MISC_GSE)
 		intel_opregion_asle_intr(display);
 }
 
-void gen11_display_irq_handler(struct drm_i915_private *i915)
+void gen11_display_irq_handler(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	u32 disp_ctl;
 
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
@@ -1553,7 +1550,7 @@ void gen11_display_irq_handler(struct drm_i915_private *i915)
 	disp_ctl = intel_de_read(display, GEN11_DISPLAY_INT_CTL);
 
 	intel_de_write(display, GEN11_DISPLAY_INT_CTL, 0);
-	gen8_de_irq_handler(i915, disp_ctl);
+	gen8_de_irq_handler(display, disp_ctl);
 	intel_de_write(display, GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
 
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
@@ -1585,8 +1582,10 @@ static void i915gm_irq_cstate_wa_disable(struct drm_i915_private *i915)
 			       _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
 }
 
-void i915gm_irq_cstate_wa(struct drm_i915_private *i915, bool enable)
+void i915gm_irq_cstate_wa(struct intel_display *display, bool enable)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	spin_lock_irq(&i915->drm.vblank_time_lock);
 
 	if (enable)
@@ -1599,12 +1598,13 @@ void i915gm_irq_cstate_wa(struct drm_i915_private *i915, bool enable)
 
 int i8xx_enable_vblank(struct drm_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc->dev);
 	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 	enum pipe pipe = to_intel_crtc(crtc)->pipe;
 	unsigned long irqflags;
 
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
-	i915_enable_pipestat(dev_priv, pipe, PIPE_VBLANK_INTERRUPT_STATUS);
+	i915_enable_pipestat(display, pipe, PIPE_VBLANK_INTERRUPT_STATUS);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
 
 	return 0;
@@ -1612,12 +1612,13 @@ int i8xx_enable_vblank(struct drm_crtc *crtc)
 
 void i8xx_disable_vblank(struct drm_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc->dev);
 	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 	enum pipe pipe = to_intel_crtc(crtc)->pipe;
 	unsigned long irqflags;
 
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
-	i915_disable_pipestat(dev_priv, pipe, PIPE_VBLANK_INTERRUPT_STATUS);
+	i915_disable_pipestat(display, pipe, PIPE_VBLANK_INTERRUPT_STATUS);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
 }
 
@@ -1641,12 +1642,13 @@ void i915gm_disable_vblank(struct drm_crtc *crtc)
 
 int i965_enable_vblank(struct drm_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc->dev);
 	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 	enum pipe pipe = to_intel_crtc(crtc)->pipe;
 	unsigned long irqflags;
 
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
-	i915_enable_pipestat(dev_priv, pipe,
+	i915_enable_pipestat(display, pipe,
 			     PIPE_START_VBLANK_INTERRUPT_STATUS);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
 
@@ -1655,18 +1657,20 @@ int i965_enable_vblank(struct drm_crtc *crtc)
 
 void i965_disable_vblank(struct drm_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc->dev);
 	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 	enum pipe pipe = to_intel_crtc(crtc)->pipe;
 	unsigned long irqflags;
 
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
-	i915_disable_pipestat(dev_priv, pipe,
+	i915_disable_pipestat(display, pipe,
 			      PIPE_START_VBLANK_INTERRUPT_STATUS);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
 }
 
 int ilk_enable_vblank(struct drm_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc->dev);
 	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 	enum pipe pipe = to_intel_crtc(crtc)->pipe;
 	unsigned long irqflags;
@@ -1674,7 +1678,7 @@ int ilk_enable_vblank(struct drm_crtc *crtc)
 		DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);
 
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
-	ilk_enable_display_irq(dev_priv, bit);
+	ilk_enable_display_irq(display, bit);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
 
 	/* Even though there is no DMC, frame counter can get stuck when
@@ -1688,6 +1692,7 @@ int ilk_enable_vblank(struct drm_crtc *crtc)
 
 void ilk_disable_vblank(struct drm_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc->dev);
 	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 	enum pipe pipe = to_intel_crtc(crtc)->pipe;
 	unsigned long irqflags;
@@ -1695,7 +1700,7 @@ void ilk_disable_vblank(struct drm_crtc *crtc)
 		DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);
 
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
-	ilk_disable_display_irq(dev_priv, bit);
+	ilk_disable_display_irq(display, bit);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
 }
 
@@ -1753,7 +1758,7 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
 		schedule_work(&display->irq.vblank_dc_work);
 
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
-	bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
+	bdw_enable_pipe_irq(display, pipe, GEN8_PIPE_VBLANK);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
 
 	/* Even if there is no DMC, frame counter can get stuck when
@@ -1777,7 +1782,7 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
 		return;
 
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
-	bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
+	bdw_disable_pipe_irq(display, pipe, GEN8_PIPE_VBLANK);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
 
 	if (crtc->block_dc_for_vblank && --display->irq.vblank_wa_num_pipes == 0)
@@ -1913,15 +1918,17 @@ static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 	dev_priv->irq_mask = ~0u;
 }
 
-void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
+void vlv_display_irq_reset(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
 	if (dev_priv->display.irq.vlv_display_irqs_enabled)
 		_vlv_display_irq_reset(dev_priv);
 }
 
-void i9xx_display_irq_reset(struct drm_i915_private *i915)
+void i9xx_display_irq_reset(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (I915_HAS_HOTPLUG(i915)) {
 		i915_hotplug_interrupt_update(display, 0xffffffff, 0);
@@ -1937,9 +1944,9 @@ static u32 vlv_error_mask(void)
 	return VLV_ERROR_PAGE_TABLE;
 }
 
-void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
+void vlv_display_irq_postinstall(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 pipestat_mask;
 	u32 enable_mask;
 	enum pipe pipe;
@@ -1961,9 +1968,9 @@ void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	pipestat_mask = PIPE_CRC_DONE_INTERRUPT_STATUS;
 
-	i915_enable_pipestat(dev_priv, PIPE_A, PIPE_GMBUS_INTERRUPT_STATUS);
+	i915_enable_pipestat(display, PIPE_A, PIPE_GMBUS_INTERRUPT_STATUS);
 	for_each_pipe(dev_priv, pipe)
-		i915_enable_pipestat(dev_priv, pipe, pipestat_mask);
+		i915_enable_pipestat(display, pipe, pipestat_mask);
 
 	enable_mask = I915_DISPLAY_PORT_INTERRUPT |
 		I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
@@ -1983,9 +1990,9 @@ void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
 	intel_display_irq_regs_init(display, VLV_IRQ_REGS, dev_priv->irq_mask, enable_mask);
 }
 
-void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
+void gen8_display_irq_reset(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe pipe;
 
 	if (!HAS_DISPLAY(dev_priv))
@@ -2003,9 +2010,9 @@ void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
 	intel_display_irq_regs_reset(display, GEN8_DE_MISC_IRQ_REGS);
 }
 
-void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
+void gen11_display_irq_reset(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe pipe;
 	u32 trans_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
@@ -2054,10 +2061,10 @@ void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 		intel_display_irq_regs_reset(display, SDE_IRQ_REGS);
 }
 
-void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
+void gen8_irq_power_well_post_enable(struct intel_display *display,
 				     u8 pipe_mask)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 extra_ier = GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
 		gen8_de_pipe_flip_done_mask(dev_priv);
 	enum pipe pipe;
@@ -2077,10 +2084,10 @@ void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
-void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
+void gen8_irq_power_well_pre_disable(struct intel_display *display,
 				     u8 pipe_mask)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe pipe;
 
 	spin_lock_irq(&dev_priv->irq_lock);
@@ -2128,8 +2135,10 @@ static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
 	intel_display_irq_regs_init(display, SDE_IRQ_REGS, ~mask, 0xffffffff);
 }
 
-void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
+void valleyview_enable_display_irqs(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
 	lockdep_assert_held(&dev_priv->irq_lock);
 
 	if (dev_priv->display.irq.vlv_display_irqs_enabled)
@@ -2139,12 +2148,14 @@ void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
 
 	if (intel_irqs_enabled(dev_priv)) {
 		_vlv_display_irq_reset(dev_priv);
-		vlv_display_irq_postinstall(dev_priv);
+		vlv_display_irq_postinstall(display);
 	}
 }
 
-void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
+void valleyview_disable_display_irqs(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
 	lockdep_assert_held(&dev_priv->irq_lock);
 
 	if (!dev_priv->display.irq.vlv_display_irqs_enabled)
@@ -2156,9 +2167,10 @@ void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
 		_vlv_display_irq_reset(dev_priv);
 }
 
-void ilk_de_irq_postinstall(struct drm_i915_private *i915)
+void ilk_de_irq_postinstall(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	u32 display_mask, extra_mask;
 
 	if (DISPLAY_VER(i915) >= 7) {
@@ -2201,9 +2213,9 @@ void ilk_de_irq_postinstall(struct drm_i915_private *i915)
 static void mtp_irq_postinstall(struct drm_i915_private *i915);
 static void icp_irq_postinstall(struct drm_i915_private *i915);
 
-void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
+void gen8_de_irq_postinstall(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
 	u32 de_pipe_masked = gen8_de_pipe_fault_mask(dev_priv) |
 		GEN8_PIPE_CDCLK_CRC_DONE;
@@ -2323,33 +2335,27 @@ static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
 	intel_display_irq_regs_init(display, SDE_IRQ_REGS, ~mask, 0xffffffff);
 }
 
-void gen11_de_irq_postinstall(struct drm_i915_private *dev_priv)
+void gen11_de_irq_postinstall(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
-
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(display))
 		return;
 
-	gen8_de_irq_postinstall(dev_priv);
+	gen8_de_irq_postinstall(display);
 
 	intel_de_write(display, GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
 }
 
-void dg1_de_irq_postinstall(struct drm_i915_private *i915)
+void dg1_de_irq_postinstall(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
-
-	if (!HAS_DISPLAY(i915))
+	if (!HAS_DISPLAY(display))
 		return;
 
-	gen8_de_irq_postinstall(i915);
+	gen8_de_irq_postinstall(display);
 	intel_de_write(display, GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
 }
 
-void intel_display_irq_init(struct drm_i915_private *i915)
+void intel_display_irq_init(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
-
 	display->drm->vblank_disable_immediate = true;
 
 	intel_hotplug_irq_init(display);
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index d9867cd0a220..f72727768351 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -12,28 +12,27 @@
 
 enum pipe;
 struct drm_crtc;
-struct drm_i915_private;
 struct intel_display;
 
-void valleyview_enable_display_irqs(struct drm_i915_private *i915);
-void valleyview_disable_display_irqs(struct drm_i915_private *i915);
+void valleyview_enable_display_irqs(struct intel_display *display);
+void valleyview_disable_display_irqs(struct intel_display *display);
 
-void ilk_update_display_irq(struct drm_i915_private *i915,
+void ilk_update_display_irq(struct intel_display *display,
 			    u32 interrupt_mask, u32 enabled_irq_mask);
-void ilk_enable_display_irq(struct drm_i915_private *i915, u32 bits);
-void ilk_disable_display_irq(struct drm_i915_private *i915, u32 bits);
+void ilk_enable_display_irq(struct intel_display *display, u32 bits);
+void ilk_disable_display_irq(struct intel_display *display, u32 bits);
 
-void bdw_update_port_irq(struct drm_i915_private *i915, u32 interrupt_mask, u32 enabled_irq_mask);
-void bdw_enable_pipe_irq(struct drm_i915_private *i915, enum pipe pipe, u32 bits);
-void bdw_disable_pipe_irq(struct drm_i915_private *i915, enum pipe pipe, u32 bits);
+void bdw_update_port_irq(struct intel_display *display, u32 interrupt_mask, u32 enabled_irq_mask);
+void bdw_enable_pipe_irq(struct intel_display *display, enum pipe pipe, u32 bits);
+void bdw_disable_pipe_irq(struct intel_display *display, enum pipe pipe, u32 bits);
 
-void ibx_display_interrupt_update(struct drm_i915_private *i915,
+void ibx_display_interrupt_update(struct intel_display *display,
 				  u32 interrupt_mask, u32 enabled_irq_mask);
-void ibx_enable_display_interrupt(struct drm_i915_private *i915, u32 bits);
-void ibx_disable_display_interrupt(struct drm_i915_private *i915, u32 bits);
+void ibx_enable_display_interrupt(struct intel_display *display, u32 bits);
+void ibx_disable_display_interrupt(struct intel_display *display, u32 bits);
 
-void gen8_irq_power_well_post_enable(struct drm_i915_private *i915, u8 pipe_mask);
-void gen8_irq_power_well_pre_disable(struct drm_i915_private *i915, u8 pipe_mask);
+void gen8_irq_power_well_post_enable(struct intel_display *display, u8 pipe_mask);
+void gen8_irq_power_well_pre_disable(struct intel_display *display, u8 pipe_mask);
 
 int i8xx_enable_vblank(struct drm_crtc *crtc);
 int i915gm_enable_vblank(struct drm_crtc *crtc);
@@ -46,41 +45,41 @@ void i965_disable_vblank(struct drm_crtc *crtc);
 void ilk_disable_vblank(struct drm_crtc *crtc);
 void bdw_disable_vblank(struct drm_crtc *crtc);
 
-void ivb_display_irq_handler(struct drm_i915_private *i915, u32 de_iir);
-void ilk_display_irq_handler(struct drm_i915_private *i915, u32 de_iir);
-void gen8_de_irq_handler(struct drm_i915_private *i915, u32 master_ctl);
-void gen11_display_irq_handler(struct drm_i915_private *i915);
+void ivb_display_irq_handler(struct intel_display *display, u32 de_iir);
+void ilk_display_irq_handler(struct intel_display *display, u32 de_iir);
+void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl);
+void gen11_display_irq_handler(struct intel_display *display);
 
-u32 gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32 master_ctl);
-void gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir);
+u32 gen11_gu_misc_irq_ack(struct intel_display *display, const u32 master_ctl);
+void gen11_gu_misc_irq_handler(struct intel_display *display, const u32 iir);
 
-void i9xx_display_irq_reset(struct drm_i915_private *i915);
-void vlv_display_irq_reset(struct drm_i915_private *i915);
-void gen8_display_irq_reset(struct drm_i915_private *i915);
-void gen11_display_irq_reset(struct drm_i915_private *i915);
+void i9xx_display_irq_reset(struct intel_display *display);
+void vlv_display_irq_reset(struct intel_display *display);
+void gen8_display_irq_reset(struct intel_display *display);
+void gen11_display_irq_reset(struct intel_display *display);
 
-void vlv_display_irq_postinstall(struct drm_i915_private *i915);
-void ilk_de_irq_postinstall(struct drm_i915_private *i915);
-void gen8_de_irq_postinstall(struct drm_i915_private *i915);
-void gen11_de_irq_postinstall(struct drm_i915_private *i915);
-void dg1_de_irq_postinstall(struct drm_i915_private *i915);
+void vlv_display_irq_postinstall(struct intel_display *display);
+void ilk_de_irq_postinstall(struct intel_display *display);
+void gen8_de_irq_postinstall(struct intel_display *display);
+void gen11_de_irq_postinstall(struct intel_display *display);
+void dg1_de_irq_postinstall(struct intel_display *display);
 
 u32 i915_pipestat_enable_mask(struct intel_display *display, enum pipe pipe);
-void i915_enable_pipestat(struct drm_i915_private *i915, enum pipe pipe, u32 status_mask);
-void i915_disable_pipestat(struct drm_i915_private *i915, enum pipe pipe, u32 status_mask);
-void i915_enable_asle_pipestat(struct drm_i915_private *i915);
+void i915_enable_pipestat(struct intel_display *display, enum pipe pipe, u32 status_mask);
+void i915_disable_pipestat(struct intel_display *display, enum pipe pipe, u32 status_mask);
+void i915_enable_asle_pipestat(struct intel_display *display);
 
-void i9xx_pipestat_irq_ack(struct drm_i915_private *i915, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);
+void i9xx_pipestat_irq_ack(struct intel_display *display, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);
 
-void i915_pipestat_irq_handler(struct drm_i915_private *i915, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);
-void i965_pipestat_irq_handler(struct drm_i915_private *i915, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);
-void valleyview_pipestat_irq_handler(struct drm_i915_private *i915, u32 pipe_stats[I915_MAX_PIPES]);
+void i915_pipestat_irq_handler(struct intel_display *display, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);
+void i965_pipestat_irq_handler(struct intel_display *display, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);
+void valleyview_pipestat_irq_handler(struct intel_display *display, u32 pipe_stats[I915_MAX_PIPES]);
 
 void vlv_display_error_irq_ack(struct intel_display *display, u32 *eir, u32 *dpinvgtt);
 void vlv_display_error_irq_handler(struct intel_display *display, u32 eir, u32 dpinvgtt);
 
-void intel_display_irq_init(struct drm_i915_private *i915);
+void intel_display_irq_init(struct intel_display *display);
 
-void i915gm_irq_cstate_wa(struct drm_i915_private *i915, bool enable);
+void i915gm_irq_cstate_wa(struct intel_display *display, bool enable);
 
 #endif /* __INTEL_DISPLAY_IRQ_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index daf2a0cbb157..b03a95ef64da 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -186,22 +186,18 @@ int intel_power_well_refcount(struct i915_power_well *power_well)
 static void hsw_power_well_post_enable(struct intel_display *display,
 				       u8 irq_pipe_mask, bool has_vga)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	if (has_vga)
 		intel_vga_reset_io_mem(display);
 
 	if (irq_pipe_mask)
-		gen8_irq_power_well_post_enable(dev_priv, irq_pipe_mask);
+		gen8_irq_power_well_post_enable(display, irq_pipe_mask);
 }
 
 static void hsw_power_well_pre_disable(struct intel_display *display,
 				       u8 irq_pipe_mask)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	if (irq_pipe_mask)
-		gen8_irq_power_well_pre_disable(dev_priv, irq_pipe_mask);
+		gen8_irq_power_well_pre_disable(display, irq_pipe_mask);
 }
 
 #define ICL_AUX_PW_TO_PHY(pw_idx)	\
@@ -1226,7 +1222,7 @@ static void vlv_display_power_well_init(struct intel_display *display)
 	vlv_init_display_clock_gating(display);
 
 	spin_lock_irq(&dev_priv->irq_lock);
-	valleyview_enable_display_irqs(dev_priv);
+	valleyview_enable_display_irqs(display);
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	/*
@@ -1255,7 +1251,7 @@ static void vlv_display_power_well_deinit(struct intel_display *display)
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
 	spin_lock_irq(&dev_priv->irq_lock);
-	valleyview_disable_display_irqs(dev_priv);
+	valleyview_disable_display_irqs(display);
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	/* make sure we're done processing display irqs */
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index 7a8fbff39be0..3f47a3beb2e6 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -136,14 +136,13 @@ static void i9xx_set_fifo_underrun_reporting(struct intel_display *display,
 static void ilk_set_fifo_underrun_reporting(struct intel_display *display,
 					    enum pipe pipe, bool enable)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 bit = (pipe == PIPE_A) ?
 		DE_PIPEA_FIFO_UNDERRUN : DE_PIPEB_FIFO_UNDERRUN;
 
 	if (enable)
-		ilk_enable_display_irq(dev_priv, bit);
+		ilk_enable_display_irq(display, bit);
 	else
-		ilk_disable_display_irq(dev_priv, bit);
+		ilk_disable_display_irq(display, bit);
 }
 
 static void ivb_check_fifo_underruns(struct intel_crtc *crtc)
@@ -169,7 +168,6 @@ static void ivb_set_fifo_underrun_reporting(struct intel_display *display,
 					    enum pipe pipe, bool enable,
 					    bool old)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	if (enable) {
 		intel_de_write(display, GEN7_ERR_INT,
 			       ERR_INT_FIFO_UNDERRUN(pipe));
@@ -177,9 +175,9 @@ static void ivb_set_fifo_underrun_reporting(struct intel_display *display,
 		if (!ivb_can_enable_err_int(display))
 			return;
 
-		ilk_enable_display_irq(dev_priv, DE_ERR_INT_IVB);
+		ilk_enable_display_irq(display, DE_ERR_INT_IVB);
 	} else {
-		ilk_disable_display_irq(dev_priv, DE_ERR_INT_IVB);
+		ilk_disable_display_irq(display, DE_ERR_INT_IVB);
 
 		if (old &&
 		    intel_de_read(display, GEN7_ERR_INT) & ERR_INT_FIFO_UNDERRUN(pipe)) {
@@ -193,26 +191,23 @@ static void ivb_set_fifo_underrun_reporting(struct intel_display *display,
 static void bdw_set_fifo_underrun_reporting(struct intel_display *display,
 					    enum pipe pipe, bool enable)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	if (enable)
-		bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
+		bdw_enable_pipe_irq(display, pipe, GEN8_PIPE_FIFO_UNDERRUN);
 	else
-		bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
+		bdw_disable_pipe_irq(display, pipe, GEN8_PIPE_FIFO_UNDERRUN);
 }
 
 static void ibx_set_fifo_underrun_reporting(struct intel_display *display,
 					    enum pipe pch_transcoder,
 					    bool enable)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 bit = (pch_transcoder == PIPE_A) ?
 		SDE_TRANSA_FIFO_UNDER : SDE_TRANSB_FIFO_UNDER;
 
 	if (enable)
-		ibx_enable_display_interrupt(dev_priv, bit);
+		ibx_enable_display_interrupt(display, bit);
 	else
-		ibx_disable_display_interrupt(dev_priv, bit);
+		ibx_disable_display_interrupt(display, bit);
 }
 
 static void cpt_check_pch_fifo_underruns(struct intel_crtc *crtc)
@@ -240,8 +235,6 @@ static void cpt_set_fifo_underrun_reporting(struct intel_display *display,
 					    enum pipe pch_transcoder,
 					    bool enable, bool old)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	if (enable) {
 		intel_de_write(display, SERR_INT,
 			       SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder));
@@ -249,9 +242,9 @@ static void cpt_set_fifo_underrun_reporting(struct intel_display *display,
 		if (!cpt_can_enable_serr_int(display))
 			return;
 
-		ibx_enable_display_interrupt(dev_priv, SDE_ERROR_CPT);
+		ibx_enable_display_interrupt(display, SDE_ERROR_CPT);
 	} else {
-		ibx_disable_display_interrupt(dev_priv, SDE_ERROR_CPT);
+		ibx_disable_display_interrupt(display, SDE_ERROR_CPT);
 
 		if (old && intel_de_read(display, SERR_INT) &
 		    SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder)) {
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index e44ae6acc55f..1bcff3a47745 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -758,13 +758,12 @@ static void ibx_hpd_enable_detection(struct intel_encoder *encoder)
 
 static void ibx_hpd_irq_setup(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 hotplug_irqs, enabled_irqs;
 
 	enabled_irqs = intel_hpd_enabled_irqs(display, display->hotplug.pch_hpd);
 	hotplug_irqs = intel_hpd_hotplug_irqs(display, display->hotplug.pch_hpd);
 
-	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
+	ibx_display_interrupt_update(display, hotplug_irqs, enabled_irqs);
 
 	ibx_hpd_detection_setup(display);
 }
@@ -847,7 +846,6 @@ static void icp_hpd_enable_detection(struct intel_encoder *encoder)
 
 static void icp_hpd_irq_setup(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 hotplug_irqs, enabled_irqs;
 
 	enabled_irqs = intel_hpd_enabled_irqs(display, display->hotplug.pch_hpd);
@@ -859,7 +857,7 @@ static void icp_hpd_irq_setup(struct intel_display *display)
 	 */
 	intel_de_write(display, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
 
-	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
+	ibx_display_interrupt_update(display, hotplug_irqs, enabled_irqs);
 
 	icp_ddi_hpd_detection_setup(display);
 	icp_tc_hpd_detection_setup(display);
@@ -1061,7 +1059,6 @@ static void mtp_hpd_enable_detection(struct intel_encoder *encoder)
 
 static void mtp_hpd_irq_setup(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	u32 hotplug_irqs, enabled_irqs;
 
 	enabled_irqs = intel_hpd_enabled_irqs(display, display->hotplug.pch_hpd);
@@ -1074,7 +1071,7 @@ static void mtp_hpd_irq_setup(struct intel_display *display)
 	intel_de_write(display, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
 
 	mtp_hpd_invert(display);
-	ibx_display_interrupt_update(i915, hotplug_irqs, enabled_irqs);
+	ibx_display_interrupt_update(display, hotplug_irqs, enabled_irqs);
 
 	mtp_ddi_hpd_detection_setup(display);
 	mtp_tc_hpd_detection_setup(display);
@@ -1082,13 +1079,12 @@ static void mtp_hpd_irq_setup(struct intel_display *display)
 
 static void xe2lpd_sde_hpd_irq_setup(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	u32 hotplug_irqs, enabled_irqs;
 
 	enabled_irqs = intel_hpd_enabled_irqs(display, display->hotplug.pch_hpd);
 	hotplug_irqs = intel_hpd_hotplug_irqs(display, display->hotplug.pch_hpd);
 
-	ibx_display_interrupt_update(i915, hotplug_irqs, enabled_irqs);
+	ibx_display_interrupt_update(display, hotplug_irqs, enabled_irqs);
 
 	mtp_ddi_hpd_detection_setup(display);
 	mtp_tc_hpd_detection_setup(display);
@@ -1248,7 +1244,7 @@ static void spt_hpd_irq_setup(struct intel_display *display)
 	enabled_irqs = intel_hpd_enabled_irqs(display, display->hotplug.pch_hpd);
 	hotplug_irqs = intel_hpd_hotplug_irqs(display, display->hotplug.pch_hpd);
 
-	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
+	ibx_display_interrupt_update(display, hotplug_irqs, enabled_irqs);
 
 	spt_hpd_detection_setup(display);
 }
@@ -1300,16 +1296,15 @@ static void ilk_hpd_enable_detection(struct intel_encoder *encoder)
 
 static void ilk_hpd_irq_setup(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 hotplug_irqs, enabled_irqs;
 
 	enabled_irqs = intel_hpd_enabled_irqs(display, display->hotplug.hpd);
 	hotplug_irqs = intel_hpd_hotplug_irqs(display, display->hotplug.hpd);
 
 	if (DISPLAY_VER(display) >= 8)
-		bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
+		bdw_update_port_irq(display, hotplug_irqs, enabled_irqs);
 	else
-		ilk_update_display_irq(dev_priv, hotplug_irqs, enabled_irqs);
+		ilk_update_display_irq(display, hotplug_irqs, enabled_irqs);
 
 	ilk_hpd_detection_setup(display);
 
@@ -1373,13 +1368,12 @@ static void bxt_hpd_enable_detection(struct intel_encoder *encoder)
 
 static void bxt_hpd_irq_setup(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 hotplug_irqs, enabled_irqs;
 
 	enabled_irqs = intel_hpd_enabled_irqs(display, display->hotplug.hpd);
 	hotplug_irqs = intel_hpd_hotplug_irqs(display, display->hotplug.hpd);
 
-	bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
+	bdw_update_port_irq(display, hotplug_irqs, enabled_irqs);
 
 	bxt_hpd_detection_setup(display);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
index 10e26c3db946..65f60615f387 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
@@ -281,6 +281,7 @@ static int ilk_pipe_crc_ctl_reg(enum intel_pipe_crc_source *source,
 static void
 intel_crtc_crc_setup_workarounds(struct intel_crtc *crtc, bool enable)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_crtc_state *pipe_config;
 	struct drm_atomic_state *state;
@@ -288,7 +289,7 @@ intel_crtc_crc_setup_workarounds(struct intel_crtc *crtc, bool enable)
 	int ret;
 
 	if (IS_I945GM(dev_priv) || IS_I915GM(dev_priv))
-		i915gm_irq_cstate_wa(dev_priv, enable);
+		i915gm_irq_cstate_wa(display, enable);
 
 	drm_modeset_acquire_init(&ctx, 0);
 
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 5dbe857ea85b..2e3f3f0207e8 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1594,7 +1594,7 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
 	/* Disable TV interrupts around load detect or we'll recurse */
 	if (connector->polled & DRM_CONNECTOR_POLL_HPD) {
 		spin_lock_irq(&dev_priv->irq_lock);
-		i915_disable_pipestat(dev_priv, 0,
+		i915_disable_pipestat(display, 0,
 				      PIPE_HOTPLUG_INTERRUPT_STATUS |
 				      PIPE_HOTPLUG_TV_INTERRUPT_STATUS);
 		spin_unlock_irq(&dev_priv->irq_lock);
@@ -1669,7 +1669,7 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
 	/* Restore interrupt config */
 	if (connector->polled & DRM_CONNECTOR_POLL_HPD) {
 		spin_lock_irq(&dev_priv->irq_lock);
-		i915_enable_pipestat(dev_priv, 0,
+		i915_enable_pipestat(display, 0,
 				     PIPE_HOTPLUG_INTERRUPT_STATUS |
 				     PIPE_HOTPLUG_TV_INTERRUPT_STATUS);
 		spin_unlock_irq(&dev_priv->irq_lock);
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 70e550539bb2..8739195aba69 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2689,22 +2689,24 @@ static const struct drm_plane_funcs tgl_plane_funcs = {
 static void
 skl_plane_enable_flip_done(struct intel_plane *plane)
 {
+	struct intel_display *display = to_intel_display(plane);
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 
 	spin_lock_irq(&i915->irq_lock);
-	bdw_enable_pipe_irq(i915, pipe, GEN9_PIPE_PLANE_FLIP_DONE(plane->id));
+	bdw_enable_pipe_irq(display, pipe, GEN9_PIPE_PLANE_FLIP_DONE(plane->id));
 	spin_unlock_irq(&i915->irq_lock);
 }
 
 static void
 skl_plane_disable_flip_done(struct intel_plane *plane)
 {
+	struct intel_display *display = to_intel_display(plane);
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 
 	spin_lock_irq(&i915->irq_lock);
-	bdw_disable_pipe_irq(i915, pipe, GEN9_PIPE_PLANE_FLIP_DONE(plane->id));
+	bdw_disable_pipe_irq(display, pipe, GEN9_PIPE_PLANE_FLIP_DONE(plane->id));
 	spin_unlock_irq(&i915->irq_lock);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 2cfaedb04876..4b46c59588b8 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -550,6 +550,7 @@ static unsigned int init_emon(struct intel_uncore *uncore)
 static bool gen5_rps_enable(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
+	struct intel_display *display = &i915->display;
 	struct intel_uncore *uncore = rps_to_uncore(rps);
 	u8 fstart, vstart;
 	u32 rgvmodectl;
@@ -608,7 +609,7 @@ static bool gen5_rps_enable(struct intel_rps *rps)
 	rps->ips.last_time2 = ktime_get_raw_ns();
 
 	spin_lock(&i915->irq_lock);
-	ilk_enable_display_irq(i915, DE_PCU_EVENT);
+	ilk_enable_display_irq(display, DE_PCU_EVENT);
 	spin_unlock(&i915->irq_lock);
 
 	spin_unlock_irq(&mchdev_lock);
@@ -621,13 +622,14 @@ static bool gen5_rps_enable(struct intel_rps *rps)
 static void gen5_rps_disable(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
+	struct intel_display *display = &i915->display;
 	struct intel_uncore *uncore = rps_to_uncore(rps);
 	u16 rgvswctl;
 
 	spin_lock_irq(&mchdev_lock);
 
 	spin_lock(&i915->irq_lock);
-	ilk_disable_display_irq(i915, DE_PCU_EVENT);
+	ilk_disable_display_irq(display, DE_PCU_EVENT);
 	spin_unlock(&i915->irq_lock);
 
 	rgvswctl = intel_uncore_read16(uncore, MEMSWCTL);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 3b05eb3f9cbc..ba3afc7e38ac 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -284,7 +284,7 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 
 		/* Call regardless, as some status bits might not be
 		 * signalled in IIR */
-		i9xx_pipestat_irq_ack(dev_priv, iir, pipe_stats);
+		i9xx_pipestat_irq_ack(display, iir, pipe_stats);
 
 		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
 			   I915_LPE_PIPE_B_INTERRUPT))
@@ -311,7 +311,7 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
 			vlv_display_error_irq_handler(display, eir, dpinvgtt);
 
-		valleyview_pipestat_irq_handler(dev_priv, pipe_stats);
+		valleyview_pipestat_irq_handler(display, pipe_stats);
 	} while (0);
 
 	pmu_irq_stats(dev_priv, ret);
@@ -374,7 +374,7 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 
 		/* Call regardless, as some status bits might not be
 		 * signalled in IIR */
-		i9xx_pipestat_irq_ack(dev_priv, iir, pipe_stats);
+		i9xx_pipestat_irq_ack(display, iir, pipe_stats);
 
 		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
 			   I915_LPE_PIPE_B_INTERRUPT |
@@ -397,7 +397,7 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
 			vlv_display_error_irq_handler(display, eir, dpinvgtt);
 
-		valleyview_pipestat_irq_handler(dev_priv, pipe_stats);
+		valleyview_pipestat_irq_handler(display, pipe_stats);
 	} while (0);
 
 	pmu_irq_stats(dev_priv, ret);
@@ -418,6 +418,7 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 static irqreturn_t ilk_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *i915 = arg;
+	struct intel_display *display = &i915->display;
 	void __iomem * const regs = intel_uncore_regs(&i915->uncore);
 	u32 de_iir, gt_iir, de_ier, sde_ier = 0;
 	irqreturn_t ret = IRQ_NONE;
@@ -458,9 +459,9 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
 	if (de_iir) {
 		raw_reg_write(regs, DEIIR, de_iir);
 		if (DISPLAY_VER(i915) >= 7)
-			ivb_display_irq_handler(i915, de_iir);
+			ivb_display_irq_handler(display, de_iir);
 		else
-			ilk_display_irq_handler(i915, de_iir);
+			ilk_display_irq_handler(display, de_iir);
 		ret = IRQ_HANDLED;
 	}
 
@@ -506,6 +507,7 @@ static inline void gen8_master_intr_enable(void __iomem * const regs)
 static irqreturn_t gen8_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *dev_priv = arg;
+	struct intel_display *display = &dev_priv->display;
 	void __iomem * const regs = intel_uncore_regs(&dev_priv->uncore);
 	u32 master_ctl;
 
@@ -524,7 +526,7 @@ static irqreturn_t gen8_irq_handler(int irq, void *arg)
 	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
 	if (master_ctl & ~GEN8_GT_IRQS) {
 		disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
-		gen8_de_irq_handler(dev_priv, master_ctl);
+		gen8_de_irq_handler(display, master_ctl);
 		enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 	}
 
@@ -556,6 +558,7 @@ static inline void gen11_master_intr_enable(void __iomem * const regs)
 static irqreturn_t gen11_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *i915 = arg;
+	struct intel_display *display = &i915->display;
 	void __iomem * const regs = intel_uncore_regs(&i915->uncore);
 	struct intel_gt *gt = to_gt(i915);
 	u32 master_ctl;
@@ -575,13 +578,13 @@ static irqreturn_t gen11_irq_handler(int irq, void *arg)
 
 	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
 	if (master_ctl & GEN11_DISPLAY_IRQ)
-		gen11_display_irq_handler(i915);
+		gen11_display_irq_handler(display);
 
-	gu_misc_iir = gen11_gu_misc_irq_ack(i915, master_ctl);
+	gu_misc_iir = gen11_gu_misc_irq_ack(display, master_ctl);
 
 	gen11_master_intr_enable(regs);
 
-	gen11_gu_misc_irq_handler(i915, gu_misc_iir);
+	gen11_gu_misc_irq_handler(display, gu_misc_iir);
 
 	pmu_irq_stats(i915, IRQ_HANDLED);
 
@@ -613,6 +616,7 @@ static inline void dg1_master_intr_enable(void __iomem * const regs)
 static irqreturn_t dg1_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private * const i915 = arg;
+	struct intel_display *display = &i915->display;
 	struct intel_gt *gt = to_gt(i915);
 	void __iomem * const regs = intel_uncore_regs(gt->uncore);
 	u32 master_tile_ctl, master_ctl;
@@ -641,13 +645,13 @@ static irqreturn_t dg1_irq_handler(int irq, void *arg)
 	gen11_gt_irq_handler(gt, master_ctl);
 
 	if (master_ctl & GEN11_DISPLAY_IRQ)
-		gen11_display_irq_handler(i915);
+		gen11_display_irq_handler(display);
 
-	gu_misc_iir = gen11_gu_misc_irq_ack(i915, master_ctl);
+	gu_misc_iir = gen11_gu_misc_irq_ack(display, master_ctl);
 
 	dg1_master_intr_enable(regs);
 
-	gen11_gu_misc_irq_handler(i915, gu_misc_iir);
+	gen11_gu_misc_irq_handler(display, gu_misc_iir);
 
 	pmu_irq_stats(i915, IRQ_HANDLED);
 
@@ -691,24 +695,27 @@ static void ilk_irq_reset(struct drm_i915_private *dev_priv)
 
 static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER, 0);
 	intel_uncore_posting_read(&dev_priv->uncore, VLV_MASTER_IER);
 
 	gen5_gt_irq_reset(to_gt(dev_priv));
 
 	spin_lock_irq(&dev_priv->irq_lock);
-	vlv_display_irq_reset(dev_priv);
+	vlv_display_irq_reset(display);
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
 static void gen8_irq_reset(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
 	gen8_master_intr_disable(intel_uncore_regs(uncore));
 
 	gen8_gt_irq_reset(to_gt(dev_priv));
-	gen8_display_irq_reset(dev_priv);
+	gen8_display_irq_reset(display);
 	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
 
 	if (HAS_PCH_SPLIT(dev_priv))
@@ -718,13 +725,14 @@ static void gen8_irq_reset(struct drm_i915_private *dev_priv)
 
 static void gen11_irq_reset(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_gt *gt = to_gt(dev_priv);
 	struct intel_uncore *uncore = gt->uncore;
 
 	gen11_master_intr_disable(intel_uncore_regs(&dev_priv->uncore));
 
 	gen11_gt_irq_reset(gt);
-	gen11_display_irq_reset(dev_priv);
+	gen11_display_irq_reset(display);
 
 	gen2_irq_reset(uncore, GEN11_GU_MISC_IRQ_REGS);
 	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
@@ -732,6 +740,7 @@ static void gen11_irq_reset(struct drm_i915_private *dev_priv)
 
 static void dg1_irq_reset(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	struct intel_gt *gt;
 	unsigned int i;
@@ -741,7 +750,7 @@ static void dg1_irq_reset(struct drm_i915_private *dev_priv)
 	for_each_gt(gt, dev_priv, i)
 		gen11_gt_irq_reset(gt);
 
-	gen11_display_irq_reset(dev_priv);
+	gen11_display_irq_reset(display);
 
 	gen2_irq_reset(uncore, GEN11_GU_MISC_IRQ_REGS);
 	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
@@ -751,6 +760,7 @@ static void dg1_irq_reset(struct drm_i915_private *dev_priv)
 
 static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
 	intel_uncore_write(uncore, GEN8_MASTER_IRQ, 0);
@@ -761,23 +771,27 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
 	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
 
 	spin_lock_irq(&dev_priv->irq_lock);
-	vlv_display_irq_reset(dev_priv);
+	vlv_display_irq_reset(display);
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
 static void ilk_irq_postinstall(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	gen5_gt_irq_postinstall(to_gt(dev_priv));
 
-	ilk_de_irq_postinstall(dev_priv);
+	ilk_de_irq_postinstall(display);
 }
 
 static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	gen5_gt_irq_postinstall(to_gt(dev_priv));
 
 	spin_lock_irq(&dev_priv->irq_lock);
-	vlv_display_irq_postinstall(dev_priv);
+	vlv_display_irq_postinstall(display);
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER, MASTER_INTERRUPT_ENABLE);
@@ -786,20 +800,23 @@ static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv)
 
 static void gen8_irq_postinstall(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	gen8_gt_irq_postinstall(to_gt(dev_priv));
-	gen8_de_irq_postinstall(dev_priv);
+	gen8_de_irq_postinstall(display);
 
 	gen8_master_intr_enable(intel_uncore_regs(&dev_priv->uncore));
 }
 
 static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_gt *gt = to_gt(dev_priv);
 	struct intel_uncore *uncore = gt->uncore;
 	u32 gu_misc_masked = GEN11_GU_MISC_GSE;
 
 	gen11_gt_irq_postinstall(gt);
-	gen11_de_irq_postinstall(dev_priv);
+	gen11_de_irq_postinstall(display);
 
 	gen2_irq_init(uncore, GEN11_GU_MISC_IRQ_REGS, ~gu_misc_masked, gu_misc_masked);
 
@@ -809,6 +826,7 @@ static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
 
 static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	u32 gu_misc_masked = GEN11_GU_MISC_GSE;
 	struct intel_gt *gt;
@@ -819,7 +837,7 @@ static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	gen2_irq_init(uncore, GEN11_GU_MISC_IRQ_REGS, ~gu_misc_masked, gu_misc_masked);
 
-	dg1_de_irq_postinstall(dev_priv);
+	dg1_de_irq_postinstall(display);
 
 	dg1_master_intr_enable(intel_uncore_regs(uncore));
 	intel_uncore_posting_read(uncore, DG1_MSTR_TILE_INTR);
@@ -827,10 +845,12 @@ static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
 
 static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	gen8_gt_irq_postinstall(to_gt(dev_priv));
 
 	spin_lock_irq(&dev_priv->irq_lock);
-	vlv_display_irq_postinstall(dev_priv);
+	vlv_display_irq_postinstall(display);
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, GEN8_MASTER_IRQ_CONTROL);
@@ -900,9 +920,10 @@ static void i9xx_error_irq_handler(struct drm_i915_private *dev_priv,
 
 static void i915_irq_reset(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
-	i9xx_display_irq_reset(dev_priv);
+	i9xx_display_irq_reset(display);
 
 	gen2_error_reset(uncore, GEN2_ERROR_REGS);
 	gen2_irq_reset(uncore, GEN2_IRQ_REGS);
@@ -911,6 +932,7 @@ static void i915_irq_reset(struct drm_i915_private *dev_priv)
 
 static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	u32 enable_mask;
 
@@ -942,11 +964,11 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 	/* Interrupt setup is already guaranteed to be single-threaded, this is
 	 * just to make the assert_spin_locked check happy. */
 	spin_lock_irq(&dev_priv->irq_lock);
-	i915_enable_pipestat(dev_priv, PIPE_A, PIPE_CRC_DONE_INTERRUPT_STATUS);
-	i915_enable_pipestat(dev_priv, PIPE_B, PIPE_CRC_DONE_INTERRUPT_STATUS);
+	i915_enable_pipestat(display, PIPE_A, PIPE_CRC_DONE_INTERRUPT_STATUS);
+	i915_enable_pipestat(display, PIPE_B, PIPE_CRC_DONE_INTERRUPT_STATUS);
 	spin_unlock_irq(&dev_priv->irq_lock);
 
-	i915_enable_asle_pipestat(dev_priv);
+	i915_enable_asle_pipestat(display);
 }
 
 static irqreturn_t i915_irq_handler(int irq, void *arg)
@@ -979,7 +1001,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
 
 		/* Call regardless, as some status bits might not be
 		 * signalled in IIR */
-		i9xx_pipestat_irq_ack(dev_priv, iir, pipe_stats);
+		i9xx_pipestat_irq_ack(display, iir, pipe_stats);
 
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
 			i9xx_error_irq_ack(dev_priv, &eir, &eir_stuck);
@@ -995,7 +1017,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
 		if (hotplug_status)
 			i9xx_hpd_irq_handler(display, hotplug_status);
 
-		i915_pipestat_irq_handler(dev_priv, iir, pipe_stats);
+		i915_pipestat_irq_handler(display, iir, pipe_stats);
 	} while (0);
 
 	pmu_irq_stats(dev_priv, ret);
@@ -1007,9 +1029,10 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
 
 static void i965_irq_reset(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
-	i9xx_display_irq_reset(dev_priv);
+	i9xx_display_irq_reset(display);
 
 	gen2_error_reset(uncore, GEN2_ERROR_REGS);
 	gen2_irq_reset(uncore, GEN2_IRQ_REGS);
@@ -1037,6 +1060,7 @@ static u32 i965_error_mask(struct drm_i915_private *i915)
 
 static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	u32 enable_mask;
 
@@ -1065,12 +1089,12 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
 	/* Interrupt setup is already guaranteed to be single-threaded, this is
 	 * just to make the assert_spin_locked check happy. */
 	spin_lock_irq(&dev_priv->irq_lock);
-	i915_enable_pipestat(dev_priv, PIPE_A, PIPE_GMBUS_INTERRUPT_STATUS);
-	i915_enable_pipestat(dev_priv, PIPE_A, PIPE_CRC_DONE_INTERRUPT_STATUS);
-	i915_enable_pipestat(dev_priv, PIPE_B, PIPE_CRC_DONE_INTERRUPT_STATUS);
+	i915_enable_pipestat(display, PIPE_A, PIPE_GMBUS_INTERRUPT_STATUS);
+	i915_enable_pipestat(display, PIPE_A, PIPE_CRC_DONE_INTERRUPT_STATUS);
+	i915_enable_pipestat(display, PIPE_B, PIPE_CRC_DONE_INTERRUPT_STATUS);
 	spin_unlock_irq(&dev_priv->irq_lock);
 
-	i915_enable_asle_pipestat(dev_priv);
+	i915_enable_asle_pipestat(display);
 }
 
 static irqreturn_t i965_irq_handler(int irq, void *arg)
@@ -1102,7 +1126,7 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
 
 		/* Call regardless, as some status bits might not be
 		 * signalled in IIR */
-		i9xx_pipestat_irq_ack(dev_priv, iir, pipe_stats);
+		i9xx_pipestat_irq_ack(display, iir, pipe_stats);
 
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
 			i9xx_error_irq_ack(dev_priv, &eir, &eir_stuck);
@@ -1123,7 +1147,7 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
 		if (hotplug_status)
 			i9xx_hpd_irq_handler(display, hotplug_status);
 
-		i965_pipestat_irq_handler(dev_priv, iir, pipe_stats);
+		i965_pipestat_irq_handler(display, iir, pipe_stats);
 	} while (0);
 
 	pmu_irq_stats(dev_priv, IRQ_HANDLED);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 4c6c8b2ad1c9..23937ed3b33d 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -220,11 +220,13 @@ void xe_display_unregister(struct xe_device *xe)
 
 void xe_display_irq_handler(struct xe_device *xe, u32 master_ctl)
 {
+	struct intel_display *display = &xe->display;
+
 	if (!xe->info.probe_display)
 		return;
 
 	if (master_ctl & DISPLAY_IRQ)
-		gen11_display_irq_handler(xe);
+		gen11_display_irq_handler(display);
 }
 
 void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir)
@@ -240,19 +242,23 @@ void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir)
 
 void xe_display_irq_reset(struct xe_device *xe)
 {
+	struct intel_display *display = &xe->display;
+
 	if (!xe->info.probe_display)
 		return;
 
-	gen11_display_irq_reset(xe);
+	gen11_display_irq_reset(display);
 }
 
 void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt)
 {
+	struct intel_display *display = &xe->display;
+
 	if (!xe->info.probe_display)
 		return;
 
 	if (gt->info.id == XE_GT0)
-		gen11_de_irq_postinstall(xe);
+		gen11_de_irq_postinstall(display);
 }
 
 static bool suspend_to_idle(void)
-- 
2.39.5

