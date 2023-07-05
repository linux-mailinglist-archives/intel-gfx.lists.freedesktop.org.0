Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BEA748ECA
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 22:21:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C62E10E3CC;
	Wed,  5 Jul 2023 20:21:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDEDE10E3CC
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 20:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688588515; x=1720124515;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=m9rWtlAjiyQizQHksFUiVjfKbZ3naLWFOKNl2EOa4BU=;
 b=BabsKO8SCcINM6n0rnahCTPlrtq08cigVrizZArJUvfdg1sNIwdGsXFZ
 yWw/zArSqNgI+whoktVo+Sqm0J09EIu46psiytL0Zj5zfn3DrEHuOEfFj
 PyKU0z/MsBtiIpUKHt6HsAurQGqZ9k3Aw7QHIKOA/QUg5JDOgep8w1RFO
 V7qiAsBoMR49DYlaIHBeNzZ/sssnk+kJlsHVbCE4REtU0PETdC3REcp/5
 LJUzWeRaH22XxMZp48ix4NG4cEDoBtFNNkpEirvRsmAfGgOdOr00XSHP7
 L6ZFVl4k91b+FpM9GU5/KDlSjUrP9wbVd0CIb+UQ1K2b7x/eFOipTwlVW A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="353269096"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="353269096"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 13:21:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="754491158"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="754491158"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 05 Jul 2023 13:21:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jul 2023 23:21:53 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jul 2023 23:21:19 +0300
Message-Id: <20230705202122.17915-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/13] drm/i915/sdvo: Nuke the duplicate
 sdvo->port
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

We already have encoder->port so get rid of the duplicate
sdvo->port.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index e6c558416a6b..383f8b1547a1 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -108,8 +108,6 @@ struct intel_sdvo {
 	 */
 	u16 hotplug_active;
 
-	enum port port;
-
 	/* DDC bus used by this SDVO encoder */
 	u8 ddc_bus;
 
@@ -226,7 +224,7 @@ static void intel_sdvo_write_sdvox(struct intel_sdvo *intel_sdvo, u32 val)
 		return;
 	}
 
-	if (intel_sdvo->port == PORT_B)
+	if (intel_sdvo->base.port == PORT_B)
 		cval = intel_de_read(dev_priv, GEN3_SDVOC);
 	else
 		bval = intel_de_read(dev_priv, GEN3_SDVOB);
@@ -403,7 +401,7 @@ static const char *sdvo_cmd_name(u8 cmd)
 	return NULL;
 }
 
-#define SDVO_NAME(svdo) ((svdo)->port == PORT_B ? "SDVOB" : "SDVOC")
+#define SDVO_NAME(svdo) ((svdo)->base.port == PORT_B ? "SDVOB" : "SDVOC")
 
 static void intel_sdvo_debug_write(struct intel_sdvo *intel_sdvo, u8 cmd,
 				   const void *args, int args_len)
@@ -1604,7 +1602,7 @@ static void intel_sdvo_pre_enable(struct intel_atomic_state *state,
 			sdvox |= SDVO_BORDER_ENABLE;
 	} else {
 		sdvox = intel_de_read(dev_priv, intel_sdvo->sdvo_reg);
-		if (intel_sdvo->port == PORT_B)
+		if (intel_sdvo->base.port == PORT_B)
 			sdvox &= SDVOB_PRESERVE_MASK;
 		else
 			sdvox &= SDVOC_PRESERVE_MASK;
@@ -2618,7 +2616,7 @@ intel_sdvo_select_ddc_bus(struct intel_sdvo *sdvo)
 	struct drm_i915_private *dev_priv = to_i915(sdvo->base.base.dev);
 	struct sdvo_device_mapping *mapping;
 
-	if (sdvo->port == PORT_B)
+	if (sdvo->base.port == PORT_B)
 		mapping = &dev_priv->display.vbt.sdvo_mappings[0];
 	else
 		mapping = &dev_priv->display.vbt.sdvo_mappings[1];
@@ -2636,7 +2634,7 @@ intel_sdvo_select_i2c_bus(struct intel_sdvo *sdvo)
 	struct sdvo_device_mapping *mapping;
 	u8 pin;
 
-	if (sdvo->port == PORT_B)
+	if (sdvo->base.port == PORT_B)
 		mapping = &dev_priv->display.vbt.sdvo_mappings[0];
 	else
 		mapping = &dev_priv->display.vbt.sdvo_mappings[1];
@@ -2676,7 +2674,7 @@ intel_sdvo_get_slave_addr(struct intel_sdvo *sdvo)
 	struct drm_i915_private *dev_priv = to_i915(sdvo->base.base.dev);
 	struct sdvo_device_mapping *my_mapping, *other_mapping;
 
-	if (sdvo->port == PORT_B) {
+	if (sdvo->base.port == PORT_B) {
 		my_mapping = &dev_priv->display.vbt.sdvo_mappings[0];
 		other_mapping = &dev_priv->display.vbt.sdvo_mappings[1];
 	} else {
@@ -2703,7 +2701,7 @@ intel_sdvo_get_slave_addr(struct intel_sdvo *sdvo)
 	 * No SDVO device info is found for another DVO port,
 	 * so use mapping assumption we had before BIOS parsing.
 	 */
-	if (sdvo->port == PORT_B)
+	if (sdvo->base.port == PORT_B)
 		return 0x70;
 	else
 		return 0x72;
@@ -3367,7 +3365,6 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 			 "SDVO %c", port_name(port));
 
 	intel_sdvo->sdvo_reg = sdvo_reg;
-	intel_sdvo->port = port;
 	intel_sdvo->slave_addr = intel_sdvo_get_slave_addr(intel_sdvo) >> 1;
 	intel_sdvo_select_i2c_bus(intel_sdvo);
 	if (!intel_sdvo_init_ddc_proxy(intel_sdvo))
@@ -3417,7 +3414,7 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 	 * hotplug lines.
 	 */
 	if (intel_sdvo->hotplug_active) {
-		if (intel_sdvo->port == PORT_B)
+		if (intel_sdvo->base.port == PORT_B)
 			intel_encoder->hpd_pin = HPD_SDVO_B;
 		else
 			intel_encoder->hpd_pin = HPD_SDVO_C;
-- 
2.39.3

