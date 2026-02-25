Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eOagDys4n2m5ZQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 18:58:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA54819BE10
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 18:58:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E317710E7EF;
	Wed, 25 Feb 2026 17:58:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SuNLvM3F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B5B810E81D;
 Wed, 25 Feb 2026 17:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772042279; x=1803578279;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kJv3c3rPwiRtffXNyqU3URQ9rg7Qg8W/bwjE8sUWsdw=;
 b=SuNLvM3F9pQX/GIIzqjDcE9PrAj3Bod3f+7p5sSZs31TgQTi/QFibPZM
 znYUag/1pRORTEf16F41K+CUvy1oZRBiv3asEr0RhG7EoywWtIW9a6sa4
 amwB2zqI41Ld0BkxUDmOT59HoLuZjLWTFBvjI5Qg2R/3WKZSc8mymmssq
 JBSVz8BEMBUPLE2zgbqX/pT4nNj9XC1HOzkBU2OUy4/ejpY/IVGPHwiOw
 gOXZ26Grq9K2XEibh7qrhIXAGApuaQi9LGoKgPe0dcwqiGt3yMB6Z3vbv
 /8CPFxdZVym187qlmLBt6vDQrJHTmf+/gJFOHcQGSw8arszXBBTC8kGnA g==;
X-CSE-ConnectionGUID: YP92WsrHQ52CRUiaw1OIEg==
X-CSE-MsgGUID: FHLU5W/eRwCUTQb6LpoLxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="72793840"
X-IronPort-AV: E=Sophos;i="6.21,311,1763452800"; d="scan'208";a="72793840"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:57:47 -0800
X-CSE-ConnectionGUID: OlWL+BBfSBK0/9z6lLArnA==
X-CSE-MsgGUID: MDdG09h1TwuueEihQGBYUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="214394509"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.68])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:57:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH 6/8] drm/intel: add reg_bits.h for the various register
 content helpers
Date: Wed, 25 Feb 2026 19:57:08 +0200
Message-ID: <e641fe6dcecef92367471f3e0d150f9f47ae4edc.1772042022.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772042022.git.jani.nikula@intel.com>
References: <cover.1772042022.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset=UTF-8
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: CA54819BE10
X-Rspamd-Action: no action

Add a shared header that's used by i915, xe, and i915 display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg_defs.h | 133 +------------------------
 include/drm/intel/reg_bits.h         | 139 +++++++++++++++++++++++++++
 2 files changed, 140 insertions(+), 132 deletions(-)
 create mode 100644 include/drm/intel/reg_bits.h

diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index 9d72f6fae4ae..a1dc7ff2bef7 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -6,116 +6,7 @@
 #ifndef __I915_REG_DEFS__
 #define __I915_REG_DEFS__
 
-#include <linux/bitfield.h>
-#include <linux/bits.h>
-
-/*
- * Wrappers over the generic fixed width BIT_U*() and GENMASK_U*()
- * implementations, for compatibility reasons with previous implementation.
- */
-#define REG_GENMASK(high, low)		GENMASK_U32(high, low)
-#define REG_GENMASK64(high, low)	GENMASK_U64(high, low)
-#define REG_GENMASK16(high, low)	GENMASK_U16(high, low)
-#define REG_GENMASK8(high, low)		GENMASK_U8(high, low)
-
-#define REG_BIT(n)			BIT_U32(n)
-#define REG_BIT64(n)			BIT_U64(n)
-#define REG_BIT16(n)			BIT_U16(n)
-#define REG_BIT8(n)			BIT_U8(n)
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
- * REG_FIELD_PREP8() - Prepare a u8 bitfield value
- * @__mask: shifted mask defining the field's length and position
- * @__val: value to put in the field
- *
- * Local copy of FIELD_PREP() to generate an integer constant expression, force
- * u8 and for consistency with REG_FIELD_GET8(), REG_BIT8() and REG_GENMASK8().
- *
- * @return: @__val masked and shifted into the field defined by @__mask.
- */
-#define REG_FIELD_PREP8(__mask, __val)                                          \
-	((u8)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
-	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +             \
-	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U8_MAX) +          \
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
-/**
- * REG_FIELD_GET64() - Extract a u64 bitfield value
- * @__mask: shifted mask defining the field's length and position
- * @__val: value to extract the bitfield value from
- *
- * Local wrapper for FIELD_GET() to force u64 and for consistency with
- * REG_GENMASK64().
- *
- * @return: Masked and shifted value of the field defined by @__mask in @__val.
- */
-#define REG_FIELD_GET64(__mask, __val)	((u64)FIELD_GET(__mask, __val))
-
-
-/**
- * REG_FIELD_PREP16() - Prepare a u16 bitfield value
- * @__mask: shifted mask defining the field's length and position
- * @__val: value to put in the field
- *
- * Local copy of FIELD_PREP16() to generate an integer constant
- * expression, force u8 and for consistency with
- * REG_FIELD_GET16(), REG_BIT16() and REG_GENMASK16().
- *
- * @return: @__val masked and shifted into the field defined by @__mask.
- */
-#define REG_FIELD_PREP16(__mask, __val)                                          \
-	((u16)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
-	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +             \
-	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U16_MAX) +          \
-	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
-	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
-
-#define REG_MASKED_FIELD(mask, value) \
-	(BUILD_BUG_ON_ZERO(__builtin_choose_expr(__builtin_constant_p(mask), (mask) & 0xffff0000, 0)) + \
-	 BUILD_BUG_ON_ZERO(__builtin_choose_expr(__builtin_constant_p(value), (value) & 0xffff0000, 0)) + \
-	 BUILD_BUG_ON_ZERO(__builtin_choose_expr(__builtin_constant_p(mask) && __builtin_constant_p(value), (value) & ~(mask), 0)) + \
-	 ((mask) << 16 | (value)))
-
-#define REG_MASKED_FIELD_ENABLE(a) \
-	(__builtin_choose_expr(__builtin_constant_p(a), REG_MASKED_FIELD((a), (a)), ({ typeof(a) _a = (a); REG_MASKED_FIELD(_a, _a); })))
-
-#define REG_MASKED_FIELD_DISABLE(a) \
-	(REG_MASKED_FIELD((a), 0))
+#include <drm/intel/reg_bits.h>
 
 /*
  * Given the first two numbers __a and __b of arbitrarily many evenly spaced
@@ -161,28 +52,6 @@
  */
 #define _PICK(__index, ...) (((const u32 []){ __VA_ARGS__ })[__index])
 
-/**
- * REG_FIELD_GET8() - Extract a u8 bitfield value
- * @__mask: shifted mask defining the field's length and position
- * @__val: value to extract the bitfield value from
- *
- * Local wrapper for FIELD_GET() to force u8 and for consistency with
- * REG_FIELD_PREP(), REG_BIT() and REG_GENMASK().
- *
- * @return: Masked and shifted value of the field defined by @__mask in @__val.
- */
-#define REG_FIELD_GET8(__mask, __val)   ((u8)FIELD_GET(__mask, __val))
-
-/**
- * REG_FIELD_MAX() - produce the maximum value representable by a field
- * @__mask: shifted mask defining the field's length and position
- *
- * Local wrapper for FIELD_MAX() to return the maximum bit value that can
- * be held in the field specified by @_mask, cast to u32 for consistency
- * with other macros.
- */
-#define REG_FIELD_MAX(__mask)	((u32)FIELD_MAX(__mask))
-
 typedef struct {
 	u32 reg;
 } i915_reg_t;
diff --git a/include/drm/intel/reg_bits.h b/include/drm/intel/reg_bits.h
new file mode 100644
index 000000000000..2a9066e1d808
--- /dev/null
+++ b/include/drm/intel/reg_bits.h
@@ -0,0 +1,139 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2026 Intel Corporation */
+
+#ifndef _REG_BITS_H_
+#define _REG_BITS_H_
+
+#include <linux/bitfield.h>
+#include <linux/bits.h>
+
+/*
+ * Wrappers over the generic fixed width BIT_U*() and GENMASK_U*()
+ * implementations, for compatibility reasons with previous implementation.
+ */
+#define REG_GENMASK(high, low)		GENMASK_U32(high, low)
+#define REG_GENMASK64(high, low)	GENMASK_U64(high, low)
+#define REG_GENMASK16(high, low)	GENMASK_U16(high, low)
+#define REG_GENMASK8(high, low)		GENMASK_U8(high, low)
+
+#define REG_BIT(n)			BIT_U32(n)
+#define REG_BIT64(n)			BIT_U64(n)
+#define REG_BIT16(n)			BIT_U16(n)
+#define REG_BIT8(n)			BIT_U8(n)
+
+/*
+ * Local integer constant expression version of is_power_of_2().
+ */
+#define IS_POWER_OF_2(__x)		((__x) && (((__x) & ((__x) - 1)) == 0))
+
+/**
+ * REG_FIELD_PREP8() - Prepare a u8 bitfield value
+ * @__mask: shifted mask defining the field's length and position
+ * @__val: value to put in the field
+ *
+ * Local copy of FIELD_PREP() to generate an integer constant expression, force
+ * u8 and for consistency with REG_FIELD_GET8(), REG_BIT8() and REG_GENMASK8().
+ *
+ * @return: @__val masked and shifted into the field defined by @__mask.
+ */
+#define REG_FIELD_PREP8(__mask, __val)                                          \
+	((u8)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +             \
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U8_MAX) +          \
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
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
+ * REG_FIELD_GET8() - Extract a u8 bitfield value
+ * @__mask: shifted mask defining the field's length and position
+ * @__val: value to extract the bitfield value from
+ *
+ * Local wrapper for FIELD_GET() to force u8 and for consistency with
+ * REG_FIELD_PREP(), REG_BIT() and REG_GENMASK().
+ *
+ * @return: Masked and shifted value of the field defined by @__mask in @__val.
+ */
+#define REG_FIELD_GET8(__mask, __val)   ((u8)FIELD_GET(__mask, __val))
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
+/**
+ * REG_FIELD_GET64() - Extract a u64 bitfield value
+ * @__mask: shifted mask defining the field's length and position
+ * @__val: value to extract the bitfield value from
+ *
+ * Local wrapper for FIELD_GET() to force u64 and for consistency with
+ * REG_GENMASK64().
+ *
+ * @return: Masked and shifted value of the field defined by @__mask in @__val.
+ */
+#define REG_FIELD_GET64(__mask, __val)	((u64)FIELD_GET(__mask, __val))
+
+/**
+ * REG_FIELD_MAX() - produce the maximum value representable by a field
+ * @__mask: shifted mask defining the field's length and position
+ *
+ * Local wrapper for FIELD_MAX() to return the maximum bit value that can
+ * be held in the field specified by @_mask, cast to u32 for consistency
+ * with other macros.
+ */
+#define REG_FIELD_MAX(__mask)	((u32)FIELD_MAX(__mask))
+
+#define REG_MASKED_FIELD(mask, value) \
+	(BUILD_BUG_ON_ZERO(__builtin_choose_expr(__builtin_constant_p(mask), (mask) & 0xffff0000, 0)) + \
+	 BUILD_BUG_ON_ZERO(__builtin_choose_expr(__builtin_constant_p(value), (value) & 0xffff0000, 0)) + \
+	 BUILD_BUG_ON_ZERO(__builtin_choose_expr(__builtin_constant_p(mask) && __builtin_constant_p(value), (value) & ~(mask), 0)) + \
+	 ((mask) << 16 | (value)))
+
+#define REG_MASKED_FIELD_ENABLE(a) \
+	(__builtin_choose_expr(__builtin_constant_p(a), REG_MASKED_FIELD((a), (a)), ({ typeof(a) _a = (a); REG_MASKED_FIELD(_a, _a); })))
+
+#define REG_MASKED_FIELD_DISABLE(a) \
+	(REG_MASKED_FIELD((a), 0))
+
+#endif
-- 
2.47.3

