Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2854654C59B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 12:13:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C41D10EA82;
	Wed, 15 Jun 2022 10:13:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C17F810EA82
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 10:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655287989; x=1686823989;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=F5DIXXKUNUrpRq6jaMCnJ2NOxcjJvLFPcWdsonVYOa8=;
 b=RchSsB6Fro8mITQARGrUHPFJTvICglXv4WVcCjLixNoO6XDZa4frluWF
 gSbHhuBzKnMUVYwW28mTjFykqeoTRKMTqEvyoq8BbWUWKFYoSBwKIyAlK
 l0SqyjHQun/YBrnNO97I8wcciCk+7qmklVrEKqSbUveGAUilsQ85RIH5U
 WCroWe0qTN6mdIa4Hix63pd8vAMnKdWw+14Df9zYD1CrpZxl3RRcLTNmu
 +J/bkLv6UDNQNf3ERrsTcvxFLAXQkDYm0Rg+KyWvIzIJvx8TfJx8LFRkC
 G1K9Vhl+oxUC9jUWy/X4gDRz8yK5BbAh91D2c9sk87XInechGnrHRC5+b w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="258759030"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="258759030"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 03:13:09 -0700
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="911562760"
Received: from nhanraha-mobl1.ger.corp.intel.com (HELO [10.213.196.47])
 ([10.213.196.47])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 03:13:07 -0700
Message-ID: <05a33039-ed2e-3364-6036-197955abacfc@linux.intel.com>
Date: Wed, 15 Jun 2022 11:13:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: "Ye, Tony" <tony.ye@intel.com>,
 "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org, "Zhang, Carl" <carl.zhang@intel.com>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <dbc2ad75-1248-8d53-281d-f0a308733972@linux.intel.com>
 <7ede8090-bfbf-17a7-31f6-24e844a70673@intel.com>
 <a0860c06-4aba-deff-9101-aecdd8c14a02@linux.intel.com>
 <d6bc42f5-86c1-3bc9-d731-2bd0a978ece5@intel.com>
 <f50ee482-ed77-a644-095f-b2a988306de2@linux.intel.com>
 <7b394930-e6fb-8dc6-ba63-352f7a623b97@intel.com>
 <4d44c67a-4a38-fa53-6709-d5f206a9b0db@linux.intel.com>
 <e90f9dd1-7229-f958-d2e6-6fc4ec5a866b@intel.com>
 <954db3a4-e8c9-e157-5211-aceec87dfd9d@linux.intel.com>
 <4a7f6abe-e479-a3d9-8615-e52a2863733c@intel.com>
 <c565a81a-d86c-a5fd-c97e-27bd1459da6e@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <c565a81a-d86c-a5fd-c97e-27bd1459da6e@intel.com>
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


On 15/06/2022 00:15, Ye, Tony wrote:
> On 6/14/2022 8:30 AM, Ceraolo Spurio, Daniele wrote:
>> On 6/14/2022 12:44 AM, Tvrtko Ursulin wrote:
>>>
>>> On 13/06/2022 19:13, Ceraolo Spurio, Daniele wrote:
>>>> On 6/13/2022 10:39 AM, Tvrtko Ursulin wrote:
>>>>> On 13/06/2022 18:06, Ceraolo Spurio, Daniele wrote:
>>>>>> On 6/13/2022 9:56 AM, Tvrtko Ursulin wrote:
>>>>>>> On 13/06/2022 17:41, Ceraolo Spurio, Daniele wrote:
>>>>>>>> On 6/13/2022 9:31 AM, Tvrtko Ursulin wrote:
>>>>>>>>>
>>>>>>>>> On 13/06/2022 16:39, Ceraolo Spurio, Daniele wrote:
>>>>>>>>>> On 6/13/2022 1:16 AM, Tvrtko Ursulin wrote:
>>>>>>>>>>>
>>>>>>>>>>> On 10/06/2022 00:19, Daniele Ceraolo Spurio wrote:
>>>>>>>>>>>> On DG2, HuC loading is performed by the GSC, via a PXP 
>>>>>>>>>>>> command. The load
>>>>>>>>>>>> operation itself is relatively simple (just send a message 
>>>>>>>>>>>> to the GSC
>>>>>>>>>>>> with the physical address of the HuC in LMEM), but there are 
>>>>>>>>>>>> timing
>>>>>>>>>>>> changes that requires special attention. In particular, to 
>>>>>>>>>>>> send a PXP
>>>>>>>>>>>> command we need to first export the GSC driver and then wait 
>>>>>>>>>>>> for the
>>>>>>>>>>>> mei-gsc and mei-pxp modules to start, which means that HuC 
>>>>>>>>>>>> load will
>>>>>>>>>>>> complete after i915 load is complete. This means that there 
>>>>>>>>>>>> is a small
>>>>>>>>>>>> window of time after i915 is registered and before HuC is 
>>>>>>>>>>>> loaded
>>>>>>>>>>>> during which userspace could submit and/or checking the HuC 
>>>>>>>>>>>> load status,
>>>>>>>>>>>> although this is quite unlikely to happen (HuC is usually 
>>>>>>>>>>>> loaded before
>>>>>>>>>>>> kernel init/resume completes).
>>>>>>>>>>>> We've consulted with the media team in regards to how to 
>>>>>>>>>>>> handle this and
>>>>>>>>>>>> they've asked us to do the following:
>>>>>>>>>>>>
>>>>>>>>>>>> 1) Report HuC as loaded in the getparam IOCTL even if load 
>>>>>>>>>>>> is still in
>>>>>>>>>>>> progress. The media driver uses the IOCTL as a way to check 
>>>>>>>>>>>> if HuC is
>>>>>>>>>>>> enabled and then includes a secondary check in the batches 
>>>>>>>>>>>> to get the
>>>>>>>>>>>> actual status, so doing it this way allows userspace to keep 
>>>>>>>>>>>> working
>>>>>>>>>>>> without changes.
>>>>>>>>>>>>
>>>>>>>>>>>> 2) Stall all userspace VCS submission until HuC is loaded. 
>>>>>>>>>>>> Stalls are
>>>>>>>>>>>> expected to be very rare (if any), due to the fact that HuC 
>>>>>>>>>>>> is usually
>>>>>>>>>>>> loaded before kernel init/resume is completed.
>>>>>>>>>>>
>>>>>>>>>>> Motivation to add these complications into i915 are not clear 
>>>>>>>>>>> to me here. I mean there is no HuC on DG2 _yet_ is the 
>>>>>>>>>>> premise of the series, right? So no backwards compatibility 
>>>>>>>>>>> concerns. In this case why jump through the hoops and not let 
>>>>>>>>>>> userspace handle all of this by just leaving the getparam 
>>>>>>>>>>> return the true status?
>>>>>>>>>>
>>>>>>>>>> The main areas impacted by the fact that we can't guarantee 
>>>>>>>>>> that HuC load is complete when i915 starts accepting 
>>>>>>>>>> submissions are boot and suspend/resume, with the latter being 
>>>>>>>>>> the main problem; GT reset is not a concern because HuC now 
>>>>>>>>>> survives it. A suspend/resume can be transparent to userspace 
>>>>>>>>>> and therefore the HuC status can temporarily flip from loaded 
>>>>>>>>>> to not without userspace knowledge, especially if we start 
>>>>>>>>>> going into deeper suspend states and start causing HuC resets 
>>>>>>>>>> when we go into runtime suspend. Note that this is different 
>>>>>>>>>> from what happens during GT reset for older platforms, because 
>>>>>>>>>> in that scenario we guarantee that HuC reload is complete 
>>>>>>>>>> before we restart the submission back-end, so userspace 
>>>>>>>>>> doesn't notice that the HuC status change. We had an internal 
>>>>>>>>>> discussion about this problem with both media and i915 archs 
>>>>>>>>>> and the conclusion was that the best option is for i915 to 
>>>>>>>>>> stall media submission while HuC (re-)load is in progress.
>>>>>>>>>
>>>>>>>>> Resume is potentialy a good reason - I did not pick up on that 
>>>>>>>>> from the cover letter. I read the statement about the unlikely 
>>>>>>>>> and small window where HuC is not loaded during kernel 
>>>>>>>>> init/resume and I guess did not pick up on the resume part.
>>>>>>>>>
>>>>>>>>> Waiting for GSC to load HuC from i915 resume is not an option?
>>>>>>>>
>>>>>>>> GSC is an aux device exported by i915, so AFAIU GSC resume can't 
>>>>>>>> start until i915 resume completes.
>>>>>>>
>>>>>>> I'll dig into this in the next few days since I want to 
>>>>>>> understand how exactly it works. Or someone can help explain.
>>>>>>>
>>>>>>> If in the end conclusion will be that i915 resume indeed cannot 
>>>>>>> wait for GSC, then I think auto-blocking of queued up contexts on 
>>>>>>> media engines indeed sounds unavoidable. Otherwise, as you 
>>>>>>> explained, user experience post resume wouldn't be good.
>>>>>>
>>>>>> Even if we could implement a wait, I'm not sure we should. GSC 
>>>>>> resume and HuC reload takes ~300ms in most cases, I don't think we 
>>>>>> want to block within the i915 resume path for that long.
>>>>>
>>>>> Yeah maybe not. But entertaining the idea that it is technically 
>>>>> possible to block - we could perhaps add uapi for userspace to mark 
>>>>> contexts which want HuC access. Then track if there are any such 
>>>>> contexts with outstanding submissions and only wait in resume if 
>>>>> there are. If that would end up significantly less code on the i915 
>>>>> side to maintain is an open.
>>>>>
>>>>> What would be the end result from users point of view in case where 
>>>>> it suspended during video playback? The proposed solution from this 
>>>>> series sees the video stuck after resume. Maybe compositor blocks 
>>>>> as well since I am not sure how well they handle one window not 
>>>>> providing new data. Probably depends on the compositor.
>>>>>
>>>>> And then with a simpler solution definitely the whole resume would 
>>>>> be delayed by 300ms.
>>>>>
>>>>> With my ChromeOS hat the stalled media engines does sound like a 
>>>>> better solution. But with the maintainer hat I'd like all options 
>>>>> evaluated since there is attractiveness if a good enough solution 
>>>>> can be achieved with significantly less kernel code.
>>>>>
>>>>> You say 300ms is typical time for HuC load. How long it is on other 
>>>>> platforms? If much faster then why is it so slow here?
>>>>
>>>> The GSC itself has to come out of suspend before it can perform the 
>>>> load, which takes a few tens of ms I believe. AFAIU the GSC is also 
>>>> slower in processing the HuC load and auth compared to the legacy 
>>>> path. The GSC FW team gave a 250ms limit for the time the GSC FW 
>>>> needs from start of the resume flow to HuC load complete, so I 
>>>> bumped that to ~300ms to account for all other SW interactions, plus 
>>>> a bit of buffer. Note that a bit of the SW overhead is caused by the 
>>>> fact that we have 2 mei modules in play here: mei-gsc, which manages 
>>>> the GSC device itself (including resume), and mei-pxp, which owns 
>>>> the pxp messaging, including HuC load.
>>>
>>> And how long on other platforms (not DG2) do you know? Presumably 
>>> there the wait is on the i915 resume path?
>>
>> I don't have "official" expected load times at hand, but looking at 
>> the BAT boot logs for this series for DG1 I see it takes ~10 ms to 
>> load both GuC and HuC:
>>
>> <7>[    8.157838] i915 0000:03:00.0: [drm:intel_huc_init [i915]] GSC 
>> loads huc=no
>> <6>[    8.158632] i915 0000:03:00.0: [drm] GuC firmware 
>> i915/dg1_guc_70.1.1.bin version 70.1
>> <6>[    8.158634] i915 0000:03:00.0: [drm] HuC firmware 
>> i915/dg1_huc_7.9.3.bin version 7.9
>> <7>[    8.164255] i915 0000:03:00.0: [drm:guc_enable_communication 
>> [i915]] GuC communication enabled
>> <6>[    8.166111] i915 0000:03:00.0: [drm] HuC authenticated
>>
>> Note that we increase the GT frequency all the way to the max before 
>> starting the FW load, which speeds things up.
>>
>>>
>>>>>>> However, do we really need to lie in the getparam? How about 
>>>>>>> extend or add a new one to separate the loading vs loaded states? 
>>>>>>> Since userspace does not support DG2 HuC yet this should be doable.
>>>>>>
>>>>>> I don't really have a preference here. The media team asked us to 
>>>>>> do it this way because they wouldn't have a use for the different 
>>>>>> "in progress" and "done" states. If they're ok with having 
>>>>>> separate flags that's fine by me.
>>>>>> Tony, any feedback here?
>>>>>
>>>>> We don't even have any docs in i915_drm.h in terms of what it means:
>>>>>
>>>>> #define I915_PARAM_HUC_STATUS         42
>>>>>
>>>>> Seems to be a boolean. Status false vs true? Could you add some docs?
>>>>
>>>> There is documentation above intel_huc_check_status(), which is also 
>>>> updated in this series. I can move that to i915_drm.h.
>>>
>>> That would be great, thanks.
>>>
>>> And with so rich return codes already documented and exposed via uapi 
>>> - would we really need to add anything new for DG2 apart for 
>>> userspace to know that if zero is returned (not a negative error 
>>> value) it should retry? I mean is there another negative error 
>>> missing which would prevent zero transitioning to one?
>>
>> I think if the auth fails we currently return 0, because the uc state 
>> in that case would be "TRANSFERRED", i.e. DMA complete but not fully 
>> enabled. I don't have anything against changing the FW state to 
>> "ERROR" in this scenario and leave the 0 to mean "not done yet", but 
>> I'd prefer the media team to comment on their needs for this IOCTL 
>> before committing to anything.
> 
> 
> Currently media doesn't differentiate "delayed loading is in progress" 
> with "HuC is authenticated and running". If the HuC authentication 
> eventually fails, the user needs to check the debugfs to know the 
> reason. IMHO, it's not a big problem as this is what we do even when the 
> IOCTL returns non-zero values. + Carl to comment.

(Side note - debugfs can be assumed to not exist so it is not interesting to users.)

There isn't currently a "delayed loading is in progress" state, that's the discussion in this thread, if and how to add it.

Getparam it currently documents these states:

  -ENODEV if HuC is not present on this platform,
  -EOPNOTSUPP if HuC firmware is disabled,
  -ENOPKG if HuC firmware was not installed,
  -ENOEXEC if HuC firmware is invalid or mismatched,
  0 if HuC firmware is not running,
  1 if HuC firmware is authenticated and running.

This patch proposed to change this to:

  1 if HuC firmware is authenticated and running or if delayed load is in progress,
  0 if HuC firmware is not running and delayed load is not in progress

Alternative idea is for DG2 (well in general) to add some more fine grained states, so that i915 does not have to use 1 for both running and loading. This may be adding a new error code for auth fails as Daniele mentioned. Then UMD can know that if 0 is returned and platform is DG2 it needs to query it again since it will transition to either 1 or error eventually. This would mean the non error states would be:

  0 not running (aka loading)
  1 running (and authenticated)

@Daniele - one more thing - can you make sure in the series (if you haven't already) that if HuC status was in any error before suspend reload is not re-tried on resume? My thinking is that the error is likely to persist and we don't want to impose long delay on every resume afterwards. Makes sense to you?

@Tony - one more question for the UMD. Or two.

How prevalent is usage of HuC on DG2 depending on what codecs need it? Do you know in advance, before creating a GEM context, that HuC commands will be sent to the engine or this changes at runtime?

Regards,

Tvrtko
