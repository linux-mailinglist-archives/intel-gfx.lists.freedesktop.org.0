Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E16BF9799
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:32:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEA2110E6A0;
	Wed, 22 Oct 2025 00:32:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FYnsA2uR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8948D10E6A1;
 Wed, 22 Oct 2025 00:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093155; x=1792629155;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=M6jjJbDTs4ZxDNptzvJ+C8LlSfme0u/0FE7ysdxIfAw=;
 b=FYnsA2uRj62+iQzQxa0hN3pZrNaAGK9/iyttLj0KlOlQpHUeVNLoOXMJ
 UhSu1DS+ZU9sN4rk2hzRxuS+OZ7E6s45TNGjp0SRkwcC2wMegV4941R8j
 szLCo1vB4OxYUcs0Ssq4qicmTGl8G/MGT2W2pvVt1YZv6S3dOk64GtJHF
 mVdwgh192iYsKlDt/wmvG1Lq+qTknPUB4ANO3IwNqjwPEO6Ft7U30sAZK
 RdhWc+ulkqUin/VFGAS2bojQulwoTqx4KTrM6FoZR1fxG8XcdzLBpjZd9
 bGpimaT4+FkWY1A7U0EBDHmBB+HMB92OAx1tLrG2QmUC4m6YdF2WmiME+ w==;
X-CSE-ConnectionGUID: wcGfo5y+QWekj6r27iC6iQ==
X-CSE-MsgGUID: OyyaXcN4SU+JSf9jdPjyMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85855815"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="85855815"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:32:35 -0700
X-CSE-ConnectionGUID: NcOOaNVCQrmVGtGipjSZeA==
X-CSE-MsgGUID: hVlTuV8hQvuFoSvo1HnRmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132570"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:32:31 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:52 -0300
Subject: [PATCH v2 27/32] drm/i915/vbt: Add fields dedicated_external and
 dyn_port_over_tc
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-27-10eae6d655b8@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
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
index 3596dce84c28..b9022137020a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2529,6 +2529,36 @@ intel_bios_encoder_reject_edp_rate(const struct intel_bios_encoder_data *devdata
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
@@ -2667,7 +2697,8 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
 {
 	struct intel_display *display = devdata->display;
 	const struct child_device_config *child = &devdata->child;
-	bool is_dvi, is_hdmi, is_dp, is_edp, is_dsi, is_crt, supports_typec_usb, supports_tbt;
+	bool is_dvi, is_hdmi, is_dp, is_edp, is_dsi, is_crt, supports_typec_usb,
+		supports_tbt, dedicated_external;
 	int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hdmi_level_shift, max_tmds_clock;
 	enum port port;
 
@@ -2693,6 +2724,12 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
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
@@ -2750,6 +2787,7 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 		return;
 	}
 
+	sanitize_dedicated_external(devdata, port);
 	sanitize_device_type(devdata, port);
 	sanitize_hdmi_level_shift(devdata, port);
 }
@@ -2777,7 +2815,7 @@ static int child_device_expected_size(u16 version)
 {
 	BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
 
-	if (version > 263)
+	if (version > 264)
 		return -ENOENT;
 	else if (version >= 263)
 		return 44;
@@ -3722,6 +3760,18 @@ bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devda
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

