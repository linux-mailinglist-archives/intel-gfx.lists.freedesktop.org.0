Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B2B6320D9
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 12:39:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B837A10E2BB;
	Mon, 21 Nov 2022 11:39:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0703210E2AD
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 11:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669030788; x=1700566788;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=o9x4FpjP8D+SlCRW7lGLmgmrxSrouSY9urpHjrFSN48=;
 b=MVdDkeCun+4qgXUJdvQCPVAPXm7kFeMAPvB5sgADQ6NjhmVF6n6fkyw4
 1+CvHWuJgB9M3+lLdkRWirvz+uZrdMxPd3qohrVlwZCaEGt0tmDJwDFay
 6ii1AUTD34Rtwyxk1vhjwfAGIP4f/CSwcjoKwRvNU1kANsPSGJtE26cxd
 l5gzo1WER0KlmAK60hAlZke2HnSZ3DMYJMm47fTFzkkK1OccrnlqueoPJ
 OUYlE2e0IpYV6Y8qD0YtCdHD24LWm72gRiw/yEgOGvS+Z2ETvSU0EnxQQ
 +8ikmODWS/U4WgrxYGn3zRBzzDFsU2XQbaOnFfZncJVuZvdpsrLXwjip0 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="315358107"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="315358107"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 03:39:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="765933955"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="765933955"
Received: from slarkin-mobl.ger.corp.intel.com (HELO [10.213.201.194])
 ([10.213.201.194])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 03:39:45 -0800
Message-ID: <6e6219c3-8d9d-6033-5f23-6008c66ac9fa@linux.intel.com>
Date: Mon, 21 Nov 2022 11:39:43 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
References: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
 <20221117003018.1433115-2-alan.previn.teres.alexis@intel.com>
 <Y3ZbLA2nenwp29u/@intel.com>
 <0067b884a5787ea4fbf5d6dffc5e7d4219a23585.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <0067b884a5787ea4fbf5d6dffc5e7d4219a23585.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v4 1/6] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 17/11/2022 22:34, Teres Alexis, Alan Previn wrote:
> On Thu, 2022-11-17 at 11:02 -0500, Vivi, Rodrigo wrote:
>> On Wed, Nov 16, 2022 at 04:30:13PM -0800, Alan Previn wrote:
>>> In preparation for future MTL-PXP feature support, PXP control
>>> context should only valid on the correct gt tile. Depending on the
>>> device-info this depends on which tile owns the VEBOX and KCR.
>>> PXP is still a global feature though (despite its control-context
>>> located in the owning GT structure). Additionally, we find
>>> that the HAS_PXP macro is only used within the pxp module,
>>>
>>> That said, lets drop that HAS_PXP macro altogether and replace it
>>> with a more fitting named intel_gtpxp_is_supported and helpers
>>> so that PXP init/fini can use to verify if the referenced gt supports
>>> PXP or teelink.
>>
>> Yep, I understand you as I'm not fan of these macros, specially
>> single usage. But we need to consider that we have multiple dependencies
>> there and other cases like this in the driver... Well, but I'm not
>> opposing, but probably better to first get rid of the macro,
>> then change the behavior of the function on the next patch.
>>
>>>
>>> Add TODO for Meteorlake that will come in future series.
>>
>> This refactor patch should be standalone, without poputing it with
>> the changes that didn't came yet to this point.
>>
> Sure i can follow this rule, but it would then raise the question of "nothign is really changing anywhere for MTL, why
> are we doing this" thats why i wanted to add that placeholder. I see "TODO"s are a common thing in the driver for larger
> features that cant all be enabled at once. Respectfully and humbly, is there some documented rule? Can you show it to
> me?

Separating refactoring from functional changes is one of the most basic 
principles we follow (and not just us) and there should never be 
pushback on the former due lack of functional changes.

On the basic level following this guideline makes it trivial to review 
the refactoring patch, and in the vast majority of cases much easier to 
review the functional change patch as well.

And easy to review means happy reviewers, faster turnaround time (easier 
to carry a rebase), happier authors, easier reverts when things go bad 
(only small functional patch needs to be reverted), sometimes even 
easier backporting if code diverged a lot.

Oh, and it even has potential to decrease internal technical debt. Often 
you can push refactoring upstream and keep a smaller delta behind the 
closed doors, when that is required.

>>> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/i915_drv.h              |  4 ----
>>>   drivers/gpu/drm/i915/pxp/intel_pxp.c         | 22 ++++++++++++++------
>>>   drivers/gpu/drm/i915/pxp/intel_pxp.h         |  3 +++
>>>   drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c |  2 +-
>>>   4 files changed, 20 insertions(+), 11 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>>> index 7e3820d2c404..0616e5f0bd31 100644
>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>> @@ -933,10 +933,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>>   
>>>   #define HAS_GLOBAL_MOCS_REGISTERS(dev_priv)	(INTEL_INFO(dev_priv)->has_global_mocs)
>>>   
>>> -#define HAS_PXP(dev_priv)  ((IS_ENABLED(CONFIG_DRM_I915_PXP) && \
>>> -			    INTEL_INFO(dev_priv)->has_pxp) && \
>>> -			    VDBOX_MASK(to_gt(dev_priv)))
>>> -
>>>   #define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
>>>   
>>>   #define HAS_GMD_ID(i915)	(INTEL_INFO(i915)->has_gmd_id)
>>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>>> index 5efe61f67546..d993e752bd36 100644
>>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
>>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>>> @@ -44,6 +44,20 @@ struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
>>>   	return container_of(pxp, struct intel_gt, pxp);
>>>   }
>>>   
>>> +static bool _gt_needs_teelink(struct intel_gt *gt)
>>> +{
>>> +	/* TODO: MTL won't rely on CONFIG_INTEL_MEI_PXP but on GSC engine */
>>> +	return (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && intel_huc_is_loaded_by_gsc(&gt->uc.huc) &&
>>> +		intel_uc_uses_huc(&gt->uc));
>>> +}
>>> +
>>> +bool intel_pxp_supported_on_gt(const struct intel_pxp *pxp)
>>
>> If we are asking if it is supported on gt, then the argument must be a gt struct.
>>
> I agree with you but Daniele said above is more consistent with existing ways that is considered the standard.
> Respectfully and humbly I would like to request both yourself and Daniele to show me the coding guidelines somewhere.
> 
> Honestly, this is one of the first few hunks of the first patch of the first series in a very large complex design to
> enable PXP on MTL and it only a helper utility function. Respecfully and humbly, I rather we focus our energy for review
> + redo  on more critical things like the e2e usage and top-to-bottom design or coding logic flows or find actual bugs
> instead of debating about coding styles for internal only helper functions.

My 2c/p is that the intel_pxp_supported_on_gt the "on_gt" part reads a 
bit clumsy because it makes it sound like the two are independent 
objects. Like I could pass one pxp to different GTs and ask if that one 
works here, or maybe there.

I am though a fan of intel_pxp_ prefix meaning function operates on 
struct intel_pxp.

In this case I don't know what is the correct relationship. If it is 1:1 
between intel_pxp:intel_gt then intel_pxp_supported(pxp) sounds fine. 
Even if a singleton that works for me. If we do have 1:1 but only want 
to init the first one, but PXP truly lives in the GT block, we could 
have pointers per GT, with only the gt0 one being initialized, and 
perhaps a shadow i915->pxp pointer which points to gt[0]->pxp, if that 
makes for better code organisation?

Regards,

Tvrtko

> 
> 
>>> +{
>>> +	/* TODO: MTL won't rely on CONFIG_INTEL_MEI_PXP but on GSC engine */
>>> +	return (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && IS_ENABLED(CONFIG_DRM_I915_PXP) &&
>>> +		INTEL_INFO((pxp_to_gt(pxp))->i915)->has_pxp && VDBOX_MASK(pxp_to_gt(pxp)));
>>> +}
>>> +
>>>   bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
>>>   {
>>>   	return pxp->ce;
>>> @@ -142,17 +156,13 @@ void intel_pxp_init(struct intel_pxp *pxp)
>>>   {
>>>   	struct intel_gt *gt = pxp_to_gt(pxp);
>>>   
>>> -	/* we rely on the mei PXP module */
>>> -	if (!IS_ENABLED(CONFIG_INTEL_MEI_PXP))
>>> -		return;
>>
>> I took a time to understand this movement based on the commit description.
>> I have the feeling that this patch deserves further split in different patches.
>>
>> But also, looking a few lines above pxp_to_gt(pxp), I believe we
>> have further refactor to do sooner. is is one pxp per gt, then we
>> need to only enable in the gt0?
>>
> In our driver, PXP as reflected by the device info is being treated as a global feature.
> PXP as a HW subsystem is "usable" device-wide from any workload on any engine on any tile (due to the internal mirror
> component and additional plumbing across the tiles). So in line with that I rather not have the gem-exec-buf, gem-create
> and gem-context calls be bothered about which GT to access to query of this global hw feature is enabled or active.
> However the control point for allocating sessions, talking to the gsc firmware and doing global teardowns are only meant
> to occur on and via the tile that owns the KCR engine which the media tile. This includes things like per-tile uncore
> power gating controls of the GSC-CS. (although some aspects like IRQ for KCR global). So as u see its not a clean per-GT
> feature.
> 
> I did speak to Daniele many months back when enabling the full feature set (on internal POC work) about whether we
> should make PXP a global subsystem instead of hanging off gt but we both agreed that because the control engines are
> only located on one tile, so you might face some its gonna be a trade off one way or the other:
>       - pxp a global structure, then all of the init / shutdown / suspend-resume flows would then have a different set of
> convoluted functions that try to get access to gt specific controls from a top level function flow.
> 
> 
> Additionally, humbly and respectfully, perhaps you can read through the internal arch HW specs through which it can be
> infered that PXP will continue to have a single entity for control events despite the feature being usable / accessible
> across all tiles.
> 
>>> -
>>>   	/*
>>>   	 * If HuC is loaded by GSC but PXP is disabled, we can skip the init of
>>>   	 * the full PXP session/object management and just init the tee channel.
>>>   	 */
>>> -	if (HAS_PXP(gt->i915))
>>> +	if (intel_pxp_supported_on_gt(pxp))
>>>   		pxp_init_full(pxp);
>>> -	else if (intel_huc_is_loaded_by_gsc(&gt->uc.huc) && intel_uc_uses_huc(&gt->uc))
>>> +	else if (_gt_needs_teelink(gt))
>>>   		intel_pxp_tee_component_init(pxp);
>>>   }
>>>   
>>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
>>> index 2da309088c6d..efa83f9d5e24 100644
>>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
>>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
>>> @@ -13,6 +13,9 @@ struct intel_pxp;
>>>   struct drm_i915_gem_object;
>>>   
>>>   struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
>>> +
>>> +bool intel_pxp_supported_on_gt(const struct intel_pxp *pxp);
>>> +
>>>   bool intel_pxp_is_enabled(const struct intel_pxp *pxp);
>>>   bool intel_pxp_is_active(const struct intel_pxp *pxp);
>>>   
>>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
>>> index 4359e8be4101..f0ad6f34624a 100644
>>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
>>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
>>> @@ -70,7 +70,7 @@ void intel_pxp_debugfs_register(struct intel_pxp *pxp, struct dentry *gt_root)
>>>   	if (!gt_root)
>>>   		return;
>>>   
>>> -	if (!HAS_PXP((pxp_to_gt(pxp)->i915)))
>>> +	if (!intel_pxp_supported_on_gt(pxp))
>>>   		return;
>>>   
>>>   	root = debugfs_create_dir("pxp", gt_root);
>>> -- 
>>> 2.34.1
>>>
> 
