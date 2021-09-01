Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5ED3FDF70
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Sep 2021 18:10:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0D776E207;
	Wed,  1 Sep 2021 16:10:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F2926E207
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Sep 2021 16:10:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="282507149"
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="282507149"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 09:10:18 -0700
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="541881079"
Received: from josearun-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.251.212.211])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 09:10:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	jose.souza@intel.com,
	ankit.k.nautiyal@intel.com
Date: Wed,  1 Sep 2021 19:09:59 +0300
Message-Id: <ef22e40b01eab571ff0dc2bfffabb906d0151fb4.1630512523.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1630512523.git.jani.nikula@intel.com>
References: <cover.1630512523.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/7] drm/i915/bios: use hdmi level shift
 directly from child data
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

Avoid extra caching of the data.

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 26 +++++++++++++----------
 drivers/gpu/drm/i915/i915_drv.h           |  4 ----
 2 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index e86e6ed2d3bf..afb5fcd9dd0c 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1868,6 +1868,14 @@ intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devdata)
 		devdata->child.device_type & DEVICE_TYPE_INTERNAL_CONNECTOR;
 }
 
+static int _intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *devdata)
+{
+	if (!devdata || devdata->i915->vbt.version < 158)
+		return -1;
+
+	return devdata->child.hdmi_level_shifter_value;
+}
+
 static bool is_port_valid(struct drm_i915_private *i915, enum port port)
 {
 	/*
@@ -1887,7 +1895,7 @@ static void parse_ddi_port(struct drm_i915_private *i915,
 	const struct child_device_config *child = &devdata->child;
 	struct ddi_vbt_port_info *info;
 	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt, supports_typec_usb, supports_tbt;
-	int dp_boost_level, hdmi_boost_level;
+	int dp_boost_level, hdmi_boost_level, hdmi_level_shift;
 	enum port port;
 
 	port = dvo_port_to_port(i915, child->dvo_port);
@@ -1949,15 +1957,11 @@ static void parse_ddi_port(struct drm_i915_private *i915,
 		sanitize_aux_ch(i915, port);
 	}
 
-	if (i915->vbt.version >= 158) {
-		/* The VBT HDMI level shift values match the table we have. */
-		u8 hdmi_level_shift = child->hdmi_level_shifter_value;
+	hdmi_level_shift = _intel_bios_hdmi_level_shift(devdata);
+	if (hdmi_level_shift >= 0) {
 		drm_dbg_kms(&i915->drm,
 			    "Port %c VBT HDMI level shift: %d\n",
-			    port_name(port),
-			    hdmi_level_shift);
-		info->hdmi_level_shift = hdmi_level_shift;
-		info->hdmi_level_shift_set = true;
+			    port_name(port), hdmi_level_shift);
 	}
 
 	if (i915->vbt.version >= 204) {
@@ -2950,13 +2954,13 @@ int intel_bios_max_tmds_clock(struct intel_encoder *encoder)
 	return i915->vbt.ddi_port_info[encoder->port].max_tmds_clock;
 }
 
+/* This is an index in the HDMI/DVI DDI buffer translation table, or -1 */
 int intel_bios_hdmi_level_shift(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct ddi_vbt_port_info *info =
-		&i915->vbt.ddi_port_info[encoder->port];
+	const struct intel_bios_encoder_data *devdata = i915->vbt.ddi_port_info[encoder->port].devdata;
 
-	return info->hdmi_level_shift_set ? info->hdmi_level_shift : -1;
+	return _intel_bios_hdmi_level_shift(devdata);
 }
 
 int intel_bios_encoder_dp_boost_level(const struct intel_bios_encoder_data *devdata)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index be2392bbcecc..67a9f07550d4 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -641,10 +641,6 @@ struct ddi_vbt_port_info {
 
 	int max_tmds_clock;
 
-	/* This is an index in the HDMI/DVI DDI buffer translation table. */
-	u8 hdmi_level_shift;
-	u8 hdmi_level_shift_set:1;
-
 	u8 alternate_aux_channel;
 	u8 alternate_ddc_pin;
 
-- 
2.30.2

