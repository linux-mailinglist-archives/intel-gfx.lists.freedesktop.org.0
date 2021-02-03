Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F9530DD09
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 15:40:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7F836EB08;
	Wed,  3 Feb 2021 14:40:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C757D6EB08
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 14:40:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23776618-1500050 for multiple; Wed, 03 Feb 2021 14:40:08 +0000
MIME-Version: 1.0
In-Reply-To: <20210203141313.498462-2-matthew.auld@intel.com>
References: <20210203141313.498462-1-matthew.auld@intel.com>
 <20210203141313.498462-2-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 03 Feb 2021 14:40:09 +0000
Message-ID: <161236320966.21832.8949551515466324732@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915/gtt/dg1: add PTE_LM
 plumbing for ppGTT
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2021-02-03 14:13:12)
> For the PTEs we get an LM bit, to signal whether the page resides in
> SMEM or LMEM.
> 
> v2: just use gen8_pte_encode for dg1
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
> Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c  | 11 ++++++++++-
>  drivers/gpu/drm/i915/gt/intel_gtt.h   |  3 +++
>  drivers/gpu/drm/i915/gt/intel_ppgtt.c |  3 +++
>  3 files changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> index 03a9d4396373..4048b0b50147 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> @@ -5,6 +5,7 @@
>  
>  #include <linux/log2.h>
>  
> +#include "gem/i915_gem_lmem.h"
>  #include "gen8_ppgtt.h"
>  #include "i915_scatterlist.h"
>  #include "i915_trace.h"
> @@ -35,6 +36,9 @@ static u64 gen8_pte_encode(dma_addr_t addr,
>         if (unlikely(flags & PTE_READ_ONLY))
>                 pte &= ~_PAGE_RW;
>  
> +       if (flags & PTE_LM)
> +               pte |= GEN12_PPGTT_PTE_LM;
> +
>         switch (level) {
>         case I915_CACHE_NONE:
>                 pte |= PPAT_UNCACHED;
> @@ -558,6 +562,7 @@ static void gen8_ppgtt_insert(struct i915_address_space *vm,
>  
>  static int gen8_init_scratch(struct i915_address_space *vm)
>  {
> +       u32 pte_flags;
>         int ret;
>         int i;
>  
> @@ -581,9 +586,13 @@ static int gen8_init_scratch(struct i915_address_space *vm)
>         if (ret)
>                 return ret;
>  
> +       pte_flags = vm->has_read_only;
> +       if (i915_gem_object_is_lmem(vm->scratch[0]))
> +               pte_flags |= PTE_LM;
> +
>         vm->scratch[0]->encode =
>                 gen8_pte_encode(px_dma(vm->scratch[0]),
> -                               I915_CACHE_LLC, vm->has_read_only);
> +                               I915_CACHE_LLC, pte_flags);

One day we will fix this interface to just use one flags field, not two.
That day is always tomorrow though.

>         for (i = 1; i <= vm->top; i++) {
>                 struct drm_i915_gem_object *obj;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index 29c10fde8ce3..4a1d9b5cc75b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -85,6 +85,8 @@ typedef u64 gen8_pte_t;
>  #define BYT_PTE_SNOOPED_BY_CPU_CACHES  REG_BIT(2)
>  #define BYT_PTE_WRITEABLE              REG_BIT(1)
>  
> +#define GEN12_PPGTT_PTE_LM (1 << 11)

This is on a 64b value, may be overkill (except it will be a nasty day
if we ever run into such a bug) but use BIT_ULL(11).

>  /*
>   * Cacheability Control is a 4-bit value. The low three bits are stored in bits
>   * 3:1 of the PTE, while the fourth bit is stored in bit 11 of the PTE.
> @@ -264,6 +266,7 @@ struct i915_address_space {
>                           enum i915_cache_level level,
>                           u32 flags); /* Create a valid PTE */
>  #define PTE_READ_ONLY  BIT(0)
> +#define PTE_LM         BIT(1)
>  
>         void (*allocate_va_range)(struct i915_address_space *vm,
>                                   struct i915_vm_pt_stash *stash,
> diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> index 3f940ae27028..80580d00f97d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> @@ -7,6 +7,7 @@
>  
>  #include "i915_trace.h"
>  #include "intel_gtt.h"
> +#include "gem/i915_gem_lmem.h"

Break this out. We try to keep the external includes in the block before
the local includes. That makes it more obvious about the coupling that
shouldn't be there :(

[Hmm. We broke alphabetical ordering.]

>  #include "gen6_ppgtt.h"
>  #include "gen8_ppgtt.h"
>  
> @@ -192,6 +193,8 @@ void ppgtt_bind_vma(struct i915_address_space *vm,
>         pte_flags = 0;
>         if (i915_gem_object_is_readonly(vma->obj))
>                 pte_flags |= PTE_READ_ONLY;
> +       if (i915_gem_object_is_lmem(vma->obj))
> +               pte_flags |= PTE_LM;
>  
>         vm->insert_entries(vm, vma, cache_level, pte_flags);
>         wmb();

Just nits,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
