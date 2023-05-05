Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA1E6F88D7
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 20:46:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3B0910E659;
	Fri,  5 May 2023 18:46:35 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B4C910E657
 for <Intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 18:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683312393; x=1714848393;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=uO+Xab0ZeoOEkRtd4eJyFJHemFo2kPgD1bhRqTo+1Oo=;
 b=S+mRLpS6Mdt3edOq7xsdHzEPAAfGwGwPiLAz/FbLVB5OPrRJy8BvQ5Cb
 ouD2mxMtTUpCGHKNj5zTn+BxptaAlIs7v5TUr2RHhFlTvMJ08afu1hR68
 ZFGHaOZQXS64YGYPV2OrrJ531K0qLtGjRLE+Cd94dEff1uhXuNHS1du4m
 c9f3FJm1v3BSpwSfjwOPWqYW3NwTZ+XQfLg/A4FxZM//gv5VrIbsDFWIq
 v+SnIn+KGYk/cfbPWvhDsl819r9aWkMO/vfdtcn+DKRY87YGvc8wLt2Ck
 /20ZnZyIxsPLdlIEucEOf9fsVIqE72iswINXla347siJucnXnlLpweaEV Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="328900390"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="328900390"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 11:46:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="1027614961"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="1027614961"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.136])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 11:46:17 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  5 May 2023 11:46:39 -0700
Message-Id: <20230505184640.2200251-2-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230505184640.2200251-1-clinton.a.taylor@intel.com>
References: <20230505184640.2200251-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Add 16bit register/mask operators
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

Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/i915_reg_defs.h | 49 ++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index 622d603080f9..eb273f3ce3eb 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -143,6 +143,55 @@
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
+
 #define __MASKED_FIELD(mask, value) ((mask) << 16 | (value))
 #define _MASKED_FIELD(mask, value) ({					   \
 	if (__builtin_constant_p(mask))					   \
-- 
2.25.1

