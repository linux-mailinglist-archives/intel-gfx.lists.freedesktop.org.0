Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 759DB761DA8
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 17:52:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 991BB10E159;
	Tue, 25 Jul 2023 15:52:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2B8910E159
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 15:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690300330; x=1721836330;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=j6RaEV8mhCCQf3PiPd3MIw1sTRuvExXzPstnaygEC3E=;
 b=ivCERtTuU3gqz7YhFjym/qSCpp7QhEG0pGX+bJde3/KYCDLI9ffvhqWR
 04NlXdu2tPHGi1flT8b/RsaHo3Htyl0MMwmGRu2G3DNksSBaL5z+zkuaN
 jrJ1DPmET68lIeICztH6/XHJYh79iVz7RgIaE8tnK3r9TDUaPBogwvgOf
 3HDvEeMFMzz3LhnlRN6w5WVU/D2izO4PWnHkP1oX0CHEGlTiNdQ22kor1
 K7ozalQGXy1UzMY2xDtz249fLN8c2bYWfdj1szuPzBN1QlEhry/0i0Shm
 Jf/NSWEpNa+DJuD0mCBpkUAIOpeGJ1bNFmXa5Scw4cAyQhWYbzwUaAT3v Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="367794391"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="367794391"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 08:52:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="676273299"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="676273299"
Received: from grdarcy-mobl1.ger.corp.intel.com (HELO [10.213.228.4])
 ([10.213.228.4])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 08:52:09 -0700
Message-ID: <a2a1a2ab-9bd9-8d58-eab0-b45b2d564890@linux.intel.com>
Date: Tue, 25 Jul 2023 16:52:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
 <20230725001312.1907319-14-matthew.d.roper@intel.com>
 <7992e114-d00f-c32c-8fd2-0d5b28806a1c@linux.intel.com>
 <20230725153541.GG138014@mdroper-desk1.amr.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230725153541.GG138014@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 3/9] drm/i915/xelpg: Call Xe_LPG
 workaround functions based on IP version
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 25/07/2023 16:35, Matt Roper wrote:
> On Tue, Jul 25, 2023 at 01:02:54PM +0100, Tvrtko Ursulin wrote:
>>
>> On 25/07/2023 01:13, Matt Roper wrote:
>>> Although some of our Xe_LPG workarounds were already being applied based
>>> on IP version correctly, others were matching on MTL as a base platform,
>>> which is incorrect.  Although MTL is the only platform right now that
>>> uses Xe_LPG IP, this may not always be the case.  If a future platform
>>> re-uses this graphics IP, the same workarounds should be applied, even
>>> if it isn't a "MTL" platform.
>>>
>>> We were also incorrectly applying Xe_LPG workarounds/tuning to the
>>> Xe_LPM+ media IP in one or two places; we should make sure that we don't
>>> try to apply graphics workarounds to the media GT and vice versa where
>>> they don't belong.  A new helper macro IS_GT_IP_RANGE() is added to help
>>> ensure this is handled properly -- it checks that the GT matches the IP
>>> type being tested as well as the IP version falling in the proper range.
>>>
>>> Note that many of the stepping-based workarounds are still incorrectly
>>> checking for a MTL base platform; that will be remedied in a later
>>> patch.
>>>
>>> v2:
>>>    - Rework macro into a slightly more generic IS_GT_IP_RANGE() that can
>>>      be used for either GFX or MEDIA checks.
>>>
>>> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gt/intel_workarounds.c | 38 +++++++++++----------
>>>    drivers/gpu/drm/i915/i915_drv.h             | 23 +++++++++++++
>>>    2 files changed, 43 insertions(+), 18 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> index d8a1eaa44e69..c4663541c5dd 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> @@ -805,8 +805,8 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>>>    	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
>>>    }
>>> -static void mtl_ctx_gt_tuning_init(struct intel_engine_cs *engine,
>>> -				   struct i915_wa_list *wal)
>>> +static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs *engine,
>>> +				     struct i915_wa_list *wal)
>>>    {
>>>    	struct drm_i915_private *i915 = engine->i915;
>>> @@ -817,12 +817,12 @@ static void mtl_ctx_gt_tuning_init(struct intel_engine_cs *engine,
>>>    		wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false);
>>>    }
>>> -static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
>>> -				     struct i915_wa_list *wal)
>>> +static void xelpg_ctx_workarounds_init(struct intel_engine_cs *engine,
>>> +				       struct i915_wa_list *wal)
>>>    {
>>>    	struct drm_i915_private *i915 = engine->i915;
>>> -	mtl_ctx_gt_tuning_init(engine, wal);
>>> +	xelpg_ctx_gt_tuning_init(engine, wal);
>>>    	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>>    	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
>>> @@ -931,8 +931,8 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
>>>    	if (engine->class != RENDER_CLASS)
>>>    		goto done;
>>> -	if (IS_METEORLAKE(i915))
>>> -		mtl_ctx_workarounds_init(engine, wal);
>>> +	if (IS_GT_IP_RANGE(GFX, engine->gt, IP_VER(12, 70), IP_VER(12, 71)))
>>> +		xelpg_ctx_workarounds_init(engine, wal);
>>>    	else if (IS_PONTEVECCHIO(i915))
>>>    		; /* noop; none at this time */
>>>    	else if (IS_DG2(i915))
>>> @@ -1790,10 +1790,8 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>>>     */
>>>    static void gt_tuning_settings(struct intel_gt *gt, struct i915_wa_list *wal)
>>>    {
>>> -	if (IS_METEORLAKE(gt->i915)) {
>>> -		if (gt->type != GT_MEDIA)
>>> -			wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
>>> -
>>> +	if (IS_GT_IP_RANGE(GFX, gt, IP_VER(12, 70), IP_VER(12, 71))) {
>>> +		wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
>>>    		wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
>>>    	}
>>> @@ -1825,7 +1823,7 @@ gt_init_workarounds(struct intel_gt *gt, struct i915_wa_list *wal)
>>>    		return;
>>>    	}
>>> -	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>>> +	if (IS_GT_IP_RANGE(GFX, gt, IP_VER(12, 70), IP_VER(12, 71)))
>>>    		xelpg_gt_workarounds_init(gt, wal);
>>>    	else if (IS_PONTEVECCHIO(i915))
>>>    		pvc_gt_workarounds_init(gt, wal);
>>> @@ -2293,7 +2291,7 @@ static void pvc_whitelist_build(struct intel_engine_cs *engine)
>>>    	blacklist_trtt(engine);
>>>    }
>>> -static void mtl_whitelist_build(struct intel_engine_cs *engine)
>>> +static void xelpg_whitelist_build(struct intel_engine_cs *engine)
>>>    {
>>>    	struct i915_wa_list *w = &engine->whitelist;
>>> @@ -2315,8 +2313,10 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
>>>    	wa_init_start(w, engine->gt, "whitelist", engine->name);
>>> -	if (IS_METEORLAKE(i915))
>>> -		mtl_whitelist_build(engine);
>>> +	if (engine->gt->type == GT_MEDIA)
>>> +		; /* none yet */
>>> +	else if (IS_GT_IP_RANGE(GFX, engine->gt, IP_VER(12, 70), IP_VER(12, 71)))
>>> +		xelpg_whitelist_build(engine);
>>>    	else if (IS_PONTEVECCHIO(i915))
>>>    		pvc_whitelist_build(engine);
>>>    	else if (IS_DG2(i915))
>>> @@ -2974,10 +2974,12 @@ ccs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>>>     * function invoked by __intel_engine_init_ctx_wa().
>>>     */
>>>    static void
>>> -add_render_compute_tuning_settings(struct drm_i915_private *i915,
>>> +add_render_compute_tuning_settings(struct intel_gt *gt,
>>>    				   struct i915_wa_list *wal)
>>>    {
>>> -	if (IS_METEORLAKE(i915) || IS_DG2(i915))
>>> +	struct drm_i915_private *i915 = gt->i915;
>>> +
>>> +	if (IS_GT_IP_RANGE(GFX, gt, IP_VER(12, 70), IP_VER(12, 71)) || IS_DG2(i915))
>>>    		wa_mcr_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_CTRL_512);
>>>    	/*
>>> @@ -3007,7 +3009,7 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>>>    {
>>>    	struct drm_i915_private *i915 = engine->i915;
>>> -	add_render_compute_tuning_settings(i915, wal);
>>> +	add_render_compute_tuning_settings(engine->gt, wal);
>>>    	if (GRAPHICS_VER(i915) >= 11) {
>>>    		/* This is not a Wa (although referred to as
>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>>> index 682ef2b5c7d5..6bb825d40451 100644
>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>> @@ -431,6 +431,29 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
>>>    #define IS_GRAPHICS_VER(i915, from, until) \
>>>    	(GRAPHICS_VER(i915) >= (from) && GRAPHICS_VER(i915) <= (until))
>>> +#define __IS_MEDIA_GT(gt) ((gt)->type == GT_MEDIA)
>>> +#define __IS_GFX_GT(gt) (!__IS_MEDIA_GT(gt))
>>> +#define __GT_VER_FULL(gt) (__IS_MEDIA_GT(gt) ? \
>>> +			   MEDIA_VER_FULL((gt)->i915) : \
>>> +			   GRAPHICS_VER_FULL((gt)->i915))
>>> +
>>> +/*
>>> + * Check that a GT contains IP of the specified type and within the specified
>>> + * IP range.  E.g.,
>>> + *
>>> + *    IS_GT_IP_RANGE(GFX, IP_VER(12, 70), IP_VER(12, 71))
>>> + *    IS_GT_IP_RANGE(MEDIA, IP_VER(13, 00), IP_VER(18, 02))
>>
>> I think without the magic GFX/MEDIA first argument would be better and more
>> readable. That is simply IS_GT_IP_RANGE(gt, IP_VER(), IP_VER). GT type
>> checks feel would be more readable on the outside, and some of them will
>> even probably come from a level above. Even when split out on the same line
>> it reads more readable to me, like:
>>
>>    if (IS_MEDIA_GT(gt) && IS_GT_IP_RANGE(gt, IP_VER(), IP_VER())
>>
> 
> Hmm, that's the kind of logic I was kind of hoping we could eliminate
> with this macro.  With hardware going forward, any IS_GT_IP_RANGE
> without an associated GT check is going to be a bug so I was really
> hoping to make it non-optional and ensure that there's always context
> directly associated with the version numbers (since the numbers are
> meaningless on their own without being tied to a specific IP type).
> While keeping the check separate means you might be able to move the
> type check to a higher layer of the code, it also means you're going to
> be left with a bunch of stuff like
> 
>          if (IS_GT_IP_RANGE(gt, IP_VER(17, 0), IP_VER(18, 2)))
> 
> and it may not be as clear what IP(s) this is supposed to match on.

I see.. how about IS_MEDIA_GT_IP_RANGE then? Or would that be going full 
circle by any chance? Just because I somehow find IS_GT_IP_RANGE(*GFX*, 
.. hard to parse. If this is not in a hurry perhaps wait for Jani to 
come back and provide a second opinion or another alternative.

Regards,

Tvrtko


> 
> Matt
> 
>> Regards,
>>
>> Tvrtko
>>
>>> + *
>>> + * Note that media version checks with this macro will only work on platforms
>>> + * with standalone media design (i.e., media version 13 and higher).
>>> + */
>>> +#define IS_GT_IP_RANGE(type, gt, from, until) ( \
>>> +	BUILD_BUG_ON_ZERO(from < IP_VER(2, 0)) + \
>>> +	BUILD_BUG_ON_ZERO(until < from) + \
>>> +	(__IS_##type##_GT(gt) && \
>>> +	 __GT_VER_FULL(gt) >= (from) && \
>>> +	 __GT_VER_FULL(gt) <= (until)))
>>> +
>>>    #define MEDIA_VER(i915)			(RUNTIME_INFO(i915)->media.ip.ver)
>>>    #define MEDIA_VER_FULL(i915)		IP_VER(RUNTIME_INFO(i915)->media.ip.ver, \
>>>    					       RUNTIME_INFO(i915)->media.ip.rel)
> 
