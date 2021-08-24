Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 067CD3F5F47
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Aug 2021 15:35:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7CDD6E069;
	Tue, 24 Aug 2021 13:35:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D1186E069
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Aug 2021 13:35:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="197557492"
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="197557492"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 06:35:03 -0700
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="515457113"
Received: from romerosa-mobl.amr.corp.intel.com (HELO localhost)
 ([10.249.44.170])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 06:35:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 24 Aug 2021 16:34:18 +0300
Message-Id: <3b5eb98c78cfcdf6dfd633690c058b3dbe5ecbfb.1629811722.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629811722.git.jani.nikula@intel.com>
References: <cover.1629811722.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/bios: use ddc pin directly from
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

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 49 +++++++++++++----------
 drivers/gpu/drm/i915/i915_drv.h           |  2 -
 2 files changed, 28 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 029a10be1586..d4596be29d7b 100644
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
+	if (!devdata->child.ddc_pin)
+		return 0;
 
-	return i915->vbt.ddi_port_info[encoder->port].alternate_ddc_pin;
+	return map_ddc_pin(i915, devdata->child.ddc_pin);
 }
 
 bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 91097526cd96..0ddae9db166b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -639,8 +639,6 @@ i915_fence_timeout(const struct drm_i915_private *i915)
 struct ddi_vbt_port_info {
 	/* Non-NULL if port present. */
 	struct intel_bios_encoder_data *devdata;
-
-	u8 alternate_ddc_pin;
 };
 
 enum psr_lines_to_wait {
-- 
2.20.1

