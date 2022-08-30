Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFE05A60BF
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 12:28:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12D8B10E041;
	Tue, 30 Aug 2022 10:28:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B73610E041
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661855296; x=1693391296;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cbr/1/VIjc6GpaIMl4JdkfmtLeh/PIeXOxziRbNHEdk=;
 b=dwmgY/oM0cINKiZsyQ5hRJMXmPElP9RuWbrB0jp5nKFpKSLzFnBbX4nG
 XW3PeIGO+CwFeAIQj6LpNMwAabrtWVYy/ELLBEqXhIhacXTWceGqo1j4p
 dyfo3QOkr++sMtxbkpMGVa/O7CAneBAeTfNDTtphIJNU9Me7ZwxFKdx8k
 PMX9uwB8gMzPK3zkxe4DCHSmVcs51XDEkAw9x/KrWG1UbPq34Y6SCLV0f
 bRihRxG8kUflYCS55iVN3iWTGhVAD2n25wYO7JdsGuDzFDixRPRhxyYIj
 SGGtgGHuj8DRQcxEdOXukuVhKLsI9GAOfASozfPdPz3MAk72V7huU2Nh5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="381436708"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="381436708"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 03:28:15 -0700
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="939966229"
Received: from amrabet-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.211])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 03:28:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Aug 2022 13:27:57 +0300
Message-Id: <820807f404e548ab365b934d44f01b306eaa28c2.1661855191.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661855191.git.jani.nikula@intel.com>
References: <cover.1661855191.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/gmbus: split out gmbus regs in a
 separate file
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Declutter i915_reg.h, and also observe very few places need the gmbus
register defitions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c    |  1 +
 .../gpu/drm/i915/display/intel_gmbus_regs.h   | 71 +++++++++++++++++++
 drivers/gpu/drm/i915/gvt/edid.c               |  3 +-
 drivers/gpu/drm/i915/i915_reg.h               | 63 ----------------
 4 files changed, 74 insertions(+), 64 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_gmbus_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index c3992b1ca842..3270fcd3f009 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -37,6 +37,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_gmbus.h"
+#include "intel_gmbus_regs.h"
 
 struct intel_gmbus {
 	struct i2c_adapter adapter;
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus_regs.h b/drivers/gpu/drm/i915/display/intel_gmbus_regs.h
new file mode 100644
index 000000000000..4145bdf11972
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_gmbus_regs.h
@@ -0,0 +1,71 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_GMBUS_REGS_H__
+#define __INTEL_GMBUS_REGS_H__
+
+#include "i915_reg_defs.h"
+
+#define GPIO(gpio)		_MMIO(dev_priv->display.gmbus.mmio_base + 0x5010 + \
+				      4 * (gpio))
+
+# define GPIO_CLOCK_DIR_MASK		(1 << 0)
+# define GPIO_CLOCK_DIR_IN		(0 << 1)
+# define GPIO_CLOCK_DIR_OUT		(1 << 1)
+# define GPIO_CLOCK_VAL_MASK		(1 << 2)
+# define GPIO_CLOCK_VAL_OUT		(1 << 3)
+# define GPIO_CLOCK_VAL_IN		(1 << 4)
+# define GPIO_CLOCK_PULLUP_DISABLE	(1 << 5)
+# define GPIO_DATA_DIR_MASK		(1 << 8)
+# define GPIO_DATA_DIR_IN		(0 << 9)
+# define GPIO_DATA_DIR_OUT		(1 << 9)
+# define GPIO_DATA_VAL_MASK		(1 << 10)
+# define GPIO_DATA_VAL_OUT		(1 << 11)
+# define GPIO_DATA_VAL_IN		(1 << 12)
+# define GPIO_DATA_PULLUP_DISABLE	(1 << 13)
+
+#define GMBUS0			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5100) /* clock/port select */
+#define   GMBUS_AKSV_SELECT	(1 << 11)
+#define   GMBUS_RATE_100KHZ	(0 << 8)
+#define   GMBUS_RATE_50KHZ	(1 << 8)
+#define   GMBUS_RATE_400KHZ	(2 << 8) /* reserved on Pineview */
+#define   GMBUS_RATE_1MHZ	(3 << 8) /* reserved on Pineview */
+#define   GMBUS_HOLD_EXT	(1 << 7) /* 300ns hold time, rsvd on Pineview */
+#define   GMBUS_BYTE_CNT_OVERRIDE (1 << 6)
+
+#define GMBUS1			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5104) /* command/status */
+#define   GMBUS_SW_CLR_INT	(1 << 31)
+#define   GMBUS_SW_RDY		(1 << 30)
+#define   GMBUS_ENT		(1 << 29) /* enable timeout */
+#define   GMBUS_CYCLE_NONE	(0 << 25)
+#define   GMBUS_CYCLE_WAIT	(1 << 25)
+#define   GMBUS_CYCLE_INDEX	(2 << 25)
+#define   GMBUS_CYCLE_STOP	(4 << 25)
+#define   GMBUS_BYTE_COUNT_SHIFT 16
+#define   GMBUS_BYTE_COUNT_MAX   256U
+#define   GEN9_GMBUS_BYTE_COUNT_MAX 511U
+#define   GMBUS_SLAVE_INDEX_SHIFT 8
+#define   GMBUS_SLAVE_ADDR_SHIFT 1
+#define   GMBUS_SLAVE_READ	(1 << 0)
+#define   GMBUS_SLAVE_WRITE	(0 << 0)
+#define GMBUS2			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5108) /* status */
+#define   GMBUS_INUSE		(1 << 15)
+#define   GMBUS_HW_WAIT_PHASE	(1 << 14)
+#define   GMBUS_STALL_TIMEOUT	(1 << 13)
+#define   GMBUS_INT		(1 << 12)
+#define   GMBUS_HW_RDY		(1 << 11)
+#define   GMBUS_SATOER		(1 << 10)
+#define   GMBUS_ACTIVE		(1 << 9)
+#define GMBUS3			_MMIO(dev_priv->display.gmbus.mmio_base + 0x510c) /* data buffer bytes 3-0 */
+#define GMBUS4			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5110) /* interrupt mask (Pineview+) */
+#define   GMBUS_SLAVE_TIMEOUT_EN (1 << 4)
+#define   GMBUS_NAK_EN		(1 << 3)
+#define   GMBUS_IDLE_EN		(1 << 2)
+#define   GMBUS_HW_WAIT_EN	(1 << 1)
+#define   GMBUS_HW_RDY_EN	(1 << 0)
+#define GMBUS5			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5120) /* byte index */
+#define   GMBUS_2BYTE_INDEX_EN	(1 << 31)
+
+#endif /* __INTEL_GMBUS_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/gvt/edid.c b/drivers/gpu/drm/i915/gvt/edid.c
index a30ba2d7b7ba..1b509c1a1e33 100644
--- a/drivers/gpu/drm/i915/gvt/edid.c
+++ b/drivers/gpu/drm/i915/gvt/edid.c
@@ -32,9 +32,10 @@
  *
  */
 
+#include "display/intel_gmbus_regs.h"
+#include "gvt.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
-#include "gvt.h"
 
 #define GMBUS1_TOTAL_BYTES_SHIFT 16
 #define GMBUS1_TOTAL_BYTES_MASK 0x1ff
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index adfb279c0782..e8739abcc90e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1461,69 +1461,6 @@
 #define   FBC_REND_NUKE			REG_BIT(2)
 #define   FBC_REND_CACHE_CLEAN		REG_BIT(1)
 
-/*
- * GPIO regs
- */
-#define GPIO(gpio)		_MMIO(dev_priv->display.gmbus.mmio_base + 0x5010 + \
-				      4 * (gpio))
-
-# define GPIO_CLOCK_DIR_MASK		(1 << 0)
-# define GPIO_CLOCK_DIR_IN		(0 << 1)
-# define GPIO_CLOCK_DIR_OUT		(1 << 1)
-# define GPIO_CLOCK_VAL_MASK		(1 << 2)
-# define GPIO_CLOCK_VAL_OUT		(1 << 3)
-# define GPIO_CLOCK_VAL_IN		(1 << 4)
-# define GPIO_CLOCK_PULLUP_DISABLE	(1 << 5)
-# define GPIO_DATA_DIR_MASK		(1 << 8)
-# define GPIO_DATA_DIR_IN		(0 << 9)
-# define GPIO_DATA_DIR_OUT		(1 << 9)
-# define GPIO_DATA_VAL_MASK		(1 << 10)
-# define GPIO_DATA_VAL_OUT		(1 << 11)
-# define GPIO_DATA_VAL_IN		(1 << 12)
-# define GPIO_DATA_PULLUP_DISABLE	(1 << 13)
-
-#define GMBUS0			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5100) /* clock/port select */
-#define   GMBUS_AKSV_SELECT	(1 << 11)
-#define   GMBUS_RATE_100KHZ	(0 << 8)
-#define   GMBUS_RATE_50KHZ	(1 << 8)
-#define   GMBUS_RATE_400KHZ	(2 << 8) /* reserved on Pineview */
-#define   GMBUS_RATE_1MHZ	(3 << 8) /* reserved on Pineview */
-#define   GMBUS_HOLD_EXT	(1 << 7) /* 300ns hold time, rsvd on Pineview */
-#define   GMBUS_BYTE_CNT_OVERRIDE (1 << 6)
-
-#define GMBUS1			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5104) /* command/status */
-#define   GMBUS_SW_CLR_INT	(1 << 31)
-#define   GMBUS_SW_RDY		(1 << 30)
-#define   GMBUS_ENT		(1 << 29) /* enable timeout */
-#define   GMBUS_CYCLE_NONE	(0 << 25)
-#define   GMBUS_CYCLE_WAIT	(1 << 25)
-#define   GMBUS_CYCLE_INDEX	(2 << 25)
-#define   GMBUS_CYCLE_STOP	(4 << 25)
-#define   GMBUS_BYTE_COUNT_SHIFT 16
-#define   GMBUS_BYTE_COUNT_MAX   256U
-#define   GEN9_GMBUS_BYTE_COUNT_MAX 511U
-#define   GMBUS_SLAVE_INDEX_SHIFT 8
-#define   GMBUS_SLAVE_ADDR_SHIFT 1
-#define   GMBUS_SLAVE_READ	(1 << 0)
-#define   GMBUS_SLAVE_WRITE	(0 << 0)
-#define GMBUS2			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5108) /* status */
-#define   GMBUS_INUSE		(1 << 15)
-#define   GMBUS_HW_WAIT_PHASE	(1 << 14)
-#define   GMBUS_STALL_TIMEOUT	(1 << 13)
-#define   GMBUS_INT		(1 << 12)
-#define   GMBUS_HW_RDY		(1 << 11)
-#define   GMBUS_SATOER		(1 << 10)
-#define   GMBUS_ACTIVE		(1 << 9)
-#define GMBUS3			_MMIO(dev_priv->display.gmbus.mmio_base + 0x510c) /* data buffer bytes 3-0 */
-#define GMBUS4			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5110) /* interrupt mask (Pineview+) */
-#define   GMBUS_SLAVE_TIMEOUT_EN (1 << 4)
-#define   GMBUS_NAK_EN		(1 << 3)
-#define   GMBUS_IDLE_EN		(1 << 2)
-#define   GMBUS_HW_WAIT_EN	(1 << 1)
-#define   GMBUS_HW_RDY_EN	(1 << 0)
-#define GMBUS5			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5120) /* byte index */
-#define   GMBUS_2BYTE_INDEX_EN	(1 << 31)
-
 /*
  * Clock control & power management
  */
-- 
2.34.1

