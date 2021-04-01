Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B84DB3514A7
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 13:59:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBBCD6E22B;
	Thu,  1 Apr 2021 11:59:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1ABD6E22B
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Apr 2021 11:59:34 +0000 (UTC)
IronPort-SDR: zEJi+ku70tGwKyPM9uzU5Zr+QFp/VL+0nSPOxVF86I/OqN3epDvDEnzzS6HCydU0MtD9WVtF4/
 Mut1zfKL9XUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="172259468"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="172259468"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 04:59:34 -0700
IronPort-SDR: QOz2VqHChY0OOXewfUDRs6FKhBMl50XsmzEVfVH0iEsEZ7DrNMN4Hkhmg7hw+Wet9o7dsgrMY3
 xAgScnMA5LcA==
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="419176214"
Received: from shergane-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.188])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 04:59:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Apr 2021 14:59:26 +0300
Message-Id: <20210401115926.28169-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/hdmi: convert intel_hdmi_to_dev to
 intel_hdmi_to_i915
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prefer i915 over drm pointer.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index d69f0a6dc26d..26877be7696d 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -51,21 +51,20 @@
 #include "intel_lspcon.h"
 #include "intel_panel.h"
 
-static struct drm_device *intel_hdmi_to_dev(struct intel_hdmi *intel_hdmi)
+static struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi)
 {
-	return hdmi_to_dig_port(intel_hdmi)->base.base.dev;
+	return to_i915(hdmi_to_dig_port(intel_hdmi)->base.base.dev);
 }
 
 static void
 assert_hdmi_port_disabled(struct intel_hdmi *intel_hdmi)
 {
-	struct drm_device *dev = intel_hdmi_to_dev(intel_hdmi);
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = intel_hdmi_to_i915(intel_hdmi);
 	u32 enabled_bits;
 
 	enabled_bits = HAS_DDI(dev_priv) ? DDI_BUF_CTL_ENABLE : SDVO_ENABLE;
 
-	drm_WARN(dev,
+	drm_WARN(&dev_priv->drm,
 		 intel_de_read(dev_priv, intel_hdmi->hdmi_reg) & enabled_bits,
 		 "HDMI port enabled, expecting disabled\n");
 }
@@ -1241,7 +1240,7 @@ static void hsw_set_infoframes(struct intel_encoder *encoder,
 
 void intel_dp_dual_mode_set_tmds_output(struct intel_hdmi *hdmi, bool enable)
 {
-	struct drm_i915_private *dev_priv = to_i915(intel_hdmi_to_dev(hdmi));
+	struct drm_i915_private *dev_priv = intel_hdmi_to_i915(hdmi);
 	struct i2c_adapter *adapter =
 		intel_gmbus_get_adapter(dev_priv, hdmi->ddc_bus);
 
@@ -1828,7 +1827,7 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
 		      int clock, bool respect_downstream_limits,
 		      bool has_hdmi_sink)
 {
-	struct drm_i915_private *dev_priv = to_i915(intel_hdmi_to_dev(hdmi));
+	struct drm_i915_private *dev_priv = intel_hdmi_to_i915(hdmi);
 
 	if (clock < 25000)
 		return MODE_CLOCK_LOW;
@@ -1866,8 +1865,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 		      struct drm_display_mode *mode)
 {
 	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
-	struct drm_device *dev = intel_hdmi_to_dev(hdmi);
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = intel_hdmi_to_i915(hdmi);
 	enum drm_mode_status status;
 	int clock = mode->clock;
 	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
