Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8B7492148
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 09:36:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFF0F10E6EC;
	Tue, 18 Jan 2022 08:36:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFA231122B3;
 Tue, 18 Jan 2022 08:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642495011; x=1674031011;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=bEHey9QupRjV9zwrkI/FK565olCk7HBpauULY2Z1kUs=;
 b=FSHn3A/NR9ZaAAMfb6WX98DIlxrbmDGtOGMtEPBHnerHo01/9EAH5+6z
 kauhIH+IqC+z8QaDb7sbQdyXCK7CQogxhU663RqryNRa+vHvDPeu6B53p
 CPMquLvTfhRX+60elmCLxRUi+oBsqFWFmDhOTNBOFpozsLPUUyJYTDL91
 iFBAcUXyzGFVlSO9BeBB2O3ecoRkQaP1+S9FiNIOKw8Aiv33wZsUQJJso
 LuetV+EP3Qf4u7ZtyeVgOyJ8Zg/VlDGYx/PfM2rjDY4CnPI8d9bKOZWRE
 4wm2Ze4WZSYPSDLCpOKft4nw3SjBQPk8SDfu1Mx8n73/9lugfXkGD+ltj w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="225444862"
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="225444862"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 00:36:50 -0800
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="517682356"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.203.144.108])
 by orsmga007-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jan 2022 00:36:45 -0800
Date: Tue, 18 Jan 2022 14:06:40 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Robert Beckett <bob.beckett@collabora.com>
Message-ID: <20220118083638.GA2476@intel.com>
References: <20220111180238.1370631-1-bob.beckett@collabora.com>
 <20220111180238.1370631-4-bob.beckett@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220111180238.1370631-4-bob.beckett@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: add gtt misalignment test
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2022-01-11 at 18:02:37 +0000, Robert Beckett wrote:
> add test to check handling of misaligned offsets and sizes

Bob, This needs the rebase. I have rebased the other three patches of
the series..

Meanwhile i will review the changes.

Ram.
> 
> Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
> ---
>  drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 130 ++++++++++++++++++
>  1 file changed, 130 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> index fea031b4ec4f..28de0b333835 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> @@ -22,10 +22,12 @@
>   *
>   */
>  
> +#include "gt/intel_gtt.h"
>  #include <linux/list_sort.h>
>  #include <linux/prime_numbers.h>
>  
>  #include "gem/i915_gem_context.h"
> +#include "gem/i915_gem_region.h"
>  #include "gem/selftests/mock_context.h"
>  #include "gt/intel_context.h"
>  #include "gt/intel_gpu_commands.h"
> @@ -1066,6 +1068,120 @@ static int shrink_boom(struct i915_address_space *vm,
>  	return err;
>  }
>  
> +static int misaligned_case(struct i915_address_space *vm, struct intel_memory_region *mr,
> +			   u64 addr, u64 size, unsigned long flags)
> +{
> +	struct drm_i915_gem_object *obj;
> +	struct i915_vma *vma;
> +	int err = 0;
> +	u64 expected_vma_size, expected_node_size;
> +
> +	obj = i915_gem_object_create_region(mr, size, 0, 0);
> +	if (IS_ERR(obj))
> +		return PTR_ERR(obj);
> +
> +	vma = i915_vma_instance(obj, vm, NULL);
> +	if (IS_ERR(vma)) {
> +		err = PTR_ERR(vma);
> +		goto err_put;
> +	}
> +
> +	err = i915_vma_pin(vma, 0, 0, addr | flags);
> +	if (err)
> +		goto err_put;
> +	i915_vma_unpin(vma);
> +
> +	if (!drm_mm_node_allocated(&vma->node)) {
> +		err = -EINVAL;
> +		goto err_put;
> +	}
> +
> +	if (i915_vma_misplaced(vma, 0, 0, addr | flags)) {
> +		err = -EINVAL;
> +		goto err_put;
> +	}
> +
> +	expected_vma_size = round_up(size, 1 << (ffs(vma->page_sizes.gtt) - 1));
> +	expected_node_size = expected_vma_size;
> +
> +	if (IS_DG2(vm->i915) && i915_gem_object_is_lmem(obj)) {
> +		/* dg2 should expand lmem node to 2MB */
> +		expected_vma_size = round_up(size, I915_GTT_PAGE_SIZE_64K);
> +		expected_node_size = round_up(size, I915_GTT_PAGE_SIZE_2M);
> +	}
> +
> +	if (vma->size != expected_vma_size || vma->node.size != expected_node_size) {
> +		err = i915_vma_unbind(vma);
> +		err = -EBADSLT;
> +		goto err_put;
> +	}
> +
> +	err = i915_vma_unbind(vma);
> +	if (err)
> +		goto err_put;
> +
> +	GEM_BUG_ON(drm_mm_node_allocated(&vma->node));
> +
> +err_put:
> +	i915_gem_object_put(obj);
> +	cleanup_freed_objects(vm->i915);
> +	return err;
> +}
> +
> +static int misaligned_pin(struct i915_address_space *vm,
> +			  u64 hole_start, u64 hole_end,
> +			  unsigned long end_time)
> +{
> +	struct intel_memory_region *mr;
> +	enum intel_region_id id;
> +	unsigned long flags = PIN_OFFSET_FIXED | PIN_USER;
> +	int err = 0;
> +	u64 hole_size = hole_end - hole_start;
> +
> +	if (i915_is_ggtt(vm))
> +		flags |= PIN_GLOBAL;
> +
> +	for_each_memory_region(mr, vm->i915, id) {
> +		u64 min_alignment = i915_vm_min_alignment(vm, id);
> +		u64 size = min_alignment;
> +		u64 addr = round_up(hole_start + (hole_size / 2), min_alignment);
> +
> +		/* we can't test < 4k alignment due to flags being encoded in lower bits */
> +		if (min_alignment != I915_GTT_PAGE_SIZE_4K) {
> +			err = misaligned_case(vm, mr, addr + (min_alignment / 2), size, flags);
> +			/* misaligned should error with -EINVAL*/
> +			if (!err)
> +				err = -EBADSLT;
> +			if (err != -EINVAL)
> +				return err;
> +		}
> +
> +		/* test for vma->size expansion to min page size */
> +		err = misaligned_case(vm, mr, addr, PAGE_SIZE, flags);
> +		if (min_alignment > hole_size) {
> +			if (!err)
> +				err = -EBADSLT;
> +			else if (err == -ENOSPC)
> +				err = 0;
> +		}
> +		if (err)
> +			return err;
> +
> +		/* test for intermediate size not expanding vma->size for large alignments */
> +		err = misaligned_case(vm, mr, addr, size / 2, flags);
> +		if (min_alignment > hole_size) {
> +			if (!err)
> +				err = -EBADSLT;
> +			else if (err == -ENOSPC)
> +				err = 0;
> +		}
> +		if (err)
> +			return err;
> +	}
> +
> +	return 0;
> +}
> +
>  static int exercise_ppgtt(struct drm_i915_private *dev_priv,
>  			  int (*func)(struct i915_address_space *vm,
>  				      u64 hole_start, u64 hole_end,
> @@ -1135,6 +1251,12 @@ static int igt_ppgtt_shrink_boom(void *arg)
>  	return exercise_ppgtt(arg, shrink_boom);
>  }
>  
> +static int igt_ppgtt_misaligned_pin(void *arg)
> +{
> +	return exercise_ppgtt(arg, misaligned_pin);
> +}
> +
> +
>  static int sort_holes(void *priv, const struct list_head *A,
>  		      const struct list_head *B)
>  {
> @@ -1207,6 +1329,12 @@ static int igt_ggtt_lowlevel(void *arg)
>  	return exercise_ggtt(arg, lowlevel_hole);
>  }
>  
> +static int igt_ggtt_misaligned_pin(void *arg)
> +{
> +	return exercise_ggtt(arg, misaligned_pin);
> +}
> +
> +
>  static int igt_ggtt_page(void *arg)
>  {
>  	const unsigned int count = PAGE_SIZE/sizeof(u32);
> @@ -2137,12 +2265,14 @@ int i915_gem_gtt_live_selftests(struct drm_i915_private *i915)
>  		SUBTEST(igt_ppgtt_fill),
>  		SUBTEST(igt_ppgtt_shrink),
>  		SUBTEST(igt_ppgtt_shrink_boom),
> +		SUBTEST(igt_ppgtt_misaligned_pin),
>  		SUBTEST(igt_ggtt_lowlevel),
>  		SUBTEST(igt_ggtt_drunk),
>  		SUBTEST(igt_ggtt_walk),
>  		SUBTEST(igt_ggtt_pot),
>  		SUBTEST(igt_ggtt_fill),
>  		SUBTEST(igt_ggtt_page),
> +		SUBTEST(igt_ggtt_misaligned_pin),
>  		SUBTEST(igt_cs_tlb),
>  	};
>  
> -- 
> 2.25.1
> 
