Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E800B4EBE9B
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 12:23:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A152410E1DC;
	Wed, 30 Mar 2022 10:23:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9518910E1DC
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 10:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648635794; x=1680171794;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=g4Jp0KUlEAUJghGMXIQnTTf8wZqVjN1nHCWHwLwMHvc=;
 b=kCwgdu4MoR1UVc9GAF4tsC7zyYZDIwtNoWL8uxyFx+KFidfbgPUml+u6
 GyguC37pxB7vGg0nkwuhZYKxSw+pZOLrF1fjVYLgFsIXwsv8wRneRFZ/e
 5sLo5hbZJ+/Ku6eitDI9hYJn0Rli0X250Q28WHthg8O7zieWo/2Lm9BdZ
 +Rb0efY34xVEmSvXHrPInEgwG0m0C075y5JynzjxyQ/6QBXsSjqNohnPx
 35NZYW9DiiOtj+G667HGoG78YKJisagY3OVxGCTjbeL2K7XcG1mYX2ONh
 qaVTnjQLyg1gIvakwBIzK+yKl3Az8B2Hk/Z0NvAws/gFbAzZo4vK1xqjb Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="320207447"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="320207447"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 03:23:12 -0700
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="565478667"
Received: from nhanus-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.116])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 03:23:09 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Casey Bowman
 <casey.g.bowman@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <b468e1b1-0d7e-6384-77db-b0d1519539c4@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220329235830.1025100-1-casey.g.bowman@intel.com>
 <20220329235830.1025100-2-casey.g.bowman@intel.com>
 <b468e1b1-0d7e-6384-77db-b0d1519539c4@linux.intel.com>
Date: Wed, 30 Mar 2022 13:23:07 +0300
Message-ID: <87zgl7buyc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/gt: Split intel-gtt
 functions by arch
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
Cc: thomas.hellstrom@linux.intel.com, lucas.demarchi@intel.com,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 30 Mar 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 30/03/2022 00:58, Casey Bowman wrote:
>> Some functions defined in the intel-gtt module are used in several
>> areas, but is only supported on x86 platforms.
>>=20
>> By separating these calls and their static underlying functions to
>> another area, we are able to compile out these functions for
>> non-x86 builds and provide stubs for the non-x86 implementations.
>>=20
>> In addition to the problematic calls, we are moving the gmch-related
>> functions to the new area.
>>=20
>> Signed-off-by: Casey Bowman <casey.g.bowman@intel.com>
>> ---
>>   drivers/gpu/drm/i915/Makefile           |   2 +
>>   drivers/gpu/drm/i915/gt/intel_ggtt.c    | 665 +-----------------------
>>   drivers/gpu/drm/i915/gt/intel_gt.c      |   4 +-
>>   drivers/gpu/drm/i915/gt/intel_gt.h      |   9 +
>>   drivers/gpu/drm/i915/gt/intel_gt_gmch.c | 653 +++++++++++++++++++++++
>>   drivers/gpu/drm/i915/gt/intel_gt_gmch.h |  46 ++
>>   drivers/gpu/drm/i915/gt/intel_gtt.h     |   9 +
>>   7 files changed, 735 insertions(+), 653 deletions(-)
>>   create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_gmch.c
>>   create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_gmch.h
>>=20
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefi=
le
>> index c837a29ffac8..b7bdaec99118 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -126,6 +126,8 @@ gt-y +=3D \
>>   	gt/intel_workarounds.o \
>>   	gt/shmem_utils.o \
>>   	gt/sysfs_engines.o
>> +# x86 intel-gtt module support
>> +gt-$(CONFIG_X86) +=3D gt/intel_gt_gmch.o
>>   # autogenerated null render state
>>   gt-y +=3D \
>>   	gt/gen6_renderstate.o \
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915=
/gt/intel_ggtt.c
>> index 04191fe2ee34..97a595e42135 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> @@ -3,18 +3,14 @@
>>    * Copyright =C2=A9 2020 Intel Corporation
>>    */
>>=20=20=20
>> -#include <linux/agp_backend.h>
>> -#include <linux/stop_machine.h>
>> -
>> +#include <linux/types.h>
>>   #include <asm/set_memory.h>
>>   #include <asm/smp.h>
>>=20=20=20
>> -#include <drm/i915_drm.h>
>> -#include <drm/intel-gtt.h>
>> -
>>   #include "gem/i915_gem_lmem.h"
>>=20=20=20
>>   #include "intel_gt.h"
>> +#include "intel_gt_gmch.h"
>>   #include "intel_gt_regs.h"
>>   #include "i915_drv.h"
>>   #include "i915_scatterlist.h"
>> @@ -94,28 +90,6 @@ int i915_ggtt_init_hw(struct drm_i915_private *i915)
>>   	return 0;
>>   }
>>=20=20=20
>> -/*
>> - * Certain Gen5 chipsets require idling the GPU before
>> - * unmapping anything from the GTT when VT-d is enabled.
>> - */
>> -static bool needs_idle_maps(struct drm_i915_private *i915)
>> -{
>> -	/*
>> -	 * Query intel_iommu to see if we need the workaround. Presumably that
>> -	 * was loaded first.
>> -	 */
>> -	if (!intel_vtd_active(i915))
>> -		return false;
>> -
>> -	if (GRAPHICS_VER(i915) =3D=3D 5 && IS_MOBILE(i915))
>> -		return true;
>> -
>> -	if (GRAPHICS_VER(i915) =3D=3D 12)
>> -		return true; /* XXX DMAR fault reason 7 */
>> -
>> -	return false;
>> -}
>> -
>>   /**
>>    * i915_ggtt_suspend_vm - Suspend the memory mappings for a GGTT or DP=
T VM
>>    * @vm: The VM to suspend the mappings for
>> @@ -204,7 +178,7 @@ void gen6_ggtt_invalidate(struct i915_ggtt *ggtt)
>>   	spin_unlock_irq(&uncore->lock);
>>   }
>>=20=20=20
>> -static void gen8_ggtt_invalidate(struct i915_ggtt *ggtt)
>> +void gen8_ggtt_invalidate(struct i915_ggtt *ggtt)
>>   {
>>   	struct intel_uncore *uncore =3D ggtt->vm.gt->uncore;
>>=20=20=20
>> @@ -229,11 +203,6 @@ static void guc_ggtt_invalidate(struct i915_ggtt *g=
gtt)
>>   		intel_uncore_write_fw(uncore, GEN8_GTCR, GEN8_GTCR_INVALIDATE);
>>   }
>>=20=20=20
>> -static void gmch_ggtt_invalidate(struct i915_ggtt *ggtt)
>> -{
>> -	intel_gtt_chipset_flush();
>> -}
>> -
>>   u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>>   			 enum i915_cache_level level,
>>   			 u32 flags)
>> @@ -246,258 +215,7 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>>   	return pte;
>>   }
>>=20=20=20
>> -static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
>> -{
>> -	writeq(pte, addr);
>> -}
>> -
>> -static void gen8_ggtt_insert_page(struct i915_address_space *vm,
>> -				  dma_addr_t addr,
>> -				  u64 offset,
>> -				  enum i915_cache_level level,
>> -				  u32 flags)
>> -{
>> -	struct i915_ggtt *ggtt =3D i915_vm_to_ggtt(vm);
>> -	gen8_pte_t __iomem *pte =3D
>> -		(gen8_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
>> -
>> -	gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, flags));
>> -
>> -	ggtt->invalidate(ggtt);
>> -}
>> -
>> -static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
>> -				     struct i915_vma_resource *vma_res,
>> -				     enum i915_cache_level level,
>> -				     u32 flags)
>> -{
>> -	const gen8_pte_t pte_encode =3D gen8_ggtt_pte_encode(0, level, flags);
>> -	struct i915_ggtt *ggtt =3D i915_vm_to_ggtt(vm);
>> -	gen8_pte_t __iomem *gte;
>> -	gen8_pte_t __iomem *end;
>> -	struct sgt_iter iter;
>> -	dma_addr_t addr;
>> -
>> -	/*
>> -	 * Note that we ignore PTE_READ_ONLY here. The caller must be careful
>> -	 * not to allow the user to override access to a read only page.
>> -	 */
>> -
>> -	gte =3D (gen8_pte_t __iomem *)ggtt->gsm;
>> -	gte +=3D vma_res->start / I915_GTT_PAGE_SIZE;
>> -	end =3D gte + vma_res->node_size / I915_GTT_PAGE_SIZE;
>> -
>> -	for_each_sgt_daddr(addr, iter, vma_res->bi.pages)
>> -		gen8_set_pte(gte++, pte_encode | addr);
>> -	GEM_BUG_ON(gte > end);
>> -
>> -	/* Fill the allocated but "unused" space beyond the end of the buffer =
*/
>> -	while (gte < end)
>> -		gen8_set_pte(gte++, vm->scratch[0]->encode);
>> -
>> -	/*
>> -	 * We want to flush the TLBs only after we're certain all the PTE
>> -	 * updates have finished.
>> -	 */
>> -	ggtt->invalidate(ggtt);
>> -}
>> -
>> -static void gen6_ggtt_insert_page(struct i915_address_space *vm,
>> -				  dma_addr_t addr,
>> -				  u64 offset,
>> -				  enum i915_cache_level level,
>> -				  u32 flags)
>> -{
>> -	struct i915_ggtt *ggtt =3D i915_vm_to_ggtt(vm);
>> -	gen6_pte_t __iomem *pte =3D
>> -		(gen6_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
>> -
>> -	iowrite32(vm->pte_encode(addr, level, flags), pte);
>> -
>> -	ggtt->invalidate(ggtt);
>> -}
>> -
>> -/*
>> - * Binds an object into the global gtt with the specified cache level.
>> - * The object will be accessible to the GPU via commands whose operands
>> - * reference offsets within the global GTT as well as accessible by the=
 GPU
>> - * through the GMADR mapped BAR (i915->mm.gtt->gtt).
>> - */
>> -static void gen6_ggtt_insert_entries(struct i915_address_space *vm,
>> -				     struct i915_vma_resource *vma_res,
>> -				     enum i915_cache_level level,
>> -				     u32 flags)
>> -{
>> -	struct i915_ggtt *ggtt =3D i915_vm_to_ggtt(vm);
>> -	gen6_pte_t __iomem *gte;
>> -	gen6_pte_t __iomem *end;
>> -	struct sgt_iter iter;
>> -	dma_addr_t addr;
>> -
>> -	gte =3D (gen6_pte_t __iomem *)ggtt->gsm;
>> -	gte +=3D vma_res->start / I915_GTT_PAGE_SIZE;
>> -	end =3D gte + vma_res->node_size / I915_GTT_PAGE_SIZE;
>> -
>> -	for_each_sgt_daddr(addr, iter, vma_res->bi.pages)
>> -		iowrite32(vm->pte_encode(addr, level, flags), gte++);
>> -	GEM_BUG_ON(gte > end);
>> -
>> -	/* Fill the allocated but "unused" space beyond the end of the buffer =
*/
>> -	while (gte < end)
>> -		iowrite32(vm->scratch[0]->encode, gte++);
>> -
>> -	/*
>> -	 * We want to flush the TLBs only after we're certain all the PTE
>> -	 * updates have finished.
>> -	 */
>> -	ggtt->invalidate(ggtt);
>> -}
>> -
>> -static void nop_clear_range(struct i915_address_space *vm,
>> -			    u64 start, u64 length)
>> -{
>> -}
>> -
>> -static void gen8_ggtt_clear_range(struct i915_address_space *vm,
>> -				  u64 start, u64 length)
>> -{
>> -	struct i915_ggtt *ggtt =3D i915_vm_to_ggtt(vm);
>> -	unsigned int first_entry =3D start / I915_GTT_PAGE_SIZE;
>> -	unsigned int num_entries =3D length / I915_GTT_PAGE_SIZE;
>> -	const gen8_pte_t scratch_pte =3D vm->scratch[0]->encode;
>> -	gen8_pte_t __iomem *gtt_base =3D
>> -		(gen8_pte_t __iomem *)ggtt->gsm + first_entry;
>> -	const int max_entries =3D ggtt_total_entries(ggtt) - first_entry;
>> -	int i;
>> -
>> -	if (WARN(num_entries > max_entries,
>> -		 "First entry =3D %d; Num entries =3D %d (max=3D%d)\n",
>> -		 first_entry, num_entries, max_entries))
>> -		num_entries =3D max_entries;
>> -
>> -	for (i =3D 0; i < num_entries; i++)
>> -		gen8_set_pte(&gtt_base[i], scratch_pte);
>> -}
>> -
>> -static void bxt_vtd_ggtt_wa(struct i915_address_space *vm)
>> -{
>> -	/*
>> -	 * Make sure the internal GAM fifo has been cleared of all GTT
>> -	 * writes before exiting stop_machine(). This guarantees that
>> -	 * any aperture accesses waiting to start in another process
>> -	 * cannot back up behind the GTT writes causing a hang.
>> -	 * The register can be any arbitrary GAM register.
>> -	 */
>> -	intel_uncore_posting_read_fw(vm->gt->uncore, GFX_FLSH_CNTL_GEN6);
>> -}
>> -
>> -struct insert_page {
>> -	struct i915_address_space *vm;
>> -	dma_addr_t addr;
>> -	u64 offset;
>> -	enum i915_cache_level level;
>> -};
>> -
>> -static int bxt_vtd_ggtt_insert_page__cb(void *_arg)
>> -{
>> -	struct insert_page *arg =3D _arg;
>> -
>> -	gen8_ggtt_insert_page(arg->vm, arg->addr, arg->offset, arg->level, 0);
>> -	bxt_vtd_ggtt_wa(arg->vm);
>> -
>> -	return 0;
>> -}
>> -
>> -static void bxt_vtd_ggtt_insert_page__BKL(struct i915_address_space *vm,
>> -					  dma_addr_t addr,
>> -					  u64 offset,
>> -					  enum i915_cache_level level,
>> -					  u32 unused)
>> -{
>> -	struct insert_page arg =3D { vm, addr, offset, level };
>> -
>> -	stop_machine(bxt_vtd_ggtt_insert_page__cb, &arg, NULL);
>> -}
>> -
>> -struct insert_entries {
>> -	struct i915_address_space *vm;
>> -	struct i915_vma_resource *vma_res;
>> -	enum i915_cache_level level;
>> -	u32 flags;
>> -};
>> -
>> -static int bxt_vtd_ggtt_insert_entries__cb(void *_arg)
>> -{
>> -	struct insert_entries *arg =3D _arg;
>> -
>> -	gen8_ggtt_insert_entries(arg->vm, arg->vma_res, arg->level, arg->flags=
);
>> -	bxt_vtd_ggtt_wa(arg->vm);
>> -
>> -	return 0;
>> -}
>> -
>> -static void bxt_vtd_ggtt_insert_entries__BKL(struct i915_address_space =
*vm,
>> -					     struct i915_vma_resource *vma_res,
>> -					     enum i915_cache_level level,
>> -					     u32 flags)
>> -{
>> -	struct insert_entries arg =3D { vm, vma_res, level, flags };
>> -
>> -	stop_machine(bxt_vtd_ggtt_insert_entries__cb, &arg, NULL);
>> -}
>> -
>> -static void gen6_ggtt_clear_range(struct i915_address_space *vm,
>> -				  u64 start, u64 length)
>> -{
>> -	struct i915_ggtt *ggtt =3D i915_vm_to_ggtt(vm);
>> -	unsigned int first_entry =3D start / I915_GTT_PAGE_SIZE;
>> -	unsigned int num_entries =3D length / I915_GTT_PAGE_SIZE;
>> -	gen6_pte_t scratch_pte, __iomem *gtt_base =3D
>> -		(gen6_pte_t __iomem *)ggtt->gsm + first_entry;
>> -	const int max_entries =3D ggtt_total_entries(ggtt) - first_entry;
>> -	int i;
>> -
>> -	if (WARN(num_entries > max_entries,
>> -		 "First entry =3D %d; Num entries =3D %d (max=3D%d)\n",
>> -		 first_entry, num_entries, max_entries))
>> -		num_entries =3D max_entries;
>> -
>> -	scratch_pte =3D vm->scratch[0]->encode;
>> -	for (i =3D 0; i < num_entries; i++)
>> -		iowrite32(scratch_pte, &gtt_base[i]);
>> -}
>> -
>> -static void i915_ggtt_insert_page(struct i915_address_space *vm,
>> -				  dma_addr_t addr,
>> -				  u64 offset,
>> -				  enum i915_cache_level cache_level,
>> -				  u32 unused)
>> -{
>> -	unsigned int flags =3D (cache_level =3D=3D I915_CACHE_NONE) ?
>> -		AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>> -
>> -	intel_gtt_insert_page(addr, offset >> PAGE_SHIFT, flags);
>> -}
>> -
>> -static void i915_ggtt_insert_entries(struct i915_address_space *vm,
>> -				     struct i915_vma_resource *vma_res,
>> -				     enum i915_cache_level cache_level,
>> -				     u32 unused)
>> -{
>> -	unsigned int flags =3D (cache_level =3D=3D I915_CACHE_NONE) ?
>> -		AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>> -
>> -	intel_gtt_insert_sg_entries(vma_res->bi.pages, vma_res->start >> PAGE_=
SHIFT,
>> -				    flags);
>> -}
>> -
>> -static void i915_ggtt_clear_range(struct i915_address_space *vm,
>> -				  u64 start, u64 length)
>> -{
>> -	intel_gtt_clear_range(start >> PAGE_SHIFT, length >> PAGE_SHIFT);
>> -}
>> -
>> -static void ggtt_bind_vma(struct i915_address_space *vm,
>> +void intel_ggtt_bind_vma(struct i915_address_space *vm,
>>   			  struct i915_vm_pt_stash *stash,
>>   			  struct i915_vma_resource *vma_res,
>>   			  enum i915_cache_level cache_level,
>> @@ -521,7 +239,7 @@ static void ggtt_bind_vma(struct i915_address_space =
*vm,
>>   	vma_res->page_sizes_gtt =3D I915_GTT_PAGE_SIZE;
>>   }
>>=20=20=20
>> -static void ggtt_unbind_vma(struct i915_address_space *vm,
>> +void intel_ggtt_unbind_vma(struct i915_address_space *vm,
>>   			    struct i915_vma_resource *vma_res)
>>   {
>>   	vm->clear_range(vm, vma_res->start, vma_res->vma_size);
>> @@ -724,10 +442,10 @@ static int init_aliasing_ppgtt(struct i915_ggtt *g=
gtt)
>>   	ggtt->alias =3D ppgtt;
>>   	ggtt->vm.bind_async_flags |=3D ppgtt->vm.bind_async_flags;
>>=20=20=20
>> -	GEM_BUG_ON(ggtt->vm.vma_ops.bind_vma !=3D ggtt_bind_vma);
>> +	GEM_BUG_ON(ggtt->vm.vma_ops.bind_vma !=3D intel_ggtt_bind_vma);
>>   	ggtt->vm.vma_ops.bind_vma =3D aliasing_gtt_bind_vma;
>>=20=20=20
>> -	GEM_BUG_ON(ggtt->vm.vma_ops.unbind_vma !=3D ggtt_unbind_vma);
>> +	GEM_BUG_ON(ggtt->vm.vma_ops.unbind_vma !=3D intel_ggtt_unbind_vma);
>>   	ggtt->vm.vma_ops.unbind_vma =3D aliasing_gtt_unbind_vma;
>>=20=20=20
>>   	i915_vm_free_pt_stash(&ppgtt->vm, &stash);
>> @@ -750,8 +468,8 @@ static void fini_aliasing_ppgtt(struct i915_ggtt *gg=
tt)
>>=20=20=20
>>   	i915_vm_put(&ppgtt->vm);
>>=20=20=20
>> -	ggtt->vm.vma_ops.bind_vma   =3D ggtt_bind_vma;
>> -	ggtt->vm.vma_ops.unbind_vma =3D ggtt_unbind_vma;
>> +	ggtt->vm.vma_ops.bind_vma   =3D intel_ggtt_bind_vma;
>> +	ggtt->vm.vma_ops.unbind_vma =3D intel_ggtt_unbind_vma;
>>   }
>>=20=20=20
>>   int i915_init_ggtt(struct drm_i915_private *i915)
>> @@ -839,364 +557,12 @@ void i915_ggtt_driver_late_release(struct drm_i91=
5_private *i915)
>>   	dma_resv_fini(&ggtt->vm._resv);
>>   }
>>=20=20=20
>> -static unsigned int gen6_get_total_gtt_size(u16 snb_gmch_ctl)
>> -{
>> -	snb_gmch_ctl >>=3D SNB_GMCH_GGMS_SHIFT;
>> -	snb_gmch_ctl &=3D SNB_GMCH_GGMS_MASK;
>> -	return snb_gmch_ctl << 20;
>> -}
>> -
>> -static unsigned int gen8_get_total_gtt_size(u16 bdw_gmch_ctl)
>> -{
>> -	bdw_gmch_ctl >>=3D BDW_GMCH_GGMS_SHIFT;
>> -	bdw_gmch_ctl &=3D BDW_GMCH_GGMS_MASK;
>> -	if (bdw_gmch_ctl)
>> -		bdw_gmch_ctl =3D 1 << bdw_gmch_ctl;
>> -
>> -#ifdef CONFIG_X86_32
>> -	/* Limit 32b platforms to a 2GB GGTT: 4 << 20 / pte size * I915_GTT_PA=
GE_SIZE */
>> -	if (bdw_gmch_ctl > 4)
>> -		bdw_gmch_ctl =3D 4;
>> -#endif
>> -
>> -	return bdw_gmch_ctl << 20;
>> -}
>> -
>> -static unsigned int chv_get_total_gtt_size(u16 gmch_ctrl)
>> -{
>> -	gmch_ctrl >>=3D SNB_GMCH_GGMS_SHIFT;
>> -	gmch_ctrl &=3D SNB_GMCH_GGMS_MASK;
>> -
>> -	if (gmch_ctrl)
>> -		return 1 << (20 + gmch_ctrl);
>> -
>> -	return 0;
>> -}
>> -
>> -static unsigned int gen6_gttmmadr_size(struct drm_i915_private *i915)
>> -{
>> -	/*
>> -	 * GEN6: GTTMMADR size is 4MB and GTTADR starts at 2MB offset
>> -	 * GEN8: GTTMMADR size is 16MB and GTTADR starts at 8MB offset
>> -	 */
>> -	GEM_BUG_ON(GRAPHICS_VER(i915) < 6);
>> -	return (GRAPHICS_VER(i915) < 8) ? SZ_4M : SZ_16M;
>> -}
>> -
>> -static unsigned int gen6_gttadr_offset(struct drm_i915_private *i915)
>> -{
>> -	return gen6_gttmmadr_size(i915) / 2;
>> -}
>> -
>> -static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
>> -{
>> -	struct drm_i915_private *i915 =3D ggtt->vm.i915;
>> -	struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
>> -	phys_addr_t phys_addr;
>> -	u32 pte_flags;
>> -	int ret;
>> -
>> -	GEM_WARN_ON(pci_resource_len(pdev, 0) !=3D gen6_gttmmadr_size(i915));
>> -	phys_addr =3D pci_resource_start(pdev, 0) + gen6_gttadr_offset(i915);
>> -
>> -	/*
>> -	 * On BXT+/ICL+ writes larger than 64 bit to the GTT pagetable range
>> -	 * will be dropped. For WC mappings in general we have 64 byte burst
>> -	 * writes when the WC buffer is flushed, so we can't use it, but have =
to
>> -	 * resort to an uncached mapping. The WC issue is easily caught by the
>> -	 * readback check when writing GTT PTE entries.
>> -	 */
>> -	if (IS_GEN9_LP(i915) || GRAPHICS_VER(i915) >=3D 11)
>> -		ggtt->gsm =3D ioremap(phys_addr, size);
>> -	else
>> -		ggtt->gsm =3D ioremap_wc(phys_addr, size);
>> -	if (!ggtt->gsm) {
>> -		drm_err(&i915->drm, "Failed to map the ggtt page table\n");
>> -		return -ENOMEM;
>> -	}
>> -
>> -	kref_init(&ggtt->vm.resv_ref);
>> -	ret =3D setup_scratch_page(&ggtt->vm);
>> -	if (ret) {
>> -		drm_err(&i915->drm, "Scratch setup failed\n");
>> -		/* iounmap will also get called at remove, but meh */
>> -		iounmap(ggtt->gsm);
>> -		return ret;
>> -	}
>> -
>> -	pte_flags =3D 0;
>> -	if (i915_gem_object_is_lmem(ggtt->vm.scratch[0]))
>> -		pte_flags |=3D PTE_LM;
>> -
>> -	ggtt->vm.scratch[0]->encode =3D
>> -		ggtt->vm.pte_encode(px_dma(ggtt->vm.scratch[0]),
>> -				    I915_CACHE_NONE, pte_flags);
>> -
>> -	return 0;
>> -}
>> -
>> -static void gen6_gmch_remove(struct i915_address_space *vm)
>> -{
>> -	struct i915_ggtt *ggtt =3D i915_vm_to_ggtt(vm);
>> -
>> -	iounmap(ggtt->gsm);
>> -	free_scratch(vm);
>> -}
>> -
>> -static struct resource pci_resource(struct pci_dev *pdev, int bar)
>> +struct resource pci_resource(struct pci_dev *pdev, int bar)
>>   {
>>   	return (struct resource)DEFINE_RES_MEM(pci_resource_start(pdev, bar),
>>   					       pci_resource_len(pdev, bar));
>>   }
>
> Export with pci_ prefix is a bit dodgy - maybe intel_pci_resource? Not su=
re.

Yeah, even static functions with such generic prefix and name are
discouraged. It's ugly if it ends up conflicting because we're abusing
their namespace.

BR,
Jani.



>
> The rest looks okay to me.
>
> I mean I could suggest to do something about the incosistency of:
>
> static inline void intel_gt_gmch_gen5_chipset_flush(struct intel_gt *gt)
>
> vs:
>
> static inline int intel_gt_gmch_gen5_probe(struct i915_ggtt *ggtt)
>
> Since I value more for function name to tell me on what it operates=20
> instead where it is placed. So I'd personally rename the second class to=
=20
> i915_ggtt. It would also be consistent with other exported functions=20
> which take struct i915_ggtt like i915_ggtt_enable_guc, i915_ggtt_resume=20
> and so. But opinions will differ so I can live with it as is as well.
>
> Regards,
>
> Tvrtko
>
>>=20=20=20
>> -static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>> -{
>> -	struct drm_i915_private *i915 =3D ggtt->vm.i915;
>> -	struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
>> -	unsigned int size;
>> -	u16 snb_gmch_ctl;
>> -
>> -	/* TODO: We're not aware of mappable constraints on gen8 yet */
>> -	if (!HAS_LMEM(i915)) {
>> -		ggtt->gmadr =3D pci_resource(pdev, 2);
>> -		ggtt->mappable_end =3D resource_size(&ggtt->gmadr);
>> -	}
>> -
>> -	pci_read_config_word(pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
>> -	if (IS_CHERRYVIEW(i915))
>> -		size =3D chv_get_total_gtt_size(snb_gmch_ctl);
>> -	else
>> -		size =3D gen8_get_total_gtt_size(snb_gmch_ctl);
>> -
>> -	ggtt->vm.alloc_pt_dma =3D alloc_pt_dma;
>> -	ggtt->vm.alloc_scratch_dma =3D alloc_pt_dma;
>> -	ggtt->vm.lmem_pt_obj_flags =3D I915_BO_ALLOC_PM_EARLY;
>> -
>> -	ggtt->vm.total =3D (size / sizeof(gen8_pte_t)) * I915_GTT_PAGE_SIZE;
>> -	ggtt->vm.cleanup =3D gen6_gmch_remove;
>> -	ggtt->vm.insert_page =3D gen8_ggtt_insert_page;
>> -	ggtt->vm.clear_range =3D nop_clear_range;
>> -	if (intel_scanout_needs_vtd_wa(i915))
>> -		ggtt->vm.clear_range =3D gen8_ggtt_clear_range;
>> -
>> -	ggtt->vm.insert_entries =3D gen8_ggtt_insert_entries;
>> -
>> -	/*
>> -	 * Serialize GTT updates with aperture access on BXT if VT-d is on,
>> -	 * and always on CHV.
>> -	 */
>> -	if (intel_vm_no_concurrent_access_wa(i915)) {
>> -		ggtt->vm.insert_entries =3D bxt_vtd_ggtt_insert_entries__BKL;
>> -		ggtt->vm.insert_page    =3D bxt_vtd_ggtt_insert_page__BKL;
>> -		ggtt->vm.bind_async_flags =3D
>> -			I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
>> -	}
>> -
>> -	ggtt->invalidate =3D gen8_ggtt_invalidate;
>> -
>> -	ggtt->vm.vma_ops.bind_vma    =3D ggtt_bind_vma;
>> -	ggtt->vm.vma_ops.unbind_vma  =3D ggtt_unbind_vma;
>> -
>> -	ggtt->vm.pte_encode =3D gen8_ggtt_pte_encode;
>> -
>> -	setup_private_pat(ggtt->vm.gt->uncore);
>> -
>> -	return ggtt_probe_common(ggtt, size);
>> -}
>> -
>> -static u64 snb_pte_encode(dma_addr_t addr,
>> -			  enum i915_cache_level level,
>> -			  u32 flags)
>> -{
>> -	gen6_pte_t pte =3D GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>> -
>> -	switch (level) {
>> -	case I915_CACHE_L3_LLC:
>> -	case I915_CACHE_LLC:
>> -		pte |=3D GEN6_PTE_CACHE_LLC;
>> -		break;
>> -	case I915_CACHE_NONE:
>> -		pte |=3D GEN6_PTE_UNCACHED;
>> -		break;
>> -	default:
>> -		MISSING_CASE(level);
>> -	}
>> -
>> -	return pte;
>> -}
>> -
>> -static u64 ivb_pte_encode(dma_addr_t addr,
>> -			  enum i915_cache_level level,
>> -			  u32 flags)
>> -{
>> -	gen6_pte_t pte =3D GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>> -
>> -	switch (level) {
>> -	case I915_CACHE_L3_LLC:
>> -		pte |=3D GEN7_PTE_CACHE_L3_LLC;
>> -		break;
>> -	case I915_CACHE_LLC:
>> -		pte |=3D GEN6_PTE_CACHE_LLC;
>> -		break;
>> -	case I915_CACHE_NONE:
>> -		pte |=3D GEN6_PTE_UNCACHED;
>> -		break;
>> -	default:
>> -		MISSING_CASE(level);
>> -	}
>> -
>> -	return pte;
>> -}
>> -
>> -static u64 byt_pte_encode(dma_addr_t addr,
>> -			  enum i915_cache_level level,
>> -			  u32 flags)
>> -{
>> -	gen6_pte_t pte =3D GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>> -
>> -	if (!(flags & PTE_READ_ONLY))
>> -		pte |=3D BYT_PTE_WRITEABLE;
>> -
>> -	if (level !=3D I915_CACHE_NONE)
>> -		pte |=3D BYT_PTE_SNOOPED_BY_CPU_CACHES;
>> -
>> -	return pte;
>> -}
>> -
>> -static u64 hsw_pte_encode(dma_addr_t addr,
>> -			  enum i915_cache_level level,
>> -			  u32 flags)
>> -{
>> -	gen6_pte_t pte =3D HSW_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>> -
>> -	if (level !=3D I915_CACHE_NONE)
>> -		pte |=3D HSW_WB_LLC_AGE3;
>> -
>> -	return pte;
>> -}
>> -
>> -static u64 iris_pte_encode(dma_addr_t addr,
>> -			   enum i915_cache_level level,
>> -			   u32 flags)
>> -{
>> -	gen6_pte_t pte =3D HSW_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>> -
>> -	switch (level) {
>> -	case I915_CACHE_NONE:
>> -		break;
>> -	case I915_CACHE_WT:
>> -		pte |=3D HSW_WT_ELLC_LLC_AGE3;
>> -		break;
>> -	default:
>> -		pte |=3D HSW_WB_ELLC_LLC_AGE3;
>> -		break;
>> -	}
>> -
>> -	return pte;
>> -}
>> -
>> -static int gen6_gmch_probe(struct i915_ggtt *ggtt)
>> -{
>> -	struct drm_i915_private *i915 =3D ggtt->vm.i915;
>> -	struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
>> -	unsigned int size;
>> -	u16 snb_gmch_ctl;
>> -
>> -	ggtt->gmadr =3D pci_resource(pdev, 2);
>> -	ggtt->mappable_end =3D resource_size(&ggtt->gmadr);
>> -
>> -	/*
>> -	 * 64/512MB is the current min/max we actually know of, but this is
>> -	 * just a coarse sanity check.
>> -	 */
>> -	if (ggtt->mappable_end < (64<<20) || ggtt->mappable_end > (512<<20)) {
>> -		drm_err(&i915->drm, "Unknown GMADR size (%pa)\n",
>> -			&ggtt->mappable_end);
>> -		return -ENXIO;
>> -	}
>> -
>> -	pci_read_config_word(pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
>> -
>> -	size =3D gen6_get_total_gtt_size(snb_gmch_ctl);
>> -	ggtt->vm.total =3D (size / sizeof(gen6_pte_t)) * I915_GTT_PAGE_SIZE;
>> -
>> -	ggtt->vm.alloc_pt_dma =3D alloc_pt_dma;
>> -	ggtt->vm.alloc_scratch_dma =3D alloc_pt_dma;
>> -
>> -	ggtt->vm.clear_range =3D nop_clear_range;
>> -	if (!HAS_FULL_PPGTT(i915) || intel_scanout_needs_vtd_wa(i915))
>> -		ggtt->vm.clear_range =3D gen6_ggtt_clear_range;
>> -	ggtt->vm.insert_page =3D gen6_ggtt_insert_page;
>> -	ggtt->vm.insert_entries =3D gen6_ggtt_insert_entries;
>> -	ggtt->vm.cleanup =3D gen6_gmch_remove;
>> -
>> -	ggtt->invalidate =3D gen6_ggtt_invalidate;
>> -
>> -	if (HAS_EDRAM(i915))
>> -		ggtt->vm.pte_encode =3D iris_pte_encode;
>> -	else if (IS_HASWELL(i915))
>> -		ggtt->vm.pte_encode =3D hsw_pte_encode;
>> -	else if (IS_VALLEYVIEW(i915))
>> -		ggtt->vm.pte_encode =3D byt_pte_encode;
>> -	else if (GRAPHICS_VER(i915) >=3D 7)
>> -		ggtt->vm.pte_encode =3D ivb_pte_encode;
>> -	else
>> -		ggtt->vm.pte_encode =3D snb_pte_encode;
>> -
>> -	ggtt->vm.vma_ops.bind_vma    =3D ggtt_bind_vma;
>> -	ggtt->vm.vma_ops.unbind_vma  =3D ggtt_unbind_vma;
>> -
>> -	return ggtt_probe_common(ggtt, size);
>> -}
>> -
>> -static void i915_gmch_remove(struct i915_address_space *vm)
>> -{
>> -	intel_gmch_remove();
>> -}
>> -
>> -static int i915_gmch_probe(struct i915_ggtt *ggtt)
>> -{
>> -	struct drm_i915_private *i915 =3D ggtt->vm.i915;
>> -	phys_addr_t gmadr_base;
>> -	int ret;
>> -
>> -	ret =3D intel_gmch_probe(i915->bridge_dev, to_pci_dev(i915->drm.dev), =
NULL);
>> -	if (!ret) {
>> -		drm_err(&i915->drm, "failed to set up gmch\n");
>> -		return -EIO;
>> -	}
>> -
>> -	intel_gtt_get(&ggtt->vm.total, &gmadr_base, &ggtt->mappable_end);
>> -
>> -	ggtt->gmadr =3D
>> -		(struct resource)DEFINE_RES_MEM(gmadr_base, ggtt->mappable_end);
>> -
>> -	ggtt->vm.alloc_pt_dma =3D alloc_pt_dma;
>> -	ggtt->vm.alloc_scratch_dma =3D alloc_pt_dma;
>> -
>> -	if (needs_idle_maps(i915)) {
>> -		drm_notice(&i915->drm,
>> -			   "Flushing DMA requests before IOMMU unmaps; performance may be de=
graded\n");
>> -		ggtt->do_idle_maps =3D true;
>> -	}
>> -
>> -	ggtt->vm.insert_page =3D i915_ggtt_insert_page;
>> -	ggtt->vm.insert_entries =3D i915_ggtt_insert_entries;
>> -	ggtt->vm.clear_range =3D i915_ggtt_clear_range;
>> -	ggtt->vm.cleanup =3D i915_gmch_remove;
>> -
>> -	ggtt->invalidate =3D gmch_ggtt_invalidate;
>> -
>> -	ggtt->vm.vma_ops.bind_vma    =3D ggtt_bind_vma;
>> -	ggtt->vm.vma_ops.unbind_vma  =3D ggtt_unbind_vma;
>> -
>> -	if (unlikely(ggtt->do_idle_maps))
>> -		drm_notice(&i915->drm,
>> -			   "Applying Ironlake quirks for intel_iommu\n");
>> -
>> -	return 0;
>> -}
>> -
>>   static int ggtt_probe_hw(struct i915_ggtt *ggtt, struct intel_gt *gt)
>>   {
>>   	struct drm_i915_private *i915 =3D gt->i915;
>> @@ -1208,11 +574,11 @@ static int ggtt_probe_hw(struct i915_ggtt *ggtt, =
struct intel_gt *gt)
>>   	dma_resv_init(&ggtt->vm._resv);
>>=20=20=20
>>   	if (GRAPHICS_VER(i915) <=3D 5)
>> -		ret =3D i915_gmch_probe(ggtt);
>> +		ret =3D intel_gt_gmch_gen5_probe(ggtt);
>>   	else if (GRAPHICS_VER(i915) < 8)
>> -		ret =3D gen6_gmch_probe(ggtt);
>> +		ret =3D intel_gt_gmch_gen6_probe(ggtt);
>>   	else
>> -		ret =3D gen8_gmch_probe(ggtt);
>> +		ret =3D intel_gt_gmch_gen8_probe(ggtt);
>>   	if (ret) {
>>   		dma_resv_fini(&ggtt->vm._resv);
>>   		return ret;
>> @@ -1266,10 +632,7 @@ int i915_ggtt_probe_hw(struct drm_i915_private *i9=
15)
>>=20=20=20
>>   int i915_ggtt_enable_hw(struct drm_i915_private *i915)
>>   {
>> -	if (GRAPHICS_VER(i915) < 6 && !intel_enable_gtt())
>> -		return -EIO;
>> -
>> -	return 0;
>> +	return intel_gt_gmch_gen5_enable_hw(i915);
>>   }
>>=20=20=20
>>   void i915_ggtt_enable_guc(struct i915_ggtt *ggtt)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/g=
t/intel_gt.c
>> index 5001a6168d56..f0014c5072c9 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>> @@ -4,7 +4,6 @@
>>    */
>>=20=20=20
>>   #include <drm/drm_managed.h>
>> -#include <drm/intel-gtt.h>
>>=20=20=20
>>   #include "gem/i915_gem_internal.h"
>>   #include "gem/i915_gem_lmem.h"
>> @@ -17,6 +16,7 @@
>>   #include "intel_gt_buffer_pool.h"
>>   #include "intel_gt_clock_utils.h"
>>   #include "intel_gt_debugfs.h"
>> +#include "intel_gt_gmch.h"
>>   #include "intel_gt_pm.h"
>>   #include "intel_gt_regs.h"
>>   #include "intel_gt_requests.h"
>> @@ -451,7 +451,7 @@ void intel_gt_chipset_flush(struct intel_gt *gt)
>>   {
>>   	wmb();
>>   	if (GRAPHICS_VER(gt->i915) < 6)
>> -		intel_gtt_chipset_flush();
>> +		intel_gt_gmch_gen5_chipset_flush(gt);
>>   }
>>=20=20=20
>>   void intel_gt_driver_register(struct intel_gt *gt)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/g=
t/intel_gt.h
>> index e76168e10a21..8956dfc5afe0 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
>> @@ -13,6 +13,13 @@
>>   struct drm_i915_private;
>>   struct drm_printer;
>>=20=20=20
>> +struct insert_entries {
>> +	struct i915_address_space *vm;
>> +	struct i915_vma_resource *vma_res;
>> +	enum i915_cache_level level;
>> +	u32 flags;
>> +};
>> +
>>   #define GT_TRACE(gt, fmt, ...) do {					\
>>   	const struct intel_gt *gt__ __maybe_unused =3D (gt);		\
>>   	GEM_TRACE("%s " fmt, dev_name(gt__->i915->drm.dev),		\
>> @@ -113,4 +120,6 @@ void intel_gt_watchdog_work(struct work_struct *work=
);
>>=20=20=20
>>   void intel_gt_invalidate_tlbs(struct intel_gt *gt);
>>=20=20=20
>> +struct resource pci_resource(struct pci_dev *pdev, int bar);
>> +
>>   #endif /* __INTEL_GT_H__ */
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_gmch.c b/drivers/gpu/drm/i=
915/gt/intel_gt_gmch.c
>> new file mode 100644
>> index 000000000000..b914ebb30166
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_gmch.c
>> @@ -0,0 +1,653 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright =C2=A9 2022 Intel Corporation
>> + */
>> +
>> +#include <drm/intel-gtt.h>
>> +#include <drm/i915_drm.h>
>> +
>> +#include <linux/agp_backend.h>
>> +#include <linux/stop_machine.h>
>> +
>> +#include "i915_drv.h"
>> +#include "intel_gt_gmch.h"
>> +#include "intel_gt_regs.h"
>> +#include "intel_gt.h"
>> +
>> +#include "gen8_ppgtt.h"
>> +
>> +struct insert_page {
>> +	struct i915_address_space *vm;
>> +	dma_addr_t addr;
>> +	u64 offset;
>> +	enum i915_cache_level level;
>> +};
>> +
>> +static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
>> +{
>> +	writeq(pte, addr);
>> +}
>> +
>> +static void nop_clear_range(struct i915_address_space *vm,
>> +			    u64 start, u64 length)
>> +{
>> +}
>> +
>> +static u64 snb_pte_encode(dma_addr_t addr,
>> +			  enum i915_cache_level level,
>> +			  u32 flags)
>> +{
>> +	gen6_pte_t pte =3D GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>> +
>> +	switch (level) {
>> +	case I915_CACHE_L3_LLC:
>> +	case I915_CACHE_LLC:
>> +		pte |=3D GEN6_PTE_CACHE_LLC;
>> +		break;
>> +	case I915_CACHE_NONE:
>> +		pte |=3D GEN6_PTE_UNCACHED;
>> +		break;
>> +	default:
>> +		MISSING_CASE(level);
>> +	}
>> +
>> +	return pte;
>> +}
>> +
>> +static u64 ivb_pte_encode(dma_addr_t addr,
>> +			  enum i915_cache_level level,
>> +			  u32 flags)
>> +{
>> +	gen6_pte_t pte =3D GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>> +
>> +	switch (level) {
>> +	case I915_CACHE_L3_LLC:
>> +		pte |=3D GEN7_PTE_CACHE_L3_LLC;
>> +		break;
>> +	case I915_CACHE_LLC:
>> +		pte |=3D GEN6_PTE_CACHE_LLC;
>> +		break;
>> +	case I915_CACHE_NONE:
>> +		pte |=3D GEN6_PTE_UNCACHED;
>> +		break;
>> +	default:
>> +		MISSING_CASE(level);
>> +	}
>> +
>> +	return pte;
>> +}
>> +
>> +static u64 byt_pte_encode(dma_addr_t addr,
>> +			  enum i915_cache_level level,
>> +			  u32 flags)
>> +{
>> +	gen6_pte_t pte =3D GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>> +
>> +	if (!(flags & PTE_READ_ONLY))
>> +		pte |=3D BYT_PTE_WRITEABLE;
>> +
>> +	if (level !=3D I915_CACHE_NONE)
>> +		pte |=3D BYT_PTE_SNOOPED_BY_CPU_CACHES;
>> +
>> +	return pte;
>> +}
>> +
>> +static u64 hsw_pte_encode(dma_addr_t addr,
>> +			  enum i915_cache_level level,
>> +			  u32 flags)
>> +{
>> +	gen6_pte_t pte =3D HSW_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>> +
>> +	if (level !=3D I915_CACHE_NONE)
>> +		pte |=3D HSW_WB_LLC_AGE3;
>> +
>> +	return pte;
>> +}
>> +
>> +static u64 iris_pte_encode(dma_addr_t addr,
>> +			   enum i915_cache_level level,
>> +			   u32 flags)
>> +{
>> +	gen6_pte_t pte =3D HSW_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>> +
>> +	switch (level) {
>> +	case I915_CACHE_NONE:
>> +		break;
>> +	case I915_CACHE_WT:
>> +		pte |=3D HSW_WT_ELLC_LLC_AGE3;
>> +		break;
>> +	default:
>> +		pte |=3D HSW_WB_ELLC_LLC_AGE3;
>> +		break;
>> +	}
>> +
>> +	return pte;
>> +}
>> +
>> +static void gen5_ggtt_insert_page(struct i915_address_space *vm,
>> +				  dma_addr_t addr,
>> +				  u64 offset,
>> +				  enum i915_cache_level cache_level,
>> +				  u32 unused)
>> +{
>> +	unsigned int flags =3D (cache_level =3D=3D I915_CACHE_NONE) ?
>> +		AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>> +
>> +	intel_gtt_insert_page(addr, offset >> PAGE_SHIFT, flags);
>> +}
>> +
>> +static void gen6_ggtt_insert_page(struct i915_address_space *vm,
>> +				  dma_addr_t addr,
>> +				  u64 offset,
>> +				  enum i915_cache_level level,
>> +				  u32 flags)
>> +{
>> +	struct i915_ggtt *ggtt =3D i915_vm_to_ggtt(vm);
>> +	gen6_pte_t __iomem *pte =3D
>> +		(gen6_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
>> +
>> +	iowrite32(vm->pte_encode(addr, level, flags), pte);
>> +
>> +	ggtt->invalidate(ggtt);
>> +}
>> +
>> +static void gen8_ggtt_insert_page(struct i915_address_space *vm,
>> +				  dma_addr_t addr,
>> +				  u64 offset,
>> +				  enum i915_cache_level level,
>> +				  u32 flags)
>> +{
>> +	struct i915_ggtt *ggtt =3D i915_vm_to_ggtt(vm);
>> +	gen8_pte_t __iomem *pte =3D
>> +		(gen8_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
>> +
>> +	gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, flags));
>> +
>> +	ggtt->invalidate(ggtt);
>> +}
>> +
>> +static void gen5_ggtt_insert_entries(struct i915_address_space *vm,
>> +				     struct i915_vma_resource *vma_res,
>> +				     enum i915_cache_level cache_level,
>> +				     u32 unused)
>> +{
>> +	unsigned int flags =3D (cache_level =3D=3D I915_CACHE_NONE) ?
>> +		AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>> +
>> +	intel_gtt_insert_sg_entries(vma_res->bi.pages, vma_res->start >> PAGE_=
SHIFT,
>> +				    flags);
>> +}
>> +
>> +/*
>> + * Binds an object into the global gtt with the specified cache level.
>> + * The object will be accessible to the GPU via commands whose operands
>> + * reference offsets within the global GTT as well as accessible by the=
 GPU
>> + * through the GMADR mapped BAR (i915->mm.gtt->gtt).
>> + */
>> +static void gen6_ggtt_insert_entries(struct i915_address_space *vm,
>> +				     struct i915_vma_resource *vma_res,
>> +				     enum i915_cache_level level,
>> +				     u32 flags)
>> +{
>> +	struct i915_ggtt *ggtt =3D i915_vm_to_ggtt(vm);
>> +	gen6_pte_t __iomem *gte;
>> +	gen6_pte_t __iomem *end;
>> +	struct sgt_iter iter;
>> +	dma_addr_t addr;
>> +
>> +	gte =3D (gen6_pte_t __iomem *)ggtt->gsm;
>> +	gte +=3D vma_res->start / I915_GTT_PAGE_SIZE;
>> +	end =3D gte + vma_res->node_size / I915_GTT_PAGE_SIZE;
>> +
>> +	for_each_sgt_daddr(addr, iter, vma_res->bi.pages)
>> +		iowrite32(vm->pte_encode(addr, level, flags), gte++);
>> +	GEM_BUG_ON(gte > end);
>> +
>> +	/* Fill the allocated but "unused" space beyond the end of the buffer =
*/
>> +	while (gte < end)
>> +		iowrite32(vm->scratch[0]->encode, gte++);
>> +
>> +	/*
>> +	 * We want to flush the TLBs only after we're certain all the PTE
>> +	 * updates have finished.
>> +	 */
>> +	ggtt->invalidate(ggtt);
>> +}
>> +
>> +static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
>> +				     struct i915_vma_resource *vma_res,
>> +				     enum i915_cache_level level,
>> +				     u32 flags)
>> +{
>> +	const gen8_pte_t pte_encode =3D gen8_ggtt_pte_encode(0, level, flags);
>> +	struct i915_ggtt *ggtt =3D i915_vm_to_ggtt(vm);
>> +	gen8_pte_t __iomem *gte;
>> +	gen8_pte_t __iomem *end;
>> +	struct sgt_iter iter;
>> +	dma_addr_t addr;
>> +
>> +	/*
>> +	 * Note that we ignore PTE_READ_ONLY here. The caller must be careful
>> +	 * not to allow the user to override access to a read only page.
>> +	 */
>> +
>> +	gte =3D (gen8_pte_t __iomem *)ggtt->gsm;
>> +	gte +=3D vma_res->start / I915_GTT_PAGE_SIZE;
>> +	end =3D gte + vma_res->node_size / I915_GTT_PAGE_SIZE;
>> +
>> +	for_each_sgt_daddr(addr, iter, vma_res->bi.pages)
>> +		gen8_set_pte(gte++, pte_encode | addr);
>> +	GEM_BUG_ON(gte > end);
>> +
>> +	/* Fill the allocated but "unused" space beyond the end of the buffer =
*/
>> +	while (gte < end)
>> +		gen8_set_pte(gte++, vm->scratch[0]->encode);
>> +
>> +	/*
>> +	 * We want to flush the TLBs only after we're certain all the PTE
>> +	 * updates have finished.
>> +	 */
>> +	ggtt->invalidate(ggtt);
>> +}
>> +
>> +static void bxt_vtd_ggtt_wa(struct i915_address_space *vm)
>> +{
>> +	/*
>> +	 * Make sure the internal GAM fifo has been cleared of all GTT
>> +	 * writes before exiting stop_machine(). This guarantees that
>> +	 * any aperture accesses waiting to start in another process
>> +	 * cannot back up behind the GTT writes causing a hang.
>> +	 * The register can be any arbitrary GAM register.
>> +	 */
>> +	intel_uncore_posting_read_fw(vm->gt->uncore, GFX_FLSH_CNTL_GEN6);
>> +}
>> +
>> +static int bxt_vtd_ggtt_insert_page__cb(void *_arg)
>> +{
>> +	struct insert_page *arg =3D _arg;
>> +
>> +	gen8_ggtt_insert_page(arg->vm, arg->addr, arg->offset, arg->level, 0);
>> +	bxt_vtd_ggtt_wa(arg->vm);
>> +
>> +	return 0;
>> +}
>> +
>> +static void bxt_vtd_ggtt_insert_page__BKL(struct i915_address_space *vm,
>> +					  dma_addr_t addr,
>> +					  u64 offset,
>> +					  enum i915_cache_level level,
>> +					  u32 unused)
>> +{
>> +	struct insert_page arg =3D { vm, addr, offset, level };
>> +
>> +	stop_machine(bxt_vtd_ggtt_insert_page__cb, &arg, NULL);
>> +}
>> +
>> +static int bxt_vtd_ggtt_insert_entries__cb(void *_arg)
>> +{
>> +	struct insert_entries *arg =3D _arg;
>> +
>> +	gen8_ggtt_insert_entries(arg->vm, arg->vma_res, arg->level, arg->flags=
);
>> +	bxt_vtd_ggtt_wa(arg->vm);
>> +
>> +	return 0;
>> +}
>> +
>> +static void bxt_vtd_ggtt_insert_entries__BKL(struct i915_address_space =
*vm,
>> +					     struct i915_vma_resource *vma_res,
>> +					     enum i915_cache_level level,
>> +					     u32 flags)
>> +{
>> +	struct insert_entries arg =3D { vm, vma_res, level, flags };
>> +
>> +	stop_machine(bxt_vtd_ggtt_insert_entries__cb, &arg, NULL);
>> +}
>> +
>> +void intel_gt_gmch_gen5_chipset_flush(struct intel_gt *gt)
>> +{
>> +	intel_gtt_chipset_flush();
>> +}
>> +
>> +static void gmch_ggtt_invalidate(struct i915_ggtt *ggtt)
>> +{
>> +	intel_gtt_chipset_flush();
>> +}
>> +
>> +static void gen5_ggtt_clear_range(struct i915_address_space *vm,
>> +					 u64 start, u64 length)
>> +{
>> +	intel_gtt_clear_range(start >> PAGE_SHIFT, length >> PAGE_SHIFT);
>> +}
>> +
>> +static void gen6_ggtt_clear_range(struct i915_address_space *vm,
>> +				  u64 start, u64 length)
>> +{
>> +	struct i915_ggtt *ggtt =3D i915_vm_to_ggtt(vm);
>> +	unsigned int first_entry =3D start / I915_GTT_PAGE_SIZE;
>> +	unsigned int num_entries =3D length / I915_GTT_PAGE_SIZE;
>> +	gen6_pte_t scratch_pte, __iomem *gtt_base =3D
>> +		(gen6_pte_t __iomem *)ggtt->gsm + first_entry;
>> +	const int max_entries =3D ggtt_total_entries(ggtt) - first_entry;
>> +	int i;
>> +
>> +	if (WARN(num_entries > max_entries,
>> +		 "First entry =3D %d; Num entries =3D %d (max=3D%d)\n",
>> +		 first_entry, num_entries, max_entries))
>> +		num_entries =3D max_entries;
>> +
>> +	scratch_pte =3D vm->scratch[0]->encode;
>> +	for (i =3D 0; i < num_entries; i++)
>> +		iowrite32(scratch_pte, &gtt_base[i]);
>> +}
>> +
>> +static void gen8_ggtt_clear_range(struct i915_address_space *vm,
>> +				  u64 start, u64 length)
>> +{
>> +	struct i915_ggtt *ggtt =3D i915_vm_to_ggtt(vm);
>> +	unsigned int first_entry =3D start / I915_GTT_PAGE_SIZE;
>> +	unsigned int num_entries =3D length / I915_GTT_PAGE_SIZE;
>> +	const gen8_pte_t scratch_pte =3D vm->scratch[0]->encode;
>> +	gen8_pte_t __iomem *gtt_base =3D
>> +		(gen8_pte_t __iomem *)ggtt->gsm + first_entry;
>> +	const int max_entries =3D ggtt_total_entries(ggtt) - first_entry;
>> +	int i;
>> +
>> +	if (WARN(num_entries > max_entries,
>> +		 "First entry =3D %d; Num entries =3D %d (max=3D%d)\n",
>> +		 first_entry, num_entries, max_entries))
>> +		num_entries =3D max_entries;
>> +
>> +	for (i =3D 0; i < num_entries; i++)
>> +		gen8_set_pte(&gtt_base[i], scratch_pte);
>> +}
>> +
>> +static void gen5_gmch_remove(struct i915_address_space *vm)
>> +{
>> +	intel_gmch_remove();
>> +}
>> +
>> +static void gen6_gmch_remove(struct i915_address_space *vm)
>> +{
>> +	struct i915_ggtt *ggtt =3D i915_vm_to_ggtt(vm);
>> +
>> +	iounmap(ggtt->gsm);
>> +	free_scratch(vm);
>> +}
>> +
>> +/*
>> + * Certain Gen5 chipsets require idling the GPU before
>> + * unmapping anything from the GTT when VT-d is enabled.
>> + */
>> +static bool needs_idle_maps(struct drm_i915_private *i915)
>> +{
>> +	/*
>> +	 * Query intel_iommu to see if we need the workaround. Presumably that
>> +	 * was loaded first.
>> +	 */
>> +	if (!intel_vtd_active(i915))
>> +		return false;
>> +
>> +	if (GRAPHICS_VER(i915) =3D=3D 5 && IS_MOBILE(i915))
>> +		return true;
>> +
>> +	if (GRAPHICS_VER(i915) =3D=3D 12)
>> +		return true; /* XXX DMAR fault reason 7 */
>> +
>> +	return false;
>> +}
>> +
>> +static unsigned int gen6_gttmmadr_size(struct drm_i915_private *i915)
>> +{
>> +	/*
>> +	 * GEN6: GTTMMADR size is 4MB and GTTADR starts at 2MB offset
>> +	 * GEN8: GTTMMADR size is 16MB and GTTADR starts at 8MB offset
>> +	 */
>> +	GEM_BUG_ON(GRAPHICS_VER(i915) < 6);
>> +	return (GRAPHICS_VER(i915) < 8) ? SZ_4M : SZ_16M;
>> +}
>> +
>> +static unsigned int gen6_get_total_gtt_size(u16 snb_gmch_ctl)
>> +{
>> +	snb_gmch_ctl >>=3D SNB_GMCH_GGMS_SHIFT;
>> +	snb_gmch_ctl &=3D SNB_GMCH_GGMS_MASK;
>> +	return snb_gmch_ctl << 20;
>> +}
>> +
>> +static unsigned int gen8_get_total_gtt_size(u16 bdw_gmch_ctl)
>> +{
>> +	bdw_gmch_ctl >>=3D BDW_GMCH_GGMS_SHIFT;
>> +	bdw_gmch_ctl &=3D BDW_GMCH_GGMS_MASK;
>> +	if (bdw_gmch_ctl)
>> +		bdw_gmch_ctl =3D 1 << bdw_gmch_ctl;
>> +
>> +#ifdef CONFIG_X86_32
>> +	/* Limit 32b platforms to a 2GB GGTT: 4 << 20 / pte size * I915_GTT_PA=
GE_SIZE */
>> +	if (bdw_gmch_ctl > 4)
>> +		bdw_gmch_ctl =3D 4;
>> +#endif
>> +
>> +	return bdw_gmch_ctl << 20;
>> +}
>> +
>> +static unsigned int gen6_gttadr_offset(struct drm_i915_private *i915)
>> +{
>> +	return gen6_gttmmadr_size(i915) / 2;
>> +}
>> +
>> +static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
>> +{
>> +	struct drm_i915_private *i915 =3D ggtt->vm.i915;
>> +	struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
>> +	phys_addr_t phys_addr;
>> +	u32 pte_flags;
>> +	int ret;
>> +
>> +	GEM_WARN_ON(pci_resource_len(pdev, 0) !=3D gen6_gttmmadr_size(i915));
>> +	phys_addr =3D pci_resource_start(pdev, 0) + gen6_gttadr_offset(i915);
>> +
>> +	/*
>> +	 * On BXT+/ICL+ writes larger than 64 bit to the GTT pagetable range
>> +	 * will be dropped. For WC mappings in general we have 64 byte burst
>> +	 * writes when the WC buffer is flushed, so we can't use it, but have =
to
>> +	 * resort to an uncached mapping. The WC issue is easily caught by the
>> +	 * readback check when writing GTT PTE entries.
>> +	 */
>> +	if (IS_GEN9_LP(i915) || GRAPHICS_VER(i915) >=3D 11)
>> +		ggtt->gsm =3D ioremap(phys_addr, size);
>> +	else
>> +		ggtt->gsm =3D ioremap_wc(phys_addr, size);
>> +	if (!ggtt->gsm) {
>> +		drm_err(&i915->drm, "Failed to map the ggtt page table\n");
>> +		return -ENOMEM;
>> +	}
>> +
>> +	kref_init(&ggtt->vm.resv_ref);
>> +	ret =3D setup_scratch_page(&ggtt->vm);
>> +	if (ret) {
>> +		drm_err(&i915->drm, "Scratch setup failed\n");
>> +		/* iounmap will also get called at remove, but meh */
>> +		iounmap(ggtt->gsm);
>> +		return ret;
>> +	}
>> +
>> +	pte_flags =3D 0;
>> +	if (i915_gem_object_is_lmem(ggtt->vm.scratch[0]))
>> +		pte_flags |=3D PTE_LM;
>> +
>> +	ggtt->vm.scratch[0]->encode =3D
>> +		ggtt->vm.pte_encode(px_dma(ggtt->vm.scratch[0]),
>> +				    I915_CACHE_NONE, pte_flags);
>> +
>> +	return 0;
>> +}
>> +
>> +int intel_gt_gmch_gen5_probe(struct i915_ggtt *ggtt)
>> +{
>> +	struct drm_i915_private *i915 =3D ggtt->vm.i915;
>> +	phys_addr_t gmadr_base;
>> +	int ret;
>> +
>> +	ret =3D intel_gmch_probe(i915->bridge_dev, to_pci_dev(i915->drm.dev), =
NULL);
>> +	if (!ret) {
>> +		drm_err(&i915->drm, "failed to set up gmch\n");
>> +		return -EIO;
>> +	}
>> +
>> +	intel_gtt_get(&ggtt->vm.total, &gmadr_base, &ggtt->mappable_end);
>> +
>> +	ggtt->gmadr =3D
>> +		(struct resource)DEFINE_RES_MEM(gmadr_base, ggtt->mappable_end);
>> +
>> +	ggtt->vm.alloc_pt_dma =3D alloc_pt_dma;
>> +	ggtt->vm.alloc_scratch_dma =3D alloc_pt_dma;
>> +
>> +	if (needs_idle_maps(i915)) {
>> +		drm_notice(&i915->drm,
>> +			   "Flushing DMA requests before IOMMU unmaps; performance may be de=
graded\n");
>> +		ggtt->do_idle_maps =3D true;
>> +	}
>> +
>> +	ggtt->vm.insert_page =3D gen5_ggtt_insert_page;
>> +	ggtt->vm.insert_entries =3D gen5_ggtt_insert_entries;
>> +	ggtt->vm.clear_range =3D gen5_ggtt_clear_range;
>> +	ggtt->vm.cleanup =3D gen5_gmch_remove;
>> +
>> +	ggtt->invalidate =3D gmch_ggtt_invalidate;
>> +
>> +	ggtt->vm.vma_ops.bind_vma    =3D intel_ggtt_bind_vma;
>> +	ggtt->vm.vma_ops.unbind_vma  =3D intel_ggtt_unbind_vma;
>> +
>> +	if (unlikely(ggtt->do_idle_maps))
>> +		drm_notice(&i915->drm,
>> +			   "Applying Ironlake quirks for intel_iommu\n");
>> +
>> +	return 0;
>> +}
>> +
>> +int intel_gt_gmch_gen6_probe(struct i915_ggtt *ggtt)
>> +{
>> +	struct drm_i915_private *i915 =3D ggtt->vm.i915;
>> +	struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
>> +	unsigned int size;
>> +	u16 snb_gmch_ctl;
>> +
>> +	ggtt->gmadr =3D pci_resource(pdev, 2);
>> +	ggtt->mappable_end =3D resource_size(&ggtt->gmadr);
>> +
>> +	/*
>> +	 * 64/512MB is the current min/max we actually know of, but this is
>> +	 * just a coarse sanity check.
>> +	 */
>> +	if (ggtt->mappable_end < (64<<20) || ggtt->mappable_end > (512<<20)) {
>> +		drm_err(&i915->drm, "Unknown GMADR size (%pa)\n",
>> +			&ggtt->mappable_end);
>> +		return -ENXIO;
>> +	}
>> +
>> +	pci_read_config_word(pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
>> +
>> +	size =3D gen6_get_total_gtt_size(snb_gmch_ctl);
>> +	ggtt->vm.total =3D (size / sizeof(gen6_pte_t)) * I915_GTT_PAGE_SIZE;
>> +
>> +	ggtt->vm.alloc_pt_dma =3D alloc_pt_dma;
>> +	ggtt->vm.alloc_scratch_dma =3D alloc_pt_dma;
>> +
>> +	ggtt->vm.clear_range =3D nop_clear_range;
>> +	if (!HAS_FULL_PPGTT(i915) || intel_scanout_needs_vtd_wa(i915))
>> +		ggtt->vm.clear_range =3D gen6_ggtt_clear_range;
>> +	ggtt->vm.insert_page =3D gen6_ggtt_insert_page;
>> +	ggtt->vm.insert_entries =3D gen6_ggtt_insert_entries;
>> +	ggtt->vm.cleanup =3D gen6_gmch_remove;
>> +
>> +	ggtt->invalidate =3D gen6_ggtt_invalidate;
>> +
>> +	if (HAS_EDRAM(i915))
>> +		ggtt->vm.pte_encode =3D iris_pte_encode;
>> +	else if (IS_HASWELL(i915))
>> +		ggtt->vm.pte_encode =3D hsw_pte_encode;
>> +	else if (IS_VALLEYVIEW(i915))
>> +		ggtt->vm.pte_encode =3D byt_pte_encode;
>> +	else if (GRAPHICS_VER(i915) >=3D 7)
>> +		ggtt->vm.pte_encode =3D ivb_pte_encode;
>> +	else
>> +		ggtt->vm.pte_encode =3D snb_pte_encode;
>> +
>> +	ggtt->vm.vma_ops.bind_vma    =3D intel_ggtt_bind_vma;
>> +	ggtt->vm.vma_ops.unbind_vma  =3D intel_ggtt_unbind_vma;
>> +
>> +	return ggtt_probe_common(ggtt, size);
>> +}
>> +
>> +static unsigned int chv_get_total_gtt_size(u16 gmch_ctrl)
>> +{
>> +	gmch_ctrl >>=3D SNB_GMCH_GGMS_SHIFT;
>> +	gmch_ctrl &=3D SNB_GMCH_GGMS_MASK;
>> +
>> +	if (gmch_ctrl)
>> +		return 1 << (20 + gmch_ctrl);
>> +
>> +	return 0;
>> +}
>> +
>> +int intel_gt_gmch_gen8_probe(struct i915_ggtt *ggtt)
>> +{
>> +	struct drm_i915_private *i915 =3D ggtt->vm.i915;
>> +	struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
>> +	unsigned int size;
>> +	u16 snb_gmch_ctl;
>> +
>> +	/* TODO: We're not aware of mappable constraints on gen8 yet */
>> +	if (!HAS_LMEM(i915)) {
>> +		ggtt->gmadr =3D pci_resource(pdev, 2);
>> +		ggtt->mappable_end =3D resource_size(&ggtt->gmadr);
>> +	}
>> +
>> +	pci_read_config_word(pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
>> +	if (IS_CHERRYVIEW(i915))
>> +		size =3D chv_get_total_gtt_size(snb_gmch_ctl);
>> +	else
>> +		size =3D gen8_get_total_gtt_size(snb_gmch_ctl);
>> +
>> +	ggtt->vm.alloc_pt_dma =3D alloc_pt_dma;
>> +	ggtt->vm.alloc_scratch_dma =3D alloc_pt_dma;
>> +	ggtt->vm.lmem_pt_obj_flags =3D I915_BO_ALLOC_PM_EARLY;
>> +
>> +	ggtt->vm.total =3D (size / sizeof(gen8_pte_t)) * I915_GTT_PAGE_SIZE;
>> +	ggtt->vm.cleanup =3D gen6_gmch_remove;
>> +	ggtt->vm.insert_page =3D gen8_ggtt_insert_page;
>> +	ggtt->vm.clear_range =3D nop_clear_range;
>> +	if (intel_scanout_needs_vtd_wa(i915))
>> +		ggtt->vm.clear_range =3D gen8_ggtt_clear_range;
>> +
>> +	ggtt->vm.insert_entries =3D gen8_ggtt_insert_entries;
>> +
>> +	/*
>> +	 * Serialize GTT updates with aperture access on BXT if VT-d is on,
>> +	 * and always on CHV.
>> +	 */
>> +	if (intel_vm_no_concurrent_access_wa(i915)) {
>> +		ggtt->vm.insert_entries =3D bxt_vtd_ggtt_insert_entries__BKL;
>> +		ggtt->vm.insert_page    =3D bxt_vtd_ggtt_insert_page__BKL;
>> +		ggtt->vm.bind_async_flags =3D
>> +			I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
>> +	}
>> +
>> +	ggtt->invalidate =3D gen8_ggtt_invalidate;
>> +
>> +	ggtt->vm.vma_ops.bind_vma    =3D intel_ggtt_bind_vma;
>> +	ggtt->vm.vma_ops.unbind_vma  =3D intel_ggtt_unbind_vma;
>> +
>> +	ggtt->vm.pte_encode =3D gen8_ggtt_pte_encode;
>> +
>> +	setup_private_pat(ggtt->vm.gt->uncore);
>> +
>> +	return ggtt_probe_common(ggtt, size);
>> +}
>> +
>> +int intel_gt_gmch_gen5_enable_hw(struct drm_i915_private *i915)
>> +{
>> +	if (GRAPHICS_VER(i915) < 6 && !intel_enable_gtt())
>> +		return -EIO;
>> +
>> +	return 0;
>> +}
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_gmch.h b/drivers/gpu/drm/i=
915/gt/intel_gt_gmch.h
>> new file mode 100644
>> index 000000000000..02e5342d7ea3
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_gmch.h
>> @@ -0,0 +1,46 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright =C2=A9 2022 Intel Corporation
>> + */
>> +
>> +#ifndef __INTEL_GT_GMCH_H__
>> +#define __INTEL_GT_GMCH_H__
>> +
>> +#include "intel_gtt.h"
>> +
>> +/* For x86 platforms */
>> +#if IS_ENABLED(CONFIG_X86)
>> +void intel_gt_gmch_gen5_chipset_flush(struct intel_gt *gt);
>> +int intel_gt_gmch_gen6_probe(struct i915_ggtt *ggtt);
>> +int intel_gt_gmch_gen8_probe(struct i915_ggtt *ggtt);
>> +int intel_gt_gmch_gen5_probe(struct i915_ggtt *ggtt);
>> +int intel_gt_gmch_gen5_enable_hw(struct drm_i915_private *i915);
>> +
>> +/* Stubs for non-x86 platforms */
>> +#else
>> +static inline void intel_gt_gmch_gen5_chipset_flush(struct intel_gt *gt)
>> +{
>> +}
>> +static inline int intel_gt_gmch_gen5_probe(struct i915_ggtt *ggtt)
>> +{
>> +	/* No HW should be probed for this case yet, return fail */
>> +	return -1;
>> +}
>> +static inline int intel_gt_gmch_gen6_probe(struct i915_ggtt *ggtt)
>> +{
>> +	/* No HW should be probed for this case yet, return fail */
>> +	return -1;
>> +}
>> +static inline int intel_gt_gmch_gen8_probe(struct i915_ggtt *ggtt)
>> +{
>> +	/* No HW should be probed for this case yet, return fail */
>> +	return -1;
>> +}
>> +static inline int intel_gt_gmch_gen5_enable_hw(struct drm_i915_private =
*i915)
>> +{
>> +	/* No HW should be enabled for this case yet, return fail */
>> +	return -1;
>> +}
>> +#endif
>> +
>> +#endif /* __INTEL_GT_GMCH_H__ */
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/=
gt/intel_gtt.h
>> index 4529b5e9f6e6..b4b9cc5a8ff6 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
>> @@ -547,6 +547,14 @@ i915_page_dir_dma_addr(const struct i915_ppgtt *ppg=
tt, const unsigned int n)
>>   void ppgtt_init(struct i915_ppgtt *ppgtt, struct intel_gt *gt,
>>   		unsigned long lmem_pt_obj_flags);
>>=20=20=20
>> +void intel_ggtt_bind_vma(struct i915_address_space *vm,
>> +			  struct i915_vm_pt_stash *stash,
>> +			  struct i915_vma_resource *vma_res,
>> +			  enum i915_cache_level cache_level,
>> +			  u32 flags);
>> +void intel_ggtt_unbind_vma(struct i915_address_space *vm,
>> +			    struct i915_vma_resource *vma_res);
>> +
>>   int i915_ggtt_probe_hw(struct drm_i915_private *i915);
>>   int i915_ggtt_init_hw(struct drm_i915_private *i915);
>>   int i915_ggtt_enable_hw(struct drm_i915_private *i915);
>> @@ -617,6 +625,7 @@ release_pd_entry(struct i915_page_directory * const =
pd,
>>   		 struct i915_page_table * const pt,
>>   		 const struct drm_i915_gem_object * const scratch);
>>   void gen6_ggtt_invalidate(struct i915_ggtt *ggtt);
>> +void gen8_ggtt_invalidate(struct i915_ggtt *ggtt);
>>=20=20=20
>>   void ppgtt_bind_vma(struct i915_address_space *vm,
>>   		    struct i915_vm_pt_stash *stash,

--=20
Jani Nikula, Intel Open Source Graphics Center
