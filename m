Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34298408823
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 11:25:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A47396E12C;
	Mon, 13 Sep 2021 09:25:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4028E6E108;
 Mon, 13 Sep 2021 09:25:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10105"; a="201127710"
X-IronPort-AV: E=Sophos;i="5.85,288,1624345200"; d="scan'208";a="201127710"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 02:24:47 -0700
X-IronPort-AV: E=Sophos;i="5.85,288,1624345200"; d="scan'208";a="469133877"
Received: from dennis-mobl.ger.corp.intel.com (HELO [10.213.217.72])
 ([10.213.217.72])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 02:24:45 -0700
To: Matthew Brost <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 daniel.vetter@ffwll.ch, tony.ye@intel.com, zhengguo.xu@intel.com
References: <20210820224446.30620-1-matthew.brost@intel.com>
 <20210820224446.30620-9-matthew.brost@intel.com>
 <c599bfef-418f-9a25-9e90-c20117dc4665@linux.intel.com>
 <20210910194955.GA24003@jons-linux-dev-box>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d95ee5e5-7118-cd98-49c0-964f22ade45d@linux.intel.com>
Date: Mon, 13 Sep 2021 10:24:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210910194955.GA24003@jons-linux-dev-box>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 08/27] drm/i915: Add logical engine mapping
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


On 10/09/2021 20:49, Matthew Brost wrote:
> On Fri, Sep 10, 2021 at 12:12:42PM +0100, Tvrtko Ursulin wrote:
>>
>> On 20/08/2021 23:44, Matthew Brost wrote:
>>> Add logical engine mapping. This is required for split-frame, as
>>> workloads need to be placed on engines in a logically contiguous manner.
>>>
>>> v2:
>>>    (Daniel Vetter)
>>>     - Add kernel doc for new fields
>>>
>>> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 60 ++++++++++++++++---
>>>    drivers/gpu/drm/i915/gt/intel_engine_types.h  |  5 ++
>>>    .../drm/i915/gt/intel_execlists_submission.c  |  1 +
>>>    drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |  2 +-
>>>    .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 21 +------
>>>    5 files changed, 60 insertions(+), 29 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>> index 0d9105a31d84..4d790f9a65dd 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>> @@ -290,7 +290,8 @@ static void nop_irq_handler(struct intel_engine_cs *engine, u16 iir)
>>>    	GEM_DEBUG_WARN_ON(iir);
>>>    }
>>> -static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
>>> +static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id,
>>> +			      u8 logical_instance)
>>>    {
>>>    	const struct engine_info *info = &intel_engines[id];
>>>    	struct drm_i915_private *i915 = gt->i915;
>>> @@ -334,6 +335,7 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
>>>    	engine->class = info->class;
>>>    	engine->instance = info->instance;
>>> +	engine->logical_mask = BIT(logical_instance);
>>>    	__sprint_engine_name(engine);
>>>    	engine->props.heartbeat_interval_ms =
>>> @@ -572,6 +574,37 @@ static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
>>>    	return info->engine_mask;
>>>    }
>>> +static void populate_logical_ids(struct intel_gt *gt, u8 *logical_ids,
>>> +				 u8 class, const u8 *map, u8 num_instances)
>>> +{
>>> +	int i, j;
>>> +	u8 current_logical_id = 0;
>>> +
>>> +	for (j = 0; j < num_instances; ++j) {
>>> +		for (i = 0; i < ARRAY_SIZE(intel_engines); ++i) {
>>> +			if (!HAS_ENGINE(gt, i) ||
>>> +			    intel_engines[i].class != class)
>>> +				continue;
>>> +
>>> +			if (intel_engines[i].instance == map[j]) {
>>> +				logical_ids[intel_engines[i].instance] =
>>> +					current_logical_id++;
>>> +				break;
>>> +			}
>>> +		}
>>> +	}
>>> +}
>>> +
>>> +static void setup_logical_ids(struct intel_gt *gt, u8 *logical_ids, u8 class)
>>> +{
>>> +	int i;
>>> +	u8 map[MAX_ENGINE_INSTANCE + 1];
>>> +
>>> +	for (i = 0; i < MAX_ENGINE_INSTANCE + 1; ++i)
>>> +		map[i] = i;
>>
>> What's the point of the map array since it is 1:1 with instance?
>>
> 
> Future products do not have a 1 to 1 mapping and that mapping can change
> based on fusing, e.g. XeHP SDV.
> 
> Also technically ICL / TGL / ADL physical instance 2 maps to logical
> instance 1.

I don't follow the argument. All I can see is that "map[i] = i" always 
in the proposed code, which is then used to check "instance == 
map[instance]". So I'd suggest to remove this array from the code until 
there is a need for it.

>>> +	populate_logical_ids(gt, logical_ids, class, map, ARRAY_SIZE(map));
>>> +}
>>> +
>>>    /**
>>>     * intel_engines_init_mmio() - allocate and prepare the Engine Command Streamers
>>>     * @gt: pointer to struct intel_gt
>>> @@ -583,7 +616,8 @@ int intel_engines_init_mmio(struct intel_gt *gt)
>>>    	struct drm_i915_private *i915 = gt->i915;
>>>    	const unsigned int engine_mask = init_engine_mask(gt);
>>>    	unsigned int mask = 0;
>>> -	unsigned int i;
>>> +	unsigned int i, class;
>>> +	u8 logical_ids[MAX_ENGINE_INSTANCE + 1];
>>>    	int err;
>>>    	drm_WARN_ON(&i915->drm, engine_mask == 0);
>>> @@ -593,15 +627,23 @@ int intel_engines_init_mmio(struct intel_gt *gt)
>>>    	if (i915_inject_probe_failure(i915))
>>>    		return -ENODEV;
>>> -	for (i = 0; i < ARRAY_SIZE(intel_engines); i++) {
>>> -		if (!HAS_ENGINE(gt, i))
>>> -			continue;
>>> +	for (class = 0; class < MAX_ENGINE_CLASS + 1; ++class) {
>>> +		setup_logical_ids(gt, logical_ids, class);
>>> -		err = intel_engine_setup(gt, i);
>>> -		if (err)
>>> -			goto cleanup;
>>> +		for (i = 0; i < ARRAY_SIZE(intel_engines); ++i) {
>>> +			u8 instance = intel_engines[i].instance;
>>> +
>>> +			if (intel_engines[i].class != class ||
>>> +			    !HAS_ENGINE(gt, i))
>>> +				continue;
>>> -		mask |= BIT(i);
>>> +			err = intel_engine_setup(gt, i,
>>> +						 logical_ids[instance]);
>>> +			if (err)
>>> +				goto cleanup;
>>> +
>>> +			mask |= BIT(i);
>>
>> I still this there is a less clunky way to set this up in less code and more
>> readable at the same time. Like do it in two passes so you can iterate
>> gt->engine_class[] array instead of having to implement a skip condition
>> (both on class and HAS_ENGINE at two places) and also avoid walking the flat
>> intel_engines array recursively.
>>
> 
> Kinda a bikeshed arguing about a pretty simple loop structure, don't you
> think? I personally like the way it laid out.
> 
> Pseudo code for your suggestion?

Leave the existing setup loop as is and add an additional "for engine 
class" walk after it. That way you can walk already setup 
gt->engine_class[] array so wouldn't need to skip wrong classes and have 
HAS_ENGINE checks when walking the flat intel_engines[] array several 
times. It also applies to the helper which counts logical instances per 
class.

>   
>>> +		}
>>>    	}
>>>    	/*
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>>> index ed91bcff20eb..fddf35546b58 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>>> @@ -266,6 +266,11 @@ struct intel_engine_cs {
>>>    	unsigned int guc_id;
>>>    	intel_engine_mask_t mask;
>>> +	/**
>>> +	 * @logical_mask: logical mask of engine, reported to user space via
>>> +	 * query IOCTL and used to communicate with the GuC in logical space
>>> +	 */
>>> +	intel_engine_mask_t logical_mask;
>>
>> You could prefix the new field with uabi_ to match the existing scheme and
>> to signify to anyone who might be touching it in the future it should not be
>> changed.
> 
> This is kinda uabi, but also kinda isn't. We do report a logical
> instance via IOCTL but it also really is tied the GuC backend as we only
> can communicate with the GuC in logical space. IMO we should leave as
> is.

Perhaps it would be best to call the new field uabi_logical_instance so 
it's clear it is reported in the query directly and do the BIT() 
transformation in the GuC backend?

> 
>>
>> Also, I think comment should explain what is logical space ie. how the
>> numbering works.
>>
> 
> Don't I already do that? I suppose I could add something like:

Where is it? Can't see it in the uapi kerneldoc AFAICS (for the new 
query) or here.

> 
> The logical mask within engine class must be contiguous across all
> instances.

Best not to start mentioning the mask for the first time. Just explain 
what logical numbering is in terms of how engines are enumerated in 
order of physical instances but skipping the fused off ones. In the 
kerneldoc for the new query is I think the right place.

>> Not sure the part about GuC needs to be in the comment since uapi is
>> supposed to be backend agnostic.
>>
> 
> Communicating with the GuC in logical space is a pretty key point here.
> The communication with the GuC in logical space is backend specific but
> how our hardware works (e.g. split frame workloads must be placed
> logical contiguous) is not. Mentioning the GuC requirement here makes
> sense to me for completeness.

Yeah might be, I was thinking more about the new query. Query definitely 
is backend agnostic but yes it is fine to say in the comment here the 
new field is used both for the query and for communicating with GuC.

Regards,

Tvrtko

> 
> Matt
> 
>> Regards,
>>
>> Tvrtko
>>
>>>    	u8 class;
>>>    	u8 instance;
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>> index cafb0608ffb4..813a6de01382 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>> @@ -3875,6 +3875,7 @@ execlists_create_virtual(struct intel_engine_cs **siblings, unsigned int count)
>>>    		ve->siblings[ve->num_siblings++] = sibling;
>>>    		ve->base.mask |= sibling->mask;
>>> +		ve->base.logical_mask |= sibling->logical_mask;
>>>    		/*
>>>    		 * All physical engines must be compatible for their emission
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
>>> index 6926919bcac6..9f5f43a16182 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
>>> @@ -176,7 +176,7 @@ static void guc_mapping_table_init(struct intel_gt *gt,
>>>    	for_each_engine(engine, gt, id) {
>>>    		u8 guc_class = engine_class_to_guc_class(engine->class);
>>> -		system_info->mapping_table[guc_class][engine->instance] =
>>> +		system_info->mapping_table[guc_class][ilog2(engine->logical_mask)] =
>>>    			engine->instance;
>>>    	}
>>>    }
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>> index e0eed70f9b92..ffafbac7335e 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>> @@ -1401,23 +1401,6 @@ static int deregister_context(struct intel_context *ce, u32 guc_id, bool loop)
>>>    	return __guc_action_deregister_context(guc, guc_id, loop);
>>>    }
>>> -static intel_engine_mask_t adjust_engine_mask(u8 class, intel_engine_mask_t mask)
>>> -{
>>> -	switch (class) {
>>> -	case RENDER_CLASS:
>>> -		return mask >> RCS0;
>>> -	case VIDEO_ENHANCEMENT_CLASS:
>>> -		return mask >> VECS0;
>>> -	case VIDEO_DECODE_CLASS:
>>> -		return mask >> VCS0;
>>> -	case COPY_ENGINE_CLASS:
>>> -		return mask >> BCS0;
>>> -	default:
>>> -		MISSING_CASE(class);
>>> -		return 0;
>>> -	}
>>> -}
>>> -
>>>    static void guc_context_policy_init(struct intel_engine_cs *engine,
>>>    				    struct guc_lrc_desc *desc)
>>>    {
>>> @@ -1459,8 +1442,7 @@ static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
>>>    	desc = __get_lrc_desc(guc, desc_idx);
>>>    	desc->engine_class = engine_class_to_guc_class(engine->class);
>>> -	desc->engine_submit_mask = adjust_engine_mask(engine->class,
>>> -						      engine->mask);
>>> +	desc->engine_submit_mask = engine->logical_mask;
>>>    	desc->hw_context_desc = ce->lrc.lrca;
>>>    	desc->priority = ce->guc_state.prio;
>>>    	desc->context_flags = CONTEXT_REGISTRATION_FLAG_KMD;
>>> @@ -3260,6 +3242,7 @@ guc_create_virtual(struct intel_engine_cs **siblings, unsigned int count)
>>>    		}
>>>    		ve->base.mask |= sibling->mask;
>>> +		ve->base.logical_mask |= sibling->logical_mask;
>>>    		if (n != 0 && ve->base.class != sibling->class) {
>>>    			DRM_DEBUG("invalid mixing of engine class, sibling %d, already %d\n",
>>>
