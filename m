Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B65653FA0C
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 11:42:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F80312B006;
	Tue,  7 Jun 2022 09:42:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EB7E12B006
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jun 2022 09:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654594940; x=1686130940;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TkeUasryK0Nbw5emj4LQZ/Unea6igDEkS0qNzq20zlI=;
 b=kpE+UPXCfpS7wFybbKlykiuets+vYIe3QpaU6yznMIbfuk1I21idWAXM
 /zd7vaCx5Inyfs9lF9SdiKacsd5Ib+gwLhOxKMMXNRhR4JmgkQo4WJ4nf
 0SRFIBN2dhs/tfUoZcOzKvz6nQmzy+Xm9xtMqnXjMg/bY7QLnPCs8r5rb
 EyvumiMQk0usBog2sScTiSbt9SjFpaQNA2a7vTg8otjEZdMWYmkgpbrqm
 LS8K8Ws1K5z4tGQObZE9VTaCsm65pJeKwieJqW5cRPueJ4wBbf/CSJ8KS
 qbdFPeFoYvvBsYzT6p4urr9mJw8qNR1j4g+VXQGrHh5Ucw3zZ8kTumrjQ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10370"; a="340395722"
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; d="scan'208";a="340395722"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 02:42:19 -0700
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; d="scan'208";a="826285141"
Received: from gknielse-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.57.112])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 02:42:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Jun 2022 12:42:07 +0300
Message-Id: <20220607094207.536699-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220607094207.536699-1-jani.nikula@intel.com>
References: <20220607094207.536699-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 3/3] drm/i915/utils: throw out unused stuff
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

Remove some of the unused helpers from i915_utils.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_utils.h | 40 -------------------------------
 1 file changed, 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index ea7648e3aa0e..c10d68cdc3ca 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -115,39 +115,6 @@ bool i915_error_injected(void);
 #define overflows_type(x, T) \
 	(sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T))
 
-static inline bool
-__check_struct_size(size_t base, size_t arr, size_t count, size_t *size)
-{
-	size_t sz;
-
-	if (check_mul_overflow(count, arr, &sz))
-		return false;
-
-	if (check_add_overflow(sz, base, &sz))
-		return false;
-
-	*size = sz;
-	return true;
-}
-
-/**
- * check_struct_size() - Calculate size of structure with trailing array.
- * @p: Pointer to the structure.
- * @member: Name of the array member.
- * @n: Number of elements in the array.
- * @sz: Total size of structure and array
- *
- * Calculates size of memory needed for structure @p followed by an
- * array of @n @member elements, like struct_size() but reports
- * whether it overflowed, and the resultant size in @sz
- *
- * Return: false if the calculation overflowed.
- */
-#define check_struct_size(p, member, n, sz) \
-	likely(__check_struct_size(sizeof(*(p)), \
-				   sizeof(*(p)->member) + __must_be_array((p)->member), \
-				   n, sz))
-
 #define ptr_mask_bits(ptr, n) ({					\
 	unsigned long __v = (unsigned long)(ptr);			\
 	(typeof(ptr))(__v & -BIT(n));					\
@@ -184,8 +151,6 @@ __check_struct_size(size_t base, size_t arr, size_t count, size_t *size)
 
 #define struct_member(T, member) (((T *)0)->member)
 
-#define ptr_offset(ptr, member) offsetof(typeof(*(ptr)), member)
-
 #define fetch_and_zero(ptr) ({						\
 	typeof(*ptr) __T = *(ptr);					\
 	*(ptr) = (typeof(*ptr))0;					\
@@ -228,11 +193,6 @@ static __always_inline ptrdiff_t ptrdiff(const void *a, const void *b)
 	get_user(mbz__, (U)) ? -EFAULT : mbz__ ? -EINVAL : 0;		\
 })
 
-static inline u64 ptr_to_u64(const void *ptr)
-{
-	return (uintptr_t)ptr;
-}
-
 #define u64_to_ptr(T, x) ({						\
 	typecheck(u64, x);						\
 	(T *)(uintptr_t)(x);						\
-- 
2.30.2

