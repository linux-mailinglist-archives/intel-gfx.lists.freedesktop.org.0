Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E001828D2
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 07:14:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C8436EA31;
	Thu, 12 Mar 2020 06:14:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D95096EA31
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 06:14:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 23:14:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,543,1574150400"; d="scan'208";a="242923124"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga003.jf.intel.com with ESMTP; 11 Mar 2020 23:14:31 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Mar 2020 11:08:38 +0530
Message-Id: <20200312053841.2794-7-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20200312053841.2794-1-vandita.kulkarni@intel.com>
References: <20200312053841.2794-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V8 6/9] drm/i915/dsi: Configure TE interrupt for cmd
 mode
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We need to configure TE interrupt in two places.
Port interrupt and DSI interrupt mask registers.

v2: Hide the private flags check inside configure_te (Jani)

v3: Fix the position of masking de_port_masked for DSI_TE.

v4: Simplify the caller of configure_te (Jani)

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 49 +++++++++++++++++++++++++++++++--
 1 file changed, 47 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 9f0653cf0510..89489a247276 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -40,6 +40,7 @@
 #include "display/intel_hotplug.h"
 #include "display/intel_lpe_audio.h"
 #include "display/intel_psr.h"
+#include "display/intel_dsi.h"
 
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_irq.h"
@@ -2617,12 +2618,45 @@ int ilk_enable_vblank(struct drm_crtc *crtc)
 	return 0;
 }
 
+static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
+				   bool enable)
+{
+	struct drm_i915_private *dev_priv = to_i915(intel_crtc->base.dev);
+	struct intel_crtc_state *config = intel_crtc->config;
+	struct drm_display_mode *mode = &config->hw.adjusted_mode;
+	enum port port;
+	u32 tmp;
+
+	if (!(mode->private_flags &
+	    (I915_MODE_FLAG_DSI_USE_TE1 | I915_MODE_FLAG_DSI_USE_TE0)))
+		return false;
+
+	/* for dual link cases we consider TE from slave */
+	if (mode->private_flags & I915_MODE_FLAG_DSI_USE_TE1)
+		port = PORT_B;
+	else
+		port = PORT_A;
+
+	tmp =  I915_READ(DSI_INTR_MASK_REG(port));
+	if (enable)
+		tmp &= ~DSI_TE_EVENT;
+	else
+		tmp |= DSI_TE_EVENT;
+
+	I915_WRITE(DSI_INTR_MASK_REG(port), tmp);
+	return true;
+}
+
 int bdw_enable_vblank(struct drm_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
-	enum pipe pipe = to_intel_crtc(crtc)->pipe;
+	struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
+	enum pipe pipe = intel_crtc->pipe;
 	unsigned long irqflags;
 
+	if (gen11_dsi_configure_te(intel_crtc, true))
+		return 0;
+
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
 	bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
@@ -2688,9 +2722,13 @@ void ilk_disable_vblank(struct drm_crtc *crtc)
 void bdw_disable_vblank(struct drm_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
-	enum pipe pipe = to_intel_crtc(crtc)->pipe;
+	struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
+	enum pipe pipe = intel_crtc->pipe;
 	unsigned long irqflags;
 
+	if (gen11_dsi_configure_te(intel_crtc, false))
+		return;
+
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
 	bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
@@ -3384,6 +3422,13 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	if (IS_CNL_WITH_PORT_F(dev_priv) || INTEL_GEN(dev_priv) >= 11)
 		de_port_masked |= CNL_AUX_CHANNEL_F;
 
+	if (INTEL_GEN(dev_priv) >= 11) {
+		enum port port;
+
+		if (intel_bios_is_dsi_present(dev_priv, &port))
+			de_port_masked |= DSI0_TE | DSI1_TE;
+	}
+
 	de_pipe_enables = de_pipe_masked | GEN8_PIPE_VBLANK |
 					   GEN8_PIPE_FIFO_UNDERRUN;
 
-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
