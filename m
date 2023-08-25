Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6DD7888DC
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 15:45:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47FF510E6A0;
	Fri, 25 Aug 2023 13:45:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A0A110E699
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 13:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692971104; x=1724507104;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6+i1F4c/ZEQp6Pb0sKu4xpNUFbqHZxLk9gi1cE3RyAo=;
 b=P8XincICuTOctfmzk4aZeOqol4h7EQqSb1Rh6Fou3+lVbau+V9V/YEa0
 oP9KtU732ZFGhT6ghn+qNqt3Kr7zDmiMRNrKNg1zTlyUX4sNBocCkGWct
 ecfI4YQmFt1ezpLv2XO21J8vw2dEK9htTUd7dscqZ3/MNR1Ax1rlwWtip
 ov2+4qy2HVriazc+JvA7I7HzSMjpaM6Yy8ryAmQ2siWGfoWMv86Y6L5gG
 4x4LtxQq6BlSkR7hcSb5px1ZLfANlf/jzyZhcReKotmyJ3ckXunlHLb5L
 G74gi6k20WVWNizGpPGqMtJqTBWzbwpI9rbaQZ8tKzvbB4oUizq0B2mkM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="359714360"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="359714360"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 06:44:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="984123046"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="984123046"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga006.fm.intel.com with SMTP; 25 Aug 2023 06:44:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Aug 2023 16:44:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Aug 2023 16:44:28 +0300
Message-ID: <20230825134431.24391-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230825134431.24391-1-ville.syrjala@linux.intel.com>
References: <20230825134431.24391-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/6] drm/i915/sdvo: Nuke the duplicate
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We already have encoder->port so get rid of the duplicate
sdvo->port.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 89b0262539e9..d536871a10a9 100644
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
2.41.0

