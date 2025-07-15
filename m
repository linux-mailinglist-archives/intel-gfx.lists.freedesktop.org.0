Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3279FB06998
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 01:00:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3C7310E714;
	Tue, 15 Jul 2025 23:00:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DxVJORTT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D1D210E714
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jul 2025 23:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752620419; x=1784156419;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PY/VyHNK10jtRnbVUTt4Z0/JnCTp37jC9wXg+k+rNQ4=;
 b=DxVJORTT2aFzKAjmt29o1Vtln53obmb5/bb8dKx5z3/lO74ZiFv1Gcz4
 0VXIbkeW6zLXnZzmAJZeajuZ7U5U/lb7uqaXoJ2FnvLHA6vCxrj6GQnBk
 dRdH7MLomEaAc8MJucG1MUM7jurHwxMtIW941eLYzt7l1jSAhLofQGQEC
 xghQTDBiwZXt4ZqRGlnQf//+LxiUfmb6S+cEzy3J6GSYuF3KTrzd6zOU5
 SJQLWep9/h60ZslJUTZaNzTrSAgbGqgBKWXepq5gTTX+Bv5+84SCw7+yU
 3YYdc5+aEziSXkYFjJDAHM8sGaWeYtRVHuJkBQtnQg8tshpn6Iyuwjc4H Q==;
X-CSE-ConnectionGUID: D99nHMNAQW+L6U2HMcWcPw==
X-CSE-MsgGUID: w3P69/AfS/CJM5pCTJvxCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="57462172"
X-IronPort-AV: E=Sophos;i="6.16,314,1744095600"; d="scan'208";a="57462172"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 16:00:18 -0700
X-CSE-ConnectionGUID: dkOp/tNsSFanyqlNY9iDqg==
X-CSE-MsgGUID: W/e37dnkQw2nBApsIe9wlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,314,1744095600"; d="scan'208";a="157150190"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 16:00:17 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] mei: me: Add exported function to check ME device
 availabiliy
Date: Tue, 15 Jul 2025 16:00:01 -0700
Message-ID: <20250715225959.488109-5-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250715225959.488109-4-daniele.ceraolospurio@intel.com>
References: <20250715225959.488109-4-daniele.ceraolospurio@intel.com>
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
the MEI device can be hidden by BIOS/Coreboot, the GFX drivers need a
way to check if the device is available before attempting to bind the
component, otherwise they'll go ahead and initialize features that will
never work.
The simplest way to check if the device is available is to check the
available devices against the PCI ID list of the mei_me driver. To avoid
duplication of the list, the function to do such a check is added to
the mei_me driver and exported so that the GFX driver can call it
directly.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alexander Usyskin <alexander.usyskin@intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/misc/mei/pci-me.c | 17 +++++++++++++++++
 include/linux/mei_me.h    | 20 ++++++++++++++++++++
 2 files changed, 37 insertions(+)
 create mode 100644 include/linux/mei_me.h

diff --git a/drivers/misc/mei/pci-me.c b/drivers/misc/mei/pci-me.c
index 3f9c60b579ae..16e9a11eb286 100644
--- a/drivers/misc/mei/pci-me.c
+++ b/drivers/misc/mei/pci-me.c
@@ -18,6 +18,7 @@
 #include <linux/pm_runtime.h>
 
 #include <linux/mei.h>
+#include <linux/mei_me.h>
 
 #include "mei_dev.h"
 #include "client.h"
@@ -133,6 +134,22 @@ static const struct pci_device_id mei_me_pci_tbl[] = {
 
 MODULE_DEVICE_TABLE(pci, mei_me_pci_tbl);
 
+/**
+ * mei_me_device_present - check if an ME device is present on the system
+ *
+ * Other drivers (e.g., i915, xe) interface with the ME device for some of their
+ * features (e.g., PXP, HDCP). However, the ME device can be hidden by
+ * BIOS/coreboot, so this function offers a way for those drivers to check if
+ * the device is available before attempting to interface with it.
+ *
+ * Return: true if an ME device is available, false otherwise
+ */
+bool mei_me_device_present(void)
+{
+	return pci_dev_present(mei_me_pci_tbl);
+}
+EXPORT_SYMBOL(mei_me_device_present);
+
 #ifdef CONFIG_PM
 static inline void mei_me_set_pm_domain(struct mei_device *dev);
 static inline void mei_me_unset_pm_domain(struct mei_device *dev);
diff --git a/include/linux/mei_me.h b/include/linux/mei_me.h
new file mode 100644
index 000000000000..761ef5970a1e
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
+bool mei_me_device_present(void);
+#else
+static inline bool mei_me_device_present(void)
+{
+	return false;
+}
+#endif
+
+#endif /* _LINUX_MEI_ME_H */
-- 
2.43.0

