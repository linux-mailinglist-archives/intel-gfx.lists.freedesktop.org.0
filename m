Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76870645B3A
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 14:47:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CD9910E3B0;
	Wed,  7 Dec 2022 13:46:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E32510E188
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 13:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670420809; x=1701956809;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=ICwQMSY0DsSc05WcTjSGsKkizrFDhOrHXqm968bZv5w=;
 b=CtlMSmsdasG0lHohxY0+iNWN9gvISf02v+/tDe5LPFrfqttKz4CxesF5
 0EjSLukF/Tm7bGIV5nsSlD2RoyzWe0ZdOR1fOcfI8FNMc8zB8d2RFrFhQ
 NzzmYtDxvFbxiG428DKWIuAuXV+LRcbtC01RgGBlDlupjJ3k2lReHxod/
 TaiLBWt7vkfbO0+Al0OxS+iOSV4Jer/WBFoGS7s/KhoYrNbdd3/I1ZbBo
 FLsghwo+8P/fh6Kuq5F0YhONCfvYVvmInUd1qFIaztd400sukrPr6I3SH
 j6JMWNwuNtCUVcP9bxbe13oTxKVYfwk722g0IVhl/72WfpAFVNcEhRkki g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="381184816"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="381184816"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 05:46:48 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="710068381"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="710068381"
Received: from nsafari-mobl3.ger.corp.intel.com (HELO [10.213.213.175])
 ([10.213.213.175])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 05:46:46 -0800
Message-ID: <f254a933-640a-7790-8cda-3316218d5660@linux.intel.com>
Date: Wed, 7 Dec 2022 13:46:44 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20221206000332.134137-1-alan.previn.teres.alexis@intel.com>
 <5f79eccd-f843-8738-98c9-e9400c55ead0@linux.intel.com>
 <85af989600231120dff41fa613f14ad28a423b7c.camel@intel.com>
 <4d0188ae-2e3b-4789-6526-2ea990029bfb@linux.intel.com>
 <2aec16982a08bd794e21824d6b8c90faa9381da0.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <2aec16982a08bd794e21824d6b8c90faa9381da0.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v9 1/1] drm/i915/pxp: Promote pxp subsystem
 to top-level of i915
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


[Side note - your email client somehow manages to make a mess of line wraps so after a few replies it is super hard to follow the quote. Don't know how/what/why but I don't have this problem on the mailing list with other folks so at least I *think* it is something about your client or it's configuration.]

On 07/12/2022 12:08, Teres Alexis, Alan Previn wrote:
> On Wed, 2022-12-07 at 10:10 +0000, Tvrtko Ursulin wrote:
>> On 06/12/2022 18:26, Teres Alexis, Alan Previn wrote:
>>>
>>>
>>> On Tue, 2022-12-06 at 10:04 +0000, Tvrtko Ursulin wrote:
>>>> On 06/12/2022 00:03, Alan Previn wrote:
>>>>>
>>> Alan: [snip]
>>>>
>>>>>     
>>>>> -struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
>>>>> +bool intel_pxp_is_supported(const struct intel_pxp *pxp)
>>>>>     {
>>>>> -	return container_of(pxp, struct intel_gt, pxp);
>>>>> +	if (!IS_ENABLED(CONFIG_DRM_I915_PXP))
>>>>> +		return false;
>>>>> +	else if (!pxp)
>>>>> +		return false;
>>>>> +	return (INTEL_INFO(pxp->ctrl_gt->i915)->has_pxp && VDBOX_MASK(pxp->ctrl_gt));
>>>>
>>>> Intel_pxp_is_supported operating on the pxp reads a bit funny when one
>>>> of the checks is for NULL passed in object to start with.
>>>>
>>>> And all callers pass in i915->pxp so my immediate thought is whether
>>>> i915_pxp_is_supported(i915) was considered?
>>>
>>>
>>> Alan: I think you might need to track back through the last couple of months of this patch (probably back to rev4 or
>>> 5)... I was told the coding practice is intel_subsystem_function(struct subsystem...) so pxp should have pxp as its
>>> input structure. We needed to make exceptions for init/fini because ptr-to-ptr is worse - but we all agreed we dont want
>>> viral include header hiearchys so dynamic allocation is the right way to go. ('we' included Jani + Rodrigo). As such i
>>
>> I said nothing about dynamic allocation. I said, since you are promoting pxp to be under i915, and have a this:
>>
>> intel_pxp_is_supported(pxp)
>> {
>> ...
>> 	if (!pxp)
>> 		return false;
>>
>> (There's even a gt->i915->has_pxp in there, and a Kconfig based check, so it really does not feel this should operate on the pxp.)
>>
>> And callers to all these three function pass in, most even directly, i915->pxp, that passing in a NULL pxp to function tell you you passed in NULL pxp reads confused.
>>
> Alan: So prior to rev-9 i always allocated i915->pxp and would use the other params such as the pxp->ce or those pxp-
>> is_arb_valid without checking the validity of the pxp ptr for those helpers. Daniele said its very unlikely but
> possible to have i915->pxp allocation fail and other functions get called and so said its better to explicitily leave
> i915->pxp as null for cases where the backend tee-hw was also not available (and hence the ptr checking added in those
> helpers).

Null check is fine, I was a bit bothered by the helpers operating on pxp. But lets put this aside for now and focus on the init path.

>> I asked if this alternative was considered (function prefix follow target object):
>>
>> i915_pxp_is_supported(i915)
>>
>> Or if you want to follow the alternative preference (function prefix follows file prefix):
>>
>> intel_pxp_is_supported(i915)
>>
> Alan: I believe somewhere in rev 5 or 6 this was discussed by Rodrigo/Janie ... IIRC the summary was that coding
> practice is to go with the function name + first param in the form of: intel_[subsystem]_function(struct [subsystem]
> *...) and we decided to stick with that for everything except the exceptions for init/fini.
> 
> I can re-spin if you think its better to extend that exception to intel_pxp_is_supported/active.
> 
> Hmmm... OR...
> 
> actually, what do you think about extending this for all other top-level entry points that may called externally? (there
> are several more: irq handler, huc-loading code, debugfs, pxp-key-check, suspend-resume. Change all for consistency
> (agnostic to whether they are prepend with a call to is_enabled/active first).
> 
> 
> And then ... there is an completely different alternative method (building on top of Rev8 instead):
> 
> 
> Perhaps we can also always allocate i915->pxp to be valid and only use other params like "pxp->component", "pxp->ce",
> etc external facing functions. But i think this is not the right way - if the far future were to see all subsystems get
> dynamically allocated (and reducing header-file-triggered build times), then it makes sense to expect nly valid
> subsystems to be allocated.

I agree it is correct to have i915->pxp optionally present. That should stay.

>> Nothing about dropping the dynamic allocation in this question...
>>
>> Oh would IS_ENABLED(CONFIG_DRM_I915_PXP) be right in intel_pxp_is_enabled/active? If so maybe worth to add for some extra dead code elimination.
>>
> Alan: Adding IS_ENABLED(CONFIG_DRM_I915_PXP) in intel_pxp_is_enabled/active should be fine. But take note that on
> platforms that DO support pxp, we would go thru that new line and then check 'pxp' and 'pxp->ce' validity again so 3
> cycles as opposed to 2 to accomplish the same thing - seems unnecessary to me. NOTE: intel_pxp_is_supported is special
> since it's called from within intel_pxp_init so it needs these extra checks for the build config, has-pxp and engine-
> mask.

IS_ENABLED is always optimized away, be it 1 or 0, since it is a compile time constant. So it doesn't increase the number of runtime conditionals.

And for intel_pxp_is_supported, lets see below if it needs to remain so special.

>>> wont change this - but i will wait for your confirmation before i re-rev. Side note: with all due respect it would be
>>> nice to have comments preceeded with "nack" or "nit" or "question".
>>
>> "Discussion in progress please hold".
>>
>>> Alan: [snip]
>>>>>
>>>>>
>>>>>
>>>
>>>>> @@ -138,31 +152,63 @@ static void pxp_init_full(struct intel_pxp *pxp)
>>>>>     	destroy_vcs_context(pxp);
>>>>>     }
>>>>>     
>>>>> -void intel_pxp_init(struct intel_pxp *pxp)
>>>>> +static struct intel_gt *pxp_get_ctrl_gt(struct drm_i915_private *i915)
>>>>>     {
>>>>> -	struct intel_gt *gt = pxp_to_gt(pxp);
>>>>> +	struct intel_gt *gt = NULL;
>>>>> +	int i = 0;
>>>>
>>>> No need to init.
>>> Alan: Sorry - i hate not initing local vars - is this a nack?
>>
>> Then you hate consistency as well? :) It is a very typical review feedback. Look around the mailing list and the code and count how many needlessly initialized locals we have. You just align it with the codebase and move on..
>>
> Alan: Ofc - its already fixed in rev10. :)
> 
>>>>>     
>>>>> -	/* we rely on the mei PXP module */
>>>>> -	if (!IS_ENABLED(CONFIG_INTEL_MEI_PXP))
>>>>> -		return;
>>>>> +	for_each_gt(gt, i915, i) {
>>>>> +		/* There can be only one GT with GSC-CS that supports PXP */
>>>>> +		if (HAS_ENGINE(gt, GSC0))
>>>>> +			return gt;
>>>>> +	}
>>>>> +
>>>>> +	/* Else we rely on the GT-0 with mei PXP module */
>>>>> +	if (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && !i915->media_gt)
>>>>> +		return &i915->gt0;
>>>>> +
>>>>
>>>> None of this makes sense unless CONFIG_DRM_I915_PXP, right?
>>> Alan: No - when we dont support PXP as a feature we still need the backend Tee-link infrastructure that PXP provides for
>>> GSC HuC authentication  for DG2 - this existing code path. I can add some additional comments. (im using Tee losely here
>>> since its not actual Tee but an intel specific framework to provide access to security firwmare).
>>
>> Okay so is the answer i915->pxp is not the same PXP as CONFIG_DRM_I915_PXP. Latter is kind of the user facing part, while i915->pxp is set when the PXP hardware actually exists. I got this right?
>>
> Alan: Yes'-ish'. i915->pxp is only set when [1] we want the user-facing-feature AND the HW is there or [2] the hardware
> is there AND we need it for specific platform usages like DG2 HuC authentication. For example, we could have a ADL with
> a DG1. ADL will be the case of [1] while D1 will not see either case. However, if we had a DG2 instead of a DG1, then
> i915->pxp would still be there (but not have the user-facing feature).
> 
> 
>> If so how about splitting intel_pxp_is_supported into two (or more?) so it does not answer two separate questions?
>>
> Alan: I'm not sure i understand what you mean. "intel_pxp_is_supported" is only answering the user-facing question and
> not if the backend is require for PXP.
> 
>>>>
>>>>> +	return NULL;
>>>>> +}
>>>>> +
>>>>> +int intel_pxp_init(struct drm_i915_private *i915)
>>>>> +{
>>>>> +	i915->pxp = kzalloc(sizeof(*i915->pxp), GFP_KERNEL);
>>>>> +	if (!i915->pxp)
>>>>> +		return -ENOMEM;
>>>>> +
>>>>> +	i915->pxp->ctrl_gt = pxp_get_ctrl_gt(i915);
>>>>> +	if (!i915->pxp->ctrl_gt) {
>>>>> +		kfree(i915->pxp);
>>>>> +		i915->pxp = NULL;
>>>>> +		return -ENODEV;
>>>>> +	}
>>>>
>>>> If you store ctrl_gt in a local then you don't have to allocate until
>>>> you'll know you need it, however..
>>> Alan: see my reply below.
>>
>> To be clear I was merely suggesting to avoid the need to free something just allocated:
>>
>> int intel_pxp_init(struct drm_i915_private *i915)
>> {
>> 	struct intel_gt *ctrl_gt;
>> 	struct intel_pxp *pxp;
>>
>> 	ctrl_gt = pxp_get_ctrl_gt(i915);
>> 	if (!ctrl_gt)
>> 		return -ENODEV;
>>
>> 	pxp = kzalloc(...)
>> 	if (!pxp)
>> 		return -ENOMEM;
>> ...
>>
>> Because it's kind of pointless to alloc+free on every old platform under the sun.
> Alan: oh okay - yes, ofc - sorry, i think was lacking coffee when i read that the first time.
> 
>>
>> And maybe pxp_get_ctrl_gt should be renamed to some variant of "is needed", but I am not clear yet on that.
>>
>>>>
>>>>>     
>>>>>     	/*
>>>>>     	 * If HuC is loaded by GSC but PXP is disabled, we can skip the init of
>>>>>     	 * the full PXP session/object management and just init the tee channel.
>>>>>     	 */
>>>>> -	if (HAS_PXP(gt->i915))
>>>>> -		pxp_init_full(pxp);
>>>>> -	else if (intel_huc_is_loaded_by_gsc(&gt->uc.huc) && intel_uc_uses_huc(&gt->uc))
>>>>> -		intel_pxp_tee_component_init(pxp);
>>>>> +	if (intel_pxp_is_supported(i915->pxp))
>>>>> +		pxp_init_full(i915->pxp);
>>>>> +	else if (intel_huc_is_loaded_by_gsc(&i915->pxp->ctrl_gt->uc.huc) &&
>>>>> +		 intel_uc_uses_huc(&i915->pxp->ctrl_gt->uc))
>>>>> +		intel_pxp_tee_component_init(i915->pxp);
>>>>
>>>> ... intel_pxp_is_supported() returnsed false so what is the purpose of
>>>> the "else if" branch?
>>>>
>>>> Which of the conditions in intel_pxp_is_supported can it fail on to get
>>>> here?
>>>>
>>>> And purpose of exiting init with supported = no but i915->pxp set?
>>>>
>>> Alan: So this was prior existing code flow i did not change - but i can add an "else if (intel_pxp_tee_is_needed())" and
>>> that can be a wrapper around those gsc-huc-authentication and tee backend transport dependency needs.
>>
>> Hm, okay. So here you have:
>>
>>
>> +	if (intel_pxp_is_supported(i915->pxp))
>> +		pxp_init_full(i915->pxp);
>> +	else if (pxp_backend_tee_is_needed(i915->pxp))
>> +		intel_pxp_tee_component_init(i915->pxp);
>> +
>> +	return 0;
>>
>> 1)
>>
>> If both these branches are false, is there a purpose for the dangling i915->pxp object?
>>
>> Or if they cannot both be false is this the clearest way to express the flow? ("else GEM_WARN_ON()" at least?)
> 
> Alan: Both branches can be false.
>>
>> 2)
>>
>> If there are no vdboxes is the last (else if) branch needed? If it is for loading the HuC then possibly sounds like no. So maybe the vdbox check can be early in pxp_get_ctrl_gt?
>>
> Alan: Yes that's possible. So in that case we are folding a lot more checks into the ctrl-gt. But we need a name that
> truly reflects that it does. Coz now its gonna check for "MediaGT with GSC on MTL" or "GT0 on pre-MTL but with MEI
> KConfig AND VDBOX) so something like "get_suitable_ctrl_gt_for_backend_tee()". However, this still doesnt mean the two

Right, name is tricky but perhaps doesn't need to be perfect to already clarify the flow.

> branches will never be both false - the 2nd branch can still be false - we could have VDBOX but huc fw not avail.
> Something like this at the end? Should we free up pxp is not used at all? 

Definitely yes - why would we leave a never used object forever allocated?

> 
> int intel_pxp_init(struct drm_i915_private *i915)
> {
> 	intel_gt *gt;
> 	intel_pxp *pxp;
> 	/*
> 	 * NOTE: Get a suitable ctrl_gt before checking intel_pxp_is_supported
> 	 * since we still also it if backend tee transport is needed for other
> 	 * platform requirements. Suitable gt checks include gsc-engine/vdbox/Kconfig
> 	 */

"we still also *need* it"

Good comment.

> 	gt = pxp_find_suitable_ctrl_gt(i915);
> 	if (!gt)
> 		return -ENODEV;
> 
> 	pxp = kzalloc(sizeof(*i915->pxp), GFP_KERNEL);
> 	if (!pxp)
> 		return -ENOMEM;
> 
> 	pxp->ctrl_gt = gt;
> 	/*
> 	 * If HuC is loaded by GSC but PXP is disabled, we can skip the init of
> 	 * the full PXP session/object management and just init the tee channel.
> 	 */
> 	if (intel_pxp_is_supported(pxp)) {

How does the "full pxp init" branch handle the case of "have vdbox but huc fw is not available"? Presumably i915->pxp is not needed on that path too then? If so that could also be folded into pxp_find_suitable_ctrl_gt and then you wouldn't need the "else kfree" branch below.

Essentially, can you cram more of the static checks into pxp_find_suitable_ctrl_gt and if that one returns a gt, then you definitely know i915->pxp needs to be allocated and just decide on the flavour of initialisation?

I am not entirely sure about has_pxp but would this work:

static struct intel_gt *pxp_find_suitable_ctrl_gt(struct drm_i915_private *i915)
{
...
	if (!VDBOX_MASK(...))
		return NULL; /* Can't possibly need pxp */
	else if (!intel_uc_uses_huc(...))
		return NULL; /* Ditto? */

	for_each_gt(gt, i915, i) {
... as in the patch ...
}

int intel_pxp_init(struct drm_i915_private *i915)
{
...
	if (IS_ENABLED(CONFIG_DRM_I915_PXP) && INTEL_INFO(pxp->ctrl_gt->i915)->has_pxp)
		pxp_init_full(pxp);
	else if (intel_huc_is_loaded_by_gsc(...))
		intel_pxp_tee_component_init(pxp);
	else
		WARN(1, "oopsie");
...
}

bool intel_pxp_is_supported(...i915...)
{
	return IS_ENABLED(CONFIG_DRM_I915_PXP) && i915->pxp;
}

Regards,

Tvrtko

P.S. s/pxp_find_suitable_ctrl_gt/pxp_find_required_ctrl_gt/, to signify it may not required even if it exists?

> 		pxp_init_full(pxp);
> 	} else if (pxp_backend_tee_is_needed(pxp)) {
> 		intel_pxp_tee_component_init(pxp);
> 	} else {
> 		kfree(pxp);
> 		pxp = NULL;
> 	}
> 
> 	i915->pxp = pxp;
> 
> 	return 0;
> }
> 
> 
>> Regards,
>>
>> Tvrtko
>>
> 
> Alan:[snip]
> 
