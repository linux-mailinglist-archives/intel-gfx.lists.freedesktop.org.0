Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBA0958C05
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2024 18:14:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA72310E453;
	Tue, 20 Aug 2024 16:14:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZUJTxEFL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97EA710E449
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2024 16:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724170491; x=1755706491;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LepG4feC13KLstYoNSvq9xP6FWYkqhbCs9jaPV2h8is=;
 b=ZUJTxEFL4mE2a8zkxmPon/NElyDBvZk7W+XhezXkJvMnLV+eGWZK5itA
 8E7r8h3ISipt5Lpxf5i95MyeuGM2jTsee83tG0nbmP8psl/QScDoLg9Iq
 V8NcF0ov7V6FHRKMOIH+ysL9fFSS0W4pXrukVeD7kjpIQ0qsDob6njfLp
 ICAtxwzgqnWP4/yU19PPiBpTDe2E49gUsI9RxHWLfYS1kLsVmEHDmDASW
 GHFYfaIC6zIMVRmNyw+ONCWwfLD1LxXLLyk46bjR9p2nZPtWIQOessUNu
 0F5dfv0RIuTv6rUdWE9RE53uznS4aahDGWJ78hpe2vbqSgJPF/UI3z8xe w==;
X-CSE-ConnectionGUID: NXUPyLhPSdKRcDHFO2H0pA==
X-CSE-MsgGUID: onLCk1APTzuHnlNSfESZhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22367273"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="22367273"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 09:14:51 -0700
X-CSE-ConnectionGUID: W4ZpKm0pSHuqHhC6Xa2GSQ==
X-CSE-MsgGUID: +B2SZMb6RLuvDzjf4D+7LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="60623016"
Received: from fpallare-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.44])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 09:14:50 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/2] drm/i915/display: Increase Fast Wake Sync length as a
 quirk
Date: Tue, 20 Aug 2024 19:14:29 +0300
Message-Id: <20240820161429.2213343-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240820161429.2213343-1-jouni.hogander@intel.com>
References: <20240820161429.2213343-1-jouni.hogander@intel.com>
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
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 17 ++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dp_aux.h |  2 +-
 drivers/gpu/drm/i915/display/intel_quirks.c |  9 +++++++++
 drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
 5 files changed, 24 insertions(+), 7 deletions(-)

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
index b8a53bb174dab..7adb1af252678 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -13,6 +13,7 @@
 #include "intel_dp_aux.h"
 #include "intel_dp_aux_regs.h"
 #include "intel_pps.h"
+#include "intel_quirks.h"
 #include "intel_tc.h"
 
 #define AUX_CH_NAME_BUFSIZE	6
@@ -142,16 +143,22 @@ static int intel_dp_aux_sync_len(void)
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
+	if (intel_has_quirk(__intel_dp_to_intel_display(intel_dp),
+			    QUIRK_FW_SYNC_LEN))
+		precharge += 2;
 
 	return precharge + preamble;
 }
@@ -211,7 +218,7 @@ static u32 skl_get_aux_send_ctl(struct intel_dp *intel_dp,
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
index d9045b317cd16..acdd2ff1dd422 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -65,6 +65,12 @@ static void quirk_no_pps_backlight_power_hook(struct intel_display *display)
 	drm_info(display->drm, "Applying no pps backlight power quirk\n");
 }
 
+static void quirk_fw_sync_len(struct intel_display *display)
+{
+	intel_set_quirk(display, QUIRK_FW_SYNC_LEN);
+	drm_info(display->drm, "Applying Fast Wake sync pulse count quirk\n");
+}
+
 struct intel_quirk {
 	int device;
 	int subsystem_vendor;
@@ -196,6 +202,9 @@ static struct intel_quirk intel_quirks[] = {
 	/* Dell Chromebook 11 (2015 version) */
 	{ 0x0a16, 0x1028, 0x0a35, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_backlight_present },
 
+	/* Dell Precision 5490 */
+	{ 0x7d55, 0x1028, 0x0cc7, SINK_OUI(0x38, 0xec, 0x11), SINK_DEVICE_ID_ANY, quirk_fw_sync_len },
+
 	/* Toshiba Satellite P50-C-18C */
 	{ 0x191B, 0x1179, 0xF840, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_increase_t12_delay },
 
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
index 2d664af7e89f7..3c3e74310b7f2 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.h
+++ b/drivers/gpu/drm/i915/display/intel_quirks.h
@@ -18,6 +18,7 @@ enum intel_quirk_id {
 	QUIRK_INVERT_BRIGHTNESS,
 	QUIRK_LVDS_SSC_DISABLE,
 	QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK,
+	QUIRK_FW_SYNC_LEN,
 };
 
 void intel_init_quirks(struct intel_display *display);
-- 
2.34.1

