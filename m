Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAF261655D
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 15:56:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B20C10E49F;
	Wed,  2 Nov 2022 14:55:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B74310E498
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 14:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667400951; x=1698936951;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BvXqOrJFt0odP2Kkn4nlrBbNUn6bdYxFBFFtf6hb2J8=;
 b=bxXNiTwBRHtp1297x3fECJ8jVT5yt4j/0BMx0xUbQJkgI/7QGJERNrYk
 KnUqVkOWNF9AgmKNtNqJ6LwkpRt8xudYB5s1BQtzCjw1pMWoZlL561096
 0oGp19+hDRynTvqaOOkDrU3W3hJx+Ig+fib3aRroq246HvPrl2RRiJlgG
 vavriinfyTxj+7ALQLk1uo95x8ZOg+dk1ngwZvgioNvS5XmHgEkl3inpK
 41ihaPvadGuxRcPUoCTD2Csjtq0jaYzHTTnmVHtGV0cfJG66y7KiVBRt2
 DdtTM7msb1cpdGP9OI6X1Gm5YsdptBXMVSb3wrmkUiEyH1UvL6qwVGGT6 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="311151584"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="311151584"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 07:55:03 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="628982287"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="628982287"
Received: from progasze-mobl3.ger.corp.intel.com (HELO
 paris.ger.corp.intel.com) ([10.249.144.23])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 07:54:59 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 16:53:59 +0200
Message-Id: <20221102145402.617336-5-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221102145402.617336-1-gwan-gyeong.mun@intel.com>
References: <20221102145402.617336-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v14 4/7] drm/i915: Check for integer truncation
 on the configuration of ttm place
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
Cc: thomas.hellstrom@linux.intel.com, andrzej.hajda@intel.com,
 jani.nikula@intel.com, chris@chris-wilson.co.uk, matthew.auld@intel.com,
 mchehab@kernel.org, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There is an impedance mismatch between the first/last valid page
frame number of ttm place in unsigned and our memory/page accounting in
unsigned long.
As the object size is under the control of userspace, we have to be prudent
and catch the conversion errors.
To catch the implicit truncation as we switch from unsigned long to
unsigned, we use overflows_type check and report E2BIG or overflow_type
prior to the operation.

v3: Not to change execution inside a macro. (Mauro)
    Add safe_conversion_gem_bug_on() macro and remove temporal
    SAFE_CONVERSION() macro.
v4: Fix unhandled GEM_BUG_ON() macro call from safe_conversion_gem_bug_on()
v6: Fix to follow general use case for GEM_BUG_ON(). (Jani)
v7: Fix to use WARN_ON() macro where GEM_BUG_ON() macro was used. (Jani)
v8: Replace safe_conversion() with check_assign() (Kees)
v14: Split one macro of assignment with checking of overflow to two steps,
     first overflow check, and second assignment.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com> (v2)
Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org> (v3)
Reported-by: kernel test robot <lkp@intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com> (v5)
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c |  3 +++
 drivers/gpu/drm/i915/intel_region_ttm.c | 14 ++++++++++++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 2cd7a17c720d..598188f85f3c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -140,13 +140,16 @@ i915_ttm_place_from_region(const struct intel_memory_region *mr,
 	if (flags & I915_BO_ALLOC_CONTIGUOUS)
 		place->flags |= TTM_PL_FLAG_CONTIGUOUS;
 	if (offset != I915_BO_INVALID_OFFSET) {
+		WARN_ON(overflows_type(offset >> PAGE_SHIFT, place->fpfn));
 		place->fpfn = offset >> PAGE_SHIFT;
+		WARN_ON(overflows_type(place->fpfn + (size >> PAGE_SHIFT), place->lpfn));
 		place->lpfn = place->fpfn + (size >> PAGE_SHIFT);
 	} else if (mr->io_size && mr->io_size < mr->total) {
 		if (flags & I915_BO_ALLOC_GPU_ONLY) {
 			place->flags |= TTM_PL_FLAG_TOPDOWN;
 		} else {
 			place->fpfn = 0;
+			WARN_ON(overflows_type(mr->io_size >> PAGE_SHIFT, place->lpfn));
 			place->lpfn = mr->io_size >> PAGE_SHIFT;
 		}
 	}
diff --git a/drivers/gpu/drm/i915/intel_region_ttm.c b/drivers/gpu/drm/i915/intel_region_ttm.c
index cf89d0c2a2d9..7f0ec35af098 100644
--- a/drivers/gpu/drm/i915/intel_region_ttm.c
+++ b/drivers/gpu/drm/i915/intel_region_ttm.c
@@ -209,13 +209,25 @@ intel_region_ttm_resource_alloc(struct intel_memory_region *mem,
 	if (flags & I915_BO_ALLOC_CONTIGUOUS)
 		place.flags |= TTM_PL_FLAG_CONTIGUOUS;
 	if (offset != I915_BO_INVALID_OFFSET) {
+		if (WARN_ON(overflows_type(offset >> PAGE_SHIFT, place.fpfn))) {
+			ret = -E2BIG;
+			goto out;
+		}
 		place.fpfn = offset >> PAGE_SHIFT;
+		if (WARN_ON(overflows_type(place.fpfn + (size >> PAGE_SHIFT), place.lpfn))) {
+			ret = -E2BIG;
+			goto out;
+		}
 		place.lpfn = place.fpfn + (size >> PAGE_SHIFT);
 	} else if (mem->io_size && mem->io_size < mem->total) {
 		if (flags & I915_BO_ALLOC_GPU_ONLY) {
 			place.flags |= TTM_PL_FLAG_TOPDOWN;
 		} else {
 			place.fpfn = 0;
+			if (WARN_ON(overflows_type(mem->io_size >> PAGE_SHIFT, place.lpfn))) {
+				ret = -E2BIG;
+				goto out;
+			}
 			place.lpfn = mem->io_size >> PAGE_SHIFT;
 		}
 	}
@@ -224,6 +236,8 @@ intel_region_ttm_resource_alloc(struct intel_memory_region *mem,
 	mock_bo.bdev = &mem->i915->bdev;
 
 	ret = man->func->alloc(man, &mock_bo, &place, &res);
+
+out:
 	if (ret == -ENOSPC)
 		ret = -ENXIO;
 	if (!ret)
-- 
2.37.1

