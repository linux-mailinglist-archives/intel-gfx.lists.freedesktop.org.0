Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E3D6321A8
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 13:12:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5641B10E2BC;
	Mon, 21 Nov 2022 12:12:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F04410E2BB
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 12:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669032753; x=1700568753;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=82DO/dO7s62vLmy+R4MTrBrNJqub89Gb4Unba3OIL+s=;
 b=AwqY6QZcfLcW69ulgrB24VJBaBf5bV3GLuxwYgANq5WIiINu9W4G+7Hi
 ajVLrlTomhnZFhV/rKC1VeqTNYJPH+PM8UINvDoEQEgn80FaW0I0QbbY1
 H+IS8qp+mOcp5kXktBrXNSBIBz47ocKEY42P83VtmxJn8JnOCnrP10fqP
 1bJe4iGmjojMOHOVPR5If9vhXXd+g0Aoe2qNcayAr3+ceRYKURv/eZE+X
 WzW8IRBaUhxtrRCi32tx+2WC3TmcZhiY/29fjZTks9zFMGXdyOZfTf36E
 3ntlvdhgg27vdy0wm9PzFlsit853+GdtE8c3iSQ5/SOxpsopIYNSW6pLR Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="293932882"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="293932882"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 04:12:32 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="618804352"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="618804352"
Received: from davermux-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.1.229])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 04:12:30 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "Teres Alexis, Alan
 Previn" <alan.previn.teres.alexis@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>
In-Reply-To: <6e6219c3-8d9d-6033-5f23-6008c66ac9fa@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
 <20221117003018.1433115-2-alan.previn.teres.alexis@intel.com>
 <Y3ZbLA2nenwp29u/@intel.com>
 <0067b884a5787ea4fbf5d6dffc5e7d4219a23585.camel@intel.com>
 <6e6219c3-8d9d-6033-5f23-6008c66ac9fa@linux.intel.com>
Date: Mon, 21 Nov 2022 14:12:28 +0200
Message-ID: <87sficzetv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 21 Nov 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 17/11/2022 22:34, Teres Alexis, Alan Previn wrote:
>> On Thu, 2022-11-17 at 11:02 -0500, Vivi, Rodrigo wrote:
>>> On Wed, Nov 16, 2022 at 04:30:13PM -0800, Alan Previn wrote:
>>>> In preparation for future MTL-PXP feature support, PXP control
>>>> context should only valid on the correct gt tile. Depending on the
>>>> device-info this depends on which tile owns the VEBOX and KCR.
>>>> PXP is still a global feature though (despite its control-context
>>>> located in the owning GT structure). Additionally, we find
>>>> that the HAS_PXP macro is only used within the pxp module,
>>>>
>>>> That said, lets drop that HAS_PXP macro altogether and replace it
>>>> with a more fitting named intel_gtpxp_is_supported and helpers
>>>> so that PXP init/fini can use to verify if the referenced gt supports
>>>> PXP or teelink.
>>>
>>> Yep, I understand you as I'm not fan of these macros, specially
>>> single usage. But we need to consider that we have multiple dependencies
>>> there and other cases like this in the driver... Well, but I'm not
>>> opposing, but probably better to first get rid of the macro,
>>> then change the behavior of the function on the next patch.
>>>
>>>>
>>>> Add TODO for Meteorlake that will come in future series.
>>>
>>> This refactor patch should be standalone, without poputing it with
>>> the changes that didn't came yet to this point.
>>>
>> Sure i can follow this rule, but it would then raise the question of "nothign is really changing anywhere for MTL, why
>> are we doing this" thats why i wanted to add that placeholder. I see "TODO"s are a common thing in the driver for larger
>> features that cant all be enabled at once. Respectfully and humbly, is there some documented rule? Can you show it to
>> me?
>
> Separating refactoring from functional changes is one of the most basic 
> principles we follow (and not just us) and there should never be 
> pushback on the former due lack of functional changes.

It's also documented [1][2] but that never seems to make a difference.

BR,
Jani.


[1] https://docs.kernel.org/process/submitting-patches.html#separate-your-changes
[2] https://docs.kernel.org/process/5.Posting.html#patch-preparation




>
> On the basic level following this guideline makes it trivial to review 
> the refactoring patch, and in the vast majority of cases much easier to 
> review the functional change patch as well.
>
> And easy to review means happy reviewers, faster turnaround time (easier 
> to carry a rebase), happier authors, easier reverts when things go bad 
> (only small functional patch needs to be reverted), sometimes even 
> easier backporting if code diverged a lot.
>
> Oh, and it even has potential to decrease internal technical debt. Often 
> you can push refactoring upstream and keep a smaller delta behind the 
> closed doors, when that is required.
>
>>>> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/i915_drv.h              |  4 ----
>>>>   drivers/gpu/drm/i915/pxp/intel_pxp.c         | 22 ++++++++++++++------
>>>>   drivers/gpu/drm/i915/pxp/intel_pxp.h         |  3 +++
>>>>   drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c |  2 +-
>>>>   4 files changed, 20 insertions(+), 11 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>>>> index 7e3820d2c404..0616e5f0bd31 100644
>>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>>> @@ -933,10 +933,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>>>   
>>>>   #define HAS_GLOBAL_MOCS_REGISTERS(dev_priv)	(INTEL_INFO(dev_priv)->has_global_mocs)
>>>>   
>>>> -#define HAS_PXP(dev_priv)  ((IS_ENABLED(CONFIG_DRM_I915_PXP) && \
>>>> -			    INTEL_INFO(dev_priv)->has_pxp) && \
>>>> -			    VDBOX_MASK(to_gt(dev_priv)))
>>>> -
>>>>   #define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
>>>>   
>>>>   #define HAS_GMD_ID(i915)	(INTEL_INFO(i915)->has_gmd_id)
>>>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>>>> index 5efe61f67546..d993e752bd36 100644
>>>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
>>>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>>>> @@ -44,6 +44,20 @@ struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
>>>>   	return container_of(pxp, struct intel_gt, pxp);
>>>>   }
>>>>   
>>>> +static bool _gt_needs_teelink(struct intel_gt *gt)
>>>> +{
>>>> +	/* TODO: MTL won't rely on CONFIG_INTEL_MEI_PXP but on GSC engine */
>>>> +	return (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && intel_huc_is_loaded_by_gsc(&gt->uc.huc) &&
>>>> +		intel_uc_uses_huc(&gt->uc));
>>>> +}
>>>> +
>>>> +bool intel_pxp_supported_on_gt(const struct intel_pxp *pxp)
>>>
>>> If we are asking if it is supported on gt, then the argument must be a gt struct.
>>>
>> I agree with you but Daniele said above is more consistent with existing ways that is considered the standard.
>> Respectfully and humbly I would like to request both yourself and Daniele to show me the coding guidelines somewhere.
>> 
>> Honestly, this is one of the first few hunks of the first patch of the first series in a very large complex design to
>> enable PXP on MTL and it only a helper utility function. Respecfully and humbly, I rather we focus our energy for review
>> + redo  on more critical things like the e2e usage and top-to-bottom design or coding logic flows or find actual bugs
>> instead of debating about coding styles for internal only helper functions.
>
> My 2c/p is that the intel_pxp_supported_on_gt the "on_gt" part reads a 
> bit clumsy because it makes it sound like the two are independent 
> objects. Like I could pass one pxp to different GTs and ask if that one 
> works here, or maybe there.
>
> I am though a fan of intel_pxp_ prefix meaning function operates on 
> struct intel_pxp.
>
> In this case I don't know what is the correct relationship. If it is 1:1 
> between intel_pxp:intel_gt then intel_pxp_supported(pxp) sounds fine. 
> Even if a singleton that works for me. If we do have 1:1 but only want 
> to init the first one, but PXP truly lives in the GT block, we could 
> have pointers per GT, with only the gt0 one being initialized, and 
> perhaps a shadow i915->pxp pointer which points to gt[0]->pxp, if that 
> makes for better code organisation?
>
> Regards,
>
> Tvrtko
>
>> 
>> 
>>>> +{
>>>> +	/* TODO: MTL won't rely on CONFIG_INTEL_MEI_PXP but on GSC engine */
>>>> +	return (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && IS_ENABLED(CONFIG_DRM_I915_PXP) &&
>>>> +		INTEL_INFO((pxp_to_gt(pxp))->i915)->has_pxp && VDBOX_MASK(pxp_to_gt(pxp)));
>>>> +}
>>>> +
>>>>   bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
>>>>   {
>>>>   	return pxp->ce;
>>>> @@ -142,17 +156,13 @@ void intel_pxp_init(struct intel_pxp *pxp)
>>>>   {
>>>>   	struct intel_gt *gt = pxp_to_gt(pxp);
>>>>   
>>>> -	/* we rely on the mei PXP module */
>>>> -	if (!IS_ENABLED(CONFIG_INTEL_MEI_PXP))
>>>> -		return;
>>>
>>> I took a time to understand this movement based on the commit description.
>>> I have the feeling that this patch deserves further split in different patches.
>>>
>>> But also, looking a few lines above pxp_to_gt(pxp), I believe we
>>> have further refactor to do sooner. is is one pxp per gt, then we
>>> need to only enable in the gt0?
>>>
>> In our driver, PXP as reflected by the device info is being treated as a global feature.
>> PXP as a HW subsystem is "usable" device-wide from any workload on any engine on any tile (due to the internal mirror
>> component and additional plumbing across the tiles). So in line with that I rather not have the gem-exec-buf, gem-create
>> and gem-context calls be bothered about which GT to access to query of this global hw feature is enabled or active.
>> However the control point for allocating sessions, talking to the gsc firmware and doing global teardowns are only meant
>> to occur on and via the tile that owns the KCR engine which the media tile. This includes things like per-tile uncore
>> power gating controls of the GSC-CS. (although some aspects like IRQ for KCR global). So as u see its not a clean per-GT
>> feature.
>> 
>> I did speak to Daniele many months back when enabling the full feature set (on internal POC work) about whether we
>> should make PXP a global subsystem instead of hanging off gt but we both agreed that because the control engines are
>> only located on one tile, so you might face some its gonna be a trade off one way or the other:
>>       - pxp a global structure, then all of the init / shutdown / suspend-resume flows would then have a different set of
>> convoluted functions that try to get access to gt specific controls from a top level function flow.
>> 
>> 
>> Additionally, humbly and respectfully, perhaps you can read through the internal arch HW specs through which it can be
>> infered that PXP will continue to have a single entity for control events despite the feature being usable / accessible
>> across all tiles.
>> 
>>>> -
>>>>   	/*
>>>>   	 * If HuC is loaded by GSC but PXP is disabled, we can skip the init of
>>>>   	 * the full PXP session/object management and just init the tee channel.
>>>>   	 */
>>>> -	if (HAS_PXP(gt->i915))
>>>> +	if (intel_pxp_supported_on_gt(pxp))
>>>>   		pxp_init_full(pxp);
>>>> -	else if (intel_huc_is_loaded_by_gsc(&gt->uc.huc) && intel_uc_uses_huc(&gt->uc))
>>>> +	else if (_gt_needs_teelink(gt))
>>>>   		intel_pxp_tee_component_init(pxp);
>>>>   }
>>>>   
>>>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
>>>> index 2da309088c6d..efa83f9d5e24 100644
>>>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
>>>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
>>>> @@ -13,6 +13,9 @@ struct intel_pxp;
>>>>   struct drm_i915_gem_object;
>>>>   
>>>>   struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
>>>> +
>>>> +bool intel_pxp_supported_on_gt(const struct intel_pxp *pxp);
>>>> +
>>>>   bool intel_pxp_is_enabled(const struct intel_pxp *pxp);
>>>>   bool intel_pxp_is_active(const struct intel_pxp *pxp);
>>>>   
>>>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
>>>> index 4359e8be4101..f0ad6f34624a 100644
>>>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
>>>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
>>>> @@ -70,7 +70,7 @@ void intel_pxp_debugfs_register(struct intel_pxp *pxp, struct dentry *gt_root)
>>>>   	if (!gt_root)
>>>>   		return;
>>>>   
>>>> -	if (!HAS_PXP((pxp_to_gt(pxp)->i915)))
>>>> +	if (!intel_pxp_supported_on_gt(pxp))
>>>>   		return;
>>>>   
>>>>   	root = debugfs_create_dir("pxp", gt_root);
>>>> -- 
>>>> 2.34.1
>>>>
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
