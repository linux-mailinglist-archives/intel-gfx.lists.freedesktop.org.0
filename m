Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E6359DA8C
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 12:19:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 654D0B3013;
	Tue, 23 Aug 2022 10:18:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14687B2FDA;
 Tue, 23 Aug 2022 10:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661249876; x=1692785876;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pHZpD5R55mDNFmQEydujAwEmg6PN38/zVmQNxisp2i4=;
 b=SqePmS2fmMlXnXSSAWmqjfjlUpp5nw9i9i5nfFEpIn3XKrKF2X2jykOD
 8QLPLc32SRro2eJpU8muPB4eaqkQo4UnIH1hixfC1nA/o/DD4CMB4kvau
 EnHnRPaV6CH4ndOUKzR3FRJpvr0sjKLIpgm07Df4vn/SV68Cfa3KDJ+b9
 gl0s6GfKF59iFXFFiCQDdxtjSuduFOP7iCO9KtnxvS1XTW2J6cuIc4Jyg
 74jT+xpLQGupS6c672MOs0d+izEnrTA0mEgj3irRSRRIzynwU/ytIq6eM
 JoMitCp7iMPQA1/kVBAxWUPRphvBujDy5FGzEKWlUtDDBF2cxpygiUydY g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="273400724"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="273400724"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 03:17:52 -0700
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="751639883"
Received: from jabish-mobl2.amr.corp.intel.com (HELO paris.amr.corp.intel.com)
 ([10.254.9.209])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 03:17:47 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Aug 2022 19:17:22 +0900
Message-Id: <20220823101729.2098841-2-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220823101729.2098841-1-gwan-gyeong.mun@intel.com>
References: <20220823101729.2098841-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 1/8] overflow: Move and add few utility
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
Cc: thomas.hellstrom@linux.intel.com, keescook@chromium.org,
 jani.nikula@intel.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk, airlied@linux.ie,
 andrzej.hajda@intel.com, matthew.auld@intel.com, daniel@ffwll.ch,
 intel-gfx-trybot@lists.freedesktop.org, mchehab@kernel.org,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It moves overflows_type utility macro into overflow header from i915_utils
header. The overflows_type can be used to catch the truncaion (overflow)
between different data types. And it adds check_assign() macro which
performs an assigning source value into destination ptr along with an
overflow check. overflow_type macro has been improved to handle the signbit
by gcc's built-in overflow check function. And it adds overflows_ptr()
helper macro for checking the overflows between a value and a pointer
type/value.

v3: Add is_type_unsigned() macro (Mauro)
    Modify overflows_type() macro to consider signed data types (Mauro)
    Fix the problem that safe_conversion() macro always returns true
v4: Fix kernel-doc markups
v6: Move macro addition location so that it can be used by other than drm
    subsystem (Jani, Mauro, Andi)
    Change is_type_unsigned to is_unsigned_type to have the same name form
    as is_signed_type macro
v8: Add check_assign() and remove safe_conversion() (Kees)
    Fix overflows_type() to use gcc's built-in overflow function (Andrzej)
    Add overflows_ptr() to allow overflow checking when assigning a value
    into a pointer variable (G.G.)

Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
Cc: Kees Cook <keescook@chromium.org>
Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org> (v5)
---
 drivers/gpu/drm/i915/i915_user_extensions.c |  2 +-
 drivers/gpu/drm/i915/i915_utils.h           |  5 +-
 include/linux/overflow.h                    | 67 +++++++++++++++++++++
 3 files changed, 69 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_user_extensions.c b/drivers/gpu/drm/i915/i915_user_extensions.c
index c822d0aafd2d..0fb2fecbcaae 100644
--- a/drivers/gpu/drm/i915/i915_user_extensions.c
+++ b/drivers/gpu/drm/i915/i915_user_extensions.c
@@ -51,7 +51,7 @@ int i915_user_extensions(struct i915_user_extension __user *ext,
 			return err;
 
 		if (get_user(next, &ext->next_extension) ||
-		    overflows_type(next, ext))
+		    overflows_ptr(next, ext))
 			return -EFAULT;
 
 		ext = u64_to_user_ptr(next);
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
index f1221d11f8e5..4016f1378bcc 100644
--- a/include/linux/overflow.h
+++ b/include/linux/overflow.h
@@ -52,6 +52,73 @@ static inline bool __must_check __must_check_overflow(bool overflow)
 	return unlikely(overflow);
 }
 
+/**
+ * overflows_type - helper for checking the overflows between data types or
+ *                  values
+ *
+ * @x: Source value or data type for overflow check
+ * @T: Destination value or data type for overflow check
+ *
+ * It compares the values or data type between the first and second argument to
+ * check whether overflow can occur when assigning the first argument to the
+ * variable of the second argument. Source and Destination can be singned or
+ * unsigned data types.
+ *
+ * Returns:
+ * True if overflow can occur, false otherwise.
+ */
+#define overflows_type(x, T) __must_check_overflow(({	\
+	typeof(T) v = 0;				\
+	__builtin_add_overflow_p((x), v, v);		\
+}))
+
+/**
+ * overflows_ptr - helper for checking the overflows between a value and
+ *                 a pointer type/value
+ *
+ * @x: Source value for overflow check
+ * @T: Destination pointer type or value for overflow check
+ *
+ * gcc's built-in overflow check functions don't support checking between the
+ * pointer type and non-pointer type. Therefore it compares the values and
+ * size of each data type between the first and second argument to check whether
+ * truncation can occur when assigning the first argument to the variable of the
+ * second argument. It checks internally the ptr is a pointer type.
+ *
+ * Returns:
+ * True if overflow can occur, false otherwise.
+ */
+#define overflows_ptr(x, T) __must_check_overflow(({	\
+	typecheck_pointer(T);				\
+	((x) < 0) ? 1 : (sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T)) ? 1 : 0; \
+}))
+
+/**
+ * check_assign - perform an assigning source value into destination ptr along
+ *                with an overflow check.
+ *
+ * @value: Source value
+ * @ptr: Destination pointer address, If the pointer type is not used,
+ *       a warning message is output during build.
+ *
+ * It checks internally the ptr is a pointer type. And it uses gcc's built-in
+ * overflow check function.
+ * It does not use the check_*() wrapper functions, but directly uses gcc's
+ * built-in overflow check function so that it can be used even when
+ * the type of value and the type pointed to by ptr are different without build
+ * warning messages.
+ *
+ * Returns:
+ * If the value would overflow the destination, it returns true. If not return
+ * false. When overflow does not occur, the assigning into ptr from value
+ * succeeds. It follows the return policy as other check_*_overflow() functions
+ * return non-zero as a failure.
+ */
+#define check_assign(value, ptr) __must_check_overflow(({	\
+	typecheck_pointer(ptr); 		\
+	__builtin_add_overflow(0, value, ptr);	\
+}))
+
 /*
  * For simplicity and code hygiene, the fallback code below insists on
  * a, b and *d having the same type (similar to the min() and max()
-- 
2.37.1

