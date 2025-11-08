Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58833C4217D
	for <lists+intel-gfx@lfdr.de>; Sat, 08 Nov 2025 01:06:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E52BD10EBB6;
	Sat,  8 Nov 2025 00:06:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kDIxhhPD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 399BD10EBB5;
 Sat,  8 Nov 2025 00:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762560399; x=1794096399;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=3/HYq2V4PKwQmay1TN0XPTCm/SAoyW02mhBkL1vKXuY=;
 b=kDIxhhPDWKOWPtqbZs9Czu7pp5iqHpotjfkK2MYMNslBWnp+V8eU8zmt
 aY0m5d27oZIduHU0bWgN1KQG3mCY62vFoboHD6uBXyxIFPxBPsoMnpErs
 yCeesdJrGjUVySucdzXfUjVPeGOIE31Re2j2hKRPCfvf8D+kCmM6aPs9B
 HFuLruebFRBqvjoqDYw4yGDvgQ1Or6H8IRvhkwYCPsIuNztpMqNR4eLdZ
 /NBSgwP67IdUjL0rypBAjLnP2o3xbrgGEESBRV3CjV0ZMrX9vHA5IP4DI
 uwnI5GQs5M7OEih+B6S/SeR9rGvIc119mi5fryDpP9scO8tNWryJ+QO15 g==;
X-CSE-ConnectionGUID: 1D7R2SErR6GQMwSDSov5SA==
X-CSE-MsgGUID: E/5V+NMzTfy5H+sNFSbCFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64621260"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64621260"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 16:06:39 -0800
X-CSE-ConnectionGUID: WicixFSQS8OkY/8xjP5m6w==
X-CSE-MsgGUID: HlMKmX6ETwai+Hnpds3uPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="218822594"
Received: from mgerlach-mobl1.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.137])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 16:06:35 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Fri, 07 Nov 2025 21:05:35 -0300
Subject: [PATCH v4 02/11] drm/i915/vbt: Add fields dedicated_external and
 dyn_port_over_tc
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-xe3p_lpd-basic-enabling-v4-2-ab3367f65f15@intel.com>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
In-Reply-To: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>
X-Mailer: b4 0.15-dev
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

VBT version 264 adds new fields associated to Xe3p_LPD's new ways of
configuring SoC for TC ports and PHYs.  Update the code to match the
updates in VBT.

The new field dedicated_external is used to represent TC ports that are
connected to PHYs outside of the Type-C subsystem, meaning that they
behave like dedicated ports and don't require the extra Type-C
programming.  In an upcoming change, we will update the driver to take
this field into consideration when detecting the type of port.

The new field dyn_port_over_tc is used to inform that the TC port can be
dynamically allocated for a legacy connector in the Type-C subsystem,
which is a new feature in Xe3p_LPD.  In upcoming changes, we will use
that field in order to handle the IOM resource management programming
required for that.

Note that, when dedicated_external is set, the fields dp_usb_type_c and
tbt are tagged as "don't care" in the spec, so they should be ignored in
that case, so also add a sanitization function to take care of forcing
them to zero when dedicated_external is true.

v2:
  - Use sanitization function to force dp_usb_type_c and tbt fields to
    be zero instead of adding a
    intel_bios_encoder_is_dedicated_external() check in each of their
    respective accessor functions. (Jani)
  - Print info about dedicated external ports in print_ddi_port().
    (Jani)

Bspec: 20124, 68954, 74304
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 54 ++++++++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bios.h     |  2 +
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  3 +-
 3 files changed, 56 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 852e4d6db8a3..1487d5e5a69d 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2530,6 +2530,36 @@ intel_bios_encoder_reject_edp_rate(const struct intel_bios_encoder_data *devdata
 	return devdata->child.edp_data_rate_override & edp_rate_override_mask(rate);
 }
 
+static void sanitize_dedicated_external(struct intel_bios_encoder_data *devdata,
+					enum port port)
+{
+	struct intel_display *display = devdata->display;
+
+	if (!intel_bios_encoder_is_dedicated_external(devdata))
+		return;
+
+	/*
+	 * Fields dp_usb_type_c and tbt must be ignored when
+	 * dedicated_external is set.  Since dedicated_external is for
+	 * ports connected to PHYs outside of the Type-C subsystem, it
+	 * is safe to force those fields to zero.
+	 */
+
+	if (devdata->child.dp_usb_type_c) {
+		drm_dbg_kms(display->drm,
+			    "VBT claims Port %c supports USB Type-C, but the port is dedicated external, ignoring\n",
+			    port_name(port));
+		devdata->child.dp_usb_type_c = 0;
+	}
+
+	if (devdata->child.tbt) {
+		drm_dbg_kms(display->drm,
+			    "VBT claims Port %c supports TBT, but the port is dedicated external, ignoring\n",
+			    port_name(port));
+		devdata->child.tbt = 0;
+	}
+}
+
 static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
 				 enum port port)
 {
@@ -2668,7 +2698,8 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
 {
 	struct intel_display *display = devdata->display;
 	const struct child_device_config *child = &devdata->child;
-	bool is_dvi, is_hdmi, is_dp, is_edp, is_dsi, is_crt, supports_typec_usb, supports_tbt;
+	bool is_dvi, is_hdmi, is_dp, is_edp, is_dsi, is_crt, supports_typec_usb,
+		supports_tbt, dedicated_external;
 	int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hdmi_level_shift, max_tmds_clock;
 	enum port port;
 
@@ -2694,6 +2725,12 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
 		    supports_typec_usb, supports_tbt,
 		    devdata->dsc != NULL);
 
+	dedicated_external = intel_bios_encoder_is_dedicated_external(devdata);
+	if (dedicated_external)
+		drm_dbg_kms(display->drm,
+			    "Port %c is dedicated external\n",
+			    port_name(port));
+
 	hdmi_level_shift = intel_bios_hdmi_level_shift(devdata);
 	if (hdmi_level_shift >= 0) {
 		drm_dbg_kms(display->drm,
@@ -2751,6 +2788,7 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 		return;
 	}
 
+	sanitize_dedicated_external(devdata, port);
 	sanitize_device_type(devdata, port);
 	sanitize_hdmi_level_shift(devdata, port);
 }
@@ -2778,7 +2816,7 @@ static int child_device_expected_size(u16 version)
 {
 	BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
 
-	if (version > 263)
+	if (version > 264)
 		return -ENOENT;
 	else if (version >= 263)
 		return 44;
@@ -3723,6 +3761,18 @@ bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devda
 	return devdata->display->vbt.version >= 209 && devdata->child.tbt;
 }
 
+bool intel_bios_encoder_is_dedicated_external(const struct intel_bios_encoder_data *devdata)
+{
+	return devdata->display->vbt.version >= 264 &&
+		devdata->child.dedicated_external;
+}
+
+bool intel_bios_encoder_supports_dyn_port_over_tc(const struct intel_bios_encoder_data *devdata)
+{
+	return devdata->display->vbt.version >= 264 &&
+		devdata->child.dyn_port_over_tc;
+}
+
 bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data *devdata)
 {
 	return devdata && devdata->child.lane_reversal;
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index f9e438b2787b..75dff27b4228 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -79,6 +79,8 @@ bool intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data *devdat
 bool intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devdata);
+bool intel_bios_encoder_is_dedicated_external(const struct intel_bios_encoder_data *devdata);
+bool intel_bios_encoder_supports_dyn_port_over_tc(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_dsi(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata);
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 70e31520c560..57fda5824c9c 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -554,7 +554,8 @@ struct child_device_config {
 	u8 dvo_function;
 	u8 dp_usb_type_c:1;					/* 195+ */
 	u8 tbt:1;						/* 209+ */
-	u8 flags2_reserved:2;					/* 195+ */
+	u8 dedicated_external:1;				/* 264+ */
+	u8 dyn_port_over_tc:1;					/* 264+ */
 	u8 dp_port_trace_length:4;				/* 209+ */
 	u8 dp_gpio_index;					/* 195+ */
 	u16 dp_gpio_pin_num;					/* 195+ */

-- 
2.51.0

