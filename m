Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA615274380
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 15:51:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4CB96E878;
	Tue, 22 Sep 2020 13:51:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBB4F6E14A
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 13:51:26 +0000 (UTC)
IronPort-SDR: S4alobyHqKTbx04qJ5AtO90fUnAoO9VTkxtxOIQAFZBuT3V7+7e9bIakd6h9xj9ALZ4sv+iTbJ
 JBJrVyJmdkLA==
X-IronPort-AV: E=McAfee;i="6000,8403,9751"; a="222197895"
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="222197895"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 06:51:26 -0700
IronPort-SDR: ES+Ed28LqjNti/IuGw7trzy2Du/wMcXSrPSUhoHWQ935wjY/1DsHTVHrJmkYQIxE9RGKULBFkb
 1eTXYTiqfecQ==
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="485966894"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Sep 2020 06:51:24 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Sep 2020 19:14:23 +0530
Message-Id: <20200922134426.9840-3-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20200922134426.9840-1-vandita.kulkarni@intel.com>
References: <20200922134426.9840-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V13 2/5] i915/dsi: Configure TE interrupt for cmd mode
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

Configure TE interrupt as part of the vblank
enable call flow.

v2: Hide the private flags check inside configure_te (Jani)

v3: Fix the position of masking de_port_masked for DSI_TE.

v4: Simplify the caller of configure_te (Jani)

v5: Clear IIR, remove the usage of private_flags

v6: including icl_dsi header is not needed

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 50 +++++++++++++++++++++++++++++++--
 1 file changed, 48 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 759f523c6a6b..913548addfba 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2631,12 +2631,47 @@ int ilk_enable_vblank(struct drm_crtc *crtc)
 	return 0;
 }
 
+static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
+				   bool enable)
+{
+	struct drm_i915_private *dev_priv = to_i915(intel_crtc->base.dev);
+	enum port port;
+	u32 tmp;
+
+	if (!(intel_crtc->mode_flags &
+	    (I915_MODE_FLAG_DSI_USE_TE1 | I915_MODE_FLAG_DSI_USE_TE0)))
+		return false;
+
+	/* for dual link cases we consider TE from slave */
+	if (intel_crtc->mode_flags & I915_MODE_FLAG_DSI_USE_TE1)
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
+
+	tmp = I915_READ(DSI_INTR_IDENT_REG(port));
+	I915_WRITE(DSI_INTR_IDENT_REG(port), tmp);
+
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
@@ -2702,9 +2737,13 @@ void ilk_disable_vblank(struct drm_crtc *crtc)
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
@@ -3400,6 +3439,13 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	if (IS_GEN9_LP(dev_priv))
 		de_port_masked |= BXT_DE_PORT_GMBUS;
 
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
