Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC025B18C8
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 11:33:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3746A10E9F2;
	Thu,  8 Sep 2022 09:33:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E7BD10E9F2
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 09:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662629613; x=1694165613;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=6hTEzWC5zdJejsLzlC9vehDiGqZJdqnq5Kfs7TFxoTw=;
 b=gVwPOM0MGWGCIFpogdB/6EuhaQ1giULYVj8G1uui8dlEPt+28gNyjUPG
 noafk0EEEjGdFexxrbSZPwnvwtUntTa5zMFnQLfd0DxdRWIkSWv8wT7v3
 +an2gwseli6wSqxah4dop4j3Eld8Dnd6ZRlkfrzOJ1LE2I+yPuGIgxLrc
 gMWJNL+G7NqOpvHmN54LnZ54pHOQRocrGcFnT/ODITiZw2U0ME18PGZQ3
 1436w5M/d0tbmMUwhow8p3fFlwStrVioTVJSuDKDWFOUvnUvD3XNEEuG2
 8nfHNTtubkdl5TGr2ICuWc8x2zjZ0yPSP0/b9IPe4N00mzgal8C+cjyd5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="297123476"
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="297123476"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 02:33:32 -0700
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="645005363"
Received: from jdemps5x-mobl.ger.corp.intel.com (HELO [10.213.237.77])
 ([10.213.237.77])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 02:33:31 -0700
Message-ID: <25e23d35-04b1-58e1-16d5-0ff973fa81fe@linux.intel.com>
Date: Thu, 8 Sep 2022 10:33:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20220831193355.838209-1-ashutosh.dixit@intel.com>
 <20220831193355.838209-2-ashutosh.dixit@intel.com>
 <Yw/kna1W/vrCiMmF@unerlige-ril> <87sflaodjp.wl-ashutosh.dixit@intel.com>
 <YxeRe5W0Zf/TBGWw@unerlige-ril>
 <c0c9f2ab-315e-8589-50ff-bbf6d4c39de3@linux.intel.com>
 <8735d3xm44.wl-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <8735d3xm44.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [RFC PATCH 2/2] Fix per client busyness locking
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 07/09/2022 16:03, Dixit, Ashutosh wrote:
> On Wed, 07 Sep 2022 00:28:48 -0700, Tvrtko Ursulin wrote:
>>
>> On 06/09/2022 19:29, Umesh Nerlige Ramappa wrote:
>>> On Thu, Sep 01, 2022 at 04:55:22PM -0700, Dixit, Ashutosh wrote:
>>>> On Wed, 31 Aug 2022 15:45:49 -0700, Umesh Nerlige Ramappa wrote:
>>
>> [snip]
>>
>>>>>>
>>>>>>      intel_gt_reset_unlock(gt, srcu);
>>>>>>
>>>>>> @@ -1476,17 +1476,21 @@ void intel_guc_busyness_unpark(struct
>>>>> intel_gt *gt)
>>>>>>               guc->timestamp.ping_delay);
>>>>>> }
>>>>>>
>>>>>> -static void __guc_context_update_clks(struct intel_context *ce)
>>>>>> +static u64 guc_context_update_stats(struct intel_context *ce)
>>>>>> {
>>>>>>      struct intel_guc *guc = ce_to_guc(ce);
>>>>>>      struct intel_gt *gt = ce->engine->gt;
>>>>>>      u32 *pphwsp, last_switch, engine_id;
>>>>>> -    u64 start_gt_clk, active;
>>>>>>      unsigned long flags;
>>>>>> +    u64 total, active = 0;
>>>>>>      ktime_t unused;
>>>>>>
>>>>>> +    intel_context_pin(ce);
>>>>>
>>>>> intel_context_pin can sleep and we are not allowed to sleep in this
>>>>> path -
>>>>> intel_context_get_total_runtime_ns(), however we can sleep in the ping
>>>>> worker path, so ideally we want to separate it out for the 2 paths.
>>>>
>>>> Do we know which intel_context_get_total_runtime_ns() call is not allowed
>>>> to sleep? E.g. the code path from i915_drm_client_fdinfo() is allowed to
>>>> sleep. As mentioned I have done this is v2 of RFC patch which I think is
>>>> sufficient, but a more complicated scheme (which I think we can avoid for
>>>> now) would be to pin in code paths when sleeping is allowed.
>>>>
>>>
>>> Hmm, maybe intel_context_get_total_runtime_ns can sleep, not sure why I
>>> was assuming that this falls in the perf_pmu path. This is now in the
>>> drm_fdinfo query path. + Tvrtko.
>>>
>>> @Tvrtko, any idea if intel_context_get_total_runtime_ns path can sleep?
>>
>> Not at the moment - it calls it from a lockless (rcu) section when walking
>> all the contexts belonging to a client. Idea being performance queries
>> should have minimum effect on a running system.
> 
> Hmm my bad, missing the rcu and assuming a userspace thread will be able to
> sleep.
> 
>> I think it would be possible to change in theory but not sure how much
>> work. There is a hard need to sleep in there or what?
> 
> GuC contexts need to be pinned/unpinned which can sleep but investigating
> if we can return a previously computed busyness when we cannot pin/sleep.

Yeah it would be conceptually nice to keep that query light weight. 
Doing too much work to query accumulated state, like in case of pinning 
the unpinned contexts, feels a bit over the top. Hopefully there aren't 
any nasty races which would make this hard.

Regards,

Tvrtko
