Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F30D35914E2
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 19:36:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CE4D8F0CC;
	Fri, 12 Aug 2022 17:35:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29B928A591
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 17:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660325734; x=1691861734;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UIL7iSYy1TaAz28+Fre2eA+LsX02GG2LjoNBuK5YU+Y=;
 b=LK13n8+BoZ2Ft4kzaK5FkVy2xbpg1Cjpw0phZ7TO7PRZZrPvnObSvNGD
 aUrXLZtOYDvIIxHICXdok5urC2eGBRNAvoUxn+bwR0kSTMWrWYV567wpq
 fy7d/qKZfMkeWBg/YZZII9mlATSgY9CdRQqFsOhJzhAzvRdxyHo+YPlyD
 0+/2k/SjRmBY8pAbF+Js6h+alULEnWW6HNQEnaYMeQ1E8LhBZZl2Wjyl2
 ASosgnWUG7jqfR0ZtHgMAukoFwx9D+QW4ClTJUEcHkbaZKcjlH6i2t5m9
 2L8HOmDfxGgDT9YnD93PARGoKCSdDow+Fch9hSQtaWhO9rnsihkGmcBpb g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10437"; a="292440049"
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="292440049"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 10:35:33 -0700
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="665904234"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 10:35:31 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Aug 2022 23:07:09 +0530
Message-Id: <20220812173715.2398586-2-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220812173715.2398586-1-badal.nilawar@intel.com>
References: <20220812173715.2398586-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/7] drm/i915/hwmon: Add HWMON infrastructure
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
Cc: linux-hwmon@vger.kernel.org, linux@roeck-us.net
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Dale B Stimson <dale.b.stimson@intel.com>

The i915 HWMON module will be used to expose voltage, power and energy
values for dGfx. Here we set up i915 hwmon infrastructure including i915
hwmon registration, basic data structures and functions.

v2:
  - Create HWMON infra patch (Ashutosh)
  - Fixed review comments (Jani)
  - Remove "select HWMON" from i915/Kconfig (Jani)
v3: Use hwm_ prefix for static functions (Ashutosh)

Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Riana Tauro <riana.tauro@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
---
 drivers/gpu/drm/i915/Makefile      |   3 +
 drivers/gpu/drm/i915/i915_driver.c |   7 ++
 drivers/gpu/drm/i915/i915_drv.h    |   2 +
 drivers/gpu/drm/i915/i915_hwmon.c  | 135 +++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_hwmon.h  |  20 +++++
 5 files changed, 167 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/i915_hwmon.c
 create mode 100644 drivers/gpu/drm/i915/i915_hwmon.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 522ef9b4aff3..2b235f747490 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -208,6 +208,9 @@ i915-y += gt/uc/intel_uc.o \
 # graphics system controller (GSC) support
 i915-y += gt/intel_gsc.o
 
+# graphics hardware monitoring (HWMON) support
+i915-$(CONFIG_HWMON) += i915_hwmon.o
+
 # modesetting core code
 i915-y += \
 	display/hsw_ips.o \
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index deb8a8b76965..949908dd7496 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -80,6 +80,7 @@
 #include "i915_drm_client.h"
 #include "i915_drv.h"
 #include "i915_getparam.h"
+#include "i915_hwmon.h"
 #include "i915_ioc32.h"
 #include "i915_ioctl.h"
 #include "i915_irq.h"
@@ -736,6 +737,9 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 
 	intel_gt_driver_register(to_gt(dev_priv));
 
+#ifdef CONFIG_HWMON
+	i915_hwmon_register(dev_priv);
+#endif
 	intel_display_driver_register(dev_priv);
 
 	intel_power_domains_enable(dev_priv);
@@ -762,6 +766,9 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 
 	intel_display_driver_unregister(dev_priv);
 
+#ifdef CONFIG_HWMON
+	i915_hwmon_unregister(dev_priv);
+#endif
 	intel_gt_driver_unregister(to_gt(dev_priv));
 
 	i915_perf_unregister(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 086bbe8945d6..d437d588dec9 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -705,6 +705,8 @@ struct drm_i915_private {
 
 	struct i915_perf perf;
 
+	struct i915_hwmon *hwmon;
+
 	/* Abstract the submission mechanism (legacy ringbuffer or execlists) away */
 	struct intel_gt gt0;
 
diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
new file mode 100644
index 000000000000..5b80a0f024f0
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -0,0 +1,135 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#include <linux/hwmon.h>
+#include <linux/hwmon-sysfs.h>
+#include <linux/types.h>
+
+#include "i915_drv.h"
+#include "i915_hwmon.h"
+#include "intel_mchbar_regs.h"
+
+struct hwm_reg {
+};
+
+struct hwm_drvdata {
+	struct i915_hwmon *hwmon;
+	struct intel_uncore *uncore;
+	struct device *hwmon_dev;
+	char name[12];
+};
+
+struct i915_hwmon {
+	struct hwm_drvdata ddat;
+	struct mutex hwmon_lock;		/* counter overflow logic and rmw */
+	struct hwm_reg rg;
+};
+
+static const struct hwmon_channel_info *hwm_info[] = {
+	NULL
+};
+
+static umode_t
+hwm_is_visible(const void *drvdata, enum hwmon_sensor_types type,
+	       u32 attr, int channel)
+{
+	switch (type) {
+	default:
+		return 0;
+	}
+}
+
+static int
+hwm_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
+	 int channel, long *val)
+{
+	switch (type) {
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
+static int
+hwm_write(struct device *dev, enum hwmon_sensor_types type, u32 attr,
+	  int channel, long val)
+{
+	switch (type) {
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
+static const struct hwmon_ops hwm_ops = {
+	.is_visible = hwm_is_visible,
+	.read = hwm_read,
+	.write = hwm_write,
+};
+
+static const struct hwmon_chip_info hwm_chip_info = {
+	.ops = &hwm_ops,
+	.info = hwm_info,
+};
+
+static void
+hwm_get_preregistration_info(struct drm_i915_private *i915)
+{
+}
+
+void i915_hwmon_register(struct drm_i915_private *i915)
+{
+	struct device *dev = i915->drm.dev;
+	struct i915_hwmon *hwmon;
+	struct device *hwmon_dev;
+	struct hwm_drvdata *ddat;
+
+	/* hwmon is available only for dGfx */
+	if (!IS_DGFX(i915))
+		return;
+
+	hwmon = kzalloc(sizeof(*hwmon), GFP_KERNEL);
+	if (!hwmon)
+		return;
+
+	i915->hwmon = hwmon;
+	mutex_init(&hwmon->hwmon_lock);
+	ddat = &hwmon->ddat;
+
+	ddat->hwmon = hwmon;
+	ddat->uncore = &i915->uncore;
+	snprintf(ddat->name, sizeof(ddat->name), "i915");
+
+	hwm_get_preregistration_info(i915);
+
+	/*  hwmon_dev points to device hwmon<i> */
+	hwmon_dev = hwmon_device_register_with_info(dev, ddat->name,
+						    ddat,
+						    &hwm_chip_info,
+						    NULL);
+	if (IS_ERR(hwmon_dev)) {
+		mutex_destroy(&hwmon->hwmon_lock);
+		i915->hwmon = NULL;
+		kfree(hwmon);
+		return;
+	}
+
+	ddat->hwmon_dev = hwmon_dev;
+}
+
+void i915_hwmon_unregister(struct drm_i915_private *i915)
+{
+	struct i915_hwmon *hwmon;
+	struct hwm_drvdata *ddat;
+
+	hwmon = fetch_and_zero(&i915->hwmon);
+	if (!hwmon)
+		return;
+
+	ddat = &hwmon->ddat;
+	if (ddat->hwmon_dev)
+		hwmon_device_unregister(ddat->hwmon_dev);
+
+	mutex_destroy(&hwmon->hwmon_lock);
+	kfree(hwmon);
+}
diff --git a/drivers/gpu/drm/i915/i915_hwmon.h b/drivers/gpu/drm/i915/i915_hwmon.h
new file mode 100644
index 000000000000..921ae76099d3
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_hwmon.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: MIT */
+
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __I915_HWMON_H__
+#define __I915_HWMON_H__
+
+#include <linux/device.h>
+#include <linux/mutex.h>
+#include <linux/types.h>
+#include "i915_reg.h"
+
+struct drm_i915_private;
+
+void i915_hwmon_register(struct drm_i915_private *i915);
+void i915_hwmon_unregister(struct drm_i915_private *i915);
+
+#endif /* __I915_HWMON_H__ */
-- 
2.25.1

