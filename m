Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A70854E778
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 18:42:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBF9B11A593;
	Thu, 16 Jun 2022 16:41:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECAC011A594
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 16:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655397717; x=1686933717;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=rN7tJyluacETDalmMDGAex7bc8H3NFH0YHNyBUhgn7c=;
 b=WcrlHoHtUlL4bogSiYvfMy4KkVu6z4jvv2efiqmb7lvWItOW5Q4D9zD4
 cTF2u9OiI5OFNFsQUq/VZm/yR26WdrsK5lTfCaXtKZ6tWK3alEeC5JNL3
 SGkahu3CEcMQA2afPNn6TTI0RlOvPHzlKJavuBo6YRvbi330zqVvOzRrK
 1YXvbCTAdeZlOoxm8fx7w9zA6welpjN1AM0LqsF323glceA8NlzKg8No1
 CWaE/PZGABJxKfr6DM5D2vzgPIZ8IB5oByzhGuW3WoBIteJk3fhGO/Szl
 RjqmaQZ7C28lTRbeEO71xKzLyZv3v2T6qQsS0t6RuMA91o3Q7DOZJQP87 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="259752728"
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="259752728"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 09:41:57 -0700
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="912234507"
Received: from mstokes1-mobl.ger.corp.intel.com (HELO [10.213.198.82])
 ([10.213.198.82])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 09:41:56 -0700
Message-ID: <1a19781d-5d78-aa15-9578-44106433cbf9@linux.intel.com>
Date: Thu, 16 Jun 2022 17:41:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>
References: <20220611172711.2154962-1-alan.previn.teres.alexis@intel.com>
 <20220611172711.2154962-2-alan.previn.teres.alexis@intel.com>
 <20220614011024.GE48807@orsosgc001.jf.intel.com>
 <84534cf0-94f0-13e0-5fb3-332bee124a24@linux.intel.com>
 <20220615185953.bsbyr27jcchccvge@ldmartin-desk2>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220615185953.bsbyr27jcchccvge@ldmartin-desk2>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [Intel-gfx 1/1] drm/i915/guc: Don't update engine
 busyness stats too frequently
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
Cc: intel-gfx@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 15/06/2022 19:59, Lucas De Marchi wrote:
> On Tue, Jun 14, 2022 at 08:07:04AM +0100, Tvrtko Ursulin wrote:
>>
>> On 14/06/2022 02:10, Umesh Nerlige Ramappa wrote:
>>> On Sat, Jun 11, 2022 at 10:27:11AM -0700, Alan Previn wrote:
>>>> Using igt's gem-create and with additional patches to track object
>>>> creation time, it was measured that guc_update_engine_gt_clks was
>>>> getting called over 188 thousand times in the span of 15 seconds
>>>> (running the test three times).
>>>>
>>>> Get a jiffies sample on every trigger and ensure we skip sampling
>>>> if we are being called too soon. Use half of the ping_delay as a
>>>> safe threshold.
>>>>
>>>> NOTE: with this change, the number of calls went down to just 14
>>>> over the same span of time (matching the original intent of running
>>>> about once every 24 seconds, at 19.2Mhz GT freq, per engine).
>>>>
>>>> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>>>> ---
>>>> drivers/gpu/drm/i915/gt/intel_engine_types.h      | 10 ++++++++++
>>>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c |  9 +++++++++
>>>> 2 files changed, 19 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h 
>>>> b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>>>> index 2286f96f5f87..63f4ecdf1606 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>>>> @@ -323,6 +323,16 @@ struct intel_engine_guc_stats {
>>>>      * @start_gt_clk: GT clock time of last idle to active transition.
>>>>      */
>>>>     u64 start_gt_clk;
>>>> +
>>>> +    /**
>>>> +     * @last_jiffies: Jiffies at last actual stats collection time
>>>> +     *
>>>> +     * We use this timestamp to ensure we don't oversample the
>>>> +     * stats because runtime power management events can trigger
>>>> +     * stats collection at much higher rates than required.
>>>> +     */
>>>> +    u64 last_jiffies;
>>>> +
>>>> };
>>>>
>>>> struct intel_engine_cs {
>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>> index 5a1dfacf24ea..8f8bf6e40ccb 100644
>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>> @@ -1167,6 +1167,15 @@ static void guc_update_engine_gt_clks(struct 
>>>> intel_engine_cs *engine)
>>>
>>> A user query will end up in guc_engine_busyness which will call 
>>> guc_update_engine_gt_clks. Adding this logic here will affect accuracy.
>>> The other place where guc_update_engine_gt_clks is called is in the 
>>> ping worker, but that worker runs at 1/8th the wrap around time for 
>>> the gt clocks (32 bit). The last I checked the wrap around was at 22 
>>> seconds.
>>>
>>> That leaves only the gt_park path. fwiu, this path runs too 
>>> frequently and here we are updating the busyness stats. That is 
>>> causing the enormous PCI traffic (lmem accesses). Only this path 
>>> needs to be fixed, as in just use the same logic in the 
>>> intel_guc_busyness_park() to decide whether to call 
>>> __update_guc_busyness_stats or not.
>>
>> Not updating the driver state in park will not negatively impact 
>> accuracy in some scenarios? That needs to balanced against the 
>> questions whether or not there are real world scenarios impacted by 
>> the update cost or it is just for IGT.
> 
> there is, which was what motivated 
> https://patchwork.freedesktop.org/series/105011/ and in parallel Alan
> worked on this. I view both as orthogonal  thought. I used it to make
> the single-word-from-lmem faster, but if we can reduce
> the frequency this code path is called, it should be even better.
> Per Umesh's and your comment I'm unsure if we can... but if
> there is no user monitoring the usage, should we still be calling this?
> "Nobody is looking, why are we sampling?" kind of thought.

Who did you find is doing the sampling in the real world use case? AFAIR 
if one one is querying busyness, I thought there would only be the GuC 
ping worker which runs extremely infrequently (to avoid some counter 
overflow).

Regards,

Tvrtko

> Summarizing the first patch in my series: it improved igt in ~50% and a
> real world case in ~12%
> 
> Lucas De Marchi
