Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8168712B3DD
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2019 11:29:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FAA16E3C1;
	Fri, 27 Dec 2019 10:29:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 423356E195
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2019 10:29:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Dec 2019 02:29:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,362,1571727600"; d="scan'208";a="419687740"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by fmsmga006.fm.intel.com with ESMTP; 27 Dec 2019 02:29:19 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Dec 2019 15:26:27 +0530
Message-Id: <20191227095629.1796-7-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20191227095629.1796-1-vandita.kulkarni@intel.com>
References: <20191227095629.1796-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V4 6/8] drm/i915/dsi: Configure TE interrupt for cmd
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

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 55 +++++++++++++++++++++++++++++++--
 1 file changed, 53 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 42b79f577500..fbbb78380657 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -41,6 +41,7 @@
 #include "display/intel_hotplug.h"
 #include "display/intel_lpe_audio.h"
 #include "display/intel_psr.h"
+#include "display/intel_dsi.h"
 
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_irq.h"
@@ -2581,12 +2582,46 @@ int ilk_enable_vblank(struct drm_crtc *crtc)
 	return 0;
 }
 
+static bool gen11_dsi_configure_te(struct drm_i915_private *dev_priv,
+				   struct drm_display_mode *mode, bool enable)
+{
+	enum port port;
+	u32 tmp;
+
+	if (!(mode->private_flags &
+	    (I915_MODE_FLAG_DSI_USE_TE1 | I915_MODE_FLAG_DSI_USE_TE0)))
+		return false;
+
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
+	struct drm_vblank_crtc *vblank;
+	struct drm_display_mode *mode;
 	unsigned long irqflags;
 
+	vblank = &crtc->dev->vblank[drm_crtc_index(crtc)];
+	mode = &vblank->hwmode;
+
+	if (gen11_dsi_configure_te(dev_priv, mode, true))
+		return 0;
+
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
 	bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
@@ -2652,9 +2687,18 @@ void ilk_disable_vblank(struct drm_crtc *crtc)
 void bdw_disable_vblank(struct drm_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
-	enum pipe pipe = to_intel_crtc(crtc)->pipe;
+	struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
+	enum pipe pipe = intel_crtc->pipe;
+	struct drm_vblank_crtc *vblank;
+	struct drm_display_mode *mode;
 	unsigned long irqflags;
 
+	vblank = &crtc->dev->vblank[drm_crtc_index(crtc)];
+	mode = &vblank->hwmode;
+
+	if (gen11_dsi_configure_te(dev_priv, mode, false))
+		return;
+
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
 	bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
@@ -3372,6 +3416,13 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 		gen3_assert_iir_is_zero(uncore, EDP_PSR_IIR);
 	}
 
+	if (INTEL_GEN(dev_priv) >= 11) {
+		enum port port;
+
+		if (intel_bios_is_dsi_present(dev_priv, &port))
+			de_port_masked |= DSI0_TE | DSI1_TE;
+	}
+
 	for_each_pipe(dev_priv, pipe) {
 		dev_priv->de_irq_mask[pipe] = ~de_pipe_masked;
 
-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
