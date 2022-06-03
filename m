Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8538353CA64
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 15:06:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6A9811365D;
	Fri,  3 Jun 2022 13:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F03C411365D
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 13:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654261594; x=1685797594;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3bV11c4ZTPCSPNObxRcpC/fGSPhEJCl2F6q/ptvgZSo=;
 b=QJlAKh0r57qxl2JnXQFbEagUrEeLnb2PKUuqhdGcc1bv7BS6PH5DKnzP
 /jh3yX5DwpTNIGwAL8JJtFgno1FT3nhhOgX1nKGmsRYboV6e/KORf915V
 Hth5JynfdAHcPZyQt4i7Bio5P2dhR61O6bbFexzZUOA3sHubiRRRqs+vg
 0YvDhY4X1MG9PwoF3CH053cWrEQ39UP8IQ29oLsnkqmahnx7Dej6SslAU
 CPX2A2oU0OHkTSgn+i7K7jmy5A+oDSAn8ferS456oeC9B5F+fPzzzLTV2
 OYtFZZJChNV9ItPvoc5IsP/emQ/TPUfYY+C+6A4PGu+SebsRY9NnA+jGN w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="263897511"
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="263897511"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 06:06:33 -0700
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="578015539"
Received: from richardf-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.27])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 06:06:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jun 2022 16:06:00 +0300
Message-Id: <26e1ad54ca97e0c42c4b4e86fac89fc74d2a3e4d.1654261471.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1654261471.git.jani.nikula@intel.com>
References: <cover.1654261471.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/7] drm/i915/utils: throw out unused stuff
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

