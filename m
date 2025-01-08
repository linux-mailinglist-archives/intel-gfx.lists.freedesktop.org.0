Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 869EAA05DF9
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 15:05:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA89710EBC3;
	Wed,  8 Jan 2025 14:05:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uq35uQY5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC10D10E8BC;
 Wed,  8 Jan 2025 14:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736345109; x=1767881109;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S+t4Isa5fcksEcuBguZi/3eY5422ph4OVemYUmVi0fI=;
 b=Uq35uQY5GugQHjXCtVAZTsbqltIphjYSRh+M3v5CnBl8UXzZ+Tijk8ij
 zhW/0J9OFgHF1FTDJoQqzMyqdpXhtB1NdFkD2PzKMzugoWt/OOcKcv802
 jYRyaBvgsJQWyokQhEyxyeQ/d82pbCGBgZ/Pwoma64MMbpmT4/bTXFIGQ
 ACBIc6V+dw+OM2vX2C50fMXTHuVqJIL+u5j+MHp3Ba0BJfKNJ1Go/+ZWv
 XPAHBzsXqIChvNHoNINO/o2/NC9LokrJ8doqspUbyp+VtSgEkzbJnIn/8
 ex93zXWD/TL816R03fyapF+4LtE7QeMOoYq5FHB6Pl/2FvwLCuQkkUw2v A==;
X-CSE-ConnectionGUID: yMdP8fRnSni7latcGBVezg==
X-CSE-MsgGUID: frx7aKCoSce3ITHArMPPdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="47146089"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="47146089"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 06:04:31 -0800
X-CSE-ConnectionGUID: qRj//EhnR2ekBsqffYAhhw==
X-CSE-MsgGUID: 1CRZ2avkQbufYjKcFJh6xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="108154038"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 06:04:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/3] drm/i915/audio: convert LPE audio to struct intel_display
Date: Wed,  8 Jan 2025 16:04:14 +0200
Message-Id: <f04dd028cd8869cdfb9ab9eb6aceed8ff8e7ddcd.1736345025.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1736345025.git.jani.nikula@intel.com>
References: <cover.1736345025.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Going forward, struct intel_display will be the main display device
structure. Convert intel_lpe_audio.[ch] to it. Do some minor checkpatch
fixes while at it.

TODO: Not sure if irq_set_chip_data(irq, dev_priv); is used.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    |  14 +--
 .../gpu/drm/i915/display/intel_lpe_audio.c    | 118 +++++++++---------
 .../gpu/drm/i915/display/intel_lpe_audio.h    |  18 +--
 drivers/gpu/drm/i915/i915_irq.c               |   6 +-
 4 files changed, 77 insertions(+), 79 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 8c26e0e7c2cd..241e5d3904dc 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -732,7 +732,6 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 			      const struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct i915_audio_component *acomp = display->audio.component;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
@@ -774,7 +773,7 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 						      (int)port, (int)cpu_transcoder);
 	}
 
-	intel_lpe_audio_notify(i915, cpu_transcoder, port, crtc_state->eld,
+	intel_lpe_audio_notify(display, cpu_transcoder, port, crtc_state->eld,
 			       crtc_state->port_clock,
 			       intel_crtc_has_dp_encoder(crtc_state));
 }
@@ -793,7 +792,6 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 			       const struct drm_connector_state *old_conn_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct i915_audio_component *acomp = display->audio.component;
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
@@ -833,7 +831,7 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 						      (int)port, (int)cpu_transcoder);
 	}
 
-	intel_lpe_audio_notify(i915, cpu_transcoder, port, NULL, 0, false);
+	intel_lpe_audio_notify(display, cpu_transcoder, port, NULL, 0, false);
 }
 
 static void intel_acomp_get_config(struct intel_encoder *encoder,
@@ -1399,9 +1397,7 @@ static void i915_audio_component_cleanup(struct intel_display *display)
  */
 void intel_audio_init(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	if (intel_lpe_audio_init(i915) < 0)
+	if (intel_lpe_audio_init(display) < 0)
 		i915_audio_component_init(display);
 }
 
@@ -1417,10 +1413,8 @@ void intel_audio_register(struct intel_display *display)
  */
 void intel_audio_deinit(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	if (display->audio.lpe.platdev)
-		intel_lpe_audio_teardown(i915);
+		intel_lpe_audio_teardown(display);
 	else
 		i915_audio_component_cleanup(display);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
index f11626176fe2..59551c8414c2 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
@@ -77,12 +77,12 @@
 #include "intel_lpe_audio.h"
 #include "intel_pci_config.h"
 
-#define HAS_LPE_AUDIO(dev_priv) ((dev_priv)->display.audio.lpe.platdev != NULL)
+#define HAS_LPE_AUDIO(display) ((display)->audio.lpe.platdev)
 
 static struct platform_device *
-lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
+lpe_audio_platdev_create(struct intel_display *display)
 {
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	struct platform_device_info pinfo = {};
 	struct resource *rsc;
 	struct platform_device *platdev;
@@ -98,7 +98,8 @@ lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
 		return ERR_PTR(-ENOMEM);
 	}
 
-	rsc[0].start    = rsc[0].end = dev_priv->display.audio.lpe.irq;
+	rsc[0].start    = display->audio.lpe.irq;
+	rsc[0].end      = display->audio.lpe.irq;
 	rsc[0].flags    = IORESOURCE_IRQ;
 	rsc[0].name     = "hdmi-lpe-audio-irq";
 
@@ -109,7 +110,7 @@ lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
 	rsc[1].flags    = IORESOURCE_MEM;
 	rsc[1].name     = "hdmi-lpe-audio-mmio";
 
-	pinfo.parent = dev_priv->drm.dev;
+	pinfo.parent = display->drm->dev;
 	pinfo.name = "hdmi-lpe-audio";
 	pinfo.id = -1;
 	pinfo.res = rsc;
@@ -118,8 +119,8 @@ lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
 	pinfo.size_data = sizeof(*pdata);
 	pinfo.dma_mask = DMA_BIT_MASK(32);
 
-	pdata->num_pipes = INTEL_NUM_PIPES(dev_priv);
-	pdata->num_ports = IS_CHERRYVIEW(dev_priv) ? 3 : 2; /* B,C,D or B,C */
+	pdata->num_pipes = INTEL_NUM_PIPES(display);
+	pdata->num_ports = display->platform.cherryview ? 3 : 2; /* B,C,D or B,C */
 	pdata->port[0].pipe = -1;
 	pdata->port[1].pipe = -1;
 	pdata->port[2].pipe = -1;
@@ -130,7 +131,7 @@ lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
 	kfree(pdata);
 
 	if (IS_ERR(platdev)) {
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"Failed to allocate LPE audio platform device\n");
 		return platdev;
 	}
@@ -140,7 +141,7 @@ lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
 	return platdev;
 }
 
-static void lpe_audio_platdev_destroy(struct drm_i915_private *dev_priv)
+static void lpe_audio_platdev_destroy(struct intel_display *display)
 {
 	/* XXX Note that platform_device_register_full() allocates a dma_mask
 	 * and never frees it. We can't free it here as we cannot guarantee
@@ -150,7 +151,7 @@ static void lpe_audio_platdev_destroy(struct drm_i915_private *dev_priv)
 	 * than us fiddle with its internals.
 	 */
 
-	platform_device_unregister(dev_priv->display.audio.lpe.platdev);
+	platform_device_unregister(display->audio.lpe.platdev);
 }
 
 static void lpe_audio_irq_unmask(struct irq_data *d)
@@ -167,11 +168,12 @@ static struct irq_chip lpe_audio_irqchip = {
 	.irq_unmask = lpe_audio_irq_unmask,
 };
 
-static int lpe_audio_irq_init(struct drm_i915_private *dev_priv)
+static int lpe_audio_irq_init(struct intel_display *display)
 {
-	int irq = dev_priv->display.audio.lpe.irq;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	int irq = display->audio.lpe.irq;
 
-	drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv));
+	drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv));
 	irq_set_chip_and_handler_name(irq,
 				&lpe_audio_irqchip,
 				handle_simple_irq,
@@ -180,11 +182,11 @@ static int lpe_audio_irq_init(struct drm_i915_private *dev_priv)
 	return irq_set_chip_data(irq, dev_priv);
 }
 
-static bool lpe_audio_detect(struct drm_i915_private *dev_priv)
+static bool lpe_audio_detect(struct intel_display *display)
 {
 	int lpe_present = false;
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
+	if (display->platform.valleyview || display->platform.cherryview) {
 		static const struct pci_device_id atom_hdaudio_ids[] = {
 			/* Baytrail */
 			{PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x0f04)},
@@ -194,7 +196,7 @@ static bool lpe_audio_detect(struct drm_i915_private *dev_priv)
 		};
 
 		if (!pci_dev_present(atom_hdaudio_ids)) {
-			drm_info(&dev_priv->drm,
+			drm_info(display->drm,
 				 "HDaudio controller not detected, using LPE audio instead\n");
 			lpe_present = true;
 		}
@@ -202,34 +204,34 @@ static bool lpe_audio_detect(struct drm_i915_private *dev_priv)
 	return lpe_present;
 }
 
-static int lpe_audio_setup(struct drm_i915_private *dev_priv)
+static int lpe_audio_setup(struct intel_display *display)
 {
 	int ret;
 
-	dev_priv->display.audio.lpe.irq = irq_alloc_desc(0);
-	if (dev_priv->display.audio.lpe.irq < 0) {
-		drm_err(&dev_priv->drm, "Failed to allocate IRQ desc: %d\n",
-			dev_priv->display.audio.lpe.irq);
-		ret = dev_priv->display.audio.lpe.irq;
+	display->audio.lpe.irq = irq_alloc_desc(0);
+	if (display->audio.lpe.irq < 0) {
+		drm_err(display->drm, "Failed to allocate IRQ desc: %d\n",
+			display->audio.lpe.irq);
+		ret = display->audio.lpe.irq;
 		goto err;
 	}
 
-	drm_dbg(&dev_priv->drm, "irq = %d\n", dev_priv->display.audio.lpe.irq);
+	drm_dbg(display->drm, "irq = %d\n", display->audio.lpe.irq);
 
-	ret = lpe_audio_irq_init(dev_priv);
+	ret = lpe_audio_irq_init(display);
 
 	if (ret) {
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"Failed to initialize irqchip for lpe audio: %d\n",
 			ret);
 		goto err_free_irq;
 	}
 
-	dev_priv->display.audio.lpe.platdev = lpe_audio_platdev_create(dev_priv);
+	display->audio.lpe.platdev = lpe_audio_platdev_create(display);
 
-	if (IS_ERR(dev_priv->display.audio.lpe.platdev)) {
-		ret = PTR_ERR(dev_priv->display.audio.lpe.platdev);
-		drm_err(&dev_priv->drm,
+	if (IS_ERR(display->audio.lpe.platdev)) {
+		ret = PTR_ERR(display->audio.lpe.platdev);
+		drm_err(display->drm,
 			"Failed to create lpe audio platform device: %d\n",
 			ret);
 		goto err_free_irq;
@@ -238,54 +240,54 @@ static int lpe_audio_setup(struct drm_i915_private *dev_priv)
 	/* enable chicken bit; at least this is required for Dell Wyse 3040
 	 * with DP outputs (but only sometimes by some reason!)
 	 */
-	intel_de_write(dev_priv, VLV_AUD_CHICKEN_BIT_REG,
+	intel_de_write(display, VLV_AUD_CHICKEN_BIT_REG,
 		       VLV_CHICKEN_BIT_DBG_ENABLE);
 
 	return 0;
 err_free_irq:
-	irq_free_desc(dev_priv->display.audio.lpe.irq);
+	irq_free_desc(display->audio.lpe.irq);
 err:
-	dev_priv->display.audio.lpe.irq = -1;
-	dev_priv->display.audio.lpe.platdev = NULL;
+	display->audio.lpe.irq = -1;
+	display->audio.lpe.platdev = NULL;
 	return ret;
 }
 
 /**
  * intel_lpe_audio_irq_handler() - forwards the LPE audio irq
- * @dev_priv: the i915 drm device private data
+ * @display: display device
  *
  * the LPE Audio irq is forwarded to the irq handler registered by LPE audio
  * driver.
  */
-void intel_lpe_audio_irq_handler(struct drm_i915_private *dev_priv)
+void intel_lpe_audio_irq_handler(struct intel_display *display)
 {
 	int ret;
 
-	if (!HAS_LPE_AUDIO(dev_priv))
+	if (!HAS_LPE_AUDIO(display))
 		return;
 
-	ret = generic_handle_irq(dev_priv->display.audio.lpe.irq);
+	ret = generic_handle_irq(display->audio.lpe.irq);
 	if (ret)
-		drm_err_ratelimited(&dev_priv->drm,
+		drm_err_ratelimited(display->drm,
 				    "error handling LPE audio irq: %d\n", ret);
 }
 
 /**
  * intel_lpe_audio_init() - detect and setup the bridge between HDMI LPE Audio
  * driver and i915
- * @dev_priv: the i915 drm device private data
+ * @display: display device
  *
  * Return: 0 if successful. non-zero if detection or
  * llocation/initialization fails
  */
-int intel_lpe_audio_init(struct drm_i915_private *dev_priv)
+int intel_lpe_audio_init(struct intel_display *display)
 {
 	int ret = -ENODEV;
 
-	if (lpe_audio_detect(dev_priv)) {
-		ret = lpe_audio_setup(dev_priv);
+	if (lpe_audio_detect(display)) {
+		ret = lpe_audio_setup(display);
 		if (ret < 0)
-			drm_err(&dev_priv->drm,
+			drm_err(display->drm,
 				"failed to setup LPE Audio bridge\n");
 	}
 	return ret;
@@ -294,27 +296,27 @@ int intel_lpe_audio_init(struct drm_i915_private *dev_priv)
 /**
  * intel_lpe_audio_teardown() - destroy the bridge between HDMI LPE
  * audio driver and i915
- * @dev_priv: the i915 drm device private data
+ * @display: display device
  *
  * release all the resources for LPE audio <-> i915 bridge.
  */
-void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
+void intel_lpe_audio_teardown(struct intel_display *display)
 {
-	if (!HAS_LPE_AUDIO(dev_priv))
+	if (!HAS_LPE_AUDIO(display))
 		return;
 
-	lpe_audio_platdev_destroy(dev_priv);
+	lpe_audio_platdev_destroy(display);
 
-	irq_free_desc(dev_priv->display.audio.lpe.irq);
+	irq_free_desc(display->audio.lpe.irq);
 
-	dev_priv->display.audio.lpe.irq = -1;
-	dev_priv->display.audio.lpe.platdev = NULL;
+	display->audio.lpe.irq = -1;
+	display->audio.lpe.platdev = NULL;
 }
 
 /**
  * intel_lpe_audio_notify() - notify lpe audio event
  * audio driver and i915
- * @dev_priv: the i915 drm device private data
+ * @display: display device
  * @cpu_transcoder: CPU transcoder
  * @port: port
  * @eld : ELD data
@@ -323,7 +325,7 @@ void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
  *
  * Notify lpe audio driver of eld change.
  */
-void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
+void intel_lpe_audio_notify(struct intel_display *display,
 			    enum transcoder cpu_transcoder, enum port port,
 			    const void *eld, int ls_clock, bool dp_output)
 {
@@ -332,15 +334,15 @@ void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
 	struct intel_hdmi_lpe_audio_port_pdata *ppdata;
 	u32 audio_enable;
 
-	if (!HAS_LPE_AUDIO(dev_priv))
+	if (!HAS_LPE_AUDIO(display))
 		return;
 
-	pdata = dev_get_platdata(&dev_priv->display.audio.lpe.platdev->dev);
+	pdata = dev_get_platdata(&display->audio.lpe.platdev->dev);
 	ppdata = &pdata->port[port - PORT_B];
 
 	spin_lock_irqsave(&pdata->lpe_audio_slock, irqflags);
 
-	audio_enable = intel_de_read(dev_priv, VLV_AUD_PORT_EN_DBG(port));
+	audio_enable = intel_de_read(display, VLV_AUD_PORT_EN_DBG(port));
 
 	if (eld != NULL) {
 		memcpy(ppdata->eld, eld, HDMI_MAX_ELD_BYTES);
@@ -349,7 +351,7 @@ void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
 		ppdata->dp_output = dp_output;
 
 		/* Unmute the amp for both DP and HDMI */
-		intel_de_write(dev_priv, VLV_AUD_PORT_EN_DBG(port),
+		intel_de_write(display, VLV_AUD_PORT_EN_DBG(port),
 			       audio_enable & ~VLV_AMP_MUTE);
 	} else {
 		memset(ppdata->eld, 0, HDMI_MAX_ELD_BYTES);
@@ -358,12 +360,12 @@ void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
 		ppdata->dp_output = false;
 
 		/* Mute the amp for both DP and HDMI */
-		intel_de_write(dev_priv, VLV_AUD_PORT_EN_DBG(port),
+		intel_de_write(display, VLV_AUD_PORT_EN_DBG(port),
 			       audio_enable | VLV_AMP_MUTE);
 	}
 
 	if (pdata->notify_audio_lpe)
-		pdata->notify_audio_lpe(dev_priv->display.audio.lpe.platdev, port - PORT_B);
+		pdata->notify_audio_lpe(display->audio.lpe.platdev, port - PORT_B);
 
 	spin_unlock_irqrestore(&pdata->lpe_audio_slock, irqflags);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.h b/drivers/gpu/drm/i915/display/intel_lpe_audio.h
index 2c5fcb6e1fd0..5234e11fd662 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.h
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.h
@@ -10,27 +10,27 @@
 
 enum port;
 enum transcoder;
-struct drm_i915_private;
+struct intel_display;
 
 #ifdef I915
-int  intel_lpe_audio_init(struct drm_i915_private *dev_priv);
-void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv);
-void intel_lpe_audio_irq_handler(struct drm_i915_private *dev_priv);
-void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
+int  intel_lpe_audio_init(struct intel_display *display);
+void intel_lpe_audio_teardown(struct intel_display *display);
+void intel_lpe_audio_irq_handler(struct intel_display *display);
+void intel_lpe_audio_notify(struct intel_display *display,
 			    enum transcoder cpu_transcoder, enum port port,
 			    const void *eld, int ls_clock, bool dp_output);
 #else
-static inline int intel_lpe_audio_init(struct drm_i915_private *dev_priv)
+static inline int intel_lpe_audio_init(struct intel_display *display)
 {
 	return -ENODEV;
 }
-static inline void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
+static inline void intel_lpe_audio_teardown(struct intel_display *display)
 {
 }
-static inline void intel_lpe_audio_irq_handler(struct drm_i915_private *dev_priv)
+static inline void intel_lpe_audio_irq_handler(struct intel_display *display)
 {
 }
-static inline void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
+static inline void intel_lpe_audio_notify(struct intel_display *display,
 					  enum transcoder cpu_transcoder, enum port port,
 					  const void *eld, int ls_clock, bool dp_output)
 {
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 7920ad9585ae..202eb1b6ae54 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -207,6 +207,7 @@ static void ivb_parity_work(struct work_struct *work)
 static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *dev_priv = arg;
+	struct intel_display *display = &dev_priv->display;
 	irqreturn_t ret = IRQ_NONE;
 
 	if (!intel_irqs_enabled(dev_priv))
@@ -260,7 +261,7 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 
 		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
 			   I915_LPE_PIPE_B_INTERRUPT))
-			intel_lpe_audio_irq_handler(dev_priv);
+			intel_lpe_audio_irq_handler(display);
 
 		/*
 		 * VLV_IIR is single buffered, and reflects the level
@@ -293,6 +294,7 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *dev_priv = arg;
+	struct intel_display *display = &dev_priv->display;
 	irqreturn_t ret = IRQ_NONE;
 
 	if (!intel_irqs_enabled(dev_priv))
@@ -343,7 +345,7 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
 			   I915_LPE_PIPE_B_INTERRUPT |
 			   I915_LPE_PIPE_C_INTERRUPT))
-			intel_lpe_audio_irq_handler(dev_priv);
+			intel_lpe_audio_irq_handler(display);
 
 		/*
 		 * VLV_IIR is single buffered, and reflects the level
-- 
2.39.5

