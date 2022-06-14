Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2AE54AAD6
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 09:45:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 476F510E032;
	Tue, 14 Jun 2022 07:45:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A10810E032
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 07:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655192699; x=1686728699;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=tzZhCd4uzFfOXJJoDnOwotDPXK6HPeE8Bmv5FUxG3xA=;
 b=IcgDxaa8bwB6ZfUEfAq7pV1ZG3MJhvSyZzAZfEZwOI7luyoCIvTOkawU
 q3svNeZ9MTBaRsHU5la2vXa0saETZZvmRpLN3+f+SaL9GoIziXirtQnij
 HTFrQ2kMepA6DobTp3R/dAb0Mm8SxDcy5kgOAHIwoaUKBmKAv5DC8Caj1
 G/1dSX3lx8o1oA5o4Wh40Y4aQJHpBdGTrV9hGkPZjSLVomImTOVYUIraP
 Uc35gx6fLsIdJZFADp0qgMitbZ7GWJsGylxgZO3ESlNU0OpbJKoeUT8m5
 i1v7ZD8cOhm8DVSkLItYe4uxbjf1eS9Vt35ZAMB47dBShO9+iyazqhZ1J A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="258373459"
X-IronPort-AV: E=Sophos;i="5.91,299,1647327600"; d="scan'208";a="258373459"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 00:44:59 -0700
X-IronPort-AV: E=Sophos;i="5.91,299,1647327600"; d="scan'208";a="640200141"
Received: from snkalval-mobl2.amr.corp.intel.com (HELO [10.212.46.198])
 ([10.212.46.198])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 00:44:52 -0700
Message-ID: <954db3a4-e8c9-e157-5211-aceec87dfd9d@linux.intel.com>
Date: Tue, 14 Jun 2022 08:44:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <dbc2ad75-1248-8d53-281d-f0a308733972@linux.intel.com>
 <7ede8090-bfbf-17a7-31f6-24e844a70673@intel.com>
 <a0860c06-4aba-deff-9101-aecdd8c14a02@linux.intel.com>
 <d6bc42f5-86c1-3bc9-d731-2bd0a978ece5@intel.com>
 <f50ee482-ed77-a644-095f-b2a988306de2@linux.intel.com>
 <7b394930-e6fb-8dc6-ba63-352f7a623b97@intel.com>
 <4d44c67a-4a38-fa53-6709-d5f206a9b0db@linux.intel.com>
 <e90f9dd1-7229-f958-d2e6-6fc4ec5a866b@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <e90f9dd1-7229-f958-d2e6-6fc4ec5a866b@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 00/15] HuC loading for DG2
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
Cc: Alexander Usyskin <alexander.usyskin@intel.com>,
 alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 13/06/2022 19:13, Ceraolo Spurio, Daniele wrote:
> On 6/13/2022 10:39 AM, Tvrtko Ursulin wrote:
>> On 13/06/2022 18:06, Ceraolo Spurio, Daniele wrote:
>>> On 6/13/2022 9:56 AM, Tvrtko Ursulin wrote:
>>>> On 13/06/2022 17:41, Ceraolo Spurio, Daniele wrote:
>>>>> On 6/13/2022 9:31 AM, Tvrtko Ursulin wrote:
>>>>>>
>>>>>> On 13/06/2022 16:39, Ceraolo Spurio, Daniele wrote:
>>>>>>> On 6/13/2022 1:16 AM, Tvrtko Ursulin wrote:
>>>>>>>>
>>>>>>>> On 10/06/2022 00:19, Daniele Ceraolo Spurio wrote:
>>>>>>>>> On DG2, HuC loading is performed by the GSC, via a PXP command. 
>>>>>>>>> The load
>>>>>>>>> operation itself is relatively simple (just send a message to 
>>>>>>>>> the GSC
>>>>>>>>> with the physical address of the HuC in LMEM), but there are 
>>>>>>>>> timing
>>>>>>>>> changes that requires special attention. In particular, to send 
>>>>>>>>> a PXP
>>>>>>>>> command we need to first export the GSC driver and then wait 
>>>>>>>>> for the
>>>>>>>>> mei-gsc and mei-pxp modules to start, which means that HuC load 
>>>>>>>>> will
>>>>>>>>> complete after i915 load is complete. This means that there is 
>>>>>>>>> a small
>>>>>>>>> window of time after i915 is registered and before HuC is loaded
>>>>>>>>> during which userspace could submit and/or checking the HuC 
>>>>>>>>> load status,
>>>>>>>>> although this is quite unlikely to happen (HuC is usually 
>>>>>>>>> loaded before
>>>>>>>>> kernel init/resume completes).
>>>>>>>>> We've consulted with the media team in regards to how to handle 
>>>>>>>>> this and
>>>>>>>>> they've asked us to do the following:
>>>>>>>>>
>>>>>>>>> 1) Report HuC as loaded in the getparam IOCTL even if load is 
>>>>>>>>> still in
>>>>>>>>> progress. The media driver uses the IOCTL as a way to check if 
>>>>>>>>> HuC is
>>>>>>>>> enabled and then includes a secondary check in the batches to 
>>>>>>>>> get the
>>>>>>>>> actual status, so doing it this way allows userspace to keep 
>>>>>>>>> working
>>>>>>>>> without changes.
>>>>>>>>>
>>>>>>>>> 2) Stall all userspace VCS submission until HuC is loaded. 
>>>>>>>>> Stalls are
>>>>>>>>> expected to be very rare (if any), due to the fact that HuC is 
>>>>>>>>> usually
>>>>>>>>> loaded before kernel init/resume is completed.
>>>>>>>>
>>>>>>>> Motivation to add these complications into i915 are not clear to 
>>>>>>>> me here. I mean there is no HuC on DG2 _yet_ is the premise of 
>>>>>>>> the series, right? So no backwards compatibility concerns. In 
>>>>>>>> this case why jump through the hoops and not let userspace 
>>>>>>>> handle all of this by just leaving the getparam return the true 
>>>>>>>> status?
>>>>>>>
>>>>>>> The main areas impacted by the fact that we can't guarantee that 
>>>>>>> HuC load is complete when i915 starts accepting submissions are 
>>>>>>> boot and suspend/resume, with the latter being the main problem; 
>>>>>>> GT reset is not a concern because HuC now survives it. A 
>>>>>>> suspend/resume can be transparent to userspace and therefore the 
>>>>>>> HuC status can temporarily flip from loaded to not without 
>>>>>>> userspace knowledge, especially if we start going into deeper 
>>>>>>> suspend states and start causing HuC resets when we go into 
>>>>>>> runtime suspend. Note that this is different from what happens 
>>>>>>> during GT reset for older platforms, because in that scenario we 
>>>>>>> guarantee that HuC reload is complete before we restart the 
>>>>>>> submission back-end, so userspace doesn't notice that the HuC 
>>>>>>> status change. We had an internal discussion about this problem 
>>>>>>> with both media and i915 archs and the conclusion was that the 
>>>>>>> best option is for i915 to stall media submission while HuC 
>>>>>>> (re-)load is in progress.
>>>>>>
>>>>>> Resume is potentialy a good reason - I did not pick up on that 
>>>>>> from the cover letter. I read the statement about the unlikely and 
>>>>>> small window where HuC is not loaded during kernel init/resume and 
>>>>>> I guess did not pick up on the resume part.
>>>>>>
>>>>>> Waiting for GSC to load HuC from i915 resume is not an option?
>>>>>
>>>>> GSC is an aux device exported by i915, so AFAIU GSC resume can't 
>>>>> start until i915 resume completes.
>>>>
>>>> I'll dig into this in the next few days since I want to understand 
>>>> how exactly it works. Or someone can help explain.
>>>>
>>>> If in the end conclusion will be that i915 resume indeed cannot wait 
>>>> for GSC, then I think auto-blocking of queued up contexts on media 
>>>> engines indeed sounds unavoidable. Otherwise, as you explained, user 
>>>> experience post resume wouldn't be good.
>>>
>>> Even if we could implement a wait, I'm not sure we should. GSC resume 
>>> and HuC reload takes ~300ms in most cases, I don't think we want to 
>>> block within the i915 resume path for that long.
>>
>> Yeah maybe not. But entertaining the idea that it is technically 
>> possible to block - we could perhaps add uapi for userspace to mark 
>> contexts which want HuC access. Then track if there are any such 
>> contexts with outstanding submissions and only wait in resume if there 
>> are. If that would end up significantly less code on the i915 side to 
>> maintain is an open.
>>
>> What would be the end result from users point of view in case where it 
>> suspended during video playback? The proposed solution from this 
>> series sees the video stuck after resume. Maybe compositor blocks as 
>> well since I am not sure how well they handle one window not providing 
>> new data. Probably depends on the compositor.
>>
>> And then with a simpler solution definitely the whole resume would be 
>> delayed by 300ms.
>>
>> With my ChromeOS hat the stalled media engines does sound like a 
>> better solution. But with the maintainer hat I'd like all options 
>> evaluated since there is attractiveness if a good enough solution can 
>> be achieved with significantly less kernel code.
>>
>> You say 300ms is typical time for HuC load. How long it is on other 
>> platforms? If much faster then why is it so slow here?
> 
> The GSC itself has to come out of suspend before it can perform the 
> load, which takes a few tens of ms I believe. AFAIU the GSC is also 
> slower in processing the HuC load and auth compared to the legacy path. 
> The GSC FW team gave a 250ms limit for the time the GSC FW needs from 
> start of the resume flow to HuC load complete, so I bumped that to 
> ~300ms to account for all other SW interactions, plus a bit of buffer. 
> Note that a bit of the SW overhead is caused by the fact that we have 2 
> mei modules in play here: mei-gsc, which manages the GSC device itself 
> (including resume), and mei-pxp, which owns the pxp messaging, including 
> HuC load.

And how long on other platforms (not DG2) do you know? Presumably there 
the wait is on the i915 resume path?

>>>> However, do we really need to lie in the getparam? How about extend 
>>>> or add a new one to separate the loading vs loaded states? Since 
>>>> userspace does not support DG2 HuC yet this should be doable.
>>>
>>> I don't really have a preference here. The media team asked us to do 
>>> it this way because they wouldn't have a use for the different "in 
>>> progress" and "done" states. If they're ok with having separate flags 
>>> that's fine by me.
>>> Tony, any feedback here?
>>
>> We don't even have any docs in i915_drm.h in terms of what it means:
>>
>> #define I915_PARAM_HUC_STATUS         42
>>
>> Seems to be a boolean. Status false vs true? Could you add some docs?
> 
> There is documentation above intel_huc_check_status(), which is also 
> updated in this series. I can move that to i915_drm.h.

That would be great, thanks.

And with so rich return codes already documented and exposed via uapi - 
would we really need to add anything new for DG2 apart for userspace to 
know that if zero is returned (not a negative error value) it should 
retry? I mean is there another negative error missing which would 
prevent zero transitioning to one?

Regards,

Tvrtko

> 
> Daniele
> 
>>
>> Regards,
>>
>> Tvrtko
>>
>>>
>>> Thanks,
>>> Daniele
>>>
>>>>
>>>>>> Will there be runtime suspend happening on the GSC device behind 
>>>>>> i915's back, or i915 and GSC will always be able to transition the 
>>>>>> states in tandem?
>>>>>
>>>>> They're always in sync. The GSC is part of the same HW PCI device 
>>>>> as the rest of the GPU, so they change HW state together.
>>>>
>>>> Okay thanks, I wasn't sure if it is the same or separate device.
>>>>
>>>> Regards,
>>>>
>>>> Tvrtko
>>>
> 
