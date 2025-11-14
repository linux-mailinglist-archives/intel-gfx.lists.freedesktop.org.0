Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46100C5F32B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 21:14:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E18C610EAF5;
	Fri, 14 Nov 2025 20:14:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cSEyn/Ll";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BCC510E261
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Nov 2025 20:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763151296; x=1794687296;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0g1vMXc0ioeDilr3M3Aw/rjip87V8r2ssHMJACjNFmo=;
 b=cSEyn/LlgwwENnUhYKh3K1T2jl450c5C4O5Za+P85nK44dJ23A+e8oEn
 m8To88md/bWs+AlLy2pZaLEq6L3l+H2s+FB7gNqiA49ldpD2PGvq5oEC7
 DzMWtt19K1vcwHVeh79CxfUHdIO1UUmyvgWHmwf3XBQ/zrHEbNSNWXCqP
 B1Mw9/c1gAVLuT9oJE+V2EzjZcioQBDmVAEv5fAl0zkyTw6wg9ptvMybd
 u/yqgcZ8rJjR6hAf37dOlBYLCBTq5q1wI4trwLuMpHWvXnIJ1uq+piXqs
 /HNe3ZTqUHd8oO33CJPlsB7Lhs7AxCnsRuYSoqxEzz4z1u8+Sc+i6xwd0 g==;
X-CSE-ConnectionGUID: x9qhTrvwQECfXtdAq/S67g==
X-CSE-MsgGUID: segN94F+RQigIsLtXL7uog==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65188078"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65188078"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 12:14:56 -0800
X-CSE-ConnectionGUID: bU+BI0cgQGSpdK4JHQzAIA==
X-CSE-MsgGUID: HiOYdG3ZQUKAPMNShBXmGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="189147997"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 12:14:56 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: gregkh@linuxfoundation.org,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>
Subject: [PATCH v3 1/2] mei: me: Export the PCI ID list
Date: Fri, 14 Nov 2025 12:14:33 -0800
Message-ID: <20251114201431.1135031-5-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251114201431.1135031-4-daniele.ceraolospurio@intel.com>
References: <20251114201431.1135031-4-daniele.ceraolospurio@intel.com>
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
The simplest way to check if the ME device is available is to check the
available devices against the PCI ID list of the mei_me driver. To avoid
duplication, this patch exports the list, so that it can be used directly
from the GFX drivers.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alexander Usyskin <alexander.usyskin@intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/misc/mei/pci-me.c | 12 +++++++++++-
 include/linux/mei_me.h    | 15 +++++++++++++++
 2 files changed, 26 insertions(+), 1 deletion(-)
 create mode 100644 include/linux/mei_me.h

diff --git a/drivers/misc/mei/pci-me.c b/drivers/misc/mei/pci-me.c
index b017ff29dbd1..632756f9da66 100644
--- a/drivers/misc/mei/pci-me.c
+++ b/drivers/misc/mei/pci-me.c
@@ -18,6 +18,7 @@
 #include <linux/pm_runtime.h>
 
 #include <linux/mei.h>
+#include <linux/mei_me.h>
 
 #include "mei_dev.h"
 #include "client.h"
@@ -25,7 +26,7 @@
 #include "hw-me.h"
 
 /* mei_pci_tbl - PCI Device ID Table */
-static const struct pci_device_id mei_me_pci_tbl[] = {
+const struct pci_device_id mei_me_pci_tbl[] = {
 	{MEI_PCI_DEVICE(MEI_DEV_ID_82946GZ, MEI_ME_ICH_CFG)},
 	{MEI_PCI_DEVICE(MEI_DEV_ID_82G35, MEI_ME_ICH_CFG)},
 	{MEI_PCI_DEVICE(MEI_DEV_ID_82Q965, MEI_ME_ICH_CFG)},
@@ -135,6 +136,15 @@ static const struct pci_device_id mei_me_pci_tbl[] = {
 
 MODULE_DEVICE_TABLE(pci, mei_me_pci_tbl);
 
+/*
+ * Other drivers (e.g., i915, xe) interface with the ME device for some of their
+ * features (e.g., PXP, HDCP). However, the ME device can be unplugged via the
+ * pci subsystem or hidden by BIOS/coreboot, so those drivers might want to
+ * check if the device is available before initializing those features. To
+ * allow them to perform such a check, we export the list of ME device IDs.
+ */
+EXPORT_SYMBOL_GPL(mei_me_pci_tbl);
+
 #ifdef CONFIG_PM
 static inline void mei_me_set_pm_domain(struct mei_device *dev);
 static inline void mei_me_unset_pm_domain(struct mei_device *dev);
diff --git a/include/linux/mei_me.h b/include/linux/mei_me.h
new file mode 100644
index 000000000000..48fd913a3d95
--- /dev/null
+++ b/include/linux/mei_me.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2025, Intel Corporation. All rights reserved.
+ */
+
+#ifndef _LINUX_MEI_ME_H
+#define _LINUX_MEI_ME_H
+
+#include <linux/pci.h>
+
+#if IS_ENABLED(CONFIG_INTEL_MEI_ME)
+extern const struct pci_device_id mei_me_pci_tbl[];
+#endif
+
+#endif /* _LINUX_MEI_ME_H */
-- 
2.43.0

