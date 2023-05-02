Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAD06F4875
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 18:39:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48D7110E2B5;
	Tue,  2 May 2023 16:39:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7C3F10E00D;
 Tue,  2 May 2023 16:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683045557; x=1714581557;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SRWPc39P/F7CxcChOQl71NJKrB2els01hKkRpRxwaJw=;
 b=THTHAwv4ZqiNH1iCkh3Z9NVTpbMh48yClZYkpWki+YYHgdH1hRv2Eeqv
 iUduijck01EspkOgdNvmW0eraOv5nr0IhxNg9ez8xDBAH0U6r+DD4E4ne
 adtBzuac+mo/uY1zstHQ1T3Z1mSaOcQjdCx3bhgz+ZtSkTUdPA9RsJnc3
 sCX4hRKLKDBdiKeTgR2QdKFxwz3qiC/9yGElylSFdGad8MqG91vTJk/RM
 3FkuKmUVHewzKlW8eoxf6/bSbVaNEVAFu1aEEYjzzBG0iZ3iKPiIsk+uE
 OdLJa0rtI+OfvsP6/w3urWvrKTdQIatFjOzjIQ2NJhK35Gg/9gTQ9yMZs w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="411595955"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="411595955"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 09:39:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="1026160920"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="1026160920"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 09:39:07 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 09:38:52 -0700
Message-Id: <20230502163854.317653-3-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230502163854.317653-1-daniele.ceraolospurio@intel.com>
References: <20230502163854.317653-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/4] mei: gsc_proxy: add gsc proxy driver
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 dri-devel@lists.freedesktop.org, Tomas Winkler <tomas.winkler@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Alexander Usyskin <alexander.usyskin@intel.com>

Add GSC proxy driver. It to allows messaging between GSC component
on Intel graphics card and CSE device.

Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---

v2: re-order includes, drop reference to "on board" card in commit
message and comments.

 drivers/misc/mei/Kconfig                   |   2 +-
 drivers/misc/mei/Makefile                  |   1 +
 drivers/misc/mei/gsc_proxy/Kconfig         |  14 ++
 drivers/misc/mei/gsc_proxy/Makefile        |   7 +
 drivers/misc/mei/gsc_proxy/mei_gsc_proxy.c | 208 +++++++++++++++++++++
 5 files changed, 231 insertions(+), 1 deletion(-)
 create mode 100644 drivers/misc/mei/gsc_proxy/Kconfig
 create mode 100644 drivers/misc/mei/gsc_proxy/Makefile
 create mode 100644 drivers/misc/mei/gsc_proxy/mei_gsc_proxy.c

diff --git a/drivers/misc/mei/Kconfig b/drivers/misc/mei/Kconfig
index d21486d69df2..37db142de413 100644
--- a/drivers/misc/mei/Kconfig
+++ b/drivers/misc/mei/Kconfig
@@ -62,4 +62,4 @@ config INTEL_MEI_GSC
 
 source "drivers/misc/mei/hdcp/Kconfig"
 source "drivers/misc/mei/pxp/Kconfig"
-
+source "drivers/misc/mei/gsc_proxy/Kconfig"
diff --git a/drivers/misc/mei/Makefile b/drivers/misc/mei/Makefile
index fb740d754900..14aee253ae48 100644
--- a/drivers/misc/mei/Makefile
+++ b/drivers/misc/mei/Makefile
@@ -30,3 +30,4 @@ CFLAGS_mei-trace.o = -I$(src)
 
 obj-$(CONFIG_INTEL_MEI_HDCP) += hdcp/
 obj-$(CONFIG_INTEL_MEI_PXP) += pxp/
+obj-$(CONFIG_INTEL_MEI_GSC_PROXY) += gsc_proxy/
diff --git a/drivers/misc/mei/gsc_proxy/Kconfig b/drivers/misc/mei/gsc_proxy/Kconfig
new file mode 100644
index 000000000000..5f68d9f3d691
--- /dev/null
+++ b/drivers/misc/mei/gsc_proxy/Kconfig
@@ -0,0 +1,14 @@
+# SPDX-License-Identifier: GPL-2.0
+# Copyright (c) 2022-2023, Intel Corporation. All rights reserved.
+#
+config INTEL_MEI_GSC_PROXY
+	tristate "Intel GSC Proxy services of ME Interface"
+	select INTEL_MEI_ME
+	depends on DRM_I915
+	help
+         MEI Support for GSC Proxy Services on Intel platforms.
+
+         MEI GSC proxy enables messaging between GSC service on
+         Intel graphics card and services on CSE (MEI) firmware
+         residing SoC or PCH.
+
diff --git a/drivers/misc/mei/gsc_proxy/Makefile b/drivers/misc/mei/gsc_proxy/Makefile
new file mode 100644
index 000000000000..358847e9aaa9
--- /dev/null
+++ b/drivers/misc/mei/gsc_proxy/Makefile
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# Copyright (c) 2022-2023, Intel Corporation. All rights reserved.
+#
+# Makefile - GSC Proxy client driver for Intel MEI Bus Driver.
+
+obj-$(CONFIG_INTEL_MEI_GSC_PROXY) += mei_gsc_proxy.o
diff --git a/drivers/misc/mei/gsc_proxy/mei_gsc_proxy.c b/drivers/misc/mei/gsc_proxy/mei_gsc_proxy.c
new file mode 100644
index 000000000000..be52b113aea9
--- /dev/null
+++ b/drivers/misc/mei/gsc_proxy/mei_gsc_proxy.c
@@ -0,0 +1,208 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2022-2023 Intel Corporation
+ */
+
+/**
+ * DOC: MEI_GSC_PROXY Client Driver
+ *
+ * The mei_gsc_proxy driver acts as a translation layer between
+ * proxy user (I915) and ME FW by proxying messages to ME FW
+ */
+
+#include <linux/component.h>
+#include <linux/mei_cl_bus.h>
+#include <linux/module.h>
+#include <linux/pci.h>
+#include <linux/slab.h>
+#include <linux/uuid.h>
+#include <drm/drm_connector.h>
+#include <drm/i915_component.h>
+#include <drm/i915_gsc_proxy_mei_interface.h>
+
+/**
+ * mei_gsc_proxy_send - Sends a proxy message to ME FW.
+ * @dev: device corresponding to the mei_cl_device
+ * @buf: a message buffer to send
+ * @size: size of the message
+ * Return: bytes sent on Success, <0 on Failure
+ */
+static int mei_gsc_proxy_send(struct device *dev, const void *buf, size_t size)
+{
+	ssize_t ret;
+
+	if (!dev || !buf)
+		return -EINVAL;
+
+	ret = mei_cldev_send(to_mei_cl_device(dev), buf, size);
+	if (ret < 0)
+		dev_dbg(dev, "mei_cldev_send failed. %zd\n", ret);
+
+	return ret;
+}
+
+/**
+ * mei_gsc_proxy_recv - Receives a proxy message from ME FW.
+ * @dev: device corresponding to the mei_cl_device
+ * @buf: a message buffer to contain the received message
+ * @size: size of the buffer
+ * Return: bytes received on Success, <0 on Failure
+ */
+static int mei_gsc_proxy_recv(struct device *dev, void *buf, size_t size)
+{
+	ssize_t ret;
+
+	if (!dev || !buf)
+		return -EINVAL;
+
+	ret = mei_cldev_recv(to_mei_cl_device(dev), buf, size);
+	if (ret < 0)
+		dev_dbg(dev, "mei_cldev_recv failed. %zd\n", ret);
+
+	return ret;
+}
+
+static const struct i915_gsc_proxy_component_ops mei_gsc_proxy_ops = {
+	.owner = THIS_MODULE,
+	.send = mei_gsc_proxy_send,
+	.recv = mei_gsc_proxy_recv,
+};
+
+static int mei_component_master_bind(struct device *dev)
+{
+	struct mei_cl_device *cldev = to_mei_cl_device(dev);
+	struct i915_gsc_proxy_component *comp_master = mei_cldev_get_drvdata(cldev);
+
+	comp_master->ops = &mei_gsc_proxy_ops;
+	comp_master->mei_dev = dev;
+	return component_bind_all(dev, comp_master);
+}
+
+static void mei_component_master_unbind(struct device *dev)
+{
+	struct mei_cl_device *cldev = to_mei_cl_device(dev);
+	struct i915_gsc_proxy_component *comp_master = mei_cldev_get_drvdata(cldev);
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
+ * mei_gsc_proxy_component_match - compare function for matching mei.
+ *
+ *    The function checks if the device is pci device and
+ *    Intel VGA adapter, the subcomponent is SW Proxy
+ *    and the parent of MEI PCI and the parent of VGA are the same PCH device.
+ *
+ * @dev: master device
+ * @subcomponent: subcomponent to match (I915_COMPONENT_SWPROXY)
+ * @data: compare data (mei pci parent)
+ *
+ * Return:
+ * * 1 - if components match
+ * * 0 - otherwise
+ */
+static int mei_gsc_proxy_component_match(struct device *dev, int subcomponent,
+					 void *data)
+{
+	struct pci_dev *pdev;
+
+	if (!dev_is_pci(dev))
+		return 0;
+
+	pdev = to_pci_dev(dev);
+
+	if (pdev->class != (PCI_CLASS_DISPLAY_VGA << 8) ||
+	    pdev->vendor != PCI_VENDOR_ID_INTEL)
+		return 0;
+
+	if (subcomponent != I915_COMPONENT_GSC_PROXY)
+		return 0;
+
+	return component_compare_dev(dev->parent, ((struct device *)data)->parent);
+}
+
+static int mei_gsc_proxy_probe(struct mei_cl_device *cldev,
+			       const struct mei_cl_device_id *id)
+{
+	struct i915_gsc_proxy_component *comp_master;
+	struct component_match *master_match = NULL;
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
+	component_match_add_typed(&cldev->dev, &master_match,
+				  mei_gsc_proxy_component_match, cldev->dev.parent);
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
+static void mei_gsc_proxy_remove(struct mei_cl_device *cldev)
+{
+	struct i915_gsc_proxy_component *comp_master = mei_cldev_get_drvdata(cldev);
+	int ret;
+
+	component_master_del(&cldev->dev, &mei_component_master_ops);
+	kfree(comp_master);
+	mei_cldev_set_drvdata(cldev, NULL);
+
+	ret = mei_cldev_disable(cldev);
+	if (ret)
+		dev_warn(&cldev->dev, "mei_cldev_disable() failed %d\n", ret);
+}
+
+#define MEI_UUID_GSC_PROXY UUID_LE(0xf73db04, 0x97ab, 0x4125, \
+				   0xb8, 0x93, 0xe9, 0x4, 0xad, 0xd, 0x54, 0x64)
+
+static struct mei_cl_device_id mei_gsc_proxy_tbl[] = {
+	{ .uuid = MEI_UUID_GSC_PROXY, .version = MEI_CL_VERSION_ANY },
+	{ }
+};
+MODULE_DEVICE_TABLE(mei, mei_gsc_proxy_tbl);
+
+static struct mei_cl_driver mei_gsc_proxy_driver = {
+	.id_table = mei_gsc_proxy_tbl,
+	.name = KBUILD_MODNAME,
+	.probe = mei_gsc_proxy_probe,
+	.remove	= mei_gsc_proxy_remove,
+};
+
+module_mei_cl_driver(mei_gsc_proxy_driver);
+
+MODULE_AUTHOR("Intel Corporation");
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("MEI GSC PROXY");
-- 
2.40.0

