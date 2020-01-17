Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5AA140C80
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 15:30:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0B076F5A7;
	Fri, 17 Jan 2020 14:30:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86E406F5A7
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 14:30:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 06:30:07 -0800
X-IronPort-AV: E=Sophos;i="5.70,330,1574150400"; d="scan'208";a="306249838"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 06:30:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 16:29:26 +0200
Message-Id: <9e4fcb625cec26ee88245aad7ae80bfe93b14e59.1579270868.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579270868.git.jani.nikula@intel.com>
References: <cover.1579270868.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 6/9] drm/i915/bios: add
 intel_bios_alternate_ddc_pin()
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
 drivers/gpu/drm/i915/display/intel_bios.c |  7 +++++++
 drivers/gpu/drm/i915/display/intel_bios.h |  1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c | 16 ++++++++--------
 3 files changed, 16 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index dd3968456aea..23cbbe32e22f 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2599,3 +2599,10 @@ int intel_bios_dp_max_link_rate(struct intel_encoder *encoder)
 
 	return i915->vbt.ddi_port_info[encoder->port].dp_max_link_rate;
 }
+
+int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	return i915->vbt.ddi_port_info[encoder->port].alternate_ddc_pin;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 179d2eb49d7e..077828d77642 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -252,5 +252,6 @@ int intel_bios_hdmi_level_shift(struct intel_encoder *encoder);
 int intel_bios_dp_boost_level(struct intel_encoder *encoder);
 int intel_bios_hdmi_boost_level(struct intel_encoder *encoder);
 int intel_bios_dp_max_link_rate(struct intel_encoder *encoder);
+int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder);
 
 #endif /* _INTEL_BIOS_H_ */
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index e8f8c87cd3e6..f471b495a0b8 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -3051,17 +3051,17 @@ static u8 g4x_port_to_ddc_pin(struct drm_i915_private *dev_priv,
 	return ddc_pin;
 }
 
-static u8 intel_hdmi_ddc_pin(struct drm_i915_private *dev_priv,
-			     enum port port)
+static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
 {
-	const struct ddi_vbt_port_info *info =
-		&dev_priv->vbt.ddi_port_info[port];
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	enum port port = encoder->port;
 	u8 ddc_pin;
 
-	if (info->alternate_ddc_pin) {
+	ddc_pin = intel_bios_alternate_ddc_pin(encoder);
+	if (ddc_pin) {
 		DRM_DEBUG_KMS("Using DDC pin 0x%x for port %c (VBT)\n",
-			      info->alternate_ddc_pin, port_name(port));
-		return info->alternate_ddc_pin;
+			      ddc_pin, port_name(port));
+		return ddc_pin;
 	}
 
 	if (HAS_PCH_MCC(dev_priv))
@@ -3147,7 +3147,7 @@ void intel_hdmi_init_connector(struct intel_digital_port *intel_dig_port,
 		 intel_encoder->base.name))
 		return;
 
-	intel_hdmi->ddc_bus = intel_hdmi_ddc_pin(dev_priv, port);
+	intel_hdmi->ddc_bus = intel_hdmi_ddc_pin(intel_encoder);
 	ddc = intel_gmbus_get_adapter(dev_priv, intel_hdmi->ddc_bus);
 
 	drm_connector_init_with_ddc(dev, connector,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
