Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D614C48A70E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 06:16:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA78810FFF0;
	Tue, 11 Jan 2022 05:16:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4237A10F906
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 05:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641878166; x=1673414166;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tWidEIdz27xmGDV1mOtXpxPE6p4zVY0Pe5//qXGLX9E=;
 b=kLnQOnexn1J85RtfERMaZw5DEhgnaMVb751a8fVMtuEaKos6l7DQ/PZ6
 v6iG8/2TSVUbdez7XunWyUo/0IBBpTL3vrr0hQKyteRP88P6Jy0XBQ+RO
 SKWrZV1FLG3aRh7rY9+K31jLy0Ozv1xfOlUaAbO28Nq3Cu2Jnc6KPHA89
 gW9RCQEHz0dcpA83pIYb/3CMqUO7HFb+XpfB2H8tzhDxVZVf3QoPf0WYt
 nwyy9zdxLpXJ4SWJmoH55Jlz20IE5C1OKMLggHPJfuiDaJmpvTi7zB+lW
 vLbFE8Nuz6kI3FzoP0vZ7Ah9+V0jdCG9Zp2QjtooglRnh3ZRCSxXUEyly Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="243358342"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="243358342"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 21:16:05 -0800
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="474399160"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 21:16:05 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jan 2022 21:15:55 -0800
Message-Id: <20220111051600.3429104-7-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220111051600.3429104-1-matthew.d.roper@intel.com>
References: <20220111051600.3429104-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 06/11] drm/i915: Introduce i915_reg_defs.h
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

We'd like to start splitting i915_reg.h into various domain-specific
register files and cleaning them up.  Let's move the basic macros and
type definitions to their own header file that can be including in each
of the new split headers.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h      | 88 +------------------------
 drivers/gpu/drm/i915/i915_reg_defs.h | 98 ++++++++++++++++++++++++++++
 2 files changed, 99 insertions(+), 87 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_reg_defs.h

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 25f6bde36add..b7e03b6e886d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -25,8 +25,7 @@
 #ifndef _I915_REG_H_
 #define _I915_REG_H_
 
-#include <linux/bitfield.h>
-#include <linux/bits.h>
+#include "i915_reg_defs.h"
 
 /**
  * DOC: The i915 register macro definition style guide
@@ -116,91 +115,6 @@
  *  #define GEN8_BAR                    _MMIO(0xb888)
  */
 
-/**
- * REG_BIT() - Prepare a u32 bit value
- * @__n: 0-based bit number
- *
- * Local wrapper for BIT() to force u32, with compile time checks.
- *
- * @return: Value with bit @__n set.
- */
-#define REG_BIT(__n)							\
-	((u32)(BIT(__n) +						\
-	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&		\
-				 ((__n) < 0 || (__n) > 31))))
-
-/**
- * REG_GENMASK() - Prepare a continuous u32 bitmask
- * @__high: 0-based high bit
- * @__low: 0-based low bit
- *
- * Local wrapper for GENMASK() to force u32, with compile time checks.
- *
- * @return: Continuous bitmask from @__high to @__low, inclusive.
- */
-#define REG_GENMASK(__high, __low)					\
-	((u32)(GENMASK(__high, __low) +					\
-	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&	\
-				 __is_constexpr(__low) &&		\
-				 ((__low) < 0 || (__high) > 31 || (__low) > (__high)))))
-
-/*
- * Local integer constant expression version of is_power_of_2().
- */
-#define IS_POWER_OF_2(__x)		((__x) && (((__x) & ((__x) - 1)) == 0))
-
-/**
- * REG_FIELD_PREP() - Prepare a u32 bitfield value
- * @__mask: shifted mask defining the field's length and position
- * @__val: value to put in the field
- *
- * Local copy of FIELD_PREP() to generate an integer constant expression, force
- * u32 and for consistency with REG_FIELD_GET(), REG_BIT() and REG_GENMASK().
- *
- * @return: @__val masked and shifted into the field defined by @__mask.
- */
-#define REG_FIELD_PREP(__mask, __val)						\
-	((u32)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +	\
-	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +		\
-	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U32_MAX) +		\
-	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
-	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
-
-/**
- * REG_FIELD_GET() - Extract a u32 bitfield value
- * @__mask: shifted mask defining the field's length and position
- * @__val: value to extract the bitfield value from
- *
- * Local wrapper for FIELD_GET() to force u32 and for consistency with
- * REG_FIELD_PREP(), REG_BIT() and REG_GENMASK().
- *
- * @return: Masked and shifted value of the field defined by @__mask in @__val.
- */
-#define REG_FIELD_GET(__mask, __val)	((u32)FIELD_GET(__mask, __val))
-
-typedef struct {
-	u32 reg;
-} i915_reg_t;
-
-#define _MMIO(r) ((const i915_reg_t){ .reg = (r) })
-
-#define INVALID_MMIO_REG _MMIO(0)
-
-static __always_inline u32 i915_mmio_reg_offset(i915_reg_t reg)
-{
-	return reg.reg;
-}
-
-static inline bool i915_mmio_reg_equal(i915_reg_t a, i915_reg_t b)
-{
-	return i915_mmio_reg_offset(a) == i915_mmio_reg_offset(b);
-}
-
-static inline bool i915_mmio_reg_valid(i915_reg_t reg)
-{
-	return !i915_mmio_reg_equal(reg, INVALID_MMIO_REG);
-}
-
 #define VLV_DISPLAY_BASE		0x180000
 #define VLV_MIPI_BASE			VLV_DISPLAY_BASE
 #define BXT_MIPI_BASE			0x60000
diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
new file mode 100644
index 000000000000..5f64aa086ace
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -0,0 +1,98 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __I915_REG_DEFS__
+#define __I915_REG_DEFS__
+
+#include <linux/bitfield.h>
+#include <linux/bits.h>
+
+/**
+ * REG_BIT() - Prepare a u32 bit value
+ * @__n: 0-based bit number
+ *
+ * Local wrapper for BIT() to force u32, with compile time checks.
+ *
+ * @return: Value with bit @__n set.
+ */
+#define REG_BIT(__n)							\
+	((u32)(BIT(__n) +						\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&		\
+				 ((__n) < 0 || (__n) > 31))))
+
+/**
+ * REG_GENMASK() - Prepare a continuous u32 bitmask
+ * @__high: 0-based high bit
+ * @__low: 0-based low bit
+ *
+ * Local wrapper for GENMASK() to force u32, with compile time checks.
+ *
+ * @return: Continuous bitmask from @__high to @__low, inclusive.
+ */
+#define REG_GENMASK(__high, __low)					\
+	((u32)(GENMASK(__high, __low) +					\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&	\
+				 __is_constexpr(__low) &&		\
+				 ((__low) < 0 || (__high) > 31 || (__low) > (__high)))))
+
+/*
+ * Local integer constant expression version of is_power_of_2().
+ */
+#define IS_POWER_OF_2(__x)		((__x) && (((__x) & ((__x) - 1)) == 0))
+
+/**
+ * REG_FIELD_PREP() - Prepare a u32 bitfield value
+ * @__mask: shifted mask defining the field's length and position
+ * @__val: value to put in the field
+ *
+ * Local copy of FIELD_PREP() to generate an integer constant expression, force
+ * u32 and for consistency with REG_FIELD_GET(), REG_BIT() and REG_GENMASK().
+ *
+ * @return: @__val masked and shifted into the field defined by @__mask.
+ */
+#define REG_FIELD_PREP(__mask, __val)						\
+	((u32)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +	\
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +		\
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U32_MAX) +		\
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
+
+/**
+ * REG_FIELD_GET() - Extract a u32 bitfield value
+ * @__mask: shifted mask defining the field's length and position
+ * @__val: value to extract the bitfield value from
+ *
+ * Local wrapper for FIELD_GET() to force u32 and for consistency with
+ * REG_FIELD_PREP(), REG_BIT() and REG_GENMASK().
+ *
+ * @return: Masked and shifted value of the field defined by @__mask in @__val.
+ */
+#define REG_FIELD_GET(__mask, __val)	((u32)FIELD_GET(__mask, __val))
+
+typedef struct {
+	u32 reg;
+} i915_reg_t;
+
+#define _MMIO(r) ((const i915_reg_t){ .reg = (r) })
+
+#define INVALID_MMIO_REG _MMIO(0)
+
+static __always_inline u32 i915_mmio_reg_offset(i915_reg_t reg)
+{
+	return reg.reg;
+}
+
+static inline bool i915_mmio_reg_equal(i915_reg_t a, i915_reg_t b)
+{
+	return i915_mmio_reg_offset(a) == i915_mmio_reg_offset(b);
+}
+
+static inline bool i915_mmio_reg_valid(i915_reg_t reg)
+{
+	return !i915_mmio_reg_equal(reg, INVALID_MMIO_REG);
+}
+
+
+#endif /* __I915_REG_DEFS__ */
-- 
2.34.1

