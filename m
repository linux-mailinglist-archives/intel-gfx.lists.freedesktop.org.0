Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CA213ABC4
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 15:02:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB15B89D73;
	Tue, 14 Jan 2020 14:02:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3580889D5F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 14:02:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 06:02:01 -0800
X-IronPort-AV: E=Sophos;i="5.69,433,1571727600"; d="scan'208";a="397517446"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 06:02:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jan 2020 16:01:36 +0200
Message-Id: <363ecc8e5841a2caa0efcf127aa9975064f18b8c.1579010266.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579010266.git.jani.nikula@intel.com>
References: <cover.1579010266.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 2/5] drm/i915: Assume 100% brightness when
 not in DPCD control mode
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
Cc: jani.nikula@intel.com, AceLan Kao <acelan.kao@canonical.com>,
 Perry Yuan <pyuan@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Lyude Paul <lyude@redhat.com>

Currently we always determine the initial panel brightness level by
simply reading the value from DP_EDP_BACKLIGHT_BRIGHTNESS_MSB/LSB. This
seems wrong though, because if the panel is not currently in DPCD
control mode there's not really any reason why there would be any
brightness value programmed in the first place.

This appears to be the case on the Lenovo ThinkPad X1 Extreme 2nd
Generation, where the default value in these registers is always 0 on
boot despite the fact the panel runs at max brightness by default.
Getting the initial brightness value correct here is important as well,
since the panel on this laptop doesn't behave well if it's ever put into
DPCD control mode while the brightness level is programmed to 0.

So, let's fix this by checking what the current backlight control mode
is before reading the brightness level. If it's in DPCD control mode, we
return the programmed brightness level. Otherwise we assume 100%
brightness and return the highest possible brightness level. This also
prevents us from accidentally programming a brightness level of 0.

This is one of the many fixes that gets backlight controls working on
the ThinkPad X1 Extreme 2nd Generation with optional 4K AMOLED screen.

Changes since v1:
* s/DP_EDP_DISPLAY_CONTROL_REGISTER/DP_EDP_BACKLIGHT_MODE_SET_REGISTER/
  - Jani

Tested-by: AceLan Kao <acelan.kao@canonical.com>
Tested-by: Perry Yuan <pyuan@redhat.com>
Signed-off-by: Lyude Paul <lyude@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_dp_aux_backlight.c   | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 345eed641455..5d4db5f8a165 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -59,8 +59,25 @@ static u32 intel_dp_aux_get_backlight(struct intel_connector *connector)
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
 	u8 read_val[2] = { 0x0 };
+	u8 mode_reg;
 	u16 level = 0;
 
+	if (drm_dp_dpcd_readb(&intel_dp->aux,
+			      DP_EDP_BACKLIGHT_MODE_SET_REGISTER,
+			      &mode_reg) != 1) {
+		DRM_DEBUG_KMS("Failed to read the DPCD register 0x%x\n",
+			      DP_EDP_BACKLIGHT_MODE_SET_REGISTER);
+		return 0;
+	}
+
+	/*
+	 * If we're not in DPCD control mode yet, the programmed brightness
+	 * value is meaningless and we should assume max brightness
+	 */
+	if ((mode_reg & DP_EDP_BACKLIGHT_CONTROL_MODE_MASK) !=
+	    DP_EDP_BACKLIGHT_CONTROL_MODE_DPCD)
+		return connector->panel.backlight.max;
+
 	if (drm_dp_dpcd_read(&intel_dp->aux, DP_EDP_BACKLIGHT_BRIGHTNESS_MSB,
 			     &read_val, sizeof(read_val)) < 0) {
 		DRM_DEBUG_KMS("Failed to read DPCD register 0x%x\n",
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
