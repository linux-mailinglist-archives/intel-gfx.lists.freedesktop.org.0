Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC12254AA02
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 09:07:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D12F10E1A8;
	Tue, 14 Jun 2022 07:07:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C67A10E1A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 07:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655190428; x=1686726428;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=iyS3JgfkUl3GmTxAHLcqJg+szAn1lvF2NIvKqwqr8qw=;
 b=m2b289oQth1VBatoIuuGg8Q5YQexOUAC9mNm1EFtW/0qWI/bJ8ND/9Zg
 rudZzsgQ+3hcrTzlEY9xbvgZA5sk8g/4uNjq0SjktN5L+POmXyXYxoulS
 fIDJWLLhXkn87X/Eff2/mQUTFGfBnjEEq8clZG/a+4HgM03IHYl/O0Ymv
 /x8ai2Z3jYASjaHDSH2VJ5tTRmW+3h2xxhxb++YGDA8T1XZPAKjX2azCT
 uTq484oYUP5i3ZSLg9zjBBtFfWyLVaBIhzNYwK9G9SpUaJZDsbO59Gymr
 VglPtvcf8U6lLMg4vJyDt1mltHdwPr0gKXGGjcqmRwfW0L4KRp0FMXuu7 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="277310234"
X-IronPort-AV: E=Sophos;i="5.91,299,1647327600"; d="scan'208";a="277310234"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 00:07:07 -0700
X-IronPort-AV: E=Sophos;i="5.91,299,1647327600"; d="scan'208";a="640185631"
Received: from snkalval-mobl2.amr.corp.intel.com (HELO [10.212.46.198])
 ([10.212.46.198])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 00:07:06 -0700
Message-ID: <84534cf0-94f0-13e0-5fb3-332bee124a24@linux.intel.com>
Date: Tue, 14 Jun 2022 08:07:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>
References: <20220611172711.2154962-1-alan.previn.teres.alexis@intel.com>
 <20220611172711.2154962-2-alan.previn.teres.alexis@intel.com>
 <20220614011024.GE48807@orsosgc001.jf.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220614011024.GE48807@orsosgc001.jf.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 14/06/2022 02:10, Umesh Nerlige Ramappa wrote:
> On Sat, Jun 11, 2022 at 10:27:11AM -0700, Alan Previn wrote:
>> Using igt's gem-create and with additional patches to track object
>> creation time, it was measured that guc_update_engine_gt_clks was
>> getting called over 188 thousand times in the span of 15 seconds
>> (running the test three times).
>>
>> Get a jiffies sample on every trigger and ensure we skip sampling
>> if we are being called too soon. Use half of the ping_delay as a
>> safe threshold.
>>
>> NOTE: with this change, the number of calls went down to just 14
>> over the same span of time (matching the original intent of running
>> about once every 24 seconds, at 19.2Mhz GT freq, per engine).
>>
>> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>> ---
>> drivers/gpu/drm/i915/gt/intel_engine_types.h      | 10 ++++++++++
>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c |  9 +++++++++
>> 2 files changed, 19 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h 
>> b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>> index 2286f96f5f87..63f4ecdf1606 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>> @@ -323,6 +323,16 @@ struct intel_engine_guc_stats {
>>      * @start_gt_clk: GT clock time of last idle to active transition.
>>      */
>>     u64 start_gt_clk;
>> +
>> +    /**
>> +     * @last_jiffies: Jiffies at last actual stats collection time
>> +     *
>> +     * We use this timestamp to ensure we don't oversample the
>> +     * stats because runtime power management events can trigger
>> +     * stats collection at much higher rates than required.
>> +     */
>> +    u64 last_jiffies;
>> +
>> };
>>
>> struct intel_engine_cs {
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index 5a1dfacf24ea..8f8bf6e40ccb 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -1167,6 +1167,15 @@ static void guc_update_engine_gt_clks(struct 
>> intel_engine_cs *engine)
> 
> A user query will end up in guc_engine_busyness which will call 
> guc_update_engine_gt_clks. Adding this logic here will affect accuracy.
> The other place where guc_update_engine_gt_clks is called is in the ping 
> worker, but that worker runs at 1/8th the wrap around time for the gt 
> clocks (32 bit). The last I checked the wrap around was at 22 seconds.
> 
> That leaves only the gt_park path. fwiu, this path runs too frequently 
> and here we are updating the busyness stats. That is causing the 
> enormous PCI traffic (lmem accesses). Only this path needs to be fixed, 
> as in just use the same logic in the intel_guc_busyness_park() to decide 
> whether to call __update_guc_busyness_stats or not.

Not updating the driver state in park will not negatively impact 
accuracy in some scenarios? That needs to balanced against the questions 
whether or not there are real world scenarios impacted by the update 
cost or it is just for IGT.

Regards,

Tvrtko

> 
> Of course, if you are running the user query too frequently, then IMO we 
> should not fix that in i915.
> If you haven't already, please make sure the igt@perf_pmu@ tests are all 
> passing with any of these changes. There's also a selftest - 
> live_engine_busy_stats that you need to make sure passes.
> 
>>     struct intel_engine_guc_stats *stats = &engine->stats.guc;
>>     struct intel_guc *guc = &engine->gt->uc.guc;
>>     u32 last_switch, ctx_id, total;
>> +    u64 newjiffs;
>> +
>> +    /* Don't worry about jiffies wrap-around, a rare additional 
>> sample won't have any impact */
>> +    newjiffs = get_jiffies_64();
>> +    if (stats->last_jiffies && (newjiffs - stats->last_jiffies <
>> +       (guc->timestamp.ping_delay << 1)))
> 
> You want to right shift by 1 for half the ping delay here.
> 
> Thanks,
> Umesh
> 
>> +        return;
>> +
>> +    stats->last_jiffies = newjiffs;
>>
>>     lockdep_assert_held(&guc->timestamp.lock);
>>
>> -- 
>> 2.25.1
>>
