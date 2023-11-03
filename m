Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A8C7E0AAA
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 22:18:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DC7A10EADF;
	Fri,  3 Nov 2023 21:18:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA43110EADA
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 21:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699046292; x=1730582292;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=hOcL6CL40BMg3/rH53WPiIXtPK2GBDbdtlbCkxSgs5M=;
 b=K36dapFSIbfKJJDKD1T0wwTEOp8hZmEQaSc99yLBMLPPyA1O0CIeqWlm
 6PWK+sPDskkzRhP06WbmDra7wqYlolXyWomPCkDHXkqCRBGS8VzNPZitQ
 Q6TbHvjxwX93Tq8jsYBsP/e9k+Qp+LRogtVkkoj090CA/+sfP8U22zA1e
 iF9/IfJC+r+laK4w3A33nR6aKBcFB6LtoSXkcUcXoGdQzE2ta+ZkGYKmG
 OrpaoHOKTdHYD5vBh7lxMxruMFOkw59naQ5UQn0oyykNfp8i+hA3nERZM
 2An71sq1VGRSQEu88bVgHHrXAlwHIY/hrCho4pl7gYaUfzafj1tI4zGpB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="1977740"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; 
   d="scan'208";a="1977740"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 14:18:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="755280447"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="755280447"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.6.119])
 ([10.213.6.119])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 14:18:08 -0700
Message-ID: <a007bcb2-ae18-4bf1-8b9c-56b37303f7f4@intel.com>
Date: Fri, 3 Nov 2023 22:18:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20231102160644.1279801-1-radhakrishna.sripada@intel.com>
 <495ea80c-06e5-4557-8c82-badb9c1be7ac@intel.com>
 <a96ab630-e430-447b-864f-5f1aacc9af75@linux.intel.com>
 <DM4PR11MB59717CE2FEF0F4DA5380992187A6A@DM4PR11MB5971.namprd11.prod.outlook.com>
 <aee78f9c-1ca4-48ed-aa18-da03a50ebb14@linux.intel.com>
 <DM4PR11MB59717882C4AC2BA291D7F12487A5A@DM4PR11MB5971.namprd11.prod.outlook.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <DM4PR11MB59717882C4AC2BA291D7F12487A5A@DM4PR11MB5971.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Increase guard pages when
 vt-d is enabled
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 03.11.2023 16:53, Sripada, Radhakrishna wrote:
> Hi Tvrtko,
>
>> -----Original Message-----
>> From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> Sent: Friday, November 3, 2023 1:30 AM
>> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; Hajda, Andrzej
>> <andrzej.hajda@intel.com>; intel-gfx@lists.freedesktop.org
>> Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
>> Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Increase guard pages when vt-d is
>> enabled
>>
>>
>> On 02/11/2023 22:14, Sripada, Radhakrishna wrote:
>>> Hi Tvrtko,
>>>
>>>> -----Original Message-----
>>>> From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>>> Sent: Thursday, November 2, 2023 10:41 AM
>>>> To: Hajda, Andrzej <andrzej.hajda@intel.com>; Sripada, Radhakrishna
>>>> <radhakrishna.sripada@intel.com>; intel-gfx@lists.freedesktop.org
>>>> Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
>>>> Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Increase guard pages when vt-d
>> is
>>>> enabled
>>>>
>>>>
>>>> On 02/11/2023 16:58, Andrzej Hajda wrote:
>>>>> On 02.11.2023 17:06, Radhakrishna Sripada wrote:
>>>>>> Experiments were conducted with different multipliers to VTD_GUARD
>> macro
>>>>>> with multiplier of 185 we were observing occasional pipe faults when
>>>>>> running kms_cursor_legacy --run-subtest single-bo
>>>>>>
>>>>>> There could possibly be an underlying issue that is being
>>>>>> investigated, for
>>>>>> now bump the guard pages for MTL.
>>>>>>
>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2017
>>>>>> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>>>>>> Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
>>>>>> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>>>>>> ---
>>>>>>     drivers/gpu/drm/i915/gem/i915_gem_domain.c | 3 +++
>>>>>>     1 file changed, 3 insertions(+)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>>>>>> b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>>>>>> index 3770828f2eaf..b65f84c6bb3f 100644
>>>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>>>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>>>>>> @@ -456,6 +456,9 @@ i915_gem_object_pin_to_display_plane(struct
>>>>>> drm_i915_gem_object *obj,
>>>>>>         if (intel_scanout_needs_vtd_wa(i915)) {
>>>>>>             unsigned int guard = VTD_GUARD;
>>>>>> +        if (IS_METEORLAKE(i915))
>>>>>> +            guard *= 200;
>>>>>> +
>>>>> 200 * VTD_GUARD = 200 * 168 * 4K = 131MB
>>>>>
>>>>> Looks insanely high, 131MB for padding, if this is before and after it
>>>>> becomes even 262MB of wasted address per plane. Just signalling, I do
>>>>> not know if this actually hurts.
>>>> Yeah this feels crazy. There must be some other explanation which is
>>>> getting hidden by the crazy amount of padding so I'd rather we figured
>>>> it out.
>>>>
>>>> With 262MiB per fb how many fit in GGTT before eviction hits? N screens
>>>> with double/triple buffering?
>>> I believe with this method we will have to limit the no of frame buffers in the
>> system. One alternative
>>> that worked is to do a proper clear range for the ggtt instead of doing a nop.
>> Although it adds marginal
>>> time during suspend/resume/boot it does not add restrictions to the no of fb's
>> that can be used.
>>
>> And if we remember the guard pages replaced clearing to scratch, to
>> improve suspend resume times, exactly for improving user experience. :(
>>
>> Luckily there is time to fix this properly on MTL one way or the other.
>> Is it just kms_cursor_legacy --run-subtest single-bo that is affected?
> I am trying to dump the page table entries at the time of failure for bot the fame buffer and if required
> For the guard pages. Will see if I get some info from there.
>
> Yes the test kms_cursor_legacy is used to reliably reproduce. Looking at public CI, I also see pipe errors
> being reported with varying occurrences while running kms_cursor_crc, kms_pipe_crc_basic,
> and kms_plane_scaling. More details on the occurrence can be found here [1].
>
> Thanks,
> RK
>
> 1. http://gfx-ci.igk.intel.com/cibuglog-ng/results/knownfailures?query_key=d9c3297dd17dda35a6c638eb96b3139bd1a6633c

Could you check if [1] helps?

[1]: https://patchwork.freedesktop.org/series/125926/

Regards
Andrzej

>> Regards,
>>
>> Tvrtko
>>
>>
>>>> Regards,
>>>>
>>>> Tvrtko
>>>>
>>>> P.S. Where did the 185 from the commit message come from?
>>> 185 came from experiment to increase the guard size. It is not a standard
>> number.
>>> Regards,
>>> Radhakrishna(RK) Sripada

