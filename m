Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D835768F0A4
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 15:24:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1256110E79B;
	Wed,  8 Feb 2023 14:24:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D05A610E793
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 14:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675866268; x=1707402268;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7Ce/+0NXhcpo9W0yqjgWZEhDd3HzoOlwxcHLgWOWIIc=;
 b=ED5bDsctvAsZ0m55QoiZO47AMOkcifmYRqfKtXZ/y77zrS7513ZKVyHL
 Poo2ik8ovX4dgRM06hITSQxrizaUoPXSJllcfcwaA4HS861PkC7ifNysz
 HtTr3kzTqSYBDtyCgQFsDEVDb6tzHVeXfNidlzVp7fw8ZVJJ5emerJi4a
 Qh9su2JNKS0/NLGfPyZCc8n1pHAvPWE4PVvo8pk19wQj0edCh349iTYCm
 YSl5QYEdOIc3vem6Y7/hqR4L2zQ0aqYAfb3LMhy/mzoEczSyBnQxS+ejh
 bofbGavbOlAeBBoNszE9AeLY2NvgW4du/Xj77yZK1yw9pZIolEeCiMKGH w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="392201368"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="392201368"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 06:24:21 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="791214084"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="791214084"
Received: from twinkler-lnx.jer.intel.com ([10.12.87.42])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 06:24:18 -0800
From: Tomas Winkler <tomas.winkler@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Wed,  8 Feb 2023 16:23:58 +0200
Message-Id: <20230208142358.1401618-3-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230208142358.1401618-1-tomas.winkler@intel.com>
References: <20230208142358.1401618-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [char-misc-next v3 2/2] mei: gsc_proxy: add gsc proxy
 driver
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
 intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Alexander Usyskin <alexander.usyskin@intel.com>

Add GSC proxy driver. It to allows messaging between GSC component
on Intel on board graphics card and CSE device.

Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
V2: refactor match function
    use device information instead of driver name
    to identify the aggregate device.
V3: Resend

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
index 000000000000..fd45ce8c1df4
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
+         Intel graphics on-board card and services on CSE (MEI)
+         firmware residing SoC or PCH.
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
index 000000000000..953eda1a16fb
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
+#include <linux/module.h>
+#include <linux/pci.h>
+#include <linux/slab.h>
+#include <linux/uuid.h>
+#include <linux/mei_cl_bus.h>
+#include <linux/component.h>
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
2.39.1

