Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D273F5F43
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Aug 2021 15:34:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84D0C6E03A;
	Tue, 24 Aug 2021 13:34:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 952AD6E03A
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Aug 2021 13:34:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="281027208"
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="281027208"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 06:34:42 -0700
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="493537993"
Received: from romerosa-mobl.amr.corp.intel.com (HELO localhost)
 ([10.249.44.170])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 06:34:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 24 Aug 2021 16:34:14 +0300
Message-Id: <f492f224f5af668743778007f3c708be16efedb3.1629811722.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629811722.git.jani.nikula@intel.com>
References: <cover.1629811722.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/7] drm/i915/bios: use max tmds clock directly
 from child data
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
 drivers/gpu/drm/i915/display/intel_bios.c | 52 +++++++++++------------
 drivers/gpu/drm/i915/i915_drv.h           |  2 -
 2 files changed, 26 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index afb5fcd9dd0c..253a528ba61a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1876,6 +1876,24 @@ static int _intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *de
 	return devdata->child.hdmi_level_shifter_value;
 }
 
+static int _intel_bios_max_tmds_clock(const struct intel_bios_encoder_data *devdata)
+{
+	if (!devdata || devdata->i915->vbt.version < 204)
+		return 0;
+
+	switch (devdata->child.hdmi_max_data_rate) {
+	default:
+		MISSING_CASE(devdata->child.hdmi_max_data_rate);
+		fallthrough;
+	case HDMI_MAX_DATA_RATE_PLATFORM:
+		return 0;
+	case HDMI_MAX_DATA_RATE_297:
+		return 297000;
+	case HDMI_MAX_DATA_RATE_165:
+		return 165000;
+	}
+}
+
 static bool is_port_valid(struct drm_i915_private *i915, enum port port)
 {
 	/*
@@ -1895,7 +1913,7 @@ static void parse_ddi_port(struct drm_i915_private *i915,
 	const struct child_device_config *child = &devdata->child;
 	struct ddi_vbt_port_info *info;
 	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt, supports_typec_usb, supports_tbt;
-	int dp_boost_level, hdmi_boost_level, hdmi_level_shift;
+	int dp_boost_level, hdmi_boost_level, hdmi_level_shift, max_tmds_clock;
 	enum port port;
 
 	port = dvo_port_to_port(i915, child->dvo_port);
@@ -1964,30 +1982,11 @@ static void parse_ddi_port(struct drm_i915_private *i915,
 			    port_name(port), hdmi_level_shift);
 	}
 
-	if (i915->vbt.version >= 204) {
-		int max_tmds_clock;
-
-		switch (child->hdmi_max_data_rate) {
-		default:
-			MISSING_CASE(child->hdmi_max_data_rate);
-			fallthrough;
-		case HDMI_MAX_DATA_RATE_PLATFORM:
-			max_tmds_clock = 0;
-			break;
-		case HDMI_MAX_DATA_RATE_297:
-			max_tmds_clock = 297000;
-			break;
-		case HDMI_MAX_DATA_RATE_165:
-			max_tmds_clock = 165000;
-			break;
-		}
-
-		if (max_tmds_clock)
-			drm_dbg_kms(&i915->drm,
-				    "Port %c VBT HDMI max TMDS clock: %d kHz\n",
-				    port_name(port), max_tmds_clock);
-		info->max_tmds_clock = max_tmds_clock;
-	}
+	max_tmds_clock = _intel_bios_max_tmds_clock(devdata);
+	if (max_tmds_clock)
+		drm_dbg_kms(&i915->drm,
+			    "Port %c VBT HDMI max TMDS clock: %d kHz\n",
+			    port_name(port), max_tmds_clock);
 
 	/* I_boost config for SKL and above */
 	dp_boost_level = intel_bios_encoder_dp_boost_level(devdata);
@@ -2950,8 +2949,9 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
 int intel_bios_max_tmds_clock(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	const struct intel_bios_encoder_data *devdata = i915->vbt.ddi_port_info[encoder->port].devdata;
 
-	return i915->vbt.ddi_port_info[encoder->port].max_tmds_clock;
+	return _intel_bios_max_tmds_clock(devdata);
 }
 
 /* This is an index in the HDMI/DVI DDI buffer translation table, or -1 */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 431408789826..973b899dbf36 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -640,8 +640,6 @@ struct ddi_vbt_port_info {
 	/* Non-NULL if port present. */
 	struct intel_bios_encoder_data *devdata;
 
-	int max_tmds_clock;
-
 	u8 alternate_aux_channel;
 	u8 alternate_ddc_pin;
 
-- 
2.20.1

