Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2DD967F9C
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 08:43:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CADD810E1FF;
	Mon,  2 Sep 2024 06:43:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h2JR9VV4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A26E810E1FF
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 06:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725259386; x=1756795386;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m2smNAGYZ1cCXVHvFQ3IS7kO9AQNbiJ/fCHmmk/2CrQ=;
 b=h2JR9VV4DGID369eHB4BCxTyuAuyya+J30NN1Oz6b9yn986mgKQijDW5
 dF0m9Tp5/30ES50NH18VcoeNVO+QJTdkz7bYsd/XOxxRA5S+EEIjwhh1g
 kofsoNYReEEurgbXKDb15954AcDxt91N7RVKZjlF/XWfVkVph2BiUaCzX
 nwFN1VAAzIXKGDPVvlZq3XkRBrAimQsyzop6chWU7G4kRMKe1oxTP74mA
 rMGyPtOkYlK1o0eRTZTCOuGyaSL3N00KHGIdRcllTWVjMBsn1A9/gF75U
 0XY8IfLzg8PsPm8hu8gAwwRIqlss5C8+mZnrVjpaecbpoU8lZ9+f+98Mn w==;
X-CSE-ConnectionGUID: 4mNqqVCWRNKFy9XyiNsODw==
X-CSE-MsgGUID: SmqYjf9SR8SI6qrREv2E7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="41327204"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="41327204"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2024 23:43:06 -0700
X-CSE-ConnectionGUID: 6IY6/stlTsKh+O3CCdevmA==
X-CSE-MsgGUID: MZ9e9hezQo6YGAYQO6UHlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="64865765"
Received: from apaszkie-mobl2.apaszkie-mobl2 (HELO jhogande-mobl1..)
 ([10.245.244.34])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2024 23:43:05 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 2/2] drm/i915/display: Increase Fast Wake Sync length as a
 quirk
Date: Mon,  2 Sep 2024 09:42:41 +0300
Message-Id: <20240902064241.1020965-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240902064241.1020965-1-jouni.hogander@intel.com>
References: <20240902064241.1020965-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

In commit "drm/i915/display: Increase number of fast wake precharge pulses"
we were increasing Fast Wake sync pulse length to fix problems observed on
Dell Precision 5490 laptop with AUO panel. Later we have observed this is
causing problems on other panels.

Fix these problems by increasing Fast Wake sync pulse length as a quirk
applied for Dell Precision 5490 with problematic panel.

Fixes: f77772866385 ("drm/i915/display: Increase number of fast wake precharge pulses")
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Closes: http://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9739
Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2246
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11762
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 16 +++++++++++-----
 drivers/gpu/drm/i915/display/intel_dp_aux.h |  2 +-
 drivers/gpu/drm/i915/display/intel_quirks.c | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
 5 files changed, 31 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 82ee778b2efe9..186cf4833f716 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -228,7 +228,7 @@ bool intel_alpm_compute_params(struct intel_dp *intel_dp,
 	int tfw_exit_latency = 20; /* eDP spec */
 	int phy_wake = 4;	   /* eDP spec */
 	int preamble = 8;	   /* eDP spec */
-	int precharge = intel_dp_aux_fw_sync_len() - preamble;
+	int precharge = intel_dp_aux_fw_sync_len(intel_dp) - preamble;
 	u8 max_wake_lines;
 
 	io_wake_time = max(precharge, io_buffer_wake_time(crtc_state)) +
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index cbc817bb0cc3e..6420da69f3bbc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -13,6 +13,7 @@
 #include "intel_dp_aux.h"
 #include "intel_dp_aux_regs.h"
 #include "intel_pps.h"
+#include "intel_quirks.h"
 #include "intel_tc.h"
 
 #define AUX_CH_NAME_BUFSIZE	6
@@ -142,16 +143,21 @@ static int intel_dp_aux_sync_len(void)
 	return precharge + preamble;
 }
 
-int intel_dp_aux_fw_sync_len(void)
+int intel_dp_aux_fw_sync_len(struct intel_dp *intel_dp)
 {
+	int precharge = 10; /* 10-16 */
+	int preamble = 8;
+
 	/*
 	 * We faced some glitches on Dell Precision 5490 MTL laptop with panel:
 	 * "Manufacturer: AUO, Model: 63898" when using HW default 18. Using 20
 	 * is fixing these problems with the panel. It is still within range
-	 * mentioned in eDP specification.
+	 * mentioned in eDP specification. Increasing Fast Wake sync length is
+	 * causing problems with other panels: increase length as a quirk for
+	 * this specific laptop.
 	 */
-	int precharge = 12; /* 10-16 */
-	int preamble = 8;
+	if (intel_has_dpcd_quirk(intel_dp, QUIRK_FW_SYNC_LEN))
+		precharge += 2;
 
 	return precharge + preamble;
 }
@@ -211,7 +217,7 @@ static u32 skl_get_aux_send_ctl(struct intel_dp *intel_dp,
 		DP_AUX_CH_CTL_TIME_OUT_MAX |
 		DP_AUX_CH_CTL_RECEIVE_ERROR |
 		DP_AUX_CH_CTL_MESSAGE_SIZE(send_bytes) |
-		DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL(intel_dp_aux_fw_sync_len()) |
+		DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL(intel_dp_aux_fw_sync_len(intel_dp)) |
 		DP_AUX_CH_CTL_SYNC_PULSE_SKL(intel_dp_aux_sync_len());
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.h b/drivers/gpu/drm/i915/display/intel_dp_aux.h
index 76d1f2ed7c2f4..593f58fafab71 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.h
@@ -20,6 +20,6 @@ enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder);
 
 void intel_dp_aux_irq_handler(struct drm_i915_private *i915);
 u32 intel_dp_aux_pack(const u8 *src, int src_bytes);
-int intel_dp_aux_fw_sync_len(void);
+int intel_dp_aux_fw_sync_len(struct intel_dp *intel_dp);
 
 #endif /* __INTEL_DP_AUX_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index bce1f67c918bb..29b56d53a340a 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -70,6 +70,14 @@ static void quirk_no_pps_backlight_power_hook(struct intel_display *display)
 	drm_info(display->drm, "Applying no pps backlight power quirk\n");
 }
 
+static void quirk_fw_sync_len(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	intel_set_dpcd_quirk(intel_dp, QUIRK_FW_SYNC_LEN);
+	drm_info(display->drm, "Applying Fast Wake sync pulse count quirk\n");
+}
+
 struct intel_quirk {
 	int device;
 	int subsystem_vendor;
@@ -224,6 +232,15 @@ static struct intel_quirk intel_quirks[] = {
 };
 
 static struct intel_dpcd_quirk intel_dpcd_quirks[] = {
+	/* Dell Precision 5490 */
+	{
+		.device = 0x7d55,
+		.subsystem_vendor = 0x1028,
+		.subsystem_device = 0x0cc7,
+		.sink_oui = SINK_OUI(0x38, 0xec, 0x11),
+		.hook = quirk_fw_sync_len,
+	},
+
 };
 
 void intel_init_quirks(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
index c8db50b9ab74d..cafdebda75354 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.h
+++ b/drivers/gpu/drm/i915/display/intel_quirks.h
@@ -19,6 +19,7 @@ enum intel_quirk_id {
 	QUIRK_INVERT_BRIGHTNESS,
 	QUIRK_LVDS_SSC_DISABLE,
 	QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK,
+	QUIRK_FW_SYNC_LEN,
 };
 
 void intel_init_quirks(struct intel_display *display);
-- 
2.34.1

