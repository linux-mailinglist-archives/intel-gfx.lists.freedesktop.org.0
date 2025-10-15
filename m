Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1621BDC503
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:18:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BACD310E718;
	Wed, 15 Oct 2025 03:18:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FrCvgCuT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FC5110E718;
 Wed, 15 Oct 2025 03:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498310; x=1792034310;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=evIVCC4wbkfut48NqNxBnt82GI0jGRS4mP1KqOnWg2o=;
 b=FrCvgCuT2iDT7auPOpW/gykR3W+3+a9YDlK1du0qHOOgr987/cb8Q9gS
 s6NcHf1/pOI0ovREWFeIc0Whsrk2m20oEesjV42RGXDpyBs6ER5yWhHzA
 3/tAd4Ux1+i1ldTYhoA+wdWVWWoj9XeKCVuzd3XfrFQaLUjHr6L6DxHaI
 di+2aomgj5ea/eJmepNjwFfk5UL/Yf8ige9SQY9asUZ2hOj842hTmDg/5
 iIZMNPUu0H1oAZldXPIl55+54fRb/+VHpgBmwHzsQOuq24Y4hXBb2Mruf
 dkns1+Bnbrqu75oKyV30AqONR22EE/Cr+cD4yZSlluK8kdXX1XHWHc6D9 w==;
X-CSE-ConnectionGUID: hO2lM8xtT+qdCW0c0h6Ykw==
X-CSE-MsgGUID: w32FMg1cRDG1b/OQqdYxAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62702587"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="62702587"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:18:30 -0700
X-CSE-ConnectionGUID: NBX7qKfHQyqWo7ROZh4IuA==
X-CSE-MsgGUID: Tz77aWjZQry4J52yFX9i7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186303103"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:18:26 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:27 -0300
Subject: [PATCH 27/32] drm/i915/vbt: Add fields dedicated_external and
 dyn_port_over_tc
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-27-d2d1e26520aa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
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
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
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
that case, so also make sure to update the accessor functions to take
that into consideration.

Bspec: 20124, 68954, 74304
Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 20 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bios.h     |  2 ++
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  7 ++++++-
 3 files changed, 27 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 3596dce84c28..e466728ced0f 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2777,7 +2777,7 @@ static int child_device_expected_size(u16 version)
 {
 	BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
 
-	if (version > 263)
+	if (version > 264)
 		return -ENOENT;
 	else if (version >= 263)
 		return 44;
@@ -3714,14 +3714,32 @@ int intel_bios_hdmi_ddc_pin(const struct intel_bios_encoder_data *devdata)
 
 bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata)
 {
+	if (intel_bios_encoder_is_dedicated_external(devdata))
+		return false;
+
 	return devdata->display->vbt.version >= 195 && devdata->child.dp_usb_type_c;
 }
 
 bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devdata)
 {
+	if (intel_bios_encoder_is_dedicated_external(devdata))
+		return false;
+
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
index 70e31520c560..f07ab64a8d97 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -554,7 +554,12 @@ struct child_device_config {
 	u8 dvo_function;
 	u8 dp_usb_type_c:1;					/* 195+ */
 	u8 tbt:1;						/* 209+ */
-	u8 flags2_reserved:2;					/* 195+ */
+	/*
+	 * Fields dp_usb_type_c and tbt must be ignored when
+	 * dedicated_external is set.
+	 */
+	u8 dedicated_external:1;				/* 264+ */
+	u8 dyn_port_over_tc:1;					/* 264+ */
 	u8 dp_port_trace_length:4;				/* 209+ */
 	u8 dp_gpio_index;					/* 195+ */
 	u16 dp_gpio_pin_num;					/* 195+ */

-- 
2.51.0

