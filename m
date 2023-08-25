Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2E77888D9
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 15:44:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19C1410E69D;
	Fri, 25 Aug 2023 13:44:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C16A010E69D
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 13:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692971090; x=1724507090;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mTv0xfIVG7J7GVave7FatdhlwKphFZ8TX8ShVYy2bmk=;
 b=clPRBBQY+b1MsfF+vILqbuyNJ5TRmI36i9QTscNzgcosYeEdbWeUw8Rc
 rTXZ+ARwdsvDCuEcJ8B3p48zt9whToj6Rdj3+JsFu85/jv3yOJ0A9vjmK
 UkiYt7zH5P09VkZgfjWLyGQwVVTfKW57xP/5IGO5gApqewPntvF2mAJ0G
 oBFTowWRfm+Mv49rSjwBfspZ4HDlTlM2LOK/Pk04hHTR14uNFIdHPebRw
 pC/php73faJvEXre5IUcEAsIIr+fMV+c8NBPkyDOjBNbHkK8/DundPI1j
 bWbie4FeUgpIyZ6kuStbfd3miJqAs/IOJ1IevLNEYYLLcQU+/qQykcc8k g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="461076893"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="461076893"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 06:44:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="1068246418"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="1068246418"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga005.fm.intel.com with SMTP; 25 Aug 2023 06:44:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Aug 2023 16:44:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Aug 2023 16:44:30 +0300
Message-ID: <20230825134431.24391-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230825134431.24391-1-ville.syrjala@linux.intel.com>
References: <20230825134431.24391-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/6] drm/i915/sdvo: Rework DDC bus handling
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Each SDVO device can have up to three sets of DDC pins.
Currently we just register a single i2c_adapter for the
entire SDVO device and semi-randomly pick the "correct"
set of DDC pins during intel_sdvo_tmds_sink_detect().
This doesn't make any real sense especially if we have
multiple outputs each with their own dedicated DDC bus.

Let's clean up this mess and register a dedicated
i2c_adapter for each of the possible pin pairs. Each
output (ie. connector) can then pick the correct i2c_adapter
to use for its DDC bus. And we can just switch over to
drm_connector_init_with_ddc() to take care of the
connector->ddc association, which also populates the
"ddc" sysfs symlink as a bonus.

And now that things are based on the actual connector we can
also nuke the sketchy sdvo->controller_output thing.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 205 ++++++++++++----------
 1 file changed, 114 insertions(+), 91 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 50a180c1a74b..d77a56460019 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -65,6 +65,8 @@
 #define IS_TV_OR_LVDS(c)	((c)->output_flag & (SDVO_TV_MASK | SDVO_LVDS_MASK))
 #define IS_DIGITAL(c)		((c)->output_flag & (SDVO_TMDS_MASK | SDVO_LVDS_MASK))
 
+#define HAS_DDC(c)		((c)->output_flag & (SDVO_RGB_MASK | SDVO_TMDS_MASK | \
+						     SDVO_LVDS_MASK))
 
 static const char * const tv_format_names[] = {
 	"NTSC_M"   , "NTSC_J"  , "NTSC_443",
@@ -78,20 +80,25 @@ static const char * const tv_format_names[] = {
 
 #define TV_FORMAT_NUM  ARRAY_SIZE(tv_format_names)
 
+struct intel_sdvo;
+
+struct intel_sdvo_ddc {
+	struct i2c_adapter ddc;
+	struct intel_sdvo *sdvo;
+	u8 ddc_bus;
+};
+
 struct intel_sdvo {
 	struct intel_encoder base;
 
 	struct i2c_adapter *i2c;
 	u8 slave_addr;
 
-	struct i2c_adapter ddc;
+	struct intel_sdvo_ddc ddc[3];
 
 	/* Register for the SDVO device: SDVOB or SDVOC */
 	i915_reg_t sdvo_reg;
 
-	/* Active outputs controlled by this SDVO output */
-	u16 controlled_output;
-
 	/*
 	 * Capabilities of the SDVO device returned by
 	 * intel_sdvo_get_capabilities()
@@ -108,9 +115,6 @@ struct intel_sdvo {
 	 */
 	u16 hotplug_active;
 
-	/* DDC bus used by this SDVO encoder */
-	u8 ddc_bus;
-
 	/*
 	 * the sdvo flag gets lost in round trip: dtd->adjusted_mode->dtd
 	 */
@@ -2035,18 +2039,15 @@ intel_sdvo_hotplug(struct intel_encoder *encoder,
 	return intel_encoder_hotplug(encoder, connector);
 }
 
-static bool
-intel_sdvo_multifunc_encoder(struct intel_sdvo *intel_sdvo)
-{
-	/* Is there more than one type of output? */
-	return hweight16(intel_sdvo->caps.output_flags) > 1;
-}
-
 static const struct drm_edid *
 intel_sdvo_get_edid(struct drm_connector *connector)
 {
-	struct intel_sdvo *sdvo = intel_attached_sdvo(to_intel_connector(connector));
-	return drm_edid_read_ddc(connector, &sdvo->ddc);
+	struct i2c_adapter *ddc = connector->ddc;
+
+	if (!ddc)
+		return NULL;
+
+	return drm_edid_read_ddc(connector, ddc);
 }
 
 /* Mac mini hack -- use the same DDC as the analog connector */
@@ -2054,43 +2055,23 @@ static const struct drm_edid *
 intel_sdvo_get_analog_edid(struct drm_connector *connector)
 {
 	struct drm_i915_private *i915 = to_i915(connector->dev);
-	struct i2c_adapter *i2c;
+	struct i2c_adapter *ddc;
 
-	i2c = intel_gmbus_get_adapter(i915, i915->display.vbt.crt_ddc_pin);
+	ddc = intel_gmbus_get_adapter(i915, i915->display.vbt.crt_ddc_pin);
+	if (!ddc)
+		return NULL;
 
-	return drm_edid_read_ddc(connector, i2c);
+	return drm_edid_read_ddc(connector, ddc);
 }
 
 static enum drm_connector_status
 intel_sdvo_tmds_sink_detect(struct drm_connector *connector)
 {
-	struct intel_sdvo *intel_sdvo = intel_attached_sdvo(to_intel_connector(connector));
 	enum drm_connector_status status;
 	const struct drm_edid *drm_edid;
 
 	drm_edid = intel_sdvo_get_edid(connector);
 
-	if (!drm_edid && intel_sdvo_multifunc_encoder(intel_sdvo)) {
-		u8 ddc, saved_ddc = intel_sdvo->ddc_bus;
-
-		/*
-		 * Don't use the 1 as the argument of DDC bus switch to get
-		 * the EDID. It is used for SDVO SPD ROM.
-		 */
-		for (ddc = intel_sdvo->ddc_bus >> 1; ddc > 1; ddc >>= 1) {
-			intel_sdvo->ddc_bus = ddc;
-			drm_edid = intel_sdvo_get_edid(connector);
-			if (drm_edid)
-				break;
-		}
-		/*
-		 * If we found the EDID on the other bus,
-		 * assume that is the correct DDC bus.
-		 */
-		if (!drm_edid)
-			intel_sdvo->ddc_bus = saved_ddc;
-	}
-
 	/*
 	 * When there is no edid and no monitor is connected with VGA
 	 * port, try to use the CRT ddc to read the EDID for DVI-connector.
@@ -2524,29 +2505,37 @@ static const struct drm_connector_helper_funcs intel_sdvo_connector_helper_funcs
 	.atomic_check = intel_sdvo_atomic_check,
 };
 
-static void intel_sdvo_enc_destroy(struct drm_encoder *encoder)
+static void intel_sdvo_encoder_destroy(struct drm_encoder *_encoder)
 {
-	struct intel_sdvo *intel_sdvo = to_sdvo(to_intel_encoder(encoder));
+	struct intel_encoder *encoder = to_intel_encoder(_encoder);
+	struct intel_sdvo *sdvo = to_sdvo(encoder);
+	int i;
 
-	i2c_del_adapter(&intel_sdvo->ddc);
-	intel_encoder_destroy(encoder);
-}
+	for (i = 0; i < ARRAY_SIZE(sdvo->ddc); i++) {
+		if (sdvo->ddc[i].ddc_bus)
+			i2c_del_adapter(&sdvo->ddc[i].ddc);
+	}
+
+	drm_encoder_cleanup(&encoder->base);
+	kfree(sdvo);
+};
 
 static const struct drm_encoder_funcs intel_sdvo_enc_funcs = {
-	.destroy = intel_sdvo_enc_destroy,
+	.destroy = intel_sdvo_encoder_destroy,
 };
 
-static void
-intel_sdvo_guess_ddc_bus(struct intel_sdvo *sdvo)
+static int
+intel_sdvo_guess_ddc_bus(struct intel_sdvo *sdvo,
+			 struct intel_sdvo_connector *connector)
 {
 	u16 mask = 0;
-	unsigned int num_bits;
+	int num_bits;
 
 	/*
 	 * Make a mask of outputs less than or equal to our own priority in the
 	 * list.
 	 */
-	switch (sdvo->controlled_output) {
+	switch (connector->output_flag) {
 	case SDVO_OUTPUT_LVDS1:
 		mask |= SDVO_OUTPUT_LVDS1;
 		fallthrough;
@@ -2575,7 +2564,7 @@ intel_sdvo_guess_ddc_bus(struct intel_sdvo *sdvo)
 		num_bits = 3;
 
 	/* Corresponds to SDVO_CONTROL_BUS_DDCx */
-	sdvo->ddc_bus = 1 << num_bits;
+	return num_bits;
 }
 
 /*
@@ -2585,11 +2574,13 @@ intel_sdvo_guess_ddc_bus(struct intel_sdvo *sdvo)
  * DDC bus number assignment is in a priority order of RGB outputs, then TMDS
  * outputs, then LVDS outputs.
  */
-static void
-intel_sdvo_select_ddc_bus(struct intel_sdvo *sdvo)
+static struct intel_sdvo_ddc *
+intel_sdvo_select_ddc_bus(struct intel_sdvo *sdvo,
+			  struct intel_sdvo_connector *connector)
 {
 	struct drm_i915_private *dev_priv = to_i915(sdvo->base.base.dev);
 	struct sdvo_device_mapping *mapping;
+	int ddc_bus;
 
 	if (sdvo->base.port == PORT_B)
 		mapping = &dev_priv->display.vbt.sdvo_mappings[0];
@@ -2597,9 +2588,14 @@ intel_sdvo_select_ddc_bus(struct intel_sdvo *sdvo)
 		mapping = &dev_priv->display.vbt.sdvo_mappings[1];
 
 	if (mapping->initialized)
-		sdvo->ddc_bus = 1 << ((mapping->ddc_pin & 0xf0) >> 4);
+		ddc_bus = (mapping->ddc_pin & 0xf0) >> 4;
 	else
-		intel_sdvo_guess_ddc_bus(sdvo);
+		ddc_bus = intel_sdvo_guess_ddc_bus(sdvo, connector);
+
+	if (ddc_bus < 1 || ddc_bus > 3)
+		return NULL;
+
+	return &sdvo->ddc[ddc_bus - 1];
 }
 
 static void
@@ -2682,22 +2678,30 @@ intel_sdvo_get_slave_addr(struct intel_sdvo *sdvo)
 		return 0x72;
 }
 
+static int
+intel_sdvo_init_ddc_proxy(struct intel_sdvo_ddc *ddc,
+			  struct intel_sdvo *sdvo, int bit);
+
 static int
 intel_sdvo_connector_init(struct intel_sdvo_connector *connector,
 			  struct intel_sdvo *encoder)
 {
-	struct drm_connector *drm_connector;
+	struct drm_i915_private *i915 = to_i915(encoder->base.base.dev);
+	struct intel_sdvo_ddc *ddc = NULL;
 	int ret;
 
-	drm_connector = &connector->base.base;
-	ret = drm_connector_init(encoder->base.base.dev,
-			   drm_connector,
-			   &intel_sdvo_connector_funcs,
-			   connector->base.base.connector_type);
+	if (HAS_DDC(connector))
+		ddc = intel_sdvo_select_ddc_bus(encoder, connector);
+
+	ret = drm_connector_init_with_ddc(encoder->base.base.dev,
+					  &connector->base.base,
+					  &intel_sdvo_connector_funcs,
+					  connector->base.base.connector_type,
+					  ddc ? &ddc->ddc : NULL);
 	if (ret < 0)
 		return ret;
 
-	drm_connector_helper_add(drm_connector,
+	drm_connector_helper_add(&connector->base.base,
 				 &intel_sdvo_connector_helper_funcs);
 
 	connector->base.base.display_info.subpixel_order = SubPixelHorizontalRGB;
@@ -2706,6 +2710,11 @@ intel_sdvo_connector_init(struct intel_sdvo_connector *connector,
 
 	intel_connector_attach_encoder(&connector->base, &encoder->base);
 
+	if (ddc)
+		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] using %s\n",
+			    connector->base.base.base.id, connector->base.base.name,
+			    ddc->ddc.name);
+
 	return 0;
 }
 
@@ -2903,7 +2912,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, u16 type)
 	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
 		mutex_lock(&i915->drm.mode_config.mutex);
 
-		intel_ddc_get_modes(connector, &intel_sdvo->ddc);
+		intel_ddc_get_modes(connector, connector->ddc);
 		intel_panel_add_edid_fixed_modes(intel_connector, false);
 
 		mutex_unlock(&i915->drm.mode_config.mutex);
@@ -2978,10 +2987,6 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo)
 		return false;
 	}
 
-	intel_sdvo->controlled_output = flags;
-
-	intel_sdvo_select_ddc_bus(intel_sdvo);
-
 	for (i = 0; i < ARRAY_SIZE(probe_order); i++) {
 		u16 type = flags & probe_order[i];
 
@@ -3234,9 +3239,10 @@ static int intel_sdvo_ddc_proxy_xfer(struct i2c_adapter *adapter,
 				     struct i2c_msg *msgs,
 				     int num)
 {
-	struct intel_sdvo *sdvo = adapter->algo_data;
+	struct intel_sdvo_ddc *ddc = adapter->algo_data;
+	struct intel_sdvo *sdvo = ddc->sdvo;
 
-	if (!__intel_sdvo_set_control_bus_switch(sdvo, sdvo->ddc_bus))
+	if (!__intel_sdvo_set_control_bus_switch(sdvo, 1 << ddc->ddc_bus))
 		return -EIO;
 
 	return sdvo->i2c->algo->master_xfer(sdvo->i2c, msgs, num);
@@ -3244,7 +3250,9 @@ static int intel_sdvo_ddc_proxy_xfer(struct i2c_adapter *adapter,
 
 static u32 intel_sdvo_ddc_proxy_func(struct i2c_adapter *adapter)
 {
-	struct intel_sdvo *sdvo = adapter->algo_data;
+	struct intel_sdvo_ddc *ddc = adapter->algo_data;
+	struct intel_sdvo *sdvo = ddc->sdvo;
+
 	return sdvo->i2c->algo->functionality(sdvo->i2c);
 }
 
@@ -3256,21 +3264,27 @@ static const struct i2c_algorithm intel_sdvo_ddc_proxy = {
 static void proxy_lock_bus(struct i2c_adapter *adapter,
 			   unsigned int flags)
 {
-	struct intel_sdvo *sdvo = adapter->algo_data;
+	struct intel_sdvo_ddc *ddc = adapter->algo_data;
+	struct intel_sdvo *sdvo = ddc->sdvo;
+
 	sdvo->i2c->lock_ops->lock_bus(sdvo->i2c, flags);
 }
 
 static int proxy_trylock_bus(struct i2c_adapter *adapter,
 			     unsigned int flags)
 {
-	struct intel_sdvo *sdvo = adapter->algo_data;
+	struct intel_sdvo_ddc *ddc = adapter->algo_data;
+	struct intel_sdvo *sdvo = ddc->sdvo;
+
 	return sdvo->i2c->lock_ops->trylock_bus(sdvo->i2c, flags);
 }
 
 static void proxy_unlock_bus(struct i2c_adapter *adapter,
 			     unsigned int flags)
 {
-	struct intel_sdvo *sdvo = adapter->algo_data;
+	struct intel_sdvo_ddc *ddc = adapter->algo_data;
+	struct intel_sdvo *sdvo = ddc->sdvo;
+
 	sdvo->i2c->lock_ops->unlock_bus(sdvo->i2c, flags);
 }
 
@@ -3280,21 +3294,26 @@ static const struct i2c_lock_operations proxy_lock_ops = {
 	.unlock_bus =  proxy_unlock_bus,
 };
 
-static bool
-intel_sdvo_init_ddc_proxy(struct intel_sdvo *sdvo)
+static int
+intel_sdvo_init_ddc_proxy(struct intel_sdvo_ddc *ddc,
+			  struct intel_sdvo *sdvo, int ddc_bus)
 {
 	struct drm_i915_private *dev_priv = to_i915(sdvo->base.base.dev);
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 
-	sdvo->ddc.owner = THIS_MODULE;
-	sdvo->ddc.class = I2C_CLASS_DDC;
-	snprintf(sdvo->ddc.name, I2C_NAME_SIZE, "SDVO DDC proxy");
-	sdvo->ddc.dev.parent = &pdev->dev;
-	sdvo->ddc.algo_data = sdvo;
-	sdvo->ddc.algo = &intel_sdvo_ddc_proxy;
-	sdvo->ddc.lock_ops = &proxy_lock_ops;
+	ddc->sdvo = sdvo;
+	ddc->ddc_bus = ddc_bus;
 
-	return i2c_add_adapter(&sdvo->ddc) == 0;
+	ddc->ddc.owner = THIS_MODULE;
+	ddc->ddc.class = I2C_CLASS_DDC;
+	snprintf(ddc->ddc.name, I2C_NAME_SIZE, "SDVO %c DDC%d",
+		 port_name(sdvo->base.port), ddc_bus);
+	ddc->ddc.dev.parent = &pdev->dev;
+	ddc->ddc.algo_data = ddc;
+	ddc->ddc.algo = &intel_sdvo_ddc_proxy;
+	ddc->ddc.lock_ops = &proxy_lock_ops;
+
+	return i2c_add_adapter(&ddc->ddc);
 }
 
 static bool is_sdvo_port_valid(struct drm_i915_private *dev_priv, enum port port)
@@ -3341,9 +3360,8 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 
 	intel_sdvo->sdvo_reg = sdvo_reg;
 	intel_sdvo->slave_addr = intel_sdvo_get_slave_addr(intel_sdvo) >> 1;
+
 	intel_sdvo_select_i2c_bus(intel_sdvo);
-	if (!intel_sdvo_init_ddc_proxy(intel_sdvo))
-		goto err_i2c_bus;
 
 	/* Read the regs to test if we can talk to the device */
 	for (i = 0; i < 0x40; i++) {
@@ -3376,6 +3394,15 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 	intel_sdvo->colorimetry_cap =
 		intel_sdvo_get_colorimetry_cap(intel_sdvo);
 
+	for (i = 0; i < ARRAY_SIZE(intel_sdvo->ddc); i++) {
+		int ret;
+
+		ret = intel_sdvo_init_ddc_proxy(&intel_sdvo->ddc[i],
+						intel_sdvo, i + 1);
+		if (ret)
+			goto err;
+	}
+
 	if (!intel_sdvo_output_setup(intel_sdvo)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "SDVO output failed to setup on %s\n",
@@ -3436,13 +3463,9 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 
 err_output:
 	intel_sdvo_output_cleanup(intel_sdvo);
-
 err:
-	i2c_del_adapter(&intel_sdvo->ddc);
-err_i2c_bus:
 	intel_sdvo_unselect_i2c_bus(intel_sdvo);
-	drm_encoder_cleanup(&intel_encoder->base);
-	kfree(intel_sdvo);
+	intel_sdvo_encoder_destroy(&intel_encoder->base);
 
 	return false;
 }
-- 
2.41.0

