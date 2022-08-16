Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 864225A00B2
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 19:48:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 456BDB327E;
	Wed, 24 Aug 2022 17:48:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DAC218AFA8;
 Tue, 16 Aug 2022 09:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660642546; x=1692178546;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uNOE1dTwztKIHhBeWOrKk5mBYn1U2LqIR0BM6RNHtw0=;
 b=Yi3mk0KhBsI2VwK9nO4vsH62/LfLxi2C/CUBHEFw4vAi4s4i0rz0BPLS
 Sfx12jApeayhlvxebT3i84x/YsOjKlvAOnKA/+AOPQ8DOEq+v4tLWg8ko
 IWlmp+qoHEO8Sv6Ax2NvZsG39G0s+sg3uL1h94bMwGmlRsZNZt0+IzE9r
 mWIvTzMfXm35h0HWH74WqunZUQohMTIJ47JDHEAJ/XaVNA6zj/MEkpWKq
 eURIHW2KB8MjGp6P50RoFn/n7JRdPwWb+S/9I8VunslEQvv8u54yMmrnh
 Vmvjqa0rlTuy+di1x7WxApena48Wy7nCqHL/XeQhR/T3uOMT1aoub15mf Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="279134711"
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="279134711"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 02:35:46 -0700
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="733231028"
Received: from clbarnes-mobl.amr.corp.intel.com (HELO
 paris.amr.corp.intel.com) ([10.254.7.166])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 02:35:43 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Aug 2022 18:35:18 +0900
Message-Id: <20220816093525.184940-2-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220816093525.184940-1-gwan-gyeong.mun@intel.com>
References: <20220816093525.184940-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 1/8] overflow: Move and add few utility
 macros into overflow
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
Cc: thomas.hellstrom@linux.intel.com, jani.nikula@intel.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 chris@chris-wilson.co.uk, airlied@linux.ie, andrzej.hajda@intel.com,
 matthew.auld@intel.com, daniel@ffwll.ch, mchehab@kernel.org,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It moves overflows_type utility macro into overflow header from i915_utils
header. The overflows_type can be used to catch the truncation between data
types. And it adds safe_conversion() macro which performs a type conversion
(cast) of an source value into a new variable, checking that the
destination is large enough to hold the source value. And the functionality
of overflows_type has been improved to handle the signbit.
The is_unsigned_type macro has been added to check the sign bit of the
built-in type.

v3: Add is_type_unsigned() macro (Mauro)
    Modify overflows_type() macro to consider signed data types (Mauro)
    Fix the problem that safe_conversion() macro always returns true
v4: Fix kernel-doc markups
v6: Move macro addition location so that it can be used by other than drm
    subsystem (Jani, Mauro, Andi)
    Change is_type_unsigned to is_unsigned_type to have the same name form
    as is_signed_type macro

Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org> (v5)
---
 drivers/gpu/drm/i915/i915_utils.h |  5 +--
 include/linux/overflow.h          | 54 +++++++++++++++++++++++++++++++
 2 files changed, 55 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index c10d68cdc3ca..eb0ded23fa9c 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -32,6 +32,7 @@
 #include <linux/types.h>
 #include <linux/workqueue.h>
 #include <linux/sched/clock.h>
+#include <linux/overflow.h>
 
 #ifdef CONFIG_X86
 #include <asm/hypervisor.h>
@@ -111,10 +112,6 @@ bool i915_error_injected(void);
 #define range_overflows_end_t(type, start, size, max) \
 	range_overflows_end((type)(start), (type)(size), (type)(max))
 
-/* Note we don't consider signbits :| */
-#define overflows_type(x, T) \
-	(sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T))
-
 #define ptr_mask_bits(ptr, n) ({					\
 	unsigned long __v = (unsigned long)(ptr);			\
 	(typeof(ptr))(__v & -BIT(n));					\
diff --git a/include/linux/overflow.h b/include/linux/overflow.h
index f1221d11f8e5..462a03454377 100644
--- a/include/linux/overflow.h
+++ b/include/linux/overflow.h
@@ -35,6 +35,60 @@
 #define type_max(T) ((T)((__type_half_max(T) - 1) + __type_half_max(T)))
 #define type_min(T) ((T)((T)-type_max(T)-(T)1))
 
+/**
+ * is_unsigned_type - helper for checking data type which is an unsigned data
+ * type or not
+ * @x: The data type to check
+ *
+ * Returns:
+ * True if the data type is an unsigned data type, false otherwise.
+ */
+#define is_unsigned_type(x) ((typeof(x))-1 >= (typeof(x))0)
+
+/**
+ * overflows_type - helper for checking the truncation between data types
+ * @x: Source for overflow type comparison
+ * @T: Destination for overflow type comparison
+ *
+ * It compares the values and size of each data type between the first and
+ * second argument to check whether truncation can occur when assigning the
+ * first argument to the variable of the second argument.
+ * Source and Destination can be used with or without sign bit.
+ * Composite data structures such as union and structure are not considered.
+ * Enum data types are not considered.
+ * Floating point data types are not considered.
+ *
+ * Returns:
+ * True if truncation can occur, false otherwise.
+ */
+#define overflows_type(x, T) \
+	(is_unsigned_type(x) ? \
+		is_unsigned_type(T) ? \
+			(sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T)) ? 1 : 0 \
+			: (sizeof(x) >= sizeof(T) && (x) >> (BITS_PER_TYPE(T) - 1)) ? 1 : 0 \
+	: is_unsigned_type(T) ? \
+		((x) < 0) ? 1 : (sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T)) ? 1 : 0 \
+		: (sizeof(x) > sizeof(T)) ? \
+			((x) < 0) ? (((x) * -1) >> BITS_PER_TYPE(T)) ? 1 : 0 \
+				: ((x) >> BITS_PER_TYPE(T)) ? 1 : 0 \
+			: 0)
+
+/**
+ * safe_conversion - perform a type conversion (cast) of an source value into
+ * a new variable, checking that the destination is large enough to hold the
+ * source value.
+ * @ptr: Destination pointer address
+ * @value: Source value
+ *
+ * Returns:
+ * If the value would overflow the destination, it returns false.
+ */
+#define safe_conversion(ptr, value) ({ \
+	typeof(value) __v = (value); \
+	typeof(ptr) __ptr = (ptr); \
+	overflows_type(__v, *__ptr) ? 0 : ((*__ptr = (typeof(*__ptr))__v), 1); \
+})
+
 /*
  * Avoids triggering -Wtype-limits compilation warning,
  * while using unsigned data types to check a < 0.
-- 
2.37.1

