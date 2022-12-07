Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4ACA64572D
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 11:10:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1E9010E1A0;
	Wed,  7 Dec 2022 10:10:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4657210E1A0
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 10:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670407808; x=1701943808;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=vQgcSL3Po1qem57ir29xvMoMLvgqTulVkM2ZALbDRr0=;
 b=I0a6+CN79Bmc5eYuo1ftjGe4bptBf5O+tohbTolq/ME4QbulCF+7pFJV
 tr/EbitrbiKa2X7ndH4TJYpH75LY0bRpQguk2h+PRF1tWQimdAzcVOtaV
 xj6KrjLmLtsjtLJnqKMgEzAKN3fLNddufV0r/99Y8Mz60NU6vRXUrS8FI
 kW9KTEFWsHbUm9Qh3MA8qRJAw1o+vQB+2YBgN7XHSeLsRwgGd1Kfd7PZH
 24aFV8ewzS83UcIs69jFo8Tf7PV1xR+fFbUoqH/BtHkukxUlSJIhD7UwG
 1pDqRatsiL+tSLpCCP1PoHRA581qIPdLtx1XfY5Zl6yj2eOlcyp/E9zAS Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="304484973"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="304484973"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 02:10:07 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="820906695"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="820906695"
Received: from nsafari-mobl3.ger.corp.intel.com (HELO [10.213.213.175])
 ([10.213.213.175])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 02:10:06 -0800
Message-ID: <4d0188ae-2e3b-4789-6526-2ea990029bfb@linux.intel.com>
Date: Wed, 7 Dec 2022 10:10:04 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20221206000332.134137-1-alan.previn.teres.alexis@intel.com>
 <5f79eccd-f843-8738-98c9-e9400c55ead0@linux.intel.com>
 <85af989600231120dff41fa613f14ad28a423b7c.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <85af989600231120dff41fa613f14ad28a423b7c.camel@intel.com>
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


On 06/12/2022 18:26, Teres Alexis, Alan Previn wrote:
> 
> 
> On Tue, 2022-12-06 at 10:04 +0000, Tvrtko Ursulin wrote:
>> On 06/12/2022 00:03, Alan Previn wrote:
>>>
> Alan: [snip]
>>
>>>    
>>> -struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
>>> +bool intel_pxp_is_supported(const struct intel_pxp *pxp)
>>>    {
>>> -	return container_of(pxp, struct intel_gt, pxp);
>>> +	if (!IS_ENABLED(CONFIG_DRM_I915_PXP))
>>> +		return false;
>>> +	else if (!pxp)
>>> +		return false;
>>> +	return (INTEL_INFO(pxp->ctrl_gt->i915)->has_pxp && VDBOX_MASK(pxp->ctrl_gt));
>>
>> Intel_pxp_is_supported operating on the pxp reads a bit funny when one
>> of the checks is for NULL passed in object to start with.
>>
>> And all callers pass in i915->pxp so my immediate thought is whether
>> i915_pxp_is_supported(i915) was considered?
> 
> 
> Alan: I think you might need to track back through the last couple of months of this patch (probably back to rev4 or
> 5)... I was told the coding practice is intel_subsystem_function(struct subsystem...) so pxp should have pxp as its
> input structure. We needed to make exceptions for init/fini because ptr-to-ptr is worse - but we all agreed we dont want
> viral include header hiearchys so dynamic allocation is the right way to go. ('we' included Jani + Rodrigo). As such i

I said nothing about dynamic allocation. I said, since you are promoting pxp to be under i915, and have a this:

intel_pxp_is_supported(pxp)
{
...
	if (!pxp)
		return false;

(There's even a gt->i915->has_pxp in there, and a Kconfig based check, so it really does not feel this should operate on the pxp.)

And callers to all these three function pass in, most even directly, i915->pxp, that passing in a NULL pxp to function tell you you passed in NULL pxp reads confused.

I asked if this alternative was considered (function prefix follow target object):

i915_pxp_is_supported(i915)

Or if you want to follow the alternative preference (function prefix follows file prefix):

intel_pxp_is_supported(i915)

Nothing about dropping the dynamic allocation in this question...

Oh would IS_ENABLED(CONFIG_DRM_I915_PXP) be right in intel_pxp_is_enabled/active? If so maybe worth to add for some extra dead code elimination.

> wont change this - but i will wait for your confirmation before i re-rev. Side note: with all due respect it would be
> nice to have comments preceeded with "nack" or "nit" or "question".

"Discussion in progress please hold".

> Alan: [snip]
>>>
>>>
>>>
> 
>>> @@ -138,31 +152,63 @@ static void pxp_init_full(struct intel_pxp *pxp)
>>>    	destroy_vcs_context(pxp);
>>>    }
>>>    
>>> -void intel_pxp_init(struct intel_pxp *pxp)
>>> +static struct intel_gt *pxp_get_ctrl_gt(struct drm_i915_private *i915)
>>>    {
>>> -	struct intel_gt *gt = pxp_to_gt(pxp);
>>> +	struct intel_gt *gt = NULL;
>>> +	int i = 0;
>>
>> No need to init.
> Alan: Sorry - i hate not initing local vars - is this a nack?

Then you hate consistency as well? :) It is a very typical review feedback. Look around the mailing list and the code and count how many needlessly initialized locals we have. You just align it with the codebase and move on..

>>>    
>>> -	/* we rely on the mei PXP module */
>>> -	if (!IS_ENABLED(CONFIG_INTEL_MEI_PXP))
>>> -		return;
>>> +	for_each_gt(gt, i915, i) {
>>> +		/* There can be only one GT with GSC-CS that supports PXP */
>>> +		if (HAS_ENGINE(gt, GSC0))
>>> +			return gt;
>>> +	}
>>> +
>>> +	/* Else we rely on the GT-0 with mei PXP module */
>>> +	if (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && !i915->media_gt)
>>> +		return &i915->gt0;
>>> +
>>
>> None of this makes sense unless CONFIG_DRM_I915_PXP, right?
> Alan: No - when we dont support PXP as a feature we still need the backend Tee-link infrastructure that PXP provides for
> GSC HuC authentication  for DG2 - this existing code path. I can add some additional comments. (im using Tee losely here
> since its not actual Tee but an intel specific framework to provide access to security firwmare).

Okay so is the answer i915->pxp is not the same PXP as CONFIG_DRM_I915_PXP. Latter is kind of the user facing part, while i915->pxp is set when the PXP hardware actually exists. I got this right? If so how about splitting intel_pxp_is_supported into two (or more?) so it does not answer two separate questions?

>>
>>> +	return NULL;
>>> +}
>>> +
>>> +int intel_pxp_init(struct drm_i915_private *i915)
>>> +{
>>> +	i915->pxp = kzalloc(sizeof(*i915->pxp), GFP_KERNEL);
>>> +	if (!i915->pxp)
>>> +		return -ENOMEM;
>>> +
>>> +	i915->pxp->ctrl_gt = pxp_get_ctrl_gt(i915);
>>> +	if (!i915->pxp->ctrl_gt) {
>>> +		kfree(i915->pxp);
>>> +		i915->pxp = NULL;
>>> +		return -ENODEV;
>>> +	}
>>
>> If you store ctrl_gt in a local then you don't have to allocate until
>> you'll know you need it, however..
> Alan: see my reply below.

To be clear I was merely suggesting to avoid the need to free something just allocated:

int intel_pxp_init(struct drm_i915_private *i915)
{
	struct intel_gt *ctrl_gt;
	struct intel_pxp *pxp;

	ctrl_gt = pxp_get_ctrl_gt(i915);
	if (!ctrl_gt)
		return -ENODEV;

	pxp = kzalloc(...)
	if (!pxp)
		return -ENOMEM;
...

Because it's kind of pointless to alloc+free on every old platform under the sun.

And maybe pxp_get_ctrl_gt should be renamed to some variant of "is needed", but I am not clear yet on that.

>>
>>>    
>>>    	/*
>>>    	 * If HuC is loaded by GSC but PXP is disabled, we can skip the init of
>>>    	 * the full PXP session/object management and just init the tee channel.
>>>    	 */
>>> -	if (HAS_PXP(gt->i915))
>>> -		pxp_init_full(pxp);
>>> -	else if (intel_huc_is_loaded_by_gsc(&gt->uc.huc) && intel_uc_uses_huc(&gt->uc))
>>> -		intel_pxp_tee_component_init(pxp);
>>> +	if (intel_pxp_is_supported(i915->pxp))
>>> +		pxp_init_full(i915->pxp);
>>> +	else if (intel_huc_is_loaded_by_gsc(&i915->pxp->ctrl_gt->uc.huc) &&
>>> +		 intel_uc_uses_huc(&i915->pxp->ctrl_gt->uc))
>>> +		intel_pxp_tee_component_init(i915->pxp);
>>
>> ... intel_pxp_is_supported() returnsed false so what is the purpose of
>> the "else if" branch?
>>
>> Which of the conditions in intel_pxp_is_supported can it fail on to get
>> here?
>>
>> And purpose of exiting init with supported = no but i915->pxp set?
>>
> Alan: So this was prior existing code flow i did not change - but i can add an "else if (intel_pxp_tee_is_needed())" and
> that can be a wrapper around those gsc-huc-authentication and tee backend transport dependency needs.

Hm, okay. So here you have:


+	if (intel_pxp_is_supported(i915->pxp))
+		pxp_init_full(i915->pxp);
+	else if (pxp_backend_tee_is_needed(i915->pxp))
+		intel_pxp_tee_component_init(i915->pxp);
+
+	return 0;

1)

If both these branches are false, is there a purpose for the dangling i915->pxp object?

Or if they cannot both be false is this the clearest way to express the flow? ("else GEM_WARN_ON()" at least?)

2)

If there are no vdboxes is the last (else if) branch needed? If it is for loading the HuC then possibly sounds like no. So maybe the vdbox check can be early in pxp_get_ctrl_gt?

Regards,

Tvrtko

>>> -DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(pxp_info);
>>> +
>>> +static int pxp_info_open(struct inode *inode, struct file *file)
>>> +{
>>> +	return single_open(file, pxp_info_show, inode->i_private);
>>> +}
>>> +
>>> +static const struct file_operations pxp_info_fops = {
>>> +	.owner = THIS_MODULE,
>>> +	.open = pxp_info_open,
>>> +	.read = seq_read,
>>> +	.llseek = seq_lseek,
>>> +	.release = single_release,
>>> +};
>>
>> DEFINE_SHOW_ATTRIBUTE?
>>
> Alan: okay.
> 
>>>    /**
>>> @@ -20,7 +24,7 @@
>>>     */
>>>    void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
>>>    {
>>> -	struct intel_gt *gt = pxp_to_gt(pxp);
>>> +	struct intel_gt *gt = pxp->ctrl_gt;
>>>    
>>>    	if (GEM_WARN_ON(!intel_pxp_is_enabled(pxp))) >   		return;
>>
>> The early return is now less effective with spurious interrupts because
>> potentially NULL pxp has already been dereferenced to get the gt.
>>
> Alan: Good catch - i will fix this by not doing the dereference first until after the enabled check is called.
> 
>>
>>
>> I haven't read it all in detail but just a gut feel init flow is not
>> easy enough to understand, feels like it should be streamlined and
>> simplified to become as self-documenting as possible. Plus some minor
>> details.
>>
> Alan: The init flow is mostly identical to existing codes except for bringing the contents of HAS_PXP into the init
> codes since that macro is not needed to be included from i915_drv.h (not used externally). I can add more comments but i
> don't think it would help much without understanding all of the quirks of the PXP subsystem feature and framework. But i
> can at least add some more comments.
> 
> 
