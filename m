Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54ED97F47CE
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Nov 2023 14:27:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52CA110E62E;
	Wed, 22 Nov 2023 13:27:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09C3610E62E;
 Wed, 22 Nov 2023 13:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700659622; x=1732195622;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=BRBFXvnsFIgkfZiGBVhXad7vapdGjgQHbcpe2XB3b4I=;
 b=HMDsaINO9RUEgdP9uDKsdyUdy6AwFUuxR6ZLV5A/5BORygTB0vGcU7CS
 YiIJGLZjq5dgfgm+kYbc4P8kHvEZaR8y6GfFpmx0azYxOpoBQ8VNSdF/7
 T1q8EYAejPFKoJrse3xfnezDeCZdVWaKKZF9gVtr3GTVnalN/bb4oKPyi
 Zh4xuvS6J6EOGjPkSm39PNEbCpsxC9YZnmJmkrRI4y8ypdXrWUCvrUVcw
 fCR9ab/kWY9fXwtvZ4KE5kdsByjLho8DjSVgwvOuTfXt/G29RmU3NIVMq
 tmHXp6X7kH0KJl+yd7w5SCyDYjWt1kV57yO/IBwXTT0n1KzLnbPYCM5nT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="382448900"
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; d="scan'208";a="382448900"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 05:27:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="857733083"
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; d="scan'208";a="857733083"
Received: from joledzki-mobl1.ger.corp.intel.com (HELO [10.213.29.81])
 ([10.213.29.81])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 05:26:57 -0800
Message-ID: <6f08cfee-a60b-4f6e-b69a-20517c563259@intel.com>
Date: Wed, 22 Nov 2023 14:26:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: Paz Zcharya <pazz@chromium.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20231105172718.18673-1-pazz@chromium.org>
 <ZVQ3d8FFqxsy0OX7@intel.com> <ZVfw3ghfBLdHB7uk@google.com>
 <8dd6f4da-dcc9-4ea3-8395-bf048b0dbc93@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <8dd6f4da-dcc9-4ea3-8395-bf048b0dbc93@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix phys_base to be
 relative not absolute
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
Cc: Subrata Banik <subratabanik@google.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Sean Paul <seanpaul@chromium.org>, matthew.auld@intel.com,
 Daniel Vetter <daniel@ffwll.ch>, Marcin Wojtas <mwojtas@chromium.org>,
 Drew Davenport <ddavenport@chromium.org>, David Airlie <airlied@gmail.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 21.11.2023 13:06, Andrzej Hajda wrote:
> On 18.11.2023 00:01, Paz Zcharya wrote:
>> On Tue, Nov 14, 2023 at 10:13:59PM -0500, Rodrigo Vivi wrote:
>>> On Sun, Nov 05, 2023 at 05:27:03PM +0000, Paz Zcharya wrote:
>>>> Fix the value of variable `phys_base` to be the relative offset in
>>>> stolen memory, and not the absolute offset of the GSM.
>>>
>>> to me it looks like the other way around. phys_base is the physical
>>> base address for the frame_buffer. Setting it to zero doesn't seem
>>> to make that relative. And also doesn't look right.
>>>
>>>>
>>>> Currently, the value of `phys_base` is set to "Surface Base Address,"
>>>> which in the case of Meter Lake is 0xfc00_0000.
>>>
>>> I don't believe this is a fixed value. IIRC this comes from the register
>>> set by video bios, where the idea is to reuse the fb that was used so
>>> far.
>>>
>>> With this in mind I don't understand how that could overflow. Maybe
>>> the size of the stolen is not right? maybe the size? maybe different
>>> memory region?
>>>
>>
>> Hi Rodrigo, thanks for the great comments.
>>
>> Apologies for using a wrong/confusing terminology. I think 'phys_base'
>> is supposed to be the offset in the GEM BO, where base (or
>> "Surface Base Address") is supposed to be the GTT offset.
> 
> Since base is taken from PLANE_SURF register it should be resolvable via 
> GGTT to physical address pointing to actual framebuffer.
> I couldn't find anything in the specs.

It was quite cryptic. I meant I have not found anything about assumption 
from commit history that for iGPU there should be 1:1 mapping, this is 
why there was an assignment "phys_base = base". Possibly the assumption 
is not valid anymore for MTL(?).
Without the assumption we need to check GGTT to determine phys address.

> The simplest approach would be then do the same as in case of DGFX:
>          gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
>          gen8_pte_t pte;
> 
>          gte += base / I915_GTT_PAGE_SIZE;
> 
>          pte = ioread64(gte);
>          phys_base = pte & I915_GTT_PAGE_MASK;
> 
> Regards
> Andrzej
> 
> 
>>
>> Other than what I wrote before, I noticed that the function 
>> 'i915_vma_pin'
>> which calls to 'i915_gem_gtt_reserve' is the one that binds the right
>> address space in the GTT for that stolen region.
>>
>> I see that in the function 'i915_vma_insert' (full call stack below),
>> where if (flags & PIN_OFFSET_FIXED), then when calling 
>> 'i915_gem_gtt_reserve'
>> we add an offset.
>>
>> Specifically in MeteorLake, and specifically when using GOP driver, this
>> offset is equal to 0xfc00_0000. But as you mentioned, this is not strict.
>>
>> The if statement always renders true because in the function
>> 'initial_plane_vma' we always set
>> pinctl = PIN_GLOBAL | PIN_OFFSET_FIXED | base;
>> where pinctl == flags (see file 'intel_plane_initial.c' line 145).
>>
>> Call stack:
>> drm_mm_reserve_node
>> i915_gem_gtt_reserve
>>     i915_vma_insert
>> i915_vma_pin_ww
>> i915_vma_pin
>> initial_plane_vma
>> intel_alloc_initial_plane_obj
>> intel_find_initial_plane_obj
>>
>> Therefore, I believe the variable 'phys_base' in the
>> function 'initial_plane_vma,' should be the the offset in the GEM BO
>> and not the GTT offset, and because the base is added later on
>> in the function 'i915_gem_gtt_reserve', this value should not be
>> equal to base and be 0.
>>
>> Hope it makes more sense.
>>
>>>> This causes the
>>>> function `i915_gem_object_create_region_at` to fail in line 128, when
>>>> it attempts to verify that the range does not overflow:
>>>>
>>>> if (range_overflows(offset, size, resource_size(&mem->region)))
>>>>        return ERR_PTR(-EINVAL);
>>>>
>>>> where:
>>>>    offset = 0xfc000000
>>>>    size = 0x8ca000
>>>>    mem->region.end + 1 = 0x4400000
>>>>    mem->region.start = 0x800000
>>>>    resource_size(&mem->region) = 0x3c00000
>>>>
>>>> call stack:
>>>>    i915_gem_object_create_region_at
>>>>    initial_plane_vma
>>>>    intel_alloc_initial_plane_obj
>>>>    intel_find_initial_plane_obj
>>>>    intel_crtc_initial_plane_config
>>>>
>>>> Looking at the flow coming next, we see that `phys_base` is only used
>>>> once, in function `_i915_gem_object_stolen_init`, in the context of
>>>> the offset *in* the stolen memory. Combining that with an
>>>> examinination of the history of the file seems to indicate the
>>>> current value set is invalid.
>>>>
>>>> call stack (functions using `phys_base`)
>>>>    _i915_gem_object_stolen_init
>>>>    __i915_gem_object_create_region
>>>>    i915_gem_object_create_region_at
>>>>    initial_plane_vma
>>>>    intel_alloc_initial_plane_obj
>>>>    intel_find_initial_plane_obj
>>>>    intel_crtc_initial_plane_config
>>>>
>>>> [drm:_i915_gem_object_stolen_init] creating preallocated stolen
>>>> object: stolen_offset=0x0000000000000000, size=0x00000000008ca000
>>>>
>>>> Signed-off-by: Paz Zcharya <pazz@chromium.org>
>>>> ---
>>>>
>>>>   drivers/gpu/drm/i915/display/intel_plane_initial.c | 2 +-
>>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c 
>>>> b/drivers/gpu/drm/i915/display/intel_plane_initial.c
>>>> index a55c09cbd0e4..e696cb13756a 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
>>>> @@ -90,7 +90,7 @@ initial_plane_vma(struct drm_i915_private *i915,
>>>>               "Using phys_base=%pa, based on initial plane 
>>>> programming\n",
>>>>               &phys_base);
>>>>       } else {
>>>> -        phys_base = base;
>>>> +        phys_base = 0;
>>>>           mem = i915->mm.stolen_region;
>>>>       }
>>>> -- 
>>>> 2.42.0.869.gea05f2083d-goog
>>>>
> 
