Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 657F43FA2C7
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Aug 2021 03:29:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 569316E9EF;
	Sat, 28 Aug 2021 01:29:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76D916E9F2;
 Sat, 28 Aug 2021 01:29:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10089"; a="303630218"
X-IronPort-AV: E=Sophos;i="5.84,358,1620716400"; d="scan'208";a="303630218"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 18:29:40 -0700
X-IronPort-AV: E=Sophos;i="5.84,358,1620716400"; d="scan'208";a="517537100"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 18:29:40 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Fri, 27 Aug 2021 18:27:22 -0700
Message-Id: <20210828012738.317661-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210828012738.317661-1-daniele.ceraolospurio@intel.com>
References: <20210828012738.317661-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 01/17] drm/i915/pxp: Define PXP component
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

