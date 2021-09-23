Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBE8415916
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 09:35:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5474C6ECFA;
	Thu, 23 Sep 2021 07:34:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08D686ECF0
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 07:34:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="203282505"
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="203282505"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 00:34:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="558167421"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga002.fm.intel.com with ESMTP; 23 Sep 2021 00:34:57 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vitaly Lubart <vitaly.lubart@intel.com>,
 Tomas Winkler <tomas.winkler@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Thu, 23 Sep 2021 00:35:14 -0700
Message-Id: <20210923073529.1058204-3-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210923073529.1058204-1-alan.previn.teres.alexis@intel.com>
References: <20210923073529.1058204-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v12 02/17] mei: pxp: export pavp client to me
 client bus
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

From: Vitaly Lubart <vitaly.lubart@intel.com>

Export PAVP client to work with i915 driver,
for binding it uses kernel component framework.

v2:drop debug prints, refactor match code to match mei_hdcp (Tomas)

Signed-off-by: Vitaly Lubart <vitaly.lubart@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/misc/mei/Kconfig       |   2 +
 drivers/misc/mei/Makefile      |   1 +
 drivers/misc/mei/pxp/Kconfig   |  13 ++
 drivers/misc/mei/pxp/Makefile  |   7 +
 drivers/misc/mei/pxp/mei_pxp.c | 229 +++++++++++++++++++++++++++++++++
 drivers/misc/mei/pxp/mei_pxp.h |  18 +++
 6 files changed, 270 insertions(+)
 create mode 100644 drivers/misc/mei/pxp/Kconfig
 create mode 100644 drivers/misc/mei/pxp/Makefile
 create mode 100644 drivers/misc/mei/pxp/mei_pxp.c
 create mode 100644 drivers/misc/mei/pxp/mei_pxp.h

diff --git a/drivers/misc/mei/Kconfig b/drivers/misc/mei/Kconfig
index f5fd5b786607..0e0bcd0da852 100644
--- a/drivers/misc/mei/Kconfig
+++ b/drivers/misc/mei/Kconfig
@@ -47,3 +47,5 @@ config INTEL_MEI_TXE
 	  Intel Bay Trail
 
 source "drivers/misc/mei/hdcp/Kconfig"
+source "drivers/misc/mei/pxp/Kconfig"
+
diff --git a/drivers/misc/mei/Makefile b/drivers/misc/mei/Makefile
index f1c76f7ee804..d8e5165917f2 100644
--- a/drivers/misc/mei/Makefile
+++ b/drivers/misc/mei/Makefile
@@ -26,3 +26,4 @@ mei-$(CONFIG_EVENT_TRACING) += mei-trace.o
 CFLAGS_mei-trace.o = -I$(src)
 
 obj-$(CONFIG_INTEL_MEI_HDCP) += hdcp/
+obj-$(CONFIG_INTEL_MEI_PXP) += pxp/
diff --git a/drivers/misc/mei/pxp/Kconfig b/drivers/misc/mei/pxp/Kconfig
new file mode 100644
index 000000000000..4029b96afc04
--- /dev/null
+++ b/drivers/misc/mei/pxp/Kconfig
@@ -0,0 +1,13 @@
+
+# SPDX-License-Identifier: GPL-2.0
+# Copyright (c) 2020, Intel Corporation. All rights reserved.
+#
+config INTEL_MEI_PXP
+	tristate "Intel PXP services of ME Interface"
+	select INTEL_MEI_ME
+	depends on DRM_I915
+	help
+	  MEI Support for PXP Services on Intel platforms.
+
+	  Enables the ME FW services required for PXP support through
+	  I915 display driver of Intel.
diff --git a/drivers/misc/mei/pxp/Makefile b/drivers/misc/mei/pxp/Makefile
new file mode 100644
index 000000000000..0329950d5794
--- /dev/null
+++ b/drivers/misc/mei/pxp/Makefile
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# Copyright (c) 2020, Intel Corporation. All rights reserved.
+#
+# Makefile - PXP client driver for Intel MEI Bus Driver.
+
+obj-$(CONFIG_INTEL_MEI_PXP) += mei_pxp.o
diff --git a/drivers/misc/mei/pxp/mei_pxp.c b/drivers/misc/mei/pxp/mei_pxp.c
new file mode 100644
index 000000000000..f7380d387bab
--- /dev/null
+++ b/drivers/misc/mei/pxp/mei_pxp.c
@@ -0,0 +1,229 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright © 2020 - 2021 Intel Corporation
+ */
+
+/**
+ * DOC: MEI_PXP Client Driver
+ *
+ * The mei_pxp driver acts as a translation layer between PXP
+ * protocol  implementer (I915) and ME FW by translating PXP
+ * negotiation messages to ME FW command payloads and vice versa.
+ */
+
+#include <linux/module.h>
+#include <linux/slab.h>
+#include <linux/uuid.h>
+#include <linux/mei_cl_bus.h>
+#include <linux/component.h>
+#include <drm/drm_connector.h>
+#include <drm/i915_component.h>
+#include <drm/i915_pxp_tee_interface.h>
+
+#include "mei_pxp.h"
+
+/**
+ * mei_pxp_send_message() - Sends a PXP message to ME FW.
+ * @dev: device corresponding to the mei_cl_device
+ * @message: a message buffer to send
+ * @size: size of the message
+ * Return: 0 on Success, <0 on Failure
+ */
+static int
+mei_pxp_send_message(struct device *dev, const void *message, size_t size)
+{
+	struct mei_cl_device *cldev;
+	ssize_t byte;
+
+	if (!dev || !message)
+		return -EINVAL;
+
+	cldev = to_mei_cl_device(dev);
+
+	/* temporary drop const qualifier till the API is fixed */
+	byte = mei_cldev_send(cldev, (u8 *)message, size);
+	if (byte < 0) {
+		dev_dbg(dev, "mei_cldev_send failed. %zd\n", byte);
+		return byte;
+	}
+
+	return 0;
+}
+
+/**
+ * mei_pxp_receive_message() - Receives a PXP message from ME FW.
+ * @dev: device corresponding to the mei_cl_device
+ * @buffer: a message buffer to contain the received message
+ * @size: size of the buffer
+ * Return: bytes sent on Success, <0 on Failure
+ */
+static int
+mei_pxp_receive_message(struct device *dev, void *buffer, size_t size)
+{
+	struct mei_cl_device *cldev;
+	ssize_t byte;
+
+	if (!dev || !buffer)
+		return -EINVAL;
+
+	cldev = to_mei_cl_device(dev);
+
+	byte = mei_cldev_recv(cldev, buffer, size);
+	if (byte < 0) {
+		dev_dbg(dev, "mei_cldev_recv failed. %zd\n", byte);
+		return byte;
+	}
+
+	return byte;
+}
+
+static const struct i915_pxp_component_ops mei_pxp_ops = {
+	.owner = THIS_MODULE,
+	.send = mei_pxp_send_message,
+	.recv = mei_pxp_receive_message,
+};
+
+static int mei_component_master_bind(struct device *dev)
+{
+	struct mei_cl_device *cldev = to_mei_cl_device(dev);
+	struct i915_pxp_component *comp_master = mei_cldev_get_drvdata(cldev);
+	int ret;
+
+	comp_master->ops = &mei_pxp_ops;
+	comp_master->tee_dev = dev;
+	ret = component_bind_all(dev, comp_master);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static void mei_component_master_unbind(struct device *dev)
+{
+	struct mei_cl_device *cldev = to_mei_cl_device(dev);
+	struct i915_pxp_component *comp_master = mei_cldev_get_drvdata(cldev);
+
+	component_unbind_all(dev, comp_master);
+}
+
+static const struct component_master_ops mei_component_master_ops = {
+	.bind = mei_component_master_bind,
+	.unbind = mei_component_master_unbind,
+};
+
+/**
+ * mei_pxp_component_match - compare function for matching mei pxp.
+ *
+ *    The function checks if the driver is i915, the subcomponent is PXP
+ *    and the grand parent of pxp and the parent of i915 are the same
+ *    PCH device.
+ *
+ * @dev: master device
+ * @subcomponent: subcomponent to match (I915_COMPONENT_PXP)
+ * @data: compare data (mei pxp device)
+ *
+ * Return:
+ * * 1 - if components match
+ * * 0 - otherwise
+ */
+static int mei_pxp_component_match(struct device *dev, int subcomponent,
+				   void *data)
+{
+	struct device *base = data;
+
+	if (strcmp(dev->driver->name, "i915") ||
+	    subcomponent != I915_COMPONENT_PXP)
+		return 0;
+
+	base = base->parent;
+	if (!base)
+		return 0;
+
+	base = base->parent;
+	dev = dev->parent;
+
+	return (base && dev && dev == base);
+}
+
+static int mei_pxp_probe(struct mei_cl_device *cldev,
+			 const struct mei_cl_device_id *id)
+{
+	struct i915_pxp_component *comp_master;
+	struct component_match *master_match;
+	int ret;
+
+	ret = mei_cldev_enable(cldev);
+	if (ret < 0) {
+		dev_err(&cldev->dev, "mei_cldev_enable Failed. %d\n", ret);
+		goto enable_err_exit;
+	}
+
+	comp_master = kzalloc(sizeof(*comp_master), GFP_KERNEL);
+	if (!comp_master) {
+		ret = -ENOMEM;
+		goto err_exit;
+	}
+
+	master_match = NULL;
+	component_match_add_typed(&cldev->dev, &master_match,
+				  mei_pxp_component_match, &cldev->dev);
+	if (IS_ERR_OR_NULL(master_match)) {
+		ret = -ENOMEM;
+		goto err_exit;
+	}
+
+	mei_cldev_set_drvdata(cldev, comp_master);
+	ret = component_master_add_with_match(&cldev->dev,
+					      &mei_component_master_ops,
+					      master_match);
+	if (ret < 0) {
+		dev_err(&cldev->dev, "Master comp add failed %d\n", ret);
+		goto err_exit;
+	}
+
+	return 0;
+
+err_exit:
+	mei_cldev_set_drvdata(cldev, NULL);
+	kfree(comp_master);
+	mei_cldev_disable(cldev);
+enable_err_exit:
+	return ret;
+}
+
+static void mei_pxp_remove(struct mei_cl_device *cldev)
+{
+	struct i915_pxp_component *comp_master = mei_cldev_get_drvdata(cldev);
+	int ret;
+
+	component_master_del(&cldev->dev, &mei_component_master_ops);
+	kfree(comp_master);
+	mei_cldev_set_drvdata(cldev, NULL);
+
+	ret = mei_cldev_disable(cldev);
+	if (ret)
+		dev_warn(&cldev->dev, "mei_cldev_disable() failed\n");
+}
+
+/* fbf6fcf1-96cf-4e2e-a6a6-1bab8cbe36b1 : PAVP GUID*/
+#define MEI_GUID_PXP GUID_INIT(0xfbf6fcf1, 0x96cf, 0x4e2e, 0xA6, \
+			       0xa6, 0x1b, 0xab, 0x8c, 0xbe, 0x36, 0xb1)
+
+static struct mei_cl_device_id mei_pxp_tbl[] = {
+	{ .uuid = MEI_GUID_PXP, .version = MEI_CL_VERSION_ANY },
+	{ }
+};
+MODULE_DEVICE_TABLE(mei, mei_pxp_tbl);
+
+static struct mei_cl_driver mei_pxp_driver = {
+	.id_table = mei_pxp_tbl,
+	.name = KBUILD_MODNAME,
+	.probe = mei_pxp_probe,
+	.remove	= mei_pxp_remove,
+};
+
+module_mei_cl_driver(mei_pxp_driver);
+
+MODULE_AUTHOR("Intel Corporation");
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("MEI PXP");
diff --git a/drivers/misc/mei/pxp/mei_pxp.h b/drivers/misc/mei/pxp/mei_pxp.h
new file mode 100644
index 000000000000..e7b15373fefd
--- /dev/null
+++ b/drivers/misc/mei/pxp/mei_pxp.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright © 2020 Intel Corporation
+ *
+ * Authors:
+ * Vitaly Lubart <vitaly.lubart@intel.com>
+ */
+
+#ifndef __MEI_PXP_H__
+#define __MEI_PXP_H__
+
+/* me_pxp_status: Enumeration of all PXP Status Codes */
+enum me_pxp_status {
+	ME_PXP_STATUS_SUCCESS			= 0x0000,
+
+};
+
+#endif /* __MEI_PXP_H__ */
-- 
2.25.1

