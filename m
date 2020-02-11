Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D7F15902F
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 14:44:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B1936EA68;
	Tue, 11 Feb 2020 13:44:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7AC06EA68
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 13:44:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 05:44:34 -0800
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="221933484"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 05:44:32 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Feb 2020 15:44:27 +0200
Message-Id: <20200211134427.31605-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915/hdmi: prefer to_i915() over
 drm->dev_private to get at i915
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
Cc: jani.nikula@intel.com, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drm->dev_private is to be avoided. Use to_i915() on the struct
drm_device pointer instead. Rename the affected local dev_priv variables
to i915 while at it.

Cc: Wambui Karuga <wambui.karugax@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 25 +++++++++--------------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index e68bafb76cb1..bee9c9b1a770 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1274,10 +1274,9 @@ void intel_dp_dual_mode_set_tmds_output(struct intel_hdmi *hdmi, bool enable)
 static int intel_hdmi_hdcp_read(struct intel_digital_port *intel_dig_port,
 				unsigned int offset, void *buffer, size_t size)
 {
+	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
 	struct intel_hdmi *hdmi = &intel_dig_port->hdmi;
-	struct drm_i915_private *dev_priv =
-		intel_dig_port->base.base.dev->dev_private;
-	struct i2c_adapter *adapter = intel_gmbus_get_adapter(dev_priv,
+	struct i2c_adapter *adapter = intel_gmbus_get_adapter(i915,
 							      hdmi->ddc_bus);
 	int ret;
 	u8 start = offset & 0xff;
@@ -1304,10 +1303,9 @@ static int intel_hdmi_hdcp_read(struct intel_digital_port *intel_dig_port,
 static int intel_hdmi_hdcp_write(struct intel_digital_port *intel_dig_port,
 				 unsigned int offset, void *buffer, size_t size)
 {
+	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
 	struct intel_hdmi *hdmi = &intel_dig_port->hdmi;
-	struct drm_i915_private *dev_priv =
-		intel_dig_port->base.base.dev->dev_private;
-	struct i2c_adapter *adapter = intel_gmbus_get_adapter(dev_priv,
+	struct i2c_adapter *adapter = intel_gmbus_get_adapter(i915,
 							      hdmi->ddc_bus);
 	int ret;
 	u8 *write_buf;
@@ -1339,10 +1337,9 @@ static
 int intel_hdmi_hdcp_write_an_aksv(struct intel_digital_port *intel_dig_port,
 				  u8 *an)
 {
+	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
 	struct intel_hdmi *hdmi = &intel_dig_port->hdmi;
-	struct drm_i915_private *dev_priv =
-		intel_dig_port->base.base.dev->dev_private;
-	struct i2c_adapter *adapter = intel_gmbus_get_adapter(dev_priv,
+	struct i2c_adapter *adapter = intel_gmbus_get_adapter(i915,
 							      hdmi->ddc_bus);
 	int ret;
 
@@ -1521,8 +1518,7 @@ int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
 static
 bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
 {
-	struct drm_i915_private *dev_priv =
-		intel_dig_port->base.base.dev->dev_private;
+	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
 	struct intel_connector *connector =
 		intel_dig_port->hdmi.attached_connector;
 	enum port port = intel_dig_port->base.port;
@@ -1537,14 +1533,13 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
 	if (ret)
 		return false;
 
-	intel_de_write(dev_priv, HDCP_RPRIME(dev_priv, cpu_transcoder, port),
-		       ri.reg);
+	intel_de_write(i915, HDCP_RPRIME(i915, cpu_transcoder, port), ri.reg);
 
 	/* Wait for Ri prime match */
-	if (wait_for(intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
+	if (wait_for(intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
 		     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
 		DRM_ERROR("Ri' mismatch detected, link check failed (%x)\n",
-			  intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)));
+			  intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)));
 		return false;
 	}
 	return true;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
