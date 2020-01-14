Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 919D913ABC9
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 15:02:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E98136E3DF;
	Tue, 14 Jan 2020 14:02:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 022ED6E3DF
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 14:02:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 06:02:17 -0800
X-IronPort-AV: E=Sophos;i="5.69,433,1571727600"; d="scan'208";a="242475563"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 06:02:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jan 2020 16:01:39 +0200
Message-Id: <99df51313fd8112a9eb8d30dde19dde51e0c618b.1579010266.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579010266.git.jani.nikula@intel.com>
References: <cover.1579010266.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 5/5] drm/i915: Force DPCD backlight mode on
 X1 Extreme 2nd Gen 4K AMOLED panel
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
Cc: jani.nikula@intel.com, AceLan Kao <acelan.kao@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Lyude Paul <lyude@redhat.com>

Annoyingly, the VBT on the ThinkPad X1 Extreme 2nd Gen indicates that
the system uses plain PWM based backlight controls, when in reality the
only backlight controls that work are the standard VESA eDP DPCD
backlight controls.

Honestly, this makes me wonder how many other systems have these issues
or lie about this in their VBT. Not sure we have any good way of finding
out until panels like this become more common place in the laptop
market. For now, just add a DRM DP quirk to indicate that this panel is
telling the truth and is being a good LCD.

v2 by Jani:
- rebase

Bugzilla: https://bugs.freedesktop.org/show_bug.cgi?id=112376
Closes: https://gitlab.freedesktop.org/drm/intel/issues/642
Tested-by: AceLan Kao <acelan.kao@canonical.com>
Signed-off-by: Lyude Paul <lyude@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_dp_helper.c                       | 4 ++++
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 8 ++++++--
 include/drm/drm_dp_helper.h                           | 8 ++++++++
 3 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_helper.c
index 5a103e9b3c86..90e122809fa4 100644
--- a/drivers/gpu/drm/drm_dp_helper.c
+++ b/drivers/gpu/drm/drm_dp_helper.c
@@ -1179,6 +1179,10 @@ static const struct dpcd_quirk dpcd_quirk_list[] = {
 	{ OUI(0x00, 0x00, 0x00), DEVICE_ID('C', 'H', '7', '5', '1', '1'), false, BIT(DP_DPCD_QUIRK_NO_SINK_COUNT) },
 	/* Synaptics DP1.4 MST hubs can support DSC without virtual DPCD */
 	{ OUI(0x90, 0xCC, 0x24), DEVICE_ID_ANY, true, BIT(DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD) },
+	/* Optional 4K AMOLED panel in the ThinkPad X1 Extreme 2nd Generation
+	 * only supports DPCD backlight controls, despite advertising otherwise
+	 */
+	{ OUI(0xba, 0x41, 0x59), DEVICE_ID_ANY, false, BIT(DP_DPCD_QUIRK_FORCE_DPCD_BACKLIGHT) },
 };
 
 #undef OUI
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 77a759361c5c..57774003e8c5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -328,11 +328,15 @@ intel_dp_aux_display_control_capable(struct intel_connector *connector)
 int intel_dp_aux_init_backlight_funcs(struct intel_connector *intel_connector)
 {
 	struct intel_panel *panel = &intel_connector->panel;
-	struct drm_i915_private *dev_priv = to_i915(intel_connector->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(intel_connector->encoder);
+	struct drm_i915_private *i915 = to_i915(intel_connector->base.dev);
 
 	if (i915_modparams.enable_dpcd_backlight == 0 ||
 	    (i915_modparams.enable_dpcd_backlight == -1 &&
-	    dev_priv->vbt.backlight.type != INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE))
+	     i915->vbt.backlight.type !=
+	     INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE &&
+	     !drm_dp_has_quirk(&intel_dp->desc,
+			       DP_DPCD_QUIRK_FORCE_DPCD_BACKLIGHT)))
 		return -ENODEV;
 
 	if (!intel_dp_aux_display_control_capable(intel_connector))
diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
index 262faf9e5e94..bb081921f53d 100644
--- a/include/drm/drm_dp_helper.h
+++ b/include/drm/drm_dp_helper.h
@@ -1532,6 +1532,14 @@ enum drm_dp_quirk {
 	 * The DSC caps can be read from the physical aux instead.
 	 */
 	DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD,
+	/**
+	 * @DP_DPCD_QUIRK_FORCE_DPCD_BACKLIGHT:
+	 *
+	 * The device is telling the truth when it says that it uses DPCD
+	 * backlight controls, even if the system's firmware disagrees.
+	 * The driver should honor the DPCD backlight capabilities advertised.
+	 */
+	DP_DPCD_QUIRK_FORCE_DPCD_BACKLIGHT,
 };
 
 /**
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
