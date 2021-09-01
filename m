Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B24883FDF74
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Sep 2021 18:10:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 064F06E215;
	Wed,  1 Sep 2021 16:10:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64BA76E215
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Sep 2021 16:10:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="218846875"
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="218846875"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 09:10:48 -0700
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="520413609"
Received: from josearun-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.251.212.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 09:10:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	jose.souza@intel.com,
	ankit.k.nautiyal@intel.com
Date: Wed,  1 Sep 2021 19:10:04 +0300
Message-Id: <e1dbf7cbdd2191439e760ab9098242dcec5fbb2e.1630512523.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1630512523.git.jani.nikula@intel.com>
References: <cover.1630512523.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/7] drm/i915/bios: use ddc pin directly from
 child data
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

Avoid extra caching of the data. This is slightly more subtle than one
would think. For one thing, we explicitly ignore 0 value in child device
ddc pin; this is specified as N/A and does not warrant a warning. For
another, we start looking for ddc pin collisions in sanitize using
unmapped pin numbering.

v2: Check !devdata in intel_bios_alternate_ddc_pin()

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 49 +++++++++++++----------
 drivers/gpu/drm/i915/i915_drv.h           |  2 -
 2 files changed, 28 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index b4113506b3b8..0c16a848a6e4 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1589,28 +1589,43 @@ static enum port get_port_by_ddc_pin(struct drm_i915_private *i915, u8 ddc_pin)
 	for_each_port(port) {
 		info = &i915->vbt.ddi_port_info[port];
 
-		if (info->devdata && ddc_pin == info->alternate_ddc_pin)
+		if (info->devdata && ddc_pin == info->devdata->child.ddc_pin)
 			return port;
 	}
 
 	return PORT_NONE;
 }
 
-static void sanitize_ddc_pin(struct drm_i915_private *i915,
+static void sanitize_ddc_pin(struct intel_bios_encoder_data *devdata,
 			     enum port port)
 {
-	struct ddi_vbt_port_info *info = &i915->vbt.ddi_port_info[port];
+	struct drm_i915_private *i915 = devdata->i915;
+	struct ddi_vbt_port_info *info;
 	struct child_device_config *child;
+	u8 mapped_ddc_pin;
 	enum port p;
 
-	p = get_port_by_ddc_pin(i915, info->alternate_ddc_pin);
+	if (!devdata->child.ddc_pin)
+		return;
+
+	mapped_ddc_pin = map_ddc_pin(i915, devdata->child.ddc_pin);
+	if (!intel_gmbus_is_valid_pin(i915, mapped_ddc_pin)) {
+		drm_dbg_kms(&i915->drm,
+			    "Port %c has invalid DDC pin %d, "
+			    "sticking to defaults\n",
+			    port_name(port), mapped_ddc_pin);
+		devdata->child.ddc_pin = 0;
+		return;
+	}
+
+	p = get_port_by_ddc_pin(i915, devdata->child.ddc_pin);
 	if (p == PORT_NONE)
 		return;
 
 	drm_dbg_kms(&i915->drm,
 		    "port %c trying to use the same DDC pin (0x%x) as port %c, "
 		    "disabling port %c DVI/HDMI support\n",
-		    port_name(port), info->alternate_ddc_pin,
+		    port_name(port), mapped_ddc_pin,
 		    port_name(p), port_name(p));
 
 	/*
@@ -1628,7 +1643,7 @@ static void sanitize_ddc_pin(struct drm_i915_private *i915,
 	child->device_type &= ~DEVICE_TYPE_TMDS_DVI_SIGNALING;
 	child->device_type |= DEVICE_TYPE_NOT_HDMI_OUTPUT;
 
-	info->alternate_ddc_pin = 0;
+	child->ddc_pin = 0;
 }
 
 static enum port get_port_by_aux_ch(struct drm_i915_private *i915, u8 aux_ch)
@@ -1966,20 +1981,8 @@ static void parse_ddi_port(struct drm_i915_private *i915,
 		    supports_typec_usb, supports_tbt,
 		    devdata->dsc != NULL);
 
-	if (is_dvi) {
-		u8 ddc_pin;
-
-		ddc_pin = map_ddc_pin(i915, child->ddc_pin);
-		if (intel_gmbus_is_valid_pin(i915, ddc_pin)) {
-			info->alternate_ddc_pin = ddc_pin;
-			sanitize_ddc_pin(i915, port);
-		} else {
-			drm_dbg_kms(&i915->drm,
-				    "Port %c has invalid DDC pin %d, "
-				    "sticking to defaults\n",
-				    port_name(port), ddc_pin);
-		}
-	}
+	if (is_dvi)
+		sanitize_ddc_pin(devdata, port);
 
 	if (is_dp)
 		sanitize_aux_ch(devdata, port);
@@ -2993,8 +2996,12 @@ int intel_bios_dp_max_link_rate(struct intel_encoder *encoder)
 int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	const struct intel_bios_encoder_data *devdata = i915->vbt.ddi_port_info[encoder->port].devdata;
+
+	if (!devdata || !devdata->child.ddc_pin)
+		return 0;
 
-	return i915->vbt.ddi_port_info[encoder->port].alternate_ddc_pin;
+	return map_ddc_pin(i915, devdata->child.ddc_pin);
 }
 
 bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 032d59119407..744181cbe21c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -638,8 +638,6 @@ i915_fence_timeout(const struct drm_i915_private *i915)
 struct ddi_vbt_port_info {
 	/* Non-NULL if port present. */
 	struct intel_bios_encoder_data *devdata;
-
-	u8 alternate_ddc_pin;
 };
 
 enum psr_lines_to_wait {
-- 
2.30.2

