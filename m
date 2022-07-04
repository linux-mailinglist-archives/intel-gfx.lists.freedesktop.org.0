Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5399565B8F
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jul 2022 18:19:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0133410F07E;
	Mon,  4 Jul 2022 16:15:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27EE910E00A
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jul 2022 08:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656923531; x=1688459531;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=TGZWd+zTNHqyA5riAXqUIphNd7V4RL/qFvBnsGfyCaU=;
 b=CPf/PG+JGypQJoM+0QWXHitsx41YL8xsoFEwMxRvxfAgheThiE7WeRNJ
 ljvSbIdZeANXjt9gRpiC18mjbgotldBrQi64Ce8cijWir+gWDU2z02pgj
 +YBlW/MiSljruRE/C5QFAyv2FnA5gEwv4mr9eK8V/sTFxAQf+wnaW42fV
 GlA5rVKwDILXt5+9d3YTZ2w4p4qvQ6DWojttPpt3geZrc7W1GUzawdp88
 rtRhZ1x6lzvGHCVtiOSPCpNnkMWqchYgW1lAyLV4i6DCVFTYMwh7aFBIR
 7nFqVzIGiN+tobX2AFmbPKLjEf4leNAbXC7fJ9Z3bzthf/jwwLf9CztlD Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10397"; a="263492619"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="263492619"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 01:31:58 -0700
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="719324441"
Received: from mfinne1x-mobl2.ger.corp.intel.com (HELO [10.213.213.102])
 ([10.213.213.102])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 01:31:57 -0700
Message-ID: <894bdfcb-c3c7-96ce-5ddc-a084ef04179d@linux.intel.com>
Date: Mon, 4 Jul 2022 09:31:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: "Summers, Stuart" <stuart.summers@intel.com>,
 "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>
References: <5535d98d0c1f1fa22e6ca6e8973a05e58a097944.1656622601.git.stuart.summers@intel.com>
 <Yr47xCs/JmhX9X7H@unerlige-desk>
 <cbfb9255-bd95-87c7-aa9d-e3af56dffd76@linux.intel.com>
 <81c381a50536d23ec0922874e13df5e67ffcc3d7.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <81c381a50536d23ec0922874e13df5e67ffcc3d7.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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


On 01/07/2022 15:54, Summers, Stuart wrote:
> On Fri, 2022-07-01 at 09:37 +0100, Tvrtko Ursulin wrote:
>> On 01/07/2022 01:11, Umesh Nerlige Ramappa wrote:
>>> On Thu, Jun 30, 2022 at 09:00:28PM +0000, Stuart Summers wrote:
>>>> In the driver teardown, we are unregistering the gt prior
>>>> to unregistering the PMU. This means there is a small window
>>>> of time in which the application can request metrics from the
>>>> PMU, some of which are calling into the uapi engines list,
>>>> while the engines are not available. In this case we can
>>>> see null pointer dereferences.
>>>>
>>>> Fix this ordering in both the driver load and unload sequences.
>>>>
>>>> Additionally add a check for engine presence to prevent this
>>>> NPD in the event this ordering is accidentally reversed. Print
>>>> a debug message indicating when they aren't available.
>>>>
>>>> v1: Actually address the driver load/unload ordering issue
>>>>
>>>> Signed-off-by: Stuart Summers <stuart.summers@intel.com>
>>>> ---
>>>
>>> I thought this is likely happening because intel_gpu_top is running
>>> in
>>> the background when i915 is unloaded. I tried a quick repro, I
>>> don't see
>>> the unload succeed ("fatal module in use", not sure if this was a
>>> partial unload), but when I try to kill intel_gpu_top, I get an
>>> NPD.
>>> This is in the event disable path - i915_pmu_event_stop ->
>>> i915_pmu_disable.
>>
>> So i915 failed to unload (as expected - with perf events open we
>> elevate
>> the module ref count via i915_pmu_event_init -> drm_dev_get), then
>> you
>> quit intel_gpu_top and get NPD? On the engine lookup? With the
>> re-ordered init/fini sequence as from this patch?
>>
>> With elevated module count there shouldn't be any unloading happening
>> so
>> I am intrigued.
>>
>>> It's likely that you are seeing a different path (unload) leading
>>> to the
>>> same issue.
>>>
>>> I think in i915_pmu_disable/disable should be aware of event-
>>>> hw.state
>>> and or pmu->closed states before accessing the event. Maybe like,
>>>
>>> if (event->hw.state != PERF_HES_STOPPED && is_engine_event(event))
>>> {
>>>
>>> @Tvrtko, wondering if this case is tested by igt@perf
>>> _pmu@module-unload.
>>
>> A bit yes. From what Stuart wrote it seems the test would need to be
>> extended to cover the case where PMU is getting opened while module
>> unload is in progress.
>>
>> But the NPD you saw is for the moment confusing so I don't know what
>> is
>> happening.
>>
>>> I am not clear if we should use event->hw.state or pmu->closed here
>>> and
>>> if/how they are related. IMO, for this issue, the engine check is
>>> good
>>> enough too, so we don't really need the pmu state checks.
>>> Thoughts?
>>
>> Engine check at the moment feels like papering.
>>
>> Indeed as you say I think the pmu->closed might be the solution.
>> Perhaps
>> the race is as mentioned above. PMU open happening in parallel to
>> unload..
>>
>> If the sequence of events userspace triggers is:
>>
>>     i915_pmu_event_init
>>     i915_pmu_event_start
>>     i915_pmu_enable
>>     i915_pmu_event_read
>>
>> I guess pmu->closed can get set halfway in i915_pmu_event_init. What
>> would be the effect of that.. We'd try to get a module reference
>> while
>> in the process of unloading. Which is probably very bad.. So possibly
>> a
>> final check on pmu->close is needed there. Ho hum.. can it be made
>> safe
>> is the question.
>>
>> It doesn't explain the NPD on Ctrl-C though.. intel_gpu_top keeps
>> the
>> evens open all the time. So I think more info needed, for me at
>> least.
> 
> So one thing here is this doesn't have to do with module unload, but
> module unbind specifically (while perf is open). I don't know if the
> NPD from Umesh is the same as what we're seeing here. I'd really like
> to separate these unless you know for sure that's related. Also it
> would be interesting to know if this patch fixes your issue as well.
> 
> I still think the re-ordering in i915_driver.c should be enough and we
> shouldn't need to check pmu->closed. The unregister should be enough to
> ensure the perf tools are notified that new events aren't allowed, and
> at that time the engine structures are still intact. And even if for
> some reason the perf code still calls in to our function pointers, we
> have these engine checks as a failsafe.
> 
> I'm by the way uploading one more version here with a drm_WARN_ONCE
> instead of the debug print.

Problem is I am not a fan of papering so lets get to the bottom of the 
issue first. (In the meantime simple patch to re-order driver fini is 
okay since that seems obvious enough, I tnink.)

We need to see call traces from any oopses and try to extend perf_pmu to 
catch them. And we need to understand the problem, if it is a real 
problem, which I laid out last week about race between module unload and 
elevating the module use count from our perf event init.

Without understanding the details of possible failure mode flows we 
don't know how much the papering with engine checks solves and how much 
it leaves broken.

If you guys are too busy to tackle that I'll put it onto myself, but 
help would certainly be appreciated.

Regards,

Tvrtko
