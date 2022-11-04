Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1503619BFB
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Nov 2022 16:45:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40B5C10E8A6;
	Fri,  4 Nov 2022 15:45:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF8D110E8C0
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Nov 2022 15:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667576755; x=1699112755;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=kYJK9uyM2maO25J6JCSN2AZoQx1jMv9TtWcETVUVQX0=;
 b=kqfUXVYfi3a4kJF6+XJ6WC+qkU6kKQu57nzFzMAnyuVJ27XahYkNyMbc
 fWndvYQ6UknSDfVIjksIHubQDFiu8wMd0qNeRYcSXHLMtK4DgMsa3GZwC
 k8dM4h9b6KskrGFCxVb925vZQ1cxiDvLRWhwd8QDWnKMCynbMoB+ZARai
 dMyH/ZtjjqCxyLHIK9KG0qNk5LhNqU39VxGhWD5SFUSSX4uwyawRgw14G
 e0myfFHnxCRwM60qd7CqgKswJg0cUP528Zk3Gcl4rnVMlBn4qOoj5Lr7O
 9gwPg3TppfR2F9LKBWF4dHsZY3QwukTUCfNtMwhjww495c4xrPjtozcPV g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="336702507"
X-IronPort-AV: E=Sophos;i="5.96,137,1665471600"; d="scan'208";a="336702507"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 08:45:55 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="698689099"
X-IronPort-AV: E=Sophos;i="5.96,137,1665471600"; d="scan'208";a="698689099"
Received: from mlmesa-mobl2.ger.corp.intel.com (HELO [10.213.192.110])
 ([10.213.192.110])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 08:45:54 -0700
Message-ID: <562d4c56-a364-8893-5893-2cdf2c9b8b4c@linux.intel.com>
Date: Fri, 4 Nov 2022 15:45:53 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20221103001149.1203285-1-umesh.nerlige.ramappa@intel.com>
 <0a0f1b3e-eddf-9b7d-fc09-f6f097592bed@linux.intel.com>
 <Y2QDsHVX9phoVfC3@unerlige-ril>
 <2cec4092-efe0-5291-b14c-6e618e334b8c@linux.intel.com>
 <Y2UoozJ4zxoQxNKC@unerlige-ril>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <Y2UoozJ4zxoQxNKC@unerlige-ril>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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


On 04/11/2022 14:58, Umesh Nerlige Ramappa wrote:
> On Fri, Nov 04, 2022 at 08:29:38AM +0000, Tvrtko Ursulin wrote:
>>
>> On 03/11/2022 18:08, Umesh Nerlige Ramappa wrote:
>>> On Thu, Nov 03, 2022 at 12:28:46PM +0000, Tvrtko Ursulin wrote:
>>>>
>>>> On 03/11/2022 00:11, Umesh Nerlige Ramappa wrote:
>>>>> Engine busyness samples around a 10ms period is failing with busyness
>>>>> ranging approx. from 87% to 115%. The expected range is +/- 5% of the
>>>>> sample period.
>>>>>
>>>>> When determining busyness of active engine, the GuC based engine
>>>>> busyness implementation relies on a 64 bit timestamp register read. 
>>>>> The
>>>>> latency incurred by this register read causes the failure.
>>>>>
>>>>> On DG1, when the test fails, the observed latencies range from 900us -
>>>>> 1.5ms.
>>>>
>>>> Do I read this right - that the latency of a 64 bit timestamp 
>>>> register read is 0.9 - 1.5ms? That would be the read in 
>>>> guc_update_pm_timestamp?
>>>
>>> Correct. That is total time taken by intel_uncore_read64_2x32() 
>>> measured with local_clock().
>>>
>>> One other thing I missed out in the comments is that enable_dc=0 also 
>>> resolves the issue, but display team confirmed there is no relation 
>>> to display in this case other than that it somehow introduces a 
>>> latency in the reg read.
>>
>> Could it be the DMC wreaking havoc something similar to b68763741aa2 
>> ("drm/i915: Restore GT performance in headless mode with DMC loaded")?
>>
> 
> __gt_unpark is already doing a
> gt->awake = intel_display_power_get(i915, POWER_DOMAIN_GT_IRQ);
> 
> I would assume that __gt_unpark was called prior to running the 
> selftest, need to confirm that though.

Right, I meant maybe something similar but not necessarily the same. 
Similar in the sense that it may be DMC doing many MMIO invisible to 
i915 and so introducing latency.

>>>>> One solution tried was to reduce the latency between reg read and
>>>>> CPU timestamp capture, but such optimization does not add value to 
>>>>> user
>>>>> since the CPU timestamp obtained here is only used for (1) selftest 
>>>>> and
>>>>> (2) i915 rps implementation specific to execlist scheduler. Also, this
>>>>> solution only reduces the frequency of failure and does not eliminate
>>>>> it.
>>>
>>> Note that this solution is here - 
>>> https://patchwork.freedesktop.org/patch/509991/?series=110497&rev=1
>>>
>>> but I am not intending to use it since it just reduces the frequency 
>>> of failues, but the inherent issue still exists.
>>
>> Right, I'd just go with that as well if it makes a significant 
>> improvement. Or even just refactor intel_uncore_read64_2x32 to be 
>> under one spinlock/fw. I don't see that it can have an excuse to be 
>> less efficient since there's a loop in there.
> 
> The patch did reduce the failure to once in 200 runs vs once in 10 runs.
> I will refactor the helper in that case.

Yeah it makes sense to make it efficient. But feel free to go with the 
msleep increase as well to workaround the issue fully.

Regards,

Tvrtko
