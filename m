Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A2D413E84
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 02:15:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29AC76E978;
	Wed, 22 Sep 2021 00:15:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C2DE6E93F
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Sep 2021 00:15:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="220292677"
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="220292677"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 17:15:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="613200241"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga001.fm.intel.com with ESMTP; 21 Sep 2021 17:15:00 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Tue, 21 Sep 2021 17:15:15 -0700
Message-Id: <20210922001531.399533-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210922001531.399533-1-alan.previn.teres.alexis@intel.com>
References: <20210922001531.399533-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v11 01/17] drm/i915/pxp: Define PXP component
 interface
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

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

This will be used for communication between the i915 driver and the mei
one. Defining it in a stand-alone patch to avoid circualr dependedencies
between the patches modifying the 2 drivers.

Split out from an original patch from  Huang, Sean Z

v2: rename the component struct (Rodrigo)

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 include/drm/i915_component.h         |  1 +
 include/drm/i915_pxp_tee_interface.h | 42 ++++++++++++++++++++++++++++
 2 files changed, 43 insertions(+)
 create mode 100644 include/drm/i915_pxp_tee_interface.h

diff --git a/include/drm/i915_component.h b/include/drm/i915_component.h
index 55c3b123581b..c1e2a43d2d1e 100644
--- a/include/drm/i915_component.h
+++ b/include/drm/i915_component.h
@@ -29,6 +29,7 @@
 enum i915_component_type {
 	I915_COMPONENT_AUDIO = 1,
 	I915_COMPONENT_HDCP,
+	I915_COMPONENT_PXP
 };
 
 /* MAX_PORT is the number of port
diff --git a/include/drm/i915_pxp_tee_interface.h b/include/drm/i915_pxp_tee_interface.h
new file mode 100644
index 000000000000..af593ec64469
--- /dev/null
+++ b/include/drm/i915_pxp_tee_interface.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2020 Intel Corporation
+ */
+
+#ifndef _I915_PXP_TEE_INTERFACE_H_
+#define _I915_PXP_TEE_INTERFACE_H_
+
+#include <linux/mutex.h>
+#include <linux/device.h>
+
+/**
+ * struct i915_pxp_component_ops - ops for PXP services.
+ * @owner: Module providing the ops
+ * @send: sends data to PXP
+ * @receive: receives data from PXP
+ */
+struct i915_pxp_component_ops {
+	/**
+	 * @owner: owner of the module provding the ops
+	 */
+	struct module *owner;
+
+	int (*send)(struct device *dev, const void *message, size_t size);
+	int (*recv)(struct device *dev, void *buffer, size_t size);
+};
+
+/**
+ * struct i915_pxp_component - Used for communication between i915 and TEE
+ * drivers for the PXP services
+ * @tee_dev: device that provide the PXP service from TEE Bus.
+ * @pxp_ops: Ops implemented by TEE driver, used by i915 driver.
+ */
+struct i915_pxp_component {
+	struct device *tee_dev;
+	const struct i915_pxp_component_ops *ops;
+
+	/* To protect the above members. */
+	struct mutex mutex;
+};
+
+#endif /* _I915_TEE_PXP_INTERFACE_H_ */
-- 
2.25.1

