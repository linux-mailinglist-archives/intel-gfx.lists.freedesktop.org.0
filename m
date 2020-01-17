Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4CC140C81
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 15:30:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5460E6F5B0;
	Fri, 17 Jan 2020 14:30:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32BA38925D
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 14:30:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 06:30:10 -0800
X-IronPort-AV: E=Sophos;i="5.70,330,1574150400"; d="scan'208";a="220740108"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 06:30:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 16:29:27 +0200
Message-Id: <21549ff74e8e5746917b0e2be4afbfb141e26657.1579270868.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579270868.git.jani.nikula@intel.com>
References: <cover.1579270868.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 7/9] drm/i915/bios: add
 intel_bios_port_supports_*()
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

Don't access i915->vbt.ddi_port_info[] directly.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 26 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h |  5 +++++
 drivers/gpu/drm/i915/display/intel_ddi.c  | 12 +++++------
 3 files changed, 37 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 23cbbe32e22f..4c69253739ec 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2606,3 +2606,29 @@ int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder)
 
 	return i915->vbt.ddi_port_info[encoder->port].alternate_ddc_pin;
 }
+
+bool intel_bios_port_supports_dvi(struct drm_i915_private *i915, enum port port)
+{
+	return i915->vbt.ddi_port_info[port].supports_dvi;
+}
+
+bool intel_bios_port_supports_hdmi(struct drm_i915_private *i915, enum port port)
+{
+	return i915->vbt.ddi_port_info[port].supports_hdmi;
+}
+
+bool intel_bios_port_supports_dp(struct drm_i915_private *i915, enum port port)
+{
+	return i915->vbt.ddi_port_info[port].supports_dp;
+}
+
+bool intel_bios_port_supports_typec_usb(struct drm_i915_private *i915,
+					enum port port)
+{
+	return i915->vbt.ddi_port_info[port].supports_typec_usb;
+}
+
+bool intel_bios_port_supports_tbt(struct drm_i915_private *i915, enum port port)
+{
+	return i915->vbt.ddi_port_info[port].supports_tbt;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 077828d77642..c17199caeff8 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -253,5 +253,10 @@ int intel_bios_dp_boost_level(struct intel_encoder *encoder);
 int intel_bios_hdmi_boost_level(struct intel_encoder *encoder);
 int intel_bios_dp_max_link_rate(struct intel_encoder *encoder);
 int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder);
+bool intel_bios_port_supports_dvi(struct drm_i915_private *i915, enum port port);
+bool intel_bios_port_supports_hdmi(struct drm_i915_private *i915, enum port port);
+bool intel_bios_port_supports_dp(struct drm_i915_private *i915, enum port port);
+bool intel_bios_port_supports_typec_usb(struct drm_i915_private *i915, enum port port);
+bool intel_bios_port_supports_tbt(struct drm_i915_private *i915, enum port port);
 
 #endif /* _INTEL_BIOS_H_ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3697fa047362..18a8186699f9 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4780,15 +4780,14 @@ intel_ddi_max_lanes(struct intel_digital_port *intel_dport)
 
 void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 {
-	struct ddi_vbt_port_info *port_info =
-		&dev_priv->vbt.ddi_port_info[port];
 	struct intel_digital_port *intel_dig_port;
 	struct intel_encoder *encoder;
 	bool init_hdmi, init_dp, init_lspcon = false;
 	enum phy phy = intel_port_to_phy(dev_priv, port);
 
-	init_hdmi = port_info->supports_dvi || port_info->supports_hdmi;
-	init_dp = port_info->supports_dp;
+	init_hdmi = intel_bios_port_supports_dvi(dev_priv, port) ||
+		intel_bios_port_supports_hdmi(dev_priv, port);
+	init_dp = intel_bios_port_supports_dp(dev_priv, port);
 
 	if (intel_bios_is_lspcon_present(dev_priv, port)) {
 		/*
@@ -4849,8 +4848,9 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	intel_dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, port);
 
 	if (intel_phy_is_tc(dev_priv, phy)) {
-		bool is_legacy = !port_info->supports_typec_usb &&
-				 !port_info->supports_tbt;
+		bool is_legacy =
+			!intel_bios_port_supports_typec_usb(dev_priv, port) &&
+			!intel_bios_port_supports_tbt(dev_priv, port);
 
 		intel_tc_port_init(intel_dig_port, is_legacy);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
