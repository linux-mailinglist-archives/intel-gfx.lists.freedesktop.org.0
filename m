Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE76602651
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 10:01:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16B9810EEEB;
	Tue, 18 Oct 2022 08:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E713D10EEE6
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Oct 2022 08:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666080062; x=1697616062;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=E5OV8Kfg3NwFBx9B7gAgOpmeNl4rAjIyh6wyl0od1L8=;
 b=PWPdYDTcFLDr/9pJiNLBvqJOwms/ks87CL8N+Sq57rUltGkHtlZyI2qI
 mZr6L3MXC5X3Y7comHLlR0K7eu6hGCb84EhAdlIoUldmYb02jlPEZJjLi
 OAQBJrSOjyCCi1x/2TWvskmNZ9g/fPf/004O+Y6yxT69wUQcduh2vLCxJ
 eaXFiwtLHauvd1wHsmrWJkYW2a+6oxEN6gNafnU26HE3JXwO/WHg7JGtP
 xNmllskLS9ibM7i2qKB0D1Fk07Cu+mPP02kDe5oHg2+M+OaDQ2NCc/dfa
 1CHangXklh2n+FxmMUx2sGus50MjKxVLzze3sFvqEkT+wnWRrTJRK2x28 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="293400372"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="293400372"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 01:01:01 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="691690375"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="691690375"
Received: from gdeegan-mobl.ger.corp.intel.com (HELO [10.213.202.90])
 ([10.213.202.90])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 01:01:00 -0700
Message-ID: <bdedca3f-88e3-2da9-cb0e-0a0754621313@linux.intel.com>
Date: Tue, 18 Oct 2022 09:00:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20221015035952.1741319-1-alan.previn.teres.alexis@intel.com>
 <20221015035952.1741319-2-alan.previn.teres.alexis@intel.com>
 <e02ac836-89f4-1734-eacc-73f49ecda323@linux.intel.com>
 <0c41d33552a0cc52c3835be99ce2e0e50a9084af.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <0c41d33552a0cc52c3835be99ce2e0e50a9084af.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Add error-capture init
 warnings when needed
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


On 17/10/2022 18:46, Teres Alexis, Alan Previn wrote:
> On Mon, 2022-10-17 at 09:42 +0100, Tvrtko Ursulin wrote:
>> On 15/10/2022 04:59, Alan Previn wrote:
>>> If GuC is being used and we initialized GuC-error-capture,
>>> we need to be warning if we don't provide an error-capture
>>> register list in the firmware ADS, for valid GT engines.
>>> A warning makes sense as this would impact debugability
>>> without realizing why a reglist wasn't retrieved and reported
>>> by GuC.>
>>> However, depending on the platform, we might have certain
>>> engines that have a register list for engine instance error state
>>> but not for engine class. Thus, add a check only to warn if the
>>> register list was non existent vs an empty list (use the
>>> empty lists to skip the warning).
>>>
>>> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>>> ---
>>>    .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 55 ++++++++++++++++++-
>>>    1 file changed, 53 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>>> index 8f1165146013..290c1e1343dd 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>>> @@ -419,6 +419,44 @@ guc_capture_get_device_reglist(struct intel_guc *guc)
>>>    	return default_lists;
>>>    }
>>>    
>>> +static const char *
>>> +__stringify_type(u32 type)
>>> +{
>>> +	switch (type) {
>>> +	case GUC_CAPTURE_LIST_TYPE_GLOBAL:
>>> +		return "Global";
>>> +	case GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS:
>>> +		return "Class";
>>> +	case GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE:
>>> +		return "Instance";
>>> +	default:
>>> +		return "unknown";
>>> +	}
>>> +
>>> +	return "";
>>
>> What's the point of these returns? Gcc complains about not returning a type from const char * return function?
>>
> Sorry i am not sure I saw any complain for Gcc. If you are referring to "" then i can re-rev without the default and
> just let the path outside return the unknown. Is that what you are referring to?

Yes, it is an unreachable path, handled by default switch branch already.

>>> +}
>>> +
>>> +static const char *
>>> +__stringify_engclass(u32 class)
>>> +{
>>> +	switch (class) {
>>> +	case GUC_RENDER_CLASS:
>>> +		return "Render";
>>> +	case GUC_VIDEO_CLASS:
>>> +		return "Video";
>>> +	case GUC_VIDEOENHANCE_CLASS:
>>> +		return "VideoEnhance";
>>> +	case GUC_BLITTER_CLASS:
>>> +		return "Blitter";
>>> +	case GUC_COMPUTE_CLASS:
>>> +		return "Compute";
>>> +	default:
>>> +		return "unknown";
>>> +	}
>>> +
>>> +	return "";
>>> +}
>>> +
>>>    static int
>>>    guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
>>>    		      struct guc_mmio_reg *ptr, u16 num_entries)
>>> @@ -487,19 +525,32 @@ intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 cl
>>>    			      size_t *size)
>>>    {
>>>    	struct intel_guc_state_capture *gc = guc->capture;
>>> +	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>>>    	struct __guc_capture_ads_cache *cache = &gc->ads_cache[owner][type][classid];
>>>    	int num_regs;
>>>    
>>> -	if (!gc->reglists)
>>> +	if (!gc->reglists) {
>>> +		drm_warn(&i915->drm, "GuC-capture: No reglist on this device\n");
>>>    		return -ENODEV;
>>> +	}
>>>    
>>>    	if (cache->is_valid) {
>>>    		*size = cache->size;
>>>    		return cache->status;
>>>    	}
>>>    
>>> +	if (!guc_capture_get_one_list(gc->reglists, owner, type, classid)) {
>>> +		if (owner == GUC_CAPTURE_LIST_INDEX_PF && type == GUC_CAPTURE_LIST_TYPE_GLOBAL)
>>> +			drm_warn(&i915->drm, "GuC-capture: missing reglist type-Global\n");
>>> +		if (owner == GUC_CAPTURE_LIST_INDEX_PF)
>>
>> GUC_CAPTURE_LIST_INDEX_PF could be made once on the enclosing if statement?
> Sure - will do.
>>
>> Btw what's with the PF and VF (cover letter) references while SRIOV does not exists upstream?
> To maintain a scalable code flow across both the ADS code and guc-error-capture code, we do have to skip over this enum
> else we'll encounter lots of warnings about missing VF-reglist support (which we cant check for since we dont even have
> support - i.e we dont even have a "is not supported" check) but the GuC firmware ADS buffer allocation includes an entry
> for VFs so we have to skip over it. This is the cleanest way i can think of without impacting other code areas and also
> while adding the ability to warn when its important.
>>> +			drm_warn(&i915->drm, "GuC-capture: missing regiist type(%d)-%s : "
>>
>> reglist
> thanks - will fix
>>
>>> +				 "%s(%d)-Engine\n", type, __stringify_type(type),
>>> +				 __stringify_engclass(classid), classid);
>>
>> One details to consider from Documentation/process/coding-style.rst
>> """
>> However, never break user-visible strings such as printk messages because that breaks the ability to grep for them.
>> """
>>
> I totally agree with you but i cant find a way to keep totally grep-able way without creating a whole set of error
> strings for the various list-types, list-owners and class-types. However i did ensure the first part of the message
> is grep-able : "GuC-capture: missing reglist type". Do you an alternative proposal?

Yeah it is not very greppable being largely constructed at runtime, but 
just don't break the string. IMO no gain to diverge from coding style here.

Or maybe with one level of indentation less as discussed, and maybe 
remove "GuC-capture" if it can be implied (are there other reglists not 
relating to error capture?), maybe it becomes short enough?

"Missing GuC reglist %s(%u):%s(%u)!", ...

?

Type will never be unknown I suspect since it should always be added 
very early during development. So type and engine suffixes may be 
redundant? Or keep it verbose if that fits better with existing GuC 
error capture logging, I don't know.

> 
>> Also commit message you can aim to wrap at 75 chars as per submitting-patches.rst.
>>
>>> +		return -ENODATA;
>>
>> Is this a new exit condition or the thing would exit on the !num_regs check below anyway? Just wondering if the series is only about logging changes or there is more to it.
> Its no different from previous behavior - and yes its about logging the missing reg lists for hw that needs it as we are
> missing this for DG2 we we didn't notice (we did a previous revert to remove these warnings but that time the warnings
> was too verbose - even complaining for the intentional empty lists and for VF cases that isnt supported).

Okay think I get it, thanks. If the "positive match" logging of empty 
list is more future proof than "negative - don't log these" you will 
know better.

Regards,

Tvrtko

>>
>>> +	}
>>> +
>>>    	num_regs = guc_cap_list_num_regs(gc, owner, type, classid);
>>> -	if (!num_regs)
>>> +	if (!num_regs) /* intentional empty lists can exist depending on hw config */
>>>    		return -ENODATA;
>>>    
>>>    	*size = PAGE_ALIGN((sizeof(struct guc_debug_capture_list)) +
>>
>> Regards,
>>
>> Tvrtko
> 
