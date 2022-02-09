Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B17B34AEF06
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 11:12:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92FD010E6F3;
	Wed,  9 Feb 2022 10:12:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D60B510E6F3
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 10:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644401551; x=1675937551;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=+WB+IRBfuCw5ukGb+nY7WNThCkhb1G9hpLIxnP5NPH4=;
 b=RF7piVbyMA9VxAkmIjWilWE1Zgw8XFyB3oIkLTP55BaeRdyw9E6hnfnv
 az0MdIWVrmIQZYtc0jfagVJ++oZx++vj8jVT2lw8LiImG1D5y0iIMx1vw
 EAy7q/db+LyVJ3juS4F3NpnlhYFMJC70ZXNylM6mlou4i6x94i581BcVt
 e3+fnkwW6rMnuntIN7UPd7YD2oaCwKgopkrD4Jq+FnqpI8dLjfm5OxcWh
 5WQrsRfQn3IoZHm7ascB2jBDf8utIWQtCFC8eeCsAp4PvEhyBf7lw8LJa
 gpi2aV75xAJNdRV9C9bbiUGXx3Hukvc3hwyme9DZl1OjG1XeSy/Wvwtbz w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="236578590"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="236578590"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 02:12:31 -0800
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="525934652"
Received: from dhussain-mobl.ger.corp.intel.com (HELO [10.213.227.135])
 ([10.213.227.135])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 02:12:30 -0800
Message-ID: <3399be93-7f59-57cf-e2c7-17d2630a82d8@linux.intel.com>
Date: Wed, 9 Feb 2022 10:12:28 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220208171651.3085901-1-jani.nikula@intel.com>
 <11b50bb3-1183-e9db-29e2-c7f377a8632e@linux.intel.com>
 <87k0e4pdgf.fsf@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87k0e4pdgf.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: move intel_hws_csb_write_index()
 out of i915_drv.h
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


On 09/02/2022 10:00, Jani Nikula wrote:
> On Wed, 09 Feb 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
>> On 08/02/2022 17:16, Jani Nikula wrote:
>>> Underscore prefix the index macros, and place
>>> INTEL_HWS_CSB_WRITE_INDEX() as a macro next to them, to declutter
>>> i915_drv.h.
>>>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gt/intel_engine.h               | 6 ++++--
>>>    drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 2 +-
>>>    drivers/gpu/drm/i915/gvt/execlist.c                  | 2 +-
>>>    drivers/gpu/drm/i915/i915_drv.h                      | 8 --------
>>>    4 files changed, 6 insertions(+), 12 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
>>> index 0e353d8c2bc8..faf26ed37d01 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
>>> @@ -180,8 +180,10 @@ intel_write_status_page(struct intel_engine_cs *engine, int reg, u32 value)
>>>    #define I915_GEM_HWS_SCRATCH		0x80
>>>    
>>>    #define I915_HWS_CSB_BUF0_INDEX		0x10
>>> -#define I915_HWS_CSB_WRITE_INDEX	0x1f
>>> -#define ICL_HWS_CSB_WRITE_INDEX		0x2f
>>> +#define _I915_HWS_CSB_WRITE_INDEX	0x1f
>>> +#define _ICL_HWS_CSB_WRITE_INDEX		0x2f
>>
>> I don't quite get why would these two be the only ones which need
>> underscore prefix?
> 
> The others are used directly, these two should only be used via
> INTEL_HWS_CSB_WRITE_INDEX(), like they are. That's the hint with the
> underscores. Matches what's done in i915_reg.h for example for register
> instances and choosing the right register instance.

Oh that logic, okay, I don't think it is "should" and would have left it 
as is (closer example than register groups is I think per gen variance 
of CSB layout in intel_lrc_reg.h, or engine mmio base), but don't mind 
hugely either.
>>
>>> +#define INTEL_HWS_CSB_WRITE_INDEX(__i915) \
>>> +	(GRAPHICS_VER(__i915) >= 11 ? _ICL_HWS_CSB_WRITE_INDEX : _I915_HWS_CSB_WRITE_INDEX)
>>
>> Secondly, on the point of the best new home for it, it is better than
>> i915_drv.h that is for sure. But is it the best I am not sure.
> 
>>From my POV this one's pretty clear. The index macros are here, and this
> is a wrapper to choose the correct index macro. They should be together.
> 
> As to moving all of them somewhere in gt/gem, I think it's for follow-up
> (by someone else).

Yes yes, that's why I called it ramblings. :)

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

> 
> 
> BR,
> Jani.
> 
>>
>> CSB in general seems to have identity crisis with some bits being in
>> intel_engine.h, but some also in intel_lrc.h. Neither seems completely
>> right to me. It should all really be in intel_execlists_submission.h.
>> Unless someone would then make an argument the latter is about the i915
>> execlists scheduler backend and shouldn't strictly contain execlists
>> hardware definitions like the CSB layout. Still, at the moment for me it
>> feels like a better place than either intel_engine.h or intel_lrc.h.
>>
>> And probably all three execlists_ prefix functions from intel_engine.h
>> should go to intel_execlists_submission.h as well.
>>
>> We can leave the ramblings for later and for now just explain why
>> underscores please, depending on which r-b or not.
>>
>> Regards,
>>
>> Tvrtko
>>
>>>    
>>>    void intel_engine_stop(struct intel_engine_cs *engine);
>>>    void intel_engine_cleanup(struct intel_engine_cs *engine);
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>> index 9bb7c863172f..961d795220a3 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>> @@ -3503,7 +3503,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
>>>    		(u64 *)&engine->status_page.addr[I915_HWS_CSB_BUF0_INDEX];
>>>    
>>>    	execlists->csb_write =
>>> -		&engine->status_page.addr[intel_hws_csb_write_index(i915)];
>>> +		&engine->status_page.addr[INTEL_HWS_CSB_WRITE_INDEX(i915)];
>>>    
>>>    	if (GRAPHICS_VER(i915) < 11)
>>>    		execlists->csb_size = GEN8_CSB_ENTRIES;
>>> diff --git a/drivers/gpu/drm/i915/gvt/execlist.c b/drivers/gpu/drm/i915/gvt/execlist.c
>>> index c8dcda6d4f0d..66d354c4195b 100644
>>> --- a/drivers/gpu/drm/i915/gvt/execlist.c
>>> +++ b/drivers/gpu/drm/i915/gvt/execlist.c
>>> @@ -163,7 +163,7 @@ static void emulate_csb_update(struct intel_vgpu_execlist *execlist,
>>>    					       hwsp_gpa + I915_HWS_CSB_BUF0_INDEX * 4 + write_pointer * 8,
>>>    					       status, 8);
>>>    		intel_gvt_hypervisor_write_gpa(vgpu,
>>> -					       hwsp_gpa + intel_hws_csb_write_index(execlist->engine->i915) * 4,
>>> +					       hwsp_gpa + INTEL_HWS_CSB_WRITE_INDEX(execlist->engine->i915) * 4,
>>>    					       &write_pointer, 4);
>>>    	}
>>>    
>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>>> index 8c1706fd81f9..05656cc738d1 100644
>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>> @@ -1739,14 +1739,6 @@ mkwrite_device_info(struct drm_i915_private *dev_priv)
>>>    	return (struct intel_device_info *)INTEL_INFO(dev_priv);
>>>    }
>>>    
>>> -static inline int intel_hws_csb_write_index(struct drm_i915_private *i915)
>>> -{
>>> -	if (GRAPHICS_VER(i915) >= 11)
>>> -		return ICL_HWS_CSB_WRITE_INDEX;
>>> -	else
>>> -		return I915_HWS_CSB_WRITE_INDEX;
>>> -}
>>> -
>>>    static inline enum i915_map_type
>>>    i915_coherent_map_type(struct drm_i915_private *i915,
>>>    		       struct drm_i915_gem_object *obj, bool always_coherent)
> 
