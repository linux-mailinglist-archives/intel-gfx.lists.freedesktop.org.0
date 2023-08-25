Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF28C7888DB
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 15:45:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AA7510E699;
	Fri, 25 Aug 2023 13:45:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C144610E699
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 13:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692971103; x=1724507103;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9PUGpZepgxvmIXVtzGlmMBEu95yN2fJLSa/uC1+BYys=;
 b=I/jvHRm39GBU4/Z4D5+Ym5+Pjxi6ZgEZ1INucx13wr5f+28Bg2uauKIs
 i/xNIldzExkP5LyknU+UxI5FmU7wP3QDbN1RjWF9ZWVF6WlQuqT1WJD1h
 JEuuGnLgMIBXukrJHqsSXXucBEJcbAcL2JTP4az4HHh3U1nX++hRxodyD
 egq15yA/MNqiIYDnPx+V+G4mrtg+k1k+Rkqz4FFPATOeohNU59PXxBiTQ
 9OnFHrcrj+/k7rT/WSnvLjqvkMTG2awTPNm6piGP4K8dttjk+gedhStoZ
 nMyn0+KjxzSdBfQ74GSiNEMRbPUq7D5Lp7+FkuawbMx51oIuNkEUDLsDd Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="359714335"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="359714335"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 06:44:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="984123039"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="984123039"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga006.fm.intel.com with SMTP; 25 Aug 2023 06:44:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Aug 2023 16:44:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Aug 2023 16:44:27 +0300
Message-ID: <20230825134431.24391-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230825134431.24391-1-ville.syrjala@linux.intel.com>
References: <20230825134431.24391-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/6] drm/i915/sdvo: Initialize the encoder
 earlier
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

Call drm_encoder_init() earlier so that we don't have to keep passing
the i915/dev_priv around separately.

v2: Reorder drm_encoder_cleanup() in the error path (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 37 +++++++++++------------
 1 file changed, 18 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 2690db9c593e..89b0262539e9 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2613,9 +2613,9 @@ intel_sdvo_guess_ddc_bus(struct intel_sdvo *sdvo)
  * outputs, then LVDS outputs.
  */
 static void
-intel_sdvo_select_ddc_bus(struct drm_i915_private *dev_priv,
-			  struct intel_sdvo *sdvo)
+intel_sdvo_select_ddc_bus(struct intel_sdvo *sdvo)
 {
+	struct drm_i915_private *dev_priv = to_i915(sdvo->base.base.dev);
 	struct sdvo_device_mapping *mapping;
 
 	if (sdvo->port == PORT_B)
@@ -2630,9 +2630,9 @@ intel_sdvo_select_ddc_bus(struct drm_i915_private *dev_priv,
 }
 
 static void
-intel_sdvo_select_i2c_bus(struct drm_i915_private *dev_priv,
-			  struct intel_sdvo *sdvo)
+intel_sdvo_select_i2c_bus(struct intel_sdvo *sdvo)
 {
+	struct drm_i915_private *dev_priv = to_i915(sdvo->base.base.dev);
 	struct sdvo_device_mapping *mapping;
 	u8 pin;
 
@@ -2671,9 +2671,9 @@ intel_sdvo_is_hdmi_connector(struct intel_sdvo *intel_sdvo)
 }
 
 static u8
-intel_sdvo_get_slave_addr(struct drm_i915_private *dev_priv,
-			  struct intel_sdvo *sdvo)
+intel_sdvo_get_slave_addr(struct intel_sdvo *sdvo)
 {
+	struct drm_i915_private *dev_priv = to_i915(sdvo->base.base.dev);
 	struct sdvo_device_mapping *my_mapping, *other_mapping;
 
 	if (sdvo->port == PORT_B) {
@@ -2994,7 +2994,6 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo)
 		SDVO_OUTPUT_LVDS0,
 		SDVO_OUTPUT_LVDS1,
 	};
-	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
 	u16 flags;
 	int i;
 
@@ -3008,7 +3007,7 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo)
 
 	intel_sdvo->controlled_output = flags;
 
-	intel_sdvo_select_ddc_bus(i915, intel_sdvo);
+	intel_sdvo_select_ddc_bus(intel_sdvo);
 
 	for (i = 0; i < ARRAY_SIZE(probe_order); i++) {
 		u16 type = flags & probe_order[i];
@@ -3309,9 +3308,9 @@ static const struct i2c_lock_operations proxy_lock_ops = {
 };
 
 static bool
-intel_sdvo_init_ddc_proxy(struct intel_sdvo *sdvo,
-			  struct drm_i915_private *dev_priv)
+intel_sdvo_init_ddc_proxy(struct intel_sdvo *sdvo)
 {
+	struct drm_i915_private *dev_priv = to_i915(sdvo->base.base.dev);
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 
 	sdvo->ddc.owner = THIS_MODULE;
@@ -3357,23 +3356,23 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 	if (!intel_sdvo)
 		return false;
 
-	intel_sdvo->sdvo_reg = sdvo_reg;
-	intel_sdvo->port = port;
-	intel_sdvo->slave_addr =
-		intel_sdvo_get_slave_addr(dev_priv, intel_sdvo) >> 1;
-	intel_sdvo_select_i2c_bus(dev_priv, intel_sdvo);
-	if (!intel_sdvo_init_ddc_proxy(intel_sdvo, dev_priv))
-		goto err_i2c_bus;
-
 	/* encoder type will be decided later */
 	intel_encoder = &intel_sdvo->base;
 	intel_encoder->type = INTEL_OUTPUT_SDVO;
 	intel_encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
 	intel_encoder->port = port;
+
 	drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
 			 &intel_sdvo_enc_funcs, 0,
 			 "SDVO %c", port_name(port));
 
+	intel_sdvo->sdvo_reg = sdvo_reg;
+	intel_sdvo->port = port;
+	intel_sdvo->slave_addr = intel_sdvo_get_slave_addr(intel_sdvo) >> 1;
+	intel_sdvo_select_i2c_bus(intel_sdvo);
+	if (!intel_sdvo_init_ddc_proxy(intel_sdvo))
+		goto err_i2c_bus;
+
 	/* Read the regs to test if we can talk to the device */
 	for (i = 0; i < 0x40; i++) {
 		u8 byte;
@@ -3467,10 +3466,10 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 	intel_sdvo_output_cleanup(intel_sdvo);
 
 err:
-	drm_encoder_cleanup(&intel_encoder->base);
 	i2c_del_adapter(&intel_sdvo->ddc);
 err_i2c_bus:
 	intel_sdvo_unselect_i2c_bus(intel_sdvo);
+	drm_encoder_cleanup(&intel_encoder->base);
 	kfree(intel_sdvo);
 
 	return false;
-- 
2.41.0

