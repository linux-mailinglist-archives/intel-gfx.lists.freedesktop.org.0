Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5682976314F
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 11:12:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B757810E186;
	Wed, 26 Jul 2023 09:12:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4614510E186
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jul 2023 09:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690362720; x=1721898720;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=SXVY2yOdHnlz64+ARNalvWelSi3cR/fJJSyDjCzj5b8=;
 b=W2r0eOxakaYVR/aSNvtpqBBVt0AyFODfgL5EVVrXnJPjjgobOaPg7a/y
 AII950Xnm2KMrK0IsDaeiNIuhoX3A0xFl59dv45xXh2lKL3N5Wuh/khJJ
 NU3iKIiTReeUT/ZOBGBi+FmfvemCeD9GtGsm7sSDshaXeIBfCtFwvYui6
 cXUEs8C2qFCp807lz+MI3w3+peHFyv+bR6ZRip/0bKXJ1EGMUFn0im2F+
 PXjOcZAQLqz1bRPXAiIAP/k2QC0PaDzVw9hCK/YL1d6Xg02Z51KSfNAJ6
 Wd1Q3t+kaOhfLqRWj5GGsIfuprIoOSAQuoRM7VJrIiieyAd7zStt2tLEl g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="431764690"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="431764690"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 02:11:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="973041870"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="973041870"
Received: from spsmyth-mobl1.ger.corp.intel.com (HELO [10.213.229.32])
 ([10.213.229.32])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 02:11:57 -0700
Message-ID: <cf7fed07-4d8a-eb55-1aec-6caf88ab84ee@linux.intel.com>
Date: Wed, 26 Jul 2023 10:11:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20230725160145.1486613-1-jonathan.cavitt@intel.com>
 <daaf4abb-4da0-d676-cfbb-ec50b558ed17@linux.intel.com>
 <CH0PR11MB54447176570341094CF85257E503A@CH0PR11MB5444.namprd11.prod.outlook.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <CH0PR11MB54447176570341094CF85257E503A@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH dii-client 1/2] drm/i915: Make
 i915_coherent_map_type GT-centric
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Das,
 Nirmoy" <nirmoy.das@intel.com>, "Shyti, Andi" <andi.shyti@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 25/07/2023 18:39, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Sent: Tuesday, July 25, 2023 9:23 AM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Shyti, Andi <andi.shyti@intel.com>; Roper, Matthew D <matthew.d.roper@intel.com>; chris.p.wilson@linux.intel.com; Das, Nirmoy <nirmoy.das@intel.com>
> Subject: Re: [Intel-gfx] [PATCH dii-client 1/2] drm/i915: Make i915_coherent_map_type GT-centric
>>
>>
>> On 25/07/2023 17:01, Jonathan Cavitt wrote:
>>> Refactor i915_coherent_map_type to be GT-centric rather than
>>> device-centric.  Each GT may require different coherency
>>> handling due to hardware workarounds.
>>>
>>> Since the function now takes a GT instead of the i915, the function is
>>> renamed and moved to the gt folder.
>>
>> What about the issue of fake gt passed to shmem_create_from_object I raised?
> 
> 
> The function is, presently, only called in __engines_record_defaults, as a part of
> intel_gt_init.  shmem_create_from_object uses i915_coherent_map_type to determine
> the map_type to pass to i915_gem_object_pin_map_unlocked.  This creates a pointer
> that we pass to shmem_create_from_data.  Aside from an i915_gem_object_is_shmem
> check at the start, the function is otherwise just calling shmem_create_from_data...
> which, itself, is only called by shmem_create_from_object.
> 
> I'd argue that any additional changes to shmem_create_from_object are unnecessary
> as the function is only called from __engines_record_defaults.  Additionally, the function
> is a part of the gt library (shmem_utils.h is in the gt folder), so taking a gt argument should
> be expected.  However, if you still disagree, here's a few options for how we can rectify
> this issue:

Looking at the content of shmem_utils.c it does seem wholly misplaced in 
gt/. I would say we could move it (and should really, just no need in 
scope of this series).

> Debatably, we could just delete shmem_create_from_object and use the full expansion
> in __engines_record_defaults.  Though this may come with some additional complications,
> such as the lost helper function being desirable in the future and needing to expand the
> definition of shmem_create_from_data to include an object pinning requirement.
> 
> The second option is that we pass the map_type to the shmem_create_from_object function
> instead of the GT, bypassing the need for i915_coherent_map_type in the function by breaking
> it out as a part of __engines_record_defaults.  I'll leave it to your judgement whether this would
> be more or less confusing than just passing the GT.
> 
> Thirdly, we could just hard-code a specific map_type to use, though that seems ill-advised.

Does the helper even need the coherent mapping if it is not setting up 
shared access? AFAICS it is just a single use mapping with the sole 
purpose to read the content of the whole object in bulk. And the whole 
source object is also even a throw-away.

So in fact yes, why not just hardcode to something like:

type = i915_gem_object_is_lmem(obj) : I915_MMAP_WC : I915_MMAP_WB;

?

Regards,

Tvrtko

> 
> The last option is to rename the function to something more representative. Here's a few ideas
> I can think of off the top of my head:
> 
> shmem_create
> shmem_create_on_gt
> shmem_create_from_gt
> shmem_create_from_object_on_gt
> intel_gt_create_shmem_from_object
> 
> If I had to recommend one approach over the rest, it would probably be the second option,
> followed by the fourth.
> 
> -Jonathan Cavitt
> 
> 
>>
>> Regards,
>>
>> Tvrtko
>>
>> P.S. See if you can drop the dii-client part from the subject line going
>> forward.
>>
>>>
>>> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
>>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_hdcp_gsc.c   |  3 ++-
>>>    drivers/gpu/drm/i915/gem/i915_gem_object.h      |  4 ----
>>>    drivers/gpu/drm/i915/gem/i915_gem_pages.c       | 15 ---------------
>>>    .../drm/i915/gem/selftests/i915_gem_migrate.c   | 12 ++++++------
>>>    drivers/gpu/drm/i915/gt/intel_engine_pm.c       |  2 +-
>>>    drivers/gpu/drm/i915/gt/intel_gt.c              | 17 ++++++++++++++++-
>>>    drivers/gpu/drm/i915/gt/intel_gt.h              |  3 +++
>>>    drivers/gpu/drm/i915/gt/intel_gtt.c             |  4 ++--
>>>    drivers/gpu/drm/i915/gt/intel_lrc.c             |  2 +-
>>>    drivers/gpu/drm/i915/gt/intel_ring.c            |  3 ++-
>>>    drivers/gpu/drm/i915/gt/selftest_context.c      |  2 +-
>>>    drivers/gpu/drm/i915/gt/selftest_hangcheck.c    |  4 ++--
>>>    drivers/gpu/drm/i915/gt/selftest_lrc.c          |  2 +-
>>>    drivers/gpu/drm/i915/gt/shmem_utils.c           |  7 ++++---
>>>    drivers/gpu/drm/i915/gt/shmem_utils.h           |  4 +++-
>>>    drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c       |  3 +--
>>>    drivers/gpu/drm/i915/gt/uc/intel_guc.c          |  2 +-
>>>    drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c       |  3 +--
>>>    drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c        |  3 ++-
>>>    drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c      |  2 +-
>>>    drivers/gpu/drm/i915/pxp/intel_pxp_tee.c        |  3 ++-
>>>    drivers/gpu/drm/i915/selftests/igt_spinner.c    |  2 +-
>>>    22 files changed, 53 insertions(+), 49 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>>> index ad0405375881..d753db3eef15 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>>> @@ -6,6 +6,7 @@
>>>    #include <drm/i915_hdcp_interface.h>
>>>    
>>>    #include "gem/i915_gem_region.h"
>>> +#include "gt/intel_gt.h"
>>>    #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
>>>    #include "i915_drv.h"
>>>    #include "i915_utils.h"
>>> @@ -632,7 +633,7 @@ static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
>>>    		return PTR_ERR(obj);
>>>    	}
>>>    
>>> -	cmd_in = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(i915, obj, true));
>>> +	cmd_in = i915_gem_object_pin_map_unlocked(obj, intel_gt_coherent_map_type(gt, obj, true));
>>>    	if (IS_ERR(cmd_in)) {
>>>    		drm_err(&i915->drm, "Failed to map gsc message page!\n");
>>>    		err = PTR_ERR(cmd_in);
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>> index 884a17275b3a..0c695b4c129f 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>> @@ -716,10 +716,6 @@ void *__must_check i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
>>>    void *__must_check i915_gem_object_pin_map_unlocked(struct drm_i915_gem_object *obj,
>>>    						    enum i915_map_type type);
>>>    
>>> -enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
>>> -					  struct drm_i915_gem_object *obj,
>>> -					  bool always_coherent);
>>> -
>>>    void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
>>>    				 unsigned long offset,
>>>    				 unsigned long size);
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>>> index 89fc8ea6bcfc..6d262d269c71 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>>> @@ -465,21 +465,6 @@ void *i915_gem_object_pin_map_unlocked(struct drm_i915_gem_object *obj,
>>>    	return ret;
>>>    }
>>>    
>>> -enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
>>> -					  struct drm_i915_gem_object *obj,
>>> -					  bool always_coherent)
>>> -{
>>> -	/*
>>> -	 * Wa_22016122933: always return I915_MAP_WC for MTL
>>> -	 */
>>> -	if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(i915))
>>> -		return I915_MAP_WC;
>>> -	if (HAS_LLC(i915) || always_coherent)
>>> -		return I915_MAP_WB;
>>> -	else
>>> -		return I915_MAP_WC;
>>> -}
>>> -
>>>    void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
>>>    				 unsigned long offset,
>>>    				 unsigned long size)
>>> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
>>> index a93a90b15907..d8f4a10d71de 100644
>>> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
>>> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
>>> @@ -13,12 +13,12 @@
>>>    #include "selftests/igt_spinner.h"
>>>    
>>>    static int igt_fill_check_buffer(struct drm_i915_gem_object *obj,
>>> +				 struct intel_gt *gt,
>>>    				 bool fill)
>>>    {
>>> -	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>>>    	unsigned int i, count = obj->base.size / sizeof(u32);
>>>    	enum i915_map_type map_type =
>>> -		i915_coherent_map_type(i915, obj, false);
>>> +		intel_gt_coherent_map_type(gt, obj, false);
>>>    	u32 *cur;
>>>    	int err = 0;
>>>    
>>> @@ -66,7 +66,7 @@ static int igt_create_migrate(struct intel_gt *gt, enum intel_region_id src,
>>>    		if (err)
>>>    			continue;
>>>    
>>> -		err = igt_fill_check_buffer(obj, true);
>>> +		err = igt_fill_check_buffer(obj, gt, true);
>>>    		if (err)
>>>    			continue;
>>>    
>>> @@ -86,7 +86,7 @@ static int igt_create_migrate(struct intel_gt *gt, enum intel_region_id src,
>>>    		if (err)
>>>    			continue;
>>>    
>>> -		err = igt_fill_check_buffer(obj, false);
>>> +		err = igt_fill_check_buffer(obj, gt, false);
>>>    	}
>>>    	i915_gem_object_put(obj);
>>>    
>>> @@ -233,7 +233,7 @@ static int __igt_lmem_pages_migrate(struct intel_gt *gt,
>>>    			continue;
>>>    
>>>    		if (!vma) {
>>> -			err = igt_fill_check_buffer(obj, true);
>>> +			err = igt_fill_check_buffer(obj, gt, true);
>>>    			if (err)
>>>    				continue;
>>>    		}
>>> @@ -276,7 +276,7 @@ static int __igt_lmem_pages_migrate(struct intel_gt *gt,
>>>    		if (err)
>>>    			goto out_unlock;
>>>    	} else {
>>> -		err = igt_fill_check_buffer(obj, false);
>>> +		err = igt_fill_check_buffer(obj, gt, false);
>>>    	}
>>>    
>>>    out_unlock:
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
>>> index 21af0ec52223..b538b5c04948 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
>>> @@ -39,7 +39,7 @@ static void dbg_poison_ce(struct intel_context *ce)
>>>    
>>>    	if (ce->state) {
>>>    		struct drm_i915_gem_object *obj = ce->state->obj;
>>> -		int type = i915_coherent_map_type(ce->engine->i915, obj, true);
>>> +		int type = intel_gt_coherent_map_type(ce->engine->gt, obj, true);
>>>    		void *map;
>>>    
>>>    		if (!i915_gem_object_trylock(obj, NULL))
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
>>> index 9f64d61dd5fc..6faf1dae965f 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>>> @@ -591,7 +591,7 @@ static int __engines_record_defaults(struct intel_gt *gt)
>>>    			continue;
>>>    
>>>    		/* Keep a copy of the state's backing pages; free the obj */
>>> -		state = shmem_create_from_object(rq->context->state->obj);
>>> +		state = shmem_create_from_object(rq->context->state->obj, gt);
>>>    		if (IS_ERR(state)) {
>>>    			err = PTR_ERR(state);
>>>    			goto out;
>>> @@ -1134,6 +1134,21 @@ void intel_gt_invalidate_tlb(struct intel_gt *gt, u32 seqno)
>>>    	}
>>>    }
>>>    
>>> +enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
>>> +					      struct drm_i915_gem_object *obj,
>>> +					      bool always_coherent)
>>> +{
>>> +	/*
>>> +	 * Wa_22016122933: always return I915_MAP_WC for MTL
>>> +	 */
>>> +	if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(gt->i915))
>>> +		return I915_MAP_WC;
>>> +	if (HAS_LLC(gt->i915) || always_coherent)
>>> +		return I915_MAP_WB;
>>> +	else
>>> +		return I915_MAP_WC;
>>> +}
>>> +
>>>    #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>>>    #include "selftest_tlb.c"
>>>    #endif
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
>>> index d2f4fbde5f9f..adb442aaa522 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
>>> @@ -119,4 +119,7 @@ static inline u32 intel_gt_next_invalidate_tlb_full(const struct intel_gt *gt)
>>>    
>>>    void intel_gt_invalidate_tlb(struct intel_gt *gt, u32 seqno);
>>>    
>>> +enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
>>> +					      struct drm_i915_gem_object *obj,
>>> +					      bool always_coherent);
>>>    #endif /* __INTEL_GT_H__ */
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
>>> index 731d9f2bbc56..13944a14ea2d 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
>>> @@ -89,7 +89,7 @@ int map_pt_dma(struct i915_address_space *vm, struct drm_i915_gem_object *obj)
>>>    	enum i915_map_type type;
>>>    	void *vaddr;
>>>    
>>> -	type = i915_coherent_map_type(vm->i915, obj, true);
>>> +	type = intel_gt_coherent_map_type(vm->gt, obj, true);
>>>    	vaddr = i915_gem_object_pin_map_unlocked(obj, type);
>>>    	if (IS_ERR(vaddr))
>>>    		return PTR_ERR(vaddr);
>>> @@ -103,7 +103,7 @@ int map_pt_dma_locked(struct i915_address_space *vm, struct drm_i915_gem_object
>>>    	enum i915_map_type type;
>>>    	void *vaddr;
>>>    
>>> -	type = i915_coherent_map_type(vm->i915, obj, true);
>>> +	type = intel_gt_coherent_map_type(vm->gt, obj, true);
>>>    	vaddr = i915_gem_object_pin_map(obj, type);
>>>    	if (IS_ERR(vaddr))
>>>    		return PTR_ERR(vaddr);
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
>>> index 1b710102390b..e5a83d4932c8 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>>> @@ -1191,7 +1191,7 @@ lrc_pre_pin(struct intel_context *ce,
>>>    	GEM_BUG_ON(!i915_vma_is_pinned(ce->state));
>>>    
>>>    	*vaddr = i915_gem_object_pin_map(ce->state->obj,
>>> -					 i915_coherent_map_type(ce->engine->i915,
>>> +					 intel_gt_coherent_map_type(ce->engine->gt,
>>>    								ce->state->obj,
>>>    								false) |
>>>    					 I915_MAP_OVERRIDE);
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
>>> index fb99143be98e..59da4b7bd262 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_ring.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_ring.c
>>> @@ -13,6 +13,7 @@
>>>    #include "intel_engine_regs.h"
>>>    #include "intel_gpu_commands.h"
>>>    #include "intel_ring.h"
>>> +#include "intel_gt.h"
>>>    #include "intel_timeline.h"
>>>    
>>>    unsigned int intel_ring_update_space(struct intel_ring *ring)
>>> @@ -56,7 +57,7 @@ int intel_ring_pin(struct intel_ring *ring, struct i915_gem_ww_ctx *ww)
>>>    	if (i915_vma_is_map_and_fenceable(vma) && !HAS_LLC(vma->vm->i915)) {
>>>    		addr = (void __force *)i915_vma_pin_iomap(vma);
>>>    	} else {
>>> -		int type = i915_coherent_map_type(vma->vm->i915, vma->obj, false);
>>> +		int type = intel_gt_coherent_map_type(vma->vm->gt, vma->obj, false);
>>>    
>>>    		addr = i915_gem_object_pin_map(vma->obj, type);
>>>    	}
>>> diff --git a/drivers/gpu/drm/i915/gt/selftest_context.c b/drivers/gpu/drm/i915/gt/selftest_context.c
>>> index 76fbae358072..afce036bcaa8 100644
>>> --- a/drivers/gpu/drm/i915/gt/selftest_context.c
>>> +++ b/drivers/gpu/drm/i915/gt/selftest_context.c
>>> @@ -88,7 +88,7 @@ static int __live_context_size(struct intel_engine_cs *engine)
>>>    		goto err;
>>>    
>>>    	vaddr = i915_gem_object_pin_map_unlocked(ce->state->obj,
>>> -						 i915_coherent_map_type(engine->i915,
>>> +						 intel_gt_coherent_map_type(engine->gt,
>>>    									ce->state->obj, false));
>>>    	if (IS_ERR(vaddr)) {
>>>    		err = PTR_ERR(vaddr);
>>> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
>>> index 8b0d84f2aad2..0dd4d00ee894 100644
>>> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
>>> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
>>> @@ -73,7 +73,7 @@ static int hang_init(struct hang *h, struct intel_gt *gt)
>>>    	h->seqno = memset(vaddr, 0xff, PAGE_SIZE);
>>>    
>>>    	vaddr = i915_gem_object_pin_map_unlocked(h->obj,
>>> -						 i915_coherent_map_type(gt->i915, h->obj, false));
>>> +						 intel_gt_coherent_map_type(gt, h->obj, false));
>>>    	if (IS_ERR(vaddr)) {
>>>    		err = PTR_ERR(vaddr);
>>>    		goto err_unpin_hws;
>>> @@ -119,7 +119,7 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
>>>    		return ERR_CAST(obj);
>>>    	}
>>>    
>>> -	vaddr = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(gt->i915, obj, false));
>>> +	vaddr = i915_gem_object_pin_map_unlocked(obj, intel_gt_coherent_map_type(gt, obj, false));
>>>    	if (IS_ERR(vaddr)) {
>>>    		i915_gem_object_put(obj);
>>>    		i915_vm_put(vm);
>>> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
>>> index a78a3d2c2e16..bc883de02295 100644
>>> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
>>> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
>>> @@ -1292,7 +1292,7 @@ static int compare_isolation(struct intel_engine_cs *engine,
>>>    	}
>>>    
>>>    	lrc = i915_gem_object_pin_map_unlocked(ce->state->obj,
>>> -					       i915_coherent_map_type(engine->i915,
>>> +					       intel_gt_coherent_map_type(engine->gt,
>>>    								      ce->state->obj,
>>>    								      false));
>>>    	if (IS_ERR(lrc)) {
>>> diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
>>> index 449c9ed44382..ffd48839a825 100644
>>> --- a/drivers/gpu/drm/i915/gt/shmem_utils.c
>>> +++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
>>> @@ -11,6 +11,7 @@
>>>    #include "i915_drv.h"
>>>    #include "gem/i915_gem_object.h"
>>>    #include "gem/i915_gem_lmem.h"
>>> +#include "gt/intel_gt.h"
>>>    #include "shmem_utils.h"
>>>    
>>>    struct file *shmem_create_from_data(const char *name, void *data, size_t len)
>>> @@ -31,9 +32,9 @@ struct file *shmem_create_from_data(const char *name, void *data, size_t len)
>>>    	return file;
>>>    }
>>>    
>>> -struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
>>> +struct file *shmem_create_from_object(struct drm_i915_gem_object *obj,
>>> +				      struct intel_gt *gt)
>>>    {
>>> -	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>>>    	enum i915_map_type map_type;
>>>    	struct file *file;
>>>    	void *ptr;
>>> @@ -44,7 +45,7 @@ struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
>>>    		return file;
>>>    	}
>>>    
>>> -	map_type = i915_coherent_map_type(i915, obj, true);
>>> +	map_type = intel_gt_coherent_map_type(gt, obj, true);
>>>    	ptr = i915_gem_object_pin_map_unlocked(obj, map_type);
>>>    	if (IS_ERR(ptr))
>>>    		return ERR_CAST(ptr);
>>> diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.h b/drivers/gpu/drm/i915/gt/shmem_utils.h
>>> index b2b04d88c6e5..743a56307216 100644
>>> --- a/drivers/gpu/drm/i915/gt/shmem_utils.h
>>> +++ b/drivers/gpu/drm/i915/gt/shmem_utils.h
>>> @@ -11,9 +11,11 @@
>>>    struct iosys_map;
>>>    struct drm_i915_gem_object;
>>>    struct file;
>>> +struct intel_gt;
>>>    
>>>    struct file *shmem_create_from_data(const char *name, void *data, size_t len);
>>> -struct file *shmem_create_from_object(struct drm_i915_gem_object *obj);
>>> +struct file *shmem_create_from_object(struct drm_i915_gem_object *obj,
>>> +				      struct intel_gt *gt);
>>>    
>>>    void *shmem_pin_map(struct file *file);
>>>    void shmem_unpin_map(struct file *file, void *ptr);
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
>>> index ab1a456f833d..6efb86c93bfc 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
>>> @@ -268,7 +268,6 @@ static int gsc_fw_load(struct intel_gsc_uc *gsc)
>>>    static int gsc_fw_load_prepare(struct intel_gsc_uc *gsc)
>>>    {
>>>    	struct intel_gt *gt = gsc_uc_to_gt(gsc);
>>> -	struct drm_i915_private *i915 = gt->i915;
>>>    	void *src;
>>>    
>>>    	if (!gsc->local)
>>> @@ -278,7 +277,7 @@ static int gsc_fw_load_prepare(struct intel_gsc_uc *gsc)
>>>    		return -ENOSPC;
>>>    
>>>    	src = i915_gem_object_pin_map_unlocked(gsc->fw.obj,
>>> -					       i915_coherent_map_type(i915, gsc->fw.obj, true));
>>> +					       intel_gt_coherent_map_type(gt, gsc->fw.obj, true));
>>>    	if (IS_ERR(src))
>>>    		return PTR_ERR(src);
>>>    
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>>> index 2eb891b270ae..c0fa9d232205 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>>> @@ -792,7 +792,7 @@ int intel_guc_allocate_and_map_vma(struct intel_guc *guc, u32 size,
>>>    		return PTR_ERR(vma);
>>>    
>>>    	vaddr = i915_gem_object_pin_map_unlocked(vma->obj,
>>> -						 i915_coherent_map_type(guc_to_gt(guc)->i915,
>>> +						 intel_gt_coherent_map_type(guc_to_gt(guc),
>>>    									vma->obj, true));
>>>    	if (IS_ERR(vaddr)) {
>>>    		i915_vma_unpin_and_release(&vma, 0);
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
>>> index 48f506a26e6d..b648238cc675 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
>>> @@ -27,7 +27,6 @@ struct mtl_huc_auth_msg_out {
>>>    int intel_huc_fw_auth_via_gsccs(struct intel_huc *huc)
>>>    {
>>>    	struct intel_gt *gt = huc_to_gt(huc);
>>> -	struct drm_i915_private *i915 = gt->i915;
>>>    	struct drm_i915_gem_object *obj;
>>>    	struct mtl_huc_auth_msg_in *msg_in;
>>>    	struct mtl_huc_auth_msg_out *msg_out;
>>> @@ -43,7 +42,7 @@ int intel_huc_fw_auth_via_gsccs(struct intel_huc *huc)
>>>    	pkt_offset = i915_ggtt_offset(huc->heci_pkt);
>>>    
>>>    	pkt_vaddr = i915_gem_object_pin_map_unlocked(obj,
>>> -						     i915_coherent_map_type(i915, obj, true));
>>> +						     intel_gt_coherent_map_type(gt, obj, true));
>>>    	if (IS_ERR(pkt_vaddr))
>>>    		return PTR_ERR(pkt_vaddr);
>>>    
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>>> index 7aadad5639c3..fc0d05d2df59 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>>> @@ -11,6 +11,7 @@
>>>    #include <drm/drm_print.h>
>>>    
>>>    #include "gem/i915_gem_lmem.h"
>>> +#include "gt/intel_gt.h"
>>>    #include "gt/intel_gt_print.h"
>>>    #include "intel_gsc_binary_headers.h"
>>>    #include "intel_gsc_fw.h"
>>> @@ -1213,7 +1214,7 @@ static int uc_fw_rsa_data_create(struct intel_uc_fw *uc_fw)
>>>    		return PTR_ERR(vma);
>>>    
>>>    	vaddr = i915_gem_object_pin_map_unlocked(vma->obj,
>>> -						 i915_coherent_map_type(gt->i915, vma->obj, true));
>>> +						 intel_gt_coherent_map_type(gt, vma->obj, true));
>>>    	if (IS_ERR(vaddr)) {
>>>    		i915_vma_unpin_and_release(&vma, 0);
>>>    		err = PTR_ERR(vaddr);
>>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
>>> index c7df47364013..c27fc5870608 100644
>>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
>>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
>>> @@ -336,7 +336,7 @@ gsccs_create_buffer(struct intel_gt *gt,
>>>    	}
>>>    
>>>    	/* return a virtual pointer */
>>> -	*map = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(i915, obj, true));
>>> +	*map = i915_gem_object_pin_map_unlocked(obj, intel_gt_coherent_map_type(gt, obj, true));
>>>    	if (IS_ERR(*map)) {
>>>    		drm_err(&i915->drm, "Failed to map gsccs backend %s.\n", bufname);
>>>    		err = PTR_ERR(*map);
>>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
>>> index 1ce07d7e8769..8e0b5d48ddf6 100644
>>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
>>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
>>> @@ -11,6 +11,7 @@
>>>    #include "gem/i915_gem_lmem.h"
>>>    
>>>    #include "i915_drv.h"
>>> +#include "gt/intel_gt.h"
>>>    
>>>    #include "intel_pxp.h"
>>>    #include "intel_pxp_cmd_interface_42.h"
>>> @@ -245,7 +246,7 @@ static int alloc_streaming_command(struct intel_pxp *pxp)
>>>    	}
>>>    
>>>    	/* map the lmem into the virtual memory pointer */
>>> -	cmd = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(i915, obj, true));
>>> +	cmd = i915_gem_object_pin_map_unlocked(obj, intel_gt_coherent_map_type(pxp->ctrl_gt, obj, true));
>>>    	if (IS_ERR(cmd)) {
>>>    		drm_err(&i915->drm, "Failed to map gsc message page!\n");
>>>    		err = PTR_ERR(cmd);
>>> diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
>>> index 3c5e0952f1b8..0f064930ef11 100644
>>> --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
>>> +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
>>> @@ -97,7 +97,7 @@ int igt_spinner_pin(struct igt_spinner *spin,
>>>    	if (!spin->batch) {
>>>    		unsigned int mode;
>>>    
>>> -		mode = i915_coherent_map_type(spin->gt->i915, spin->obj, false);
>>> +		mode = intel_gt_coherent_map_type(spin->gt, spin->obj, false);
>>>    		vaddr = igt_spinner_pin_obj(ce, ww, spin->obj, mode, &spin->batch_vma);
>>>    		if (IS_ERR(vaddr))
>>>    			return PTR_ERR(vaddr);
>>
