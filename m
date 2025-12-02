Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C164EC99B9D
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 02:23:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF1D910E500;
	Tue,  2 Dec 2025 01:23:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="COqv4Art";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8248F10E4FA;
 Tue,  2 Dec 2025 01:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764638593; x=1796174593;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H9gIqaKHFkZMpjtgLv7QP4xCB6AQY/xYcrzb7DTYToo=;
 b=COqv4ArtJrFfariy7tFKIlDFT/sW5spzTd26xHJfip0/A3l2ySuLTbol
 LfPHjqcGZSN5sqyH4Vk2tNr3yXVupAXJ8RS0HAaNjINyrVrGjAp2vSCL2
 OhLLo6yd/XDbnvpOsc5LVIi3UwaPCIW6/Cpspt2yQbzEQUDMCGQVrecnh
 X4rzmdMONCMIPJKr0+bZgdjRkOiRoMqoV/BLcx7SfkCY3OdHbNCV9UHCb
 5updSREHfYlNvyoZbh1AcUdBynfoX0vvHAIkJUmjmBsbUU/qeLgZOTRFh
 GZiq8xUPlPeSLloHPZq4OA4Q7dJ02GHXReLcgOq8fPT9lJW7tlcl+AKCi A==;
X-CSE-ConnectionGUID: 8dln6QNsQMiqNIWS2Gfdew==
X-CSE-MsgGUID: bAXOqhP9RI+CseWs1hp+UQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="69186542"
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="69186542"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 17:23:12 -0800
X-CSE-ConnectionGUID: LFV99sDZRkO8nqLcv+jDYA==
X-CSE-MsgGUID: MGMV+eWJR22kKpRg0rNppg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="224927887"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.125.111.179])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 17:23:13 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@Intel.com, dnyaneshware.bhdane@intel.com,
 gustavo.sousa@intel.com, jouni.hogander@intel.com,
 juha-peka.heikkila@intel.com, luciano.coelho@intel.com,
 matthew.d.roper@intel.com, ravi.kumar.vodapalli@intel.com,
 shekhar.chauhan@intel.com, vinod.govindapillai@intel.com,
 imre.deak@intel.com, jani.nikula@linux.intel.com, suraj.kandapal@intel.com,
 jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 sai.teja.pottumuttu@Intel.com
Subject: [PATCH v6 1/8] drm/i915/vbt: Add fields dedicated_external and
 dyn_port_over_tc
Date: Mon,  1 Dec 2025 17:22:59 -0800
Message-ID: <20251202012306.9315-2-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251202012306.9315-1-matthew.s.atwood@intel.com>
References: <20251202012306.9315-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

From: Gustavo Sousa <gustavo.sousa@intel.com>

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
v3:
  - Also zero out field dyn_port_over_tc when dedicated_external is set.
    (Imre)
  - Use intel_bios_encoder_is_dedicated_external() directly instead of
    storing return value into variable in print_ddi_port(). (Imre)
  - Also print info for dyn_port_over_tc in print_ddi_port(). (Imre)

Bspec: 20124, 68954, 74304
Cc: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 73 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bios.h     |  2 +
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  3 +-
 3 files changed, 76 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index a639c5eb3245..ae0b922d5bc3 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2528,6 +2528,54 @@ intel_bios_encoder_reject_edp_rate(const struct intel_bios_encoder_data *devdata
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
+	 * Since dedicated_external is for ports connected to PHYs outside of
+	 * the Type-C subsystem, clear bits that would only make sense for ports
+	 * with PHYs in the Type-C subsystem.
+	 */
+
+	/*
+	 * Bit dp_usb_type_c is marked as "don't care" in Bspec when
+	 * dedicated_external is set.
+	 */
+	if (devdata->child.dp_usb_type_c) {
+		drm_dbg_kms(display->drm,
+			    "VBT claims Port %c supports USB Type-C, but the port is dedicated external, ignoring\n",
+			    port_name(port));
+		devdata->child.dp_usb_type_c = 0;
+	}
+
+	/*
+	 * Bit tbt is marked as "don't care" in Bspec when dedicated_external is
+	 * set.
+	 */
+	if (devdata->child.tbt) {
+		drm_dbg_kms(display->drm,
+			    "VBT claims Port %c supports TBT, but the port is dedicated external, ignoring\n",
+			    port_name(port));
+		devdata->child.tbt = 0;
+	}
+
+	/*
+	 * DDI allocation for TC capable ports only make sense for PHYs in the
+	 * Type-C subsystem.
+	 */
+	if (devdata->child.dyn_port_over_tc) {
+		drm_dbg_kms(display->drm,
+			    "VBT claims Port %c supports dynamic DDI allocation in TCSS, but the port is dedicated external, ignoring\n",
+			    port_name(port));
+		devdata->child.dyn_port_over_tc = 0;
+	}
+}
+
 static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
 				 enum port port)
 {
@@ -2692,6 +2740,16 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
 		    supports_typec_usb, supports_tbt,
 		    devdata->dsc != NULL);
 
+	if (intel_bios_encoder_is_dedicated_external(devdata))
+		drm_dbg_kms(display->drm,
+			    "Port %c is dedicated external\n",
+			    port_name(port));
+
+	if (intel_bios_encoder_supports_dyn_port_over_tc(devdata))
+		drm_dbg_kms(display->drm,
+			    "Port %c supports dynamic DDI allocation in TCSS\n",
+			    port_name(port));
+
 	hdmi_level_shift = intel_bios_hdmi_level_shift(devdata);
 	if (hdmi_level_shift >= 0) {
 		drm_dbg_kms(display->drm,
@@ -2749,6 +2807,7 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 		return;
 	}
 
+	sanitize_dedicated_external(devdata, port);
 	sanitize_device_type(devdata, port);
 	sanitize_hdmi_level_shift(devdata, port);
 }
@@ -2776,7 +2835,7 @@ static int child_device_expected_size(u16 version)
 {
 	BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
 
-	if (version > 263)
+	if (version > 264)
 		return -ENOENT;
 	else if (version >= 263)
 		return 44;
@@ -3720,6 +3779,18 @@ bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devda
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

