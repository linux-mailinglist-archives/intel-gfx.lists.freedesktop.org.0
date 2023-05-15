Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2834F70415C
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 01:17:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C5A410E2F4;
	Mon, 15 May 2023 23:17:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 836E410E162
 for <Intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 23:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684192623; x=1715728623;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=tNG2qab2MnYbqkPDXkuVF3VQ58PSDKxULRDiJQQ2OtI=;
 b=iI+3gD0AlOn9Ibuwrs9aYLs39dezQeVWR/MzHdMBwKIzF1FMfIc1iEOX
 4WJJUsY4VqlU0zZitqrUSawoEDbxELLSzpVBSvp/MtG8pPtQKf+s6ylPS
 PNU8joM9mr/m5PPP6JTjhtmPvCpoJdV7kwx5FApbCITcElpJI5J2YmCNb
 Vdg77SGTvb8pIM55Nv7kTC1ptUVCHCJIYx5W13RL6RKBoMXLVgEwt5II8
 BrVH+defu2SOsaxB1TxPXupT7KwO1UzTN1nrXzK9zOvdrk9wRjCJF6mYl
 nhaP9BnOxd6H4OQlYq/V3kwk5gGUEAs1RF6cn/Da4EFwVsVMYBxy6gO5M g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="348828694"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="348828694"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 16:17:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="678609245"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="678609245"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.136])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 16:17:02 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 15 May 2023 16:17:24 -0700
Message-Id: <20230515231725.3815199-2-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230515231725.3815199-1-clinton.a.taylor@intel.com>
References: <20230515231725.3815199-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915: Add 16bit register/mask
 operators
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

Add the support macros to define/extract bits as 16bits.

v2: checkpatch fixes
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/i915_reg_defs.h | 48 ++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index 622d603080f9..a685db1e815d 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -143,6 +143,54 @@
  */
 #define REG_FIELD_GET64(__mask, __val)	((u64)FIELD_GET(__mask, __val))
 
+/**
+ * REG_BIT16() - Prepare a u16 bit value
+ * @__n: 0-based bit number
+ *
+ * Local wrapper for BIT() to force u16, with compile time
+ * checks.
+ *
+ * @return: Value with bit @__n set.
+ */
+#define REG_BIT16(__n)                                                   \
+	((u16)(BIT(__n) +                                                \
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&         \
+				 ((__n) < 0 || (__n) > 15))))
+
+/**
+ * REG_GENMASK16() - Prepare a continuous u8 bitmask
+ * @__high: 0-based high bit
+ * @__low: 0-based low bit
+ *
+ * Local wrapper for GENMASK() to force u16, with compile time
+ * checks.
+ *
+ * @return: Continuous bitmask from @__high to @__low, inclusive.
+ */
+#define REG_GENMASK16(__high, __low)                                     \
+	((u16)(GENMASK(__high, __low) +                                  \
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&      \
+				 __is_constexpr(__low) &&               \
+				 ((__low) < 0 || (__high) > 15 || (__low) > (__high)))))
+
+/**
+ * REG_FIELD_PREP16() - Prepare a u16 bitfield value
+ * @__mask: shifted mask defining the field's length and position
+ * @__val: value to put in the field
+ *
+ * Local copy of FIELD_PREP16() to generate an integer constant
+ * expression, force u8 and for consistency with
+ * REG_FIELD_GET16(), REG_BIT16() and REG_GENMASK16().
+ *
+ * @return: @__val masked and shifted into the field defined by @__mask.
+ */
+#define REG_FIELD_PREP16(__mask, __val)                                          \
+	((u16)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +             \
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U16_MAX) +          \
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
+
 #define __MASKED_FIELD(mask, value) ((mask) << 16 | (value))
 #define _MASKED_FIELD(mask, value) ({					   \
 	if (__builtin_constant_p(mask))					   \
-- 
2.25.1

