Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E73CB68F0A3
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 15:24:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0893B10E793;
	Wed,  8 Feb 2023 14:24:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 968FE10E780
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 14:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675866268; x=1707402268;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gx+h2J07uC09J4mp83Cnkr7HYdM2lGx3Da2TpLhDkc0=;
 b=IC2uFgtiWbpAaZLyuFV5ze6y2Qo17g3BcfBWp/Q/K08M7Uxw4XuUb7zi
 S5TjHMJi+4siBhhbaSlR2HWGKQ5g596S97ZoW004cPzDQ6I2b2dddcROc
 mi9W+ZHsyz8owoD2LodjL7OhPgMWM6mW3zMiXzrS/IrVYTNIJR8vAtjp1
 IaEiSrSl8MHYUWEcMMVybz8CFGU+mZIcvePfhx85J1sC2mg6g7ru/pIXG
 RNPiU55XVef9Ksyo6IpdlUYd+IG22dAMZqVrn4KLBmm9pcik9JB5Q/plO
 bJgmu57qs1YxA8Dxsegyf2ms0aUHCCZvUWmkLrjPyxA7xK6aRZ+BwRppB w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="392201362"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="392201362"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 06:24:18 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="791214076"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="791214076"
Received: from twinkler-lnx.jer.intel.com ([10.12.87.42])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 06:24:16 -0800
From: Tomas Winkler <tomas.winkler@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Wed,  8 Feb 2023 16:23:57 +0200
Message-Id: <20230208142358.1401618-2-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230208142358.1401618-1-tomas.winkler@intel.com>
References: <20230208142358.1401618-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [char-misc-next v3 1/2] drm/i915/mtl: Define GSC Proxy
 component interface
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

GSC Proxy component is used for communication between the
Intel graphics driver and MEI driver.

Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
V2: This patch was missing in the first series
V3: Don't maintain the interface header under mei
    but under drm

 include/drm/i915_component.h               |  3 +-
 include/drm/i915_gsc_proxy_mei_interface.h | 36 ++++++++++++++++++++++
 2 files changed, 38 insertions(+), 1 deletion(-)
 create mode 100644 include/drm/i915_gsc_proxy_mei_interface.h

diff --git a/include/drm/i915_component.h b/include/drm/i915_component.h
index c1e2a43d2d1e..56a84ee1c64c 100644
--- a/include/drm/i915_component.h
+++ b/include/drm/i915_component.h
@@ -29,7 +29,8 @@
 enum i915_component_type {
 	I915_COMPONENT_AUDIO = 1,
 	I915_COMPONENT_HDCP,
-	I915_COMPONENT_PXP
+	I915_COMPONENT_PXP,
+	I915_COMPONENT_GSC_PROXY,
 };
 
 /* MAX_PORT is the number of port
diff --git a/include/drm/i915_gsc_proxy_mei_interface.h b/include/drm/i915_gsc_proxy_mei_interface.h
new file mode 100644
index 000000000000..e817bb316d5c
--- /dev/null
+++ b/include/drm/i915_gsc_proxy_mei_interface.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright (c) 2022-2023 Intel Corporation
+ */
+
+#ifndef _I915_GSC_PROXY_MEI_INTERFACE_H_
+#define _I915_GSC_PROXY_MEI_INTERFACE_H_
+
+#include <linux/mutex.h>
+#include <linux/device.h>
+
+/**
+ * struct i915_gsc_proxy_component_ops - ops for GSC Proxy services.
+ * @owner: Module providing the ops
+ * @send: sends data through GSC proxy
+ * @recv: receives data through GSC proxy
+ */
+struct i915_gsc_proxy_component_ops {
+	struct module *owner;
+
+	int (*send)(struct device *dev, const void *buf, size_t size);
+	int (*recv)(struct device *dev, void *buf, size_t size);
+};
+
+/**
+ * struct i915_gsc_proxy_component - Used for communication between i915 and
+ * MEI drivers for GSC proxy services
+ * @mei_dev: device that provide the GSC proxy service.
+ * @ops: Ops implemented by GSC proxy driver, used by i915 driver.
+ */
+struct i915_gsc_proxy_component {
+	struct device *mei_dev;
+	const struct i915_gsc_proxy_component_ops *ops;
+};
+
+#endif /* _I915_GSC_PROXY_MEI_INTERFACE_H_ */
-- 
2.39.1

