Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B11C44A742
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Nov 2021 08:02:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16B8F6E02D;
	Tue,  9 Nov 2021 07:02:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2084D6E02D
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Nov 2021 07:02:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="295830161"
X-IronPort-AV: E=Sophos;i="5.87,219,1631602800"; d="scan'208";a="295830161"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 23:02:55 -0800
X-IronPort-AV: E=Sophos;i="5.87,219,1631602800"; d="scan'208";a="533586931"
Received: from mbodox-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.252.139.13])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 23:02:55 -0800
Date: Mon, 8 Nov 2021 23:02:54 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Michael Cheng <michael.cheng@intel.com>
Message-ID: <20211109070254.wn4zkhs5uabrb2ei@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20211109002644.856688-1-michael.cheng@intel.com>
 <20211109002644.856688-2-michael.cheng@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20211109002644.856688-2-michael.cheng@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 1/1] drm/i915: Introduce new macros for
 i915 PTE
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
Cc: thomas.hellstrom@linux.intel.com, wayne.boyer@intel.com,
 jani.nikula@intel.com, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk,
 siva.mullati@intel.com, matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 08, 2021 at 04:26:44PM -0800, Michael Cheng wrote:
>Certain functions within i915 uses macros that are defined for
>specific architectures by the mmu, such as _PAGE_RW and _PAGE_PRESENT
>(Some architectures don't even have these macros defined, like ARM64).
>
>Instead of re-using bits defined for the CPU, we should use bits
>defined for i915. This patch introduces two new macros,
>I915_PAGE_PRESENT and I915_PAGE_RW, to check for bits 0 and 1 and, to
>replace all occurrences of _PAGE_RW and _PAGE_PRESENT within i915.
>
>Looking at the bspecs for pre gen 12 and gen 12, bit 0 and 1 are the
>same throughout the generations.
>
>Signed-off-by: Michael Cheng <michael.cheng@intel.com>
>---
> drivers/gpu/drm/i915/gt/gen8_ppgtt.c |  6 +++---
> drivers/gpu/drm/i915/gt/intel_ggtt.c |  2 +-
> drivers/gpu/drm/i915/gt/intel_gtt.h  |  3 +++
> drivers/gpu/drm/i915/gvt/gtt.c       | 12 ++++++------
> 4 files changed, 13 insertions(+), 10 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>index 9966e9dc5218..f89b50ffc286 100644
>--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>@@ -18,7 +18,7 @@
> static u64 gen8_pde_encode(const dma_addr_t addr,
> 			   const enum i915_cache_level level)
> {
>-	u64 pde = addr | _PAGE_PRESENT | _PAGE_RW;
>+	u64 pde = addr | I915_PAGE_PRESENT | I915_PAGE_RW;
>
> 	if (level != I915_CACHE_NONE)
> 		pde |= PPAT_CACHED_PDE;
>@@ -32,10 +32,10 @@ static u64 gen8_pte_encode(dma_addr_t addr,
> 			   enum i915_cache_level level,
> 			   u32 flags)
> {
>-	gen8_pte_t pte = addr | _PAGE_PRESENT | _PAGE_RW;
>+	gen8_pte_t pte = addr | I915_PAGE_PRESENT | I915_PAGE_RW;
>
> 	if (unlikely(flags & PTE_READ_ONLY))
>-		pte &= ~_PAGE_RW;
>+		pte &= ~I915_PAGE_RW;
>
> 	if (flags & PTE_LM)
> 		pte |= GEN12_PPGTT_PTE_LM;
>diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>index 1fb4a03d7ac3..3f8e1ee0fbfa 100644
>--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>@@ -207,7 +207,7 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
> 			 enum i915_cache_level level,
> 			 u32 flags)
> {
>-	gen8_pte_t pte = addr | _PAGE_PRESENT;
>+	gen8_pte_t pte = addr | I915_PAGE_PRESENT;
>
> 	if (flags & PTE_LM)
> 		pte |= GEN12_GGTT_PTE_LM;

GEN12_GGTT_PTE_LM is also bit 1 though.

>diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
>index dfeaef680aac..fba9c0c18f4a 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
>+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
>@@ -39,6 +39,9 @@
>
> #define NALLOC 3 /* 1 normal, 1 for concurrent threads, 1 for preallocation */
>
>+#define I915_PAGE_PRESENT BIT_ULL(0)
>+#define I915_PAGE_RW BIT_ULL(1)

I will leave it for others to comment, but this may be confusing as this
is only valid for ppgtt, not ggtt. On ggtt, at least on graphics_ver ==
12 the only bit is bit 0, meaning page present. Bit 1, as commented
above is the LM flag for the platforms that have that.

If we are going with a single value for VALID/PRESENT, we may also want
to get rid of GEN6_PTE_VALID and GEN6_PDE_VALID

And for ggtt, maybe also get rid of BYT_PTE_WRITEABLE

Adding some more people who touched these files for feedback.

thanks
Lucas De Marchi
