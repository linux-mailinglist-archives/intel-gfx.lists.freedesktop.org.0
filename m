Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9527A6577BF
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Dec 2022 15:26:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5787A10E3A8;
	Wed, 28 Dec 2022 14:26:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5627A10E3A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Dec 2022 14:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672237598; x=1703773598;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QiCwxgPCInhOyy0MVGlUxG8k+CFy08UBe0/x7/c10n8=;
 b=CqftB62Tu8D7zUlJm5CnMvA7vC9NNxvcE/Bt61gWb9z2wf39s5oCk9zZ
 ye9gOKzAQbbyRRI7NF6kvMHaUIOeykz/NeRvYfdEGRFP6FHWwxcRCaKWt
 JK9Ed438zHOlmXhp0L5+lOmFhqpudSTVzFZ8jyXvAz34WUp+ZXyGyezUR
 fC9d3ZxDYUoVNkgxDFDLq75rvDjbONj7FNxc/B0+Go8WFgcylm657pwkk
 b/KSwywaSas9UUAGqpcmZAhfdkUBd7TTaWD2NmE/xLMKmLUFBFb69kEyu
 c3gS+lNoD14yhp/HCkURh6bH+HA4fmjSCV7I23X1mA7/Lm/ow0I2JtX6c w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="322113473"
X-IronPort-AV: E=Sophos;i="5.96,280,1665471600"; d="scan'208";a="322113473"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2022 06:26:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="982101462"
X-IronPort-AV: E=Sophos;i="5.96,280,1665471600"; d="scan'208";a="982101462"
Received: from rsznejde-mobl.ger.corp.intel.com (HELO
 paris.ger.corp.intel.com) ([10.249.140.251])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2022 06:26:32 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Dec 2022 16:25:30 +0200
Message-Id: <20221228142533.880703-4-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221228142533.880703-1-gwan-gyeong.mun@intel.com>
References: <20221228142533.880703-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v15 3/6] drm/i915: Check for integer truncation
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
index 244fca7c39f9..ae10c7bdd509 100644
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
index 4dc0702081b8..b7fbd5abb42a 100644
--- a/drivers/gpu/drm/i915/intel_region_ttm.c
+++ b/drivers/gpu/drm/i915/intel_region_ttm.c
@@ -208,13 +208,25 @@ intel_region_ttm_resource_alloc(struct intel_memory_region *mem,
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
@@ -223,6 +235,8 @@ intel_region_ttm_resource_alloc(struct intel_memory_region *mem,
 	mock_bo.bdev = &mem->i915->bdev;
 
 	ret = man->func->alloc(man, &mock_bo, &place, &res);
+
+out:
 	if (ret == -ENOSPC)
 		ret = -ENXIO;
 	if (!ret)
-- 
2.37.1

