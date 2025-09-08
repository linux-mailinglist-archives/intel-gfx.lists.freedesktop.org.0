Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB89FB490E3
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 16:12:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A8F610E532;
	Mon,  8 Sep 2025 14:12:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cNNpHyvC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E56010E532
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 14:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757340725; x=1788876725;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dswR1wdYP8ZAd6JB7ZytMcDYI5pILuZmpn6VtySNbEo=;
 b=cNNpHyvCKKIh0XfjWH6z0iWQIkCQFHWCe3hrRYOB90DezsogF598wULt
 Gd4lK52u7Fr6F3I+aji8LE96KnEGOWQkvH0dHgWWujIG5H0LIXGCq27WM
 6IEWh3xsniA1Im37Ogz5LDQKYtjEiOGfTG4/XUkYj5UJEo3CaLD0vlfLJ
 ATM57ampa7sbHwr6BKMg6jtrwxCsV51DOClBV3pw/4KCqojw7eQOaoZQW
 TOeg4BYyHhP5BQJNmuleH7MMu3lRuOnDitwDFX4Jk2vLpjfe2F0dvf2Ih
 UjiC5sWD4NcXqia1UrBE4Ez9h+F6IySO77uZ3PQcVCyG2In82qYMC9xVc w==;
X-CSE-ConnectionGUID: g2XO76XeTiOaG2ChZWkUgA==
X-CSE-MsgGUID: 9dMkYMaUSxyu+ZXB4GyVsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="63237489"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="63237489"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 07:12:05 -0700
X-CSE-ConnectionGUID: KJUOVTQUQvGuvoMKXoJ19A==
X-CSE-MsgGUID: qLxUeB+2Tsi3KIBMyogHbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="209952203"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 07:12:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/5] drm/i915: split out i915_ptr_util.h
Date: Mon,  8 Sep 2025 17:11:46 +0300
Message-ID: <ed8f3ef14844bdb1fecb528608f61093a16128cf.1757340520.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1757340520.git.jani.nikula@intel.com>
References: <cover.1757340520.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Move pointer related utilities from i915_utils.h to a separate new
i915_ptr_util.h header. Clean up related includes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context_types.h |  1 -
 drivers/gpu/drm/i915/gt/intel_timeline.h      |  1 +
 drivers/gpu/drm/i915/i915_ptr_util.h          | 66 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_request.h           |  5 +-
 drivers/gpu/drm/i915/i915_utils.h             | 57 ----------------
 drivers/gpu/drm/i915/i915_vma.h               |  6 +-
 6 files changed, 73 insertions(+), 63 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_ptr_util.h

diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 98c7f6052069..10070ee4d74c 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -14,7 +14,6 @@
 
 #include "i915_active_types.h"
 #include "i915_sw_fence.h"
-#include "i915_utils.h"
 #include "intel_engine_types.h"
 #include "intel_sseu.h"
 #include "intel_wakeref.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.h b/drivers/gpu/drm/i915/gt/intel_timeline.h
index 57308c4d664a..5f8c8f79714e 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.h
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.h
@@ -10,6 +10,7 @@
 
 #include "i915_active.h"
 #include "i915_syncmap.h"
+#include "i915_utils.h"
 #include "intel_timeline_types.h"
 
 struct drm_printer;
diff --git a/drivers/gpu/drm/i915/i915_ptr_util.h b/drivers/gpu/drm/i915/i915_ptr_util.h
new file mode 100644
index 000000000000..9f8931d7d99b
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_ptr_util.h
@@ -0,0 +1,66 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __I915_PTR_UTIL_H__
+#define __I915_PTR_UTIL_H__
+
+#include <linux/types.h>
+
+#define ptr_mask_bits(ptr, n) ({					\
+	unsigned long __v = (unsigned long)(ptr);			\
+	(typeof(ptr))(__v & -BIT(n));					\
+})
+
+#define ptr_unmask_bits(ptr, n) ((unsigned long)(ptr) & (BIT(n) - 1))
+
+#define ptr_unpack_bits(ptr, bits, n) ({				\
+	unsigned long __v = (unsigned long)(ptr);			\
+	*(bits) = __v & (BIT(n) - 1);					\
+	(typeof(ptr))(__v & -BIT(n));					\
+})
+
+#define ptr_pack_bits(ptr, bits, n) ({					\
+	unsigned long __bits = (bits);					\
+	GEM_BUG_ON(__bits & -BIT(n));					\
+	((typeof(ptr))((unsigned long)(ptr) | __bits));			\
+})
+
+#define ptr_dec(ptr) ({							\
+	unsigned long __v = (unsigned long)(ptr);			\
+	(typeof(ptr))(__v - 1);						\
+})
+
+#define ptr_inc(ptr) ({							\
+	unsigned long __v = (unsigned long)(ptr);			\
+	(typeof(ptr))(__v + 1);						\
+})
+
+#define page_mask_bits(ptr) ptr_mask_bits(ptr, PAGE_SHIFT)
+#define page_unmask_bits(ptr) ptr_unmask_bits(ptr, PAGE_SHIFT)
+#define page_pack_bits(ptr, bits) ptr_pack_bits(ptr, bits, PAGE_SHIFT)
+#define page_unpack_bits(ptr, bits) ptr_unpack_bits(ptr, bits, PAGE_SHIFT)
+
+static __always_inline ptrdiff_t ptrdiff(const void *a, const void *b)
+{
+	return a - b;
+}
+
+#define u64_to_ptr(T, x) ({						\
+	typecheck(u64, x);						\
+	(T *)(uintptr_t)(x);						\
+})
+
+/*
+ * container_of_user: Extract the superclass from a pointer to a member.
+ *
+ * Exactly like container_of() with the exception that it plays nicely
+ * with sparse for __user @ptr.
+ */
+#define container_of_user(ptr, type, member) ({				\
+	void __user *__mptr = (void __user *)(ptr);			\
+	BUILD_BUG_ON_MSG(!__same_type(*(ptr), typeof_member(type, member)) && \
+			 !__same_type(*(ptr), void),			\
+			 "pointer type mismatch in container_of()");	\
+	((type __user *)(__mptr - offsetof(type, member))); })
+
+#endif /* __I915_PTR_UTIL_H__ */
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 5f7e8138ec14..b09135301f39 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -31,19 +31,20 @@
 #include <linux/llist.h>
 #include <linux/lockdep.h>
 
+#include <uapi/drm/i915_drm.h>
+
 #include "gem/i915_gem_context_types.h"
 #include "gt/intel_context_types.h"
 #include "gt/intel_engine_types.h"
 #include "gt/intel_timeline_types.h"
 
 #include "i915_gem.h"
+#include "i915_ptr_util.h"
 #include "i915_scheduler.h"
 #include "i915_selftest.h"
 #include "i915_sw_fence.h"
 #include "i915_vma_resource.h"
 
-#include <uapi/drm/i915_drm.h>
-
 struct drm_file;
 struct drm_i915_gem_object;
 struct drm_printer;
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index eb4d43c40009..dff02a944a57 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -67,64 +67,12 @@ bool i915_error_injected(void);
 		drm_err(&(i915)->drm, fmt, ##__VA_ARGS__); \
 })
 
-#define ptr_mask_bits(ptr, n) ({					\
-	unsigned long __v = (unsigned long)(ptr);			\
-	(typeof(ptr))(__v & -BIT(n));					\
-})
-
-#define ptr_unmask_bits(ptr, n) ((unsigned long)(ptr) & (BIT(n) - 1))
-
-#define ptr_unpack_bits(ptr, bits, n) ({				\
-	unsigned long __v = (unsigned long)(ptr);			\
-	*(bits) = __v & (BIT(n) - 1);					\
-	(typeof(ptr))(__v & -BIT(n));					\
-})
-
-#define ptr_pack_bits(ptr, bits, n) ({					\
-	unsigned long __bits = (bits);					\
-	GEM_BUG_ON(__bits & -BIT(n));					\
-	((typeof(ptr))((unsigned long)(ptr) | __bits));			\
-})
-
-#define ptr_dec(ptr) ({							\
-	unsigned long __v = (unsigned long)(ptr);			\
-	(typeof(ptr))(__v - 1);						\
-})
-
-#define ptr_inc(ptr) ({							\
-	unsigned long __v = (unsigned long)(ptr);			\
-	(typeof(ptr))(__v + 1);						\
-})
-
-#define page_mask_bits(ptr) ptr_mask_bits(ptr, PAGE_SHIFT)
-#define page_unmask_bits(ptr) ptr_unmask_bits(ptr, PAGE_SHIFT)
-#define page_pack_bits(ptr, bits) ptr_pack_bits(ptr, bits, PAGE_SHIFT)
-#define page_unpack_bits(ptr, bits) ptr_unpack_bits(ptr, bits, PAGE_SHIFT)
-
 #define fetch_and_zero(ptr) ({						\
 	typeof(*ptr) __T = *(ptr);					\
 	*(ptr) = (typeof(*ptr))0;					\
 	__T;								\
 })
 
-static __always_inline ptrdiff_t ptrdiff(const void *a, const void *b)
-{
-	return a - b;
-}
-
-/*
- * container_of_user: Extract the superclass from a pointer to a member.
- *
- * Exactly like container_of() with the exception that it plays nicely
- * with sparse for __user @ptr.
- */
-#define container_of_user(ptr, type, member) ({				\
-	void __user *__mptr = (void __user *)(ptr);			\
-	BUILD_BUG_ON_MSG(!__same_type(*(ptr), typeof_member(type, member)) && \
-			 !__same_type(*(ptr), void),			\
-			 "pointer type mismatch in container_of()");	\
-	((type __user *)(__mptr - offsetof(type, member))); })
-
 /*
  * check_user_mbz: Check that a user value exists and is zero
  *
@@ -143,11 +91,6 @@ static __always_inline ptrdiff_t ptrdiff(const void *a, const void *b)
 	get_user(mbz__, (U)) ? -EFAULT : mbz__ ? -EINVAL : 0;		\
 })
 
-#define u64_to_ptr(T, x) ({						\
-	typecheck(u64, x);						\
-	(T *)(uintptr_t)(x);						\
-})
-
 #define __mask_next_bit(mask) ({					\
 	int __idx = ffs(mask) - 1;					\
 	mask &= ~BIT(__idx);						\
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 0f9eee6d18d2..8054047840aa 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -30,12 +30,12 @@
 
 #include <drm/drm_mm.h>
 
-#include "gt/intel_ggtt_fencing.h"
 #include "gem/i915_gem_object.h"
-
-#include "i915_gem_gtt.h"
+#include "gt/intel_ggtt_fencing.h"
 
 #include "i915_active.h"
+#include "i915_gem_gtt.h"
+#include "i915_ptr_util.h"
 #include "i915_request.h"
 #include "i915_vma_resource.h"
 #include "i915_vma_types.h"
-- 
2.47.3

