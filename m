Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 011B56192B8
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Nov 2022 09:29:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BEA610E062;
	Fri,  4 Nov 2022 08:29:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88CB510E062
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Nov 2022 08:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667550586; x=1699086586;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Y12z1r5FO/0yZ7GV4zfd88OmtO17uHwLhlV0iON/6Tg=;
 b=ZvlkepUZKIH9xReObIyPjyeTjFHKshN00MT0NNeaiAQJ1a3h3+XRDXn2
 912vqF8IQpof5p+OnLVz3TFo+jypoH8r4wlxHAqBjHinXLQkgOuJgBPpj
 8vrakxBC4hNiHaVBUwJRgShMR8ToIlFjfIsDcbb8neZo3C8GQMie5q4XE
 mU1Pn/phHae72/7enT7nL2qUaCzbfPWZZsjy7lWHmCcCpOZxB5P9YRtd+
 fPp5Lo19jQ9Cw9ktUJV9RKueiq1Vx7L5eeylXGUs5p85H39CNZQtVhzMt
 5uPOn8qUBKIJOaqjQbScqH50mxclgfxvuILmpABxt6u5+rVvFkXuynSvi w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="307538929"
X-IronPort-AV: E=Sophos;i="5.96,136,1665471600"; d="scan'208";a="307538929"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 01:29:45 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="964265780"
X-IronPort-AV: E=Sophos;i="5.96,136,1665471600"; d="scan'208";a="964265780"
Received: from mlmesa-mobl2.ger.corp.intel.com (HELO [10.213.192.110])
 ([10.213.192.110])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 01:29:44 -0700
Message-ID: <2cec4092-efe0-5291-b14c-6e618e334b8c@linux.intel.com>
Date: Fri, 4 Nov 2022 08:29:38 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20221103001149.1203285-1-umesh.nerlige.ramappa@intel.com>
 <0a0f1b3e-eddf-9b7d-fc09-f6f097592bed@linux.intel.com>
 <Y2QDsHVX9phoVfC3@unerlige-ril>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <Y2QDsHVX9phoVfC3@unerlige-ril>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftest: Bump up sample period
 for busy stats selftest
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


On 03/11/2022 18:08, Umesh Nerlige Ramappa wrote:
> On Thu, Nov 03, 2022 at 12:28:46PM +0000, Tvrtko Ursulin wrote:
>>
>> On 03/11/2022 00:11, Umesh Nerlige Ramappa wrote:
>>> Engine busyness samples around a 10ms period is failing with busyness
>>> ranging approx. from 87% to 115%. The expected range is +/- 5% of the
>>> sample period.
>>>
>>> When determining busyness of active engine, the GuC based engine
>>> busyness implementation relies on a 64 bit timestamp register read. The
>>> latency incurred by this register read causes the failure.
>>>
>>> On DG1, when the test fails, the observed latencies range from 900us -
>>> 1.5ms.
>>
>> Do I read this right - that the latency of a 64 bit timestamp register 
>> read is 0.9 - 1.5ms? That would be the read in guc_update_pm_timestamp?
> 
> Correct. That is total time taken by intel_uncore_read64_2x32() measured 
> with local_clock().
> 
> One other thing I missed out in the comments is that enable_dc=0 also 
> resolves the issue, but display team confirmed there is no relation to 
> display in this case other than that it somehow introduces a latency in 
> the reg read.

Could it be the DMC wreaking havoc something similar to b68763741aa2 
("drm/i915: Restore GT performance in headless mode with DMC loaded")?

>>> One solution tried was to reduce the latency between reg read and
>>> CPU timestamp capture, but such optimization does not add value to user
>>> since the CPU timestamp obtained here is only used for (1) selftest and
>>> (2) i915 rps implementation specific to execlist scheduler. Also, this
>>> solution only reduces the frequency of failure and does not eliminate
>>> it.
> 
> Note that this solution is here - 
> https://patchwork.freedesktop.org/patch/509991/?series=110497&rev=1
> 
> but I am not intending to use it since it just reduces the frequency of 
> failues, but the inherent issue still exists.

Right, I'd just go with that as well if it makes a significant 
improvement. Or even just refactor intel_uncore_read64_2x32 to be under 
one spinlock/fw. I don't see that it can have an excuse to be less 
efficient since there's a loop in there.

Regards,

Tvrtko

> Regards,
> Umesh
> 
>>>
>>> In order to make the selftest more robust and account for such
>>> latencies, increase the sample period to 100 ms.
>>>
>>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c 
>>> b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>>> index 0dcb3ed44a73..87c94314cf67 100644
>>> --- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>>> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>>> @@ -317,7 +317,7 @@ static int live_engine_busy_stats(void *arg)
>>>          ENGINE_TRACE(engine, "measuring busy time\n");
>>>          preempt_disable();
>>>          de = intel_engine_get_busy_time(engine, &t[0]);
>>> -        mdelay(10);
>>> +        mdelay(100);
>>>          de = ktime_sub(intel_engine_get_busy_time(engine, &t[1]), de);
>>>          preempt_enable();
>>>          dt = ktime_sub(t[1], t[0]);
