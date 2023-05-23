Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C00470D323
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 07:23:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 246DB10E3D5;
	Tue, 23 May 2023 05:23:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CD9710E3D5
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 05:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684819403; x=1716355403;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l9PiHHyj3/VxoeAzmfnWMYm/Yw/6hXJHYlZhGBw1MNU=;
 b=CE2X92QwlRZUanyyZW4qi+ycUifxd3kFPxcQudVU9YXBSHDKfOfioKmn
 mFAW4I1ZMh10MzWzXnhd7Msz0Q074+NaBGrfp+YFuc6hrk7cyRPR3/4Qf
 zPJe/9ADM2H9CKTLgI6yKsnw/Z+XEU6bUMPyPxVAjbT/Tm2GC98Zx+Az5
 lQqpCvzDfhoZ2AXMC+6Mx+jgje7T23iCrqjifMXml7H51HwKUxjN3bI0a
 0lGIANMwBQMWQw5vRExRhvgGffYBrkfiBXaTAn476TLvIzKEt0Id1IZYs
 c09PAMUEXkUV6ipZQrPH8nRqibyPryjIGjMWDtqnu3SoR9XRo2TgPOEXK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="351980796"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="351980796"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 22:23:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="848120822"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="848120822"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga001.fm.intel.com with ESMTP; 22 May 2023 22:23:08 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 May 2023 10:51:32 +0530
Message-Id: <20230523052132.1213038-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230523004455.1206533-3-suraj.kandpal@intel.com>
References: <20230523004455.1206533-3-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/3] drm/i915/hdcp: Move away from master
 naming to arbiter
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rename variables to move away from master convention to
arbiter
%s/hdcp.master/hdcp.arbiter
%s/i915_hdcp_master/i915_hdcp_arbiter
%s/comp_master/comp_arbiter

--v2
- delete i915_hdcp_comp_master redundant declaration [Chaitanya]
- use %s/foo/bar/ format in commit message to show changes [Chaitanya]

--v3
- replace i915_hdcp_comp_master declaration with i915_hdcp_arbiter
to avoid any compile fail with old compilers [Chaitanya]

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  4 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 52 +++++++++----------
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 12 ++---
 drivers/misc/mei/hdcp/mei_hdcp.c              | 26 +++++-----
 include/drm/i915_hdcp_interface.h             |  4 +-
 5 files changed, 49 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index e36f88a39b86..23957d80efe8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -30,7 +30,7 @@ struct drm_i915_private;
 struct drm_property;
 struct drm_property_blob;
 struct i915_audio_component;
-struct i915_hdcp_comp_master;
+struct i915_hdcp_arbiter;
 struct intel_atomic_state;
 struct intel_audio_funcs;
 struct intel_bios_encoder_data;
@@ -395,7 +395,7 @@ struct intel_display {
 	} gmbus;
 
 	struct {
-		struct i915_hdcp_master *master;
+		struct i915_hdcp_arbiter *arbiter;
 		bool comp_added;
 
 		/*
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 19c0b779e435..7d43845d5157 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -183,7 +183,7 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 
 	/* MEI/GSC interface is solid depending on which is used */
 	mutex_lock(&i915->display.hdcp.comp_mutex);
-	if (!i915->display.hdcp.comp_added ||  !i915->display.hdcp.master) {
+	if (!i915->display.hdcp.comp_added ||  !i915->display.hdcp.arbiter) {
 		mutex_unlock(&i915->display.hdcp.comp_mutex);
 		return false;
 	}
@@ -1114,11 +1114,11 @@ hdcp2_prepare_ake_init(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct i915_hdcp_master *arbiter;
+	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
 	mutex_lock(&i915->display.hdcp.comp_mutex);
-	arbiter = i915->display.hdcp.master;
+	arbiter = i915->display.hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
 		mutex_unlock(&i915->display.hdcp.comp_mutex);
@@ -1144,11 +1144,11 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct i915_hdcp_master *arbiter;
+	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
 	mutex_lock(&i915->display.hdcp.comp_mutex);
-	arbiter = i915->display.hdcp.master;
+	arbiter = i915->display.hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
 		mutex_unlock(&i915->display.hdcp.comp_mutex);
@@ -1172,11 +1172,11 @@ static int hdcp2_verify_hprime(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct i915_hdcp_master *arbiter;
+	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
 	mutex_lock(&i915->display.hdcp.comp_mutex);
-	arbiter = i915->display.hdcp.master;
+	arbiter = i915->display.hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
 		mutex_unlock(&i915->display.hdcp.comp_mutex);
@@ -1198,11 +1198,11 @@ hdcp2_store_pairing_info(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct i915_hdcp_master *arbiter;
+	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
 	mutex_lock(&i915->display.hdcp.comp_mutex);
-	arbiter = i915->display.hdcp.master;
+	arbiter = i915->display.hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
 		mutex_unlock(&i915->display.hdcp.comp_mutex);
@@ -1225,11 +1225,11 @@ hdcp2_prepare_lc_init(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct i915_hdcp_master *arbiter;
+	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
 	mutex_lock(&i915->display.hdcp.comp_mutex);
-	arbiter = i915->display.hdcp.master;
+	arbiter = i915->display.hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
 		mutex_unlock(&i915->display.hdcp.comp_mutex);
@@ -1252,11 +1252,11 @@ hdcp2_verify_lprime(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct i915_hdcp_master *arbiter;
+	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
 	mutex_lock(&i915->display.hdcp.comp_mutex);
-	arbiter = i915->display.hdcp.master;
+	arbiter = i915->display.hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
 		mutex_unlock(&i915->display.hdcp.comp_mutex);
@@ -1278,11 +1278,11 @@ static int hdcp2_prepare_skey(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct i915_hdcp_master *arbiter;
+	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
 	mutex_lock(&i915->display.hdcp.comp_mutex);
-	arbiter = i915->display.hdcp.master;
+	arbiter = i915->display.hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
 		mutex_unlock(&i915->display.hdcp.comp_mutex);
@@ -1307,11 +1307,11 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct i915_hdcp_master *arbiter;
+	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
 	mutex_lock(&i915->display.hdcp.comp_mutex);
-	arbiter = i915->display.hdcp.master;
+	arbiter = i915->display.hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
 		mutex_unlock(&i915->display.hdcp.comp_mutex);
@@ -1337,11 +1337,11 @@ hdcp2_verify_mprime(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct i915_hdcp_master *arbiter;
+	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
 	mutex_lock(&i915->display.hdcp.comp_mutex);
-	arbiter = i915->display.hdcp.master;
+	arbiter = i915->display.hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
 		mutex_unlock(&i915->display.hdcp.comp_mutex);
@@ -1361,11 +1361,11 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct i915_hdcp_master *arbiter;
+	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
 	mutex_lock(&i915->display.hdcp.comp_mutex);
-	arbiter = i915->display.hdcp.master;
+	arbiter = i915->display.hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
 		mutex_unlock(&i915->display.hdcp.comp_mutex);
@@ -1385,11 +1385,11 @@ static int hdcp2_close_session(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct i915_hdcp_master *arbiter;
+	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
 	mutex_lock(&i915->display.hdcp.comp_mutex);
-	arbiter = i915->display.hdcp.master;
+	arbiter = i915->display.hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
 		mutex_unlock(&i915->display.hdcp.comp_mutex);
@@ -2109,8 +2109,8 @@ static int i915_hdcp_component_bind(struct device *i915_kdev,
 
 	drm_dbg(&i915->drm, "I915 HDCP comp bind\n");
 	mutex_lock(&i915->display.hdcp.comp_mutex);
-	i915->display.hdcp.master = (struct i915_hdcp_master *)data;
-	i915->display.hdcp.master->hdcp_dev = mei_kdev;
+	i915->display.hdcp.arbiter = (struct i915_hdcp_arbiter *)data;
+	i915->display.hdcp.arbiter->hdcp_dev = mei_kdev;
 	mutex_unlock(&i915->display.hdcp.comp_mutex);
 
 	return 0;
@@ -2123,7 +2123,7 @@ static void i915_hdcp_component_unbind(struct device *i915_kdev,
 
 	drm_dbg(&i915->drm, "I915 HDCP comp unbind\n");
 	mutex_lock(&i915->display.hdcp.comp_mutex);
-	i915->display.hdcp.master = NULL;
+	i915->display.hdcp.arbiter = NULL;
 	mutex_unlock(&i915->display.hdcp.comp_mutex);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 4056bb2323ca..62e7bf0e1035 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -697,17 +697,17 @@ static void intel_hdcp_gsc_free_message(struct drm_i915_private *i915)
 
 int intel_hdcp_gsc_init(struct drm_i915_private *i915)
 {
-	struct i915_hdcp_master *data;
+	struct i915_hdcp_arbiter *data;
 	int ret;
 
-	data = kzalloc(sizeof(struct i915_hdcp_master), GFP_KERNEL);
+	data = kzalloc(sizeof(struct i915_hdcp_arbiter), GFP_KERNEL);
 	if (!data)
 		return -ENOMEM;
 
 	mutex_lock(&i915->display.hdcp.comp_mutex);
-	i915->display.hdcp.master = data;
-	i915->display.hdcp.master->hdcp_dev = i915->drm.dev;
-	i915->display.hdcp.master->ops = &gsc_hdcp_ops;
+	i915->display.hdcp.arbiter = data;
+	i915->display.hdcp.arbiter->hdcp_dev = i915->drm.dev;
+	i915->display.hdcp.arbiter->ops = &gsc_hdcp_ops;
 	ret = intel_hdcp_gsc_hdcp2_init(i915);
 	mutex_unlock(&i915->display.hdcp.comp_mutex);
 
@@ -717,7 +717,7 @@ int intel_hdcp_gsc_init(struct drm_i915_private *i915)
 void intel_hdcp_gsc_fini(struct drm_i915_private *i915)
 {
 	intel_hdcp_gsc_free_message(i915);
-	kfree(i915->display.hdcp.master);
+	kfree(i915->display.hdcp.arbiter);
 }
 
 static int intel_gsc_send_sync(struct drm_i915_private *i915,
diff --git a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei_hdcp.c
index 85cbfc3413ee..51359cc5ece9 100644
--- a/drivers/misc/mei/hdcp/mei_hdcp.c
+++ b/drivers/misc/mei/hdcp/mei_hdcp.c
@@ -735,13 +735,13 @@ static const struct i915_hdcp_ops mei_hdcp_ops = {
 static int mei_component_master_bind(struct device *dev)
 {
 	struct mei_cl_device *cldev = to_mei_cl_device(dev);
-	struct i915_hdcp_master *comp_master = mei_cldev_get_drvdata(cldev);
+	struct i915_hdcp_arbiter *comp_arbiter = mei_cldev_get_drvdata(cldev);
 	int ret;
 
 	dev_dbg(dev, "%s\n", __func__);
-	comp_master->ops = &mei_hdcp_ops;
-	comp_master->hdcp_dev = dev;
-	ret = component_bind_all(dev, comp_master);
+	comp_arbiter->ops = &mei_hdcp_ops;
+	comp_arbiter->hdcp_dev = dev;
+	ret = component_bind_all(dev, comp_arbiter);
 	if (ret < 0)
 		return ret;
 
@@ -751,10 +751,10 @@ static int mei_component_master_bind(struct device *dev)
 static void mei_component_master_unbind(struct device *dev)
 {
 	struct mei_cl_device *cldev = to_mei_cl_device(dev);
-	struct i915_hdcp_master *comp_master = mei_cldev_get_drvdata(cldev);
+	struct i915_hdcp_arbiter *comp_arbiter = mei_cldev_get_drvdata(cldev);
 
 	dev_dbg(dev, "%s\n", __func__);
-	component_unbind_all(dev, comp_master);
+	component_unbind_all(dev, comp_arbiter);
 }
 
 static const struct component_master_ops mei_component_master_ops = {
@@ -799,7 +799,7 @@ static int mei_hdcp_component_match(struct device *dev, int subcomponent,
 static int mei_hdcp_probe(struct mei_cl_device *cldev,
 			  const struct mei_cl_device_id *id)
 {
-	struct i915_hdcp_master *comp_master;
+	struct i915_hdcp_arbiter *comp_arbiter;
 	struct component_match *master_match;
 	int ret;
 
@@ -809,8 +809,8 @@ static int mei_hdcp_probe(struct mei_cl_device *cldev,
 		goto enable_err_exit;
 	}
 
-	comp_master = kzalloc(sizeof(*comp_master), GFP_KERNEL);
-	if (!comp_master) {
+	comp_arbiter = kzalloc(sizeof(*comp_arbiter), GFP_KERNEL);
+	if (!comp_arbiter) {
 		ret = -ENOMEM;
 		goto err_exit;
 	}
@@ -823,7 +823,7 @@ static int mei_hdcp_probe(struct mei_cl_device *cldev,
 		goto err_exit;
 	}
 
-	mei_cldev_set_drvdata(cldev, comp_master);
+	mei_cldev_set_drvdata(cldev, comp_arbiter);
 	ret = component_master_add_with_match(&cldev->dev,
 					      &mei_component_master_ops,
 					      master_match);
@@ -836,7 +836,7 @@ static int mei_hdcp_probe(struct mei_cl_device *cldev,
 
 err_exit:
 	mei_cldev_set_drvdata(cldev, NULL);
-	kfree(comp_master);
+	kfree(comp_arbiter);
 	mei_cldev_disable(cldev);
 enable_err_exit:
 	return ret;
@@ -844,11 +844,11 @@ static int mei_hdcp_probe(struct mei_cl_device *cldev,
 
 static void mei_hdcp_remove(struct mei_cl_device *cldev)
 {
-	struct i915_hdcp_master *comp_master = mei_cldev_get_drvdata(cldev);
+	struct i915_hdcp_arbiter *comp_arbiter = mei_cldev_get_drvdata(cldev);
 	int ret;
 
 	component_master_del(&cldev->dev, &mei_component_master_ops);
-	kfree(comp_master);
+	kfree(comp_arbiter);
 	mei_cldev_set_drvdata(cldev, NULL);
 
 	ret = mei_cldev_disable(cldev);
diff --git a/include/drm/i915_hdcp_interface.h b/include/drm/i915_hdcp_interface.h
index 2059b066f8a1..4c9c8167c2d5 100644
--- a/include/drm/i915_hdcp_interface.h
+++ b/include/drm/i915_hdcp_interface.h
@@ -168,12 +168,12 @@ struct i915_hdcp_ops {
 };
 
 /**
- * struct i915_hdcp_master - Used for communication between i915
+ * struct i915_hdcp_arbiter - Used for communication between i915
  * and hdcp drivers for the HDCP2.2 services
  * @hdcp_dev: device that provide the HDCP2.2 service from MEI Bus.
  * @hdcp_ops: Ops implemented by hdcp driver or intel_hdcp_gsc , used by i915 driver.
  */
-struct i915_hdcp_master {
+struct i915_hdcp_arbiter {
 	struct device *hdcp_dev;
 	const struct i915_hdcp_ops *ops;
 
-- 
2.25.1

