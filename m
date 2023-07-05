Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F22748EC9
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 22:21:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 614F710E3CA;
	Wed,  5 Jul 2023 20:21:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F199410E3CC
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 20:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688588513; x=1720124513;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=CIfa0XFXnLEpZDHWHKM6XH2yJgKtEnSKxIYmUZbynLc=;
 b=X2vHegKT3yv50nAiv8a5cUzVFFV0yvSANTTeL6inz6RzIRxy5rdl0Q/8
 RQofP2NYLDpnoYqbN0uXh37idJdUU25UHGj8tAaDFxTX7WDITwqR80sPd
 mMxNPEDrq3payT0YiPyp1+87lnerFVhvSeZ6Iq8VFYkSzS1GgQNLW6heR
 rjSONqw9zNVfUTpBXk2/oUZf1cVdrqRyQxqLkjVBDzuaE/Z2e02s5lEmk
 PQFGOwfnDVMfHX9a14JLx66t0vNnOeU9IkfwZUpZuuPXJfjWhObDNf1Sg
 Zh89u7cuYzSxH+JVd8AVkmv7EDTW9mdP15cGJq2ONzBIS7DEDDdxkQxIw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="353269080"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="353269080"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 13:21:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="754491136"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="754491136"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 05 Jul 2023 13:21:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jul 2023 23:21:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jul 2023 23:21:18 +0300
Message-Id: <20230705202122.17915-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/13] drm/i915/sdvo: Initialize the encoder
 ealier
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

Call drm_encoder_init() earlier so that we don't have to keep passing
the i915/dev_priv around separately.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 35 +++++++++++------------
 1 file changed, 17 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 29762716a067..e6c558416a6b 100644
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
-- 
2.39.3

