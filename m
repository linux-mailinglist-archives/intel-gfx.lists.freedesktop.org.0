Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 949F0707A4A
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 08:37:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0AA910E4E1;
	Thu, 18 May 2023 06:37:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F398010E4DC
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 06:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684391872; x=1715927872;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X163ZpZqUiiQTQO5ncrzlMsybfZAfo0bIfnfHBEVbrQ=;
 b=j9BBDWpLiTI49VOrju3dmamQazYBK+9LtjhOch6HG9PVMUw2xczpiDoM
 NfkY5lKyY3cMrpNwSh9wac+9ZDuf+KpAm+OjhO1gLNO5MzRf1EUPxlSGT
 EtkW15Dz7VOkN23gVhFKptfwzSCox4quCYEQEu3MtvgVygDTqvgj7z83K
 Mpu9hNhl+ssiosdWAwIOHEk7V5Slr5fXPbQzzYaCuuwEvegBoEZI3CCR3
 C9YqzsLYgdDsZl7EBs4aey8ddQvQsmRNyekahiff8TpSa2ZnJp9VDblKw
 CRrKnlf/q2SucsgxpvyHhPhfAKFyX2yQ15IF5vxLYTh05k56HvyFxAFim g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="332348474"
X-IronPort-AV: E=Sophos;i="5.99,284,1677571200"; d="scan'208";a="332348474"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 23:37:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="702036884"
X-IronPort-AV: E=Sophos;i="5.99,284,1677571200"; d="scan'208";a="702036884"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga002.jf.intel.com with ESMTP; 17 May 2023 23:37:49 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 May 2023 12:06:11 +0530
Message-Id: <20230518063612.1044370-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230518063612.1044370-1-suraj.kandpal@intel.com>
References: <20230518063612.1044370-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/hdcp: Move away from master naming
 to arbiter
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
Cc: Jani Nikula <jani.nikula@intel.com>, tomas.winkler@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rename variables to move away from master convention to
arbiter
master->arbiter
i915_hdcp_master->i915_hdcp_arbiter
comp_master->comp_arbiter

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 52 +++++++++----------
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 12 ++---
 drivers/misc/mei/hdcp/mei_hdcp.c              | 26 +++++-----
 include/drm/i915_hdcp_interface.h             |  4 +-
 5 files changed, 48 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index e36f88a39b86..57f76321a393 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
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

