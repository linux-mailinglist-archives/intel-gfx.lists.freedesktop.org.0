Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0726AB53AB8
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 19:50:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D31710EB77;
	Thu, 11 Sep 2025 17:50:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GhMB2gVm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8717510EB7A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Sep 2025 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757613053; x=1789149053;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6MWYKI2xiFP2gTOuW4RmBQ6bcLUQSFgwM/tsPS8DVO0=;
 b=GhMB2gVmy8Eo9V5hGcax6PqQZts1WaC6RfUHxuNjN0Oml559EsGngVNY
 85W4cy1FBoy8WW+DrxImch2QmycodPaTZxBs4jcgY6PMOWFNGBqAgUVsM
 lJUi4an3XMnOmLQ1L3jeQGbZjIe7wWelX5apLMHWgEAa+zyix84soldk1
 l4W1tqBsm8vE4tU6SWpPI0BZY21utwEJPp06CJPSKcpIdl02JbI575gYn
 UTZqoCyJjOyiLStdiqo9AKMj0NH0uQkB/kaPFjbB2XFusBsVJle0c/tDL
 4ldU37AxI+zcdWdg+GdjjHQr/OBw9f7UnGN90bMG1DzN6rcd2Emkmx11q w==;
X-CSE-ConnectionGUID: y139WNLERCq6UWUqNY1rlg==
X-CSE-MsgGUID: gDQmaoDNQlamo3+lWOhIBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="60027590"
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="60027590"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 10:50:53 -0700
X-CSE-ConnectionGUID: s3OeMIAgSFmGmP94uWGl8g==
X-CSE-MsgGUID: EVZoHDD1Q4e/D/z4a5Rxlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="174194258"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 10:50:53 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>
Subject: [PATCH v2 1/2] mei: me: Add exported function to get the PCI ID list
Date: Thu, 11 Sep 2025 10:50:23 -0700
Message-ID: <20250911175021.19513-5-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250911175021.19513-4-daniele.ceraolospurio@intel.com>
References: <20250911175021.19513-4-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

The intel GFX drivers (i915/xe) interface with the ME device for some of
their features (e.g. PXP, HDCP) via the component interface. Given that
the ME device can be hidden by BIOS/Coreboot, the GFX drivers need a
way to check if the device is available before attempting to bind the
component, otherwise they'll go ahead and initialize features that will
never work.
The simplest way to check if the device is available is to check the
available devices against the PCI ID list of the mei_me driver. To avoid
duplication, this patch adds an exported function that the GFX driver
can call to obtain the list. Locking around the checks, if required,
is left to the caller.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alexander Usyskin <alexander.usyskin@intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/misc/mei/pci-me.c | 22 ++++++++++++++++++++++
 include/linux/mei_me.h    | 20 ++++++++++++++++++++
 2 files changed, 42 insertions(+)
 create mode 100644 include/linux/mei_me.h

diff --git a/drivers/misc/mei/pci-me.c b/drivers/misc/mei/pci-me.c
index 3f9c60b579ae..147e79b4ae1f 100644
--- a/drivers/misc/mei/pci-me.c
+++ b/drivers/misc/mei/pci-me.c
@@ -18,6 +18,7 @@
 #include <linux/pm_runtime.h>
 
 #include <linux/mei.h>
+#include <linux/mei_me.h>
 
 #include "mei_dev.h"
 #include "client.h"
@@ -133,6 +134,27 @@ static const struct pci_device_id mei_me_pci_tbl[] = {
 
 MODULE_DEVICE_TABLE(pci, mei_me_pci_tbl);
 
+/**
+ * mei_me_get_device_id_table - get the list of ME pci device IDs
+ *
+ * Other drivers (e.g., i915, xe) interface with the ME device for some of their
+ * features (e.g., PXP, HDCP). However, the ME device can be unplugged via the
+ * pci subsystem or hidden by BIOS/coreboot, so those drivers might want to
+ * check if the device is available before initializing those features. This
+ * function offers a way for those drivers to get the list of ME device IDs,
+ * so they can check if one of them is available before attempting to
+ * interface with it. Locking around the availability check, if required,
+ * is left to the caller.
+ *
+ * Return: An array of struct pci_device_id entries containing the IDs of
+ * the ME devices.
+ */
+const struct pci_device_id *mei_me_get_device_id_table(void)
+{
+	return mei_me_pci_tbl;
+}
+EXPORT_SYMBOL_GPL(mei_me_get_device_id_table);
+
 #ifdef CONFIG_PM
 static inline void mei_me_set_pm_domain(struct mei_device *dev);
 static inline void mei_me_unset_pm_domain(struct mei_device *dev);
diff --git a/include/linux/mei_me.h b/include/linux/mei_me.h
new file mode 100644
index 000000000000..f85867030df8
--- /dev/null
+++ b/include/linux/mei_me.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2025, Intel Corporation. All rights reserved.
+ */
+
+#ifndef _LINUX_MEI_ME_H
+#define _LINUX_MEI_ME_H
+
+#include <linux/types.h>
+
+#if IS_ENABLED(CONFIG_INTEL_MEI_ME)
+const struct pci_device_id *mei_me_get_device_id_table(void);
+#else
+static inline const struct pci_device_id *mei_me_get_device_id_table(void)
+{
+	return NULL;
+}
+#endif
+
+#endif /* _LINUX_MEI_ME_H */
-- 
2.43.0

