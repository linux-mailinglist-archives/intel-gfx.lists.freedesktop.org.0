Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFEF5795B4
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jul 2022 11:00:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F07D414A94C;
	Tue, 19 Jul 2022 09:00:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B08EB14A93F
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jul 2022 09:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658221204; x=1689757204;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=jlutfzXBAk3d2fC7mKF1xPtJXtnfLoXiqMHDnEl/RXU=;
 b=Ma4A6j6eFy871IYXuOG8ZlwfAP4/ICF65eeLs2hycXOigZGEYbeBtLlU
 V1Rw+J1JvI0YN37D4Qzib1fKxdyrg5FugrI/jadreLAAevVom3wcgmB0P
 9MvzEAfPPih4rfjBozXr3TFQrxLPsGKTw5f2Bde+vQNBYIXYvjvnto4uW
 G6QOZDyU7LG5/i8hZzIGKTyj16iZ5MV/mr1Ui1KbJWVOFmLG/2jnzjZn/
 XDvuQhOFHEB+QrtNfVJ7yvdrpV+OdTMu1RXaNNDNyLEyqtcgL2zDVlwHW
 G7P4ZQ830vZY5ZNx9Fs5yPEdj5EydMgY61PvTacTUYY9XRUxFephA4GY3 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="284001626"
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="284001626"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 02:00:04 -0700
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="601519836"
Received: from ssherida-mobl.ger.corp.intel.com (HELO [10.213.201.170])
 ([10.213.201.170])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 02:00:03 -0700
Message-ID: <3ac56c34-85d8-bd06-e32a-fb341888f346@linux.intel.com>
Date: Tue, 19 Jul 2022 10:00:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <5535d98d0c1f1fa22e6ca6e8973a05e58a097944.1656622601.git.stuart.summers@intel.com>
 <Yr47xCs/JmhX9X7H@unerlige-desk>
 <cbfb9255-bd95-87c7-aa9d-e3af56dffd76@linux.intel.com>
 <81c381a50536d23ec0922874e13df5e67ffcc3d7.camel@intel.com>
 <894bdfcb-c3c7-96ce-5ddc-a084ef04179d@linux.intel.com>
 <Ys3hvrtRHPw/15nT@orsosgc001.jf.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <Ys3hvrtRHPw/15nT@orsosgc001.jf.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix NPD in PMU during driver
 teardown
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


On 12/07/2022 22:03, Umesh Nerlige Ramappa wrote:
> On Mon, Jul 04, 2022 at 09:31:55AM +0100, Tvrtko Ursulin wrote:
>>
>> On 01/07/2022 15:54, Summers, Stuart wrote:
>>> On Fri, 2022-07-01 at 09:37 +0100, Tvrtko Ursulin wrote:
>>>> On 01/07/2022 01:11, Umesh Nerlige Ramappa wrote:
>>>>> On Thu, Jun 30, 2022 at 09:00:28PM +0000, Stuart Summers wrote:
>>>>>> In the driver teardown, we are unregistering the gt prior
>>>>>> to unregistering the PMU. This means there is a small window
>>>>>> of time in which the application can request metrics from the
>>>>>> PMU, some of which are calling into the uapi engines list,
>>>>>> while the engines are not available. In this case we can
>>>>>> see null pointer dereferences.
>>>>>>
>>>>>> Fix this ordering in both the driver load and unload sequences.
>>>>>>
>>>>>> Additionally add a check for engine presence to prevent this
>>>>>> NPD in the event this ordering is accidentally reversed. Print
>>>>>> a debug message indicating when they aren't available.
>>>>>>
>>>>>> v1: Actually address the driver load/unload ordering issue
>>>>>>
>>>>>> Signed-off-by: Stuart Summers <stuart.summers@intel.com>
>>>>>> ---
>>>>>
>>>>> I thought this is likely happening because intel_gpu_top is running
>>>>> in
>>>>> the background when i915 is unloaded. I tried a quick repro, I
>>>>> don't see
>>>>> the unload succeed ("fatal module in use", not sure if this was a
>>>>> partial unload), but when I try to kill intel_gpu_top, I get an
>>>>> NPD.
>>>>> This is in the event disable path - i915_pmu_event_stop ->
>>>>> i915_pmu_disable.
>>>>
>>>> So i915 failed to unload (as expected - with perf events open we
>>>> elevate
>>>> the module ref count via i915_pmu_event_init -> drm_dev_get), then
>>>> you
>>>> quit intel_gpu_top and get NPD? On the engine lookup? With the
>>>> re-ordered init/fini sequence as from this patch?
>>>>
>>>> With elevated module count there shouldn't be any unloading happening
>>>> so
>>>> I am intrigued.
>>>>
>>>>> It's likely that you are seeing a different path (unload) leading
>>>>> to the
>>>>> same issue.
>>>>>
>>>>> I think in i915_pmu_disable/disable should be aware of event-
>>>>>> hw.state
>>>>> and or pmu->closed states before accessing the event. Maybe like,
>>>>>
>>>>> if (event->hw.state != PERF_HES_STOPPED && is_engine_event(event))
>>>>> {
>>>>>
>>>>> @Tvrtko, wondering if this case is tested by igt@perf
>>>>> _pmu@module-unload.
>>>>
>>>> A bit yes. From what Stuart wrote it seems the test would need to be
>>>> extended to cover the case where PMU is getting opened while module
>>>> unload is in progress.
>>>>
>>>> But the NPD you saw is for the moment confusing so I don't know what
>>>> is
>>>> happening.
>>>>
>>>>> I am not clear if we should use event->hw.state or pmu->closed here
>>>>> and
>>>>> if/how they are related. IMO, for this issue, the engine check is
>>>>> good
>>>>> enough too, so we don't really need the pmu state checks.
>>>>> Thoughts?
>>>>
>>>> Engine check at the moment feels like papering.
>>>>
>>>> Indeed as you say I think the pmu->closed might be the solution.
>>>> Perhaps
>>>> the race is as mentioned above. PMU open happening in parallel to
>>>> unload..
>>>>
>>>> If the sequence of events userspace triggers is:
>>>>
>>>>    i915_pmu_event_init
>>>>    i915_pmu_event_start
>>>>    i915_pmu_enable
>>>>    i915_pmu_event_read
>>>>
>>>> I guess pmu->closed can get set halfway in i915_pmu_event_init. What
>>>> would be the effect of that.. We'd try to get a module reference
>>>> while
>>>> in the process of unloading. Which is probably very bad.. So possibly
>>>> a
>>>> final check on pmu->close is needed there. Ho hum.. can it be made
>>>> safe
>>>> is the question.
>>>>
>>>> It doesn't explain the NPD on Ctrl-C though.. intel_gpu_top keeps
>>>> the
>>>> evens open all the time. So I think more info needed, for me at
>>>> least.
>>>
>>> So one thing here is this doesn't have to do with module unload, but
>>> module unbind specifically (while perf is open). I don't know if the
>>> NPD from Umesh is the same as what we're seeing here. I'd really like
>>> to separate these unless you know for sure that's related. Also it
>>> would be interesting to know if this patch fixes your issue as well.
>>>
>>> I still think the re-ordering in i915_driver.c should be enough and we
>>> shouldn't need to check pmu->closed. The unregister should be enough to
>>> ensure the perf tools are notified that new events aren't allowed, and
>>> at that time the engine structures are still intact. And even if for
>>> some reason the perf code still calls in to our function pointers, we
>>> have these engine checks as a failsafe.
>>>
>>> I'm by the way uploading one more version here with a drm_WARN_ONCE
>>> instead of the debug print.
>>
>> Problem is I am not a fan of papering so lets get to the bottom of the 
>> issue first. (In the meantime simple patch to re-order driver fini is 
>> okay since that seems obvious enough, I tnink.)
>>
>> We need to see call traces from any oopses and try to extend perf_pmu 
>> to catch them. And we need to understand the problem, if it is a real 
>> problem, which I laid out last week about race between module unload 
>> and elevating the module use count from our perf event init.
>>
>> Without understanding the details of possible failure mode flows we 
>> don't know how much the papering with engine checks solves and how 
>> much it leaves broken.
>>
>> If you guys are too busy to tackle that I'll put it onto myself, but 
>> help would certainly be appreciated.
> 
> Looks like Stuart/Chris are pointing towards the unbind as an issue.
> 
> I ran this sequence and only the modprobe showed an error (FATAL: ... 
> still in use). What happens with the unbind. Should pmu also handle the 
> unbind somehow?
> 
> - run intel_gpu_top
> - unbind
> - modprobe -r i915
> - kill intel_gpu_top.

And it crashes or survives in this scenario?

Module still in use here would be expected since intel_gpu_top is 
holding a module reference.

And pmu->closed should be set at the unbind step via i915_pci_remove -> 
i915_driver_unregister -> i915_pmu_unregister.

We also need to try a stress test with two threads:

	Thread A		Thread B
	-----------		-----------
	loop:			loop:
	  open pmu event	  rmmod
	  close pmu event	  insmod

To see if it can hit a problem with drm_dev_get from i915_pmu_event_init 
being called at a bad moment relative to module unload. Maybe I am 
confused but that seems a possibility and a serious problem currently.

Regards,

Tvrtko
