Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA286A3407B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 14:36:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 816C210E3CD;
	Thu, 13 Feb 2025 13:36:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZKjPZlFB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABE2E10E3CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 13:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739453809; x=1770989809;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=TxKO5OP5iah1PAWDo3aOTH6dxa0TWXFRXCUv6BymR20=;
 b=ZKjPZlFBlDQBlMdvstEQEbBpLAz1bVkQgWRXl4W6EJ945JZVTYhynryN
 HsJ8ztsrgyIhCRCMs8cpsKJs7l5GZIDkTW0/INLoUq+rnKsIvfWtcxUff
 IionrLgm92v7xdOWzebbDa+YuXbI9IaF7QPeFKhn7NFdxtOFZh5QUO9oT
 J/dpRV5hKI0zF/QNA31ngORDXHK7Wyu6jAXXeqs5w9awWzMClQRBvtjmm
 AFXHyag+b6SSEfvUSndZvnn5EVtIKe7OsK9spxNSZVb42x9/ajdNcursK
 DdtZsMi883feLEAr6c8qojSygwjQhxlCwFiIyUB8zIlEfYrJ5UNKswc/B w==;
X-CSE-ConnectionGUID: FLRxrmkwSxmssZjJKhVz/Q==
X-CSE-MsgGUID: 9uPco+QVTEW2qWcB9/b50A==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="40074382"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="40074382"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 05:36:48 -0800
X-CSE-ConnectionGUID: 3Nsb7WmBT52vD2ceiNg79A==
X-CSE-MsgGUID: dKIsltxAQE6UH9WL1v7baA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113642451"
Received: from linux.intel.com ([10.54.29.200])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 05:36:48 -0800
Received: from [10.246.136.14] (kliang2-mobl1.ccr.corp.intel.com
 [10.246.136.14])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id B00FA20B5713;
 Thu, 13 Feb 2025 05:36:47 -0800 (PST)
Message-ID: <25bc2cb3-f0ab-4e64-b331-98f52cce9a99@linux.intel.com>
Date: Thu, 13 Feb 2025 08:36:46 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/pmu: Drop custom hotplug code
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 "Peter Zijlstra (Intel)" <peterz@infradead.org>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>
References: <20250116222426.77757-1-lucas.demarchi@intel.com>
 <aded1225-0022-4e86-845c-283641cf32a0@linux.intel.com>
 <pz7y2i25y5o2ox46s3ua3prsa5ap2mkqqb5chtebw3f2egwk6n@5m4xibw2h5yd>
 <6d4d7f82-7619-40bd-bbc8-58681de54a6a@linux.intel.com>
 <rtmoiu2z4vg42efvz6mwo45eaileyghqowibdzikob7mlnklbm@bz5cc5zkalcd>
 <e15c89bb-88d6-4caf-a199-2febd067634d@linux.intel.com>
 <szokgaqqg22wu7ufam4ab5fnnf47ei62urn6gpgv2rise4h4qt@a7zb3uqvyc3r>
 <891bade1-42bb-46b3-bfb0-b3215f201ed0@linux.intel.com>
 <cwvprdbmmvblivbjfs5seoivevdjetkjw5meabedf3yfaq2gmq@anrdku3mderx>
Content-Language: en-US
From: "Liang, Kan" <kan.liang@linux.intel.com>
In-Reply-To: <cwvprdbmmvblivbjfs5seoivevdjetkjw5meabedf3yfaq2gmq@anrdku3mderx>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 2025-02-12 11:13 p.m., Lucas De Marchi wrote:
> On Tue, Jan 21, 2025 at 12:19:15PM -0500, Liang, Kan wrote:
>>
>>
>> On 2025-01-21 11:59 a.m., Lucas De Marchi wrote:
>>> On Tue, Jan 21, 2025 at 10:53:31AM -0500, Liang, Kan wrote:
>>>>
>>>>
>>>> On 2025-01-21 9:29 a.m., Lucas De Marchi wrote:
>>>>> On Mon, Jan 20, 2025 at 08:42:41PM -0500, Liang, Kan wrote:
>>>>>>>>> -static int i915_pmu_cpu_offline(unsigned int cpu, struct
>>>>>>>>> hlist_node
>>>>>>>>> *node)
>>>>>>>>> -{
>>>>>>>>> -    struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu),
>>>>>>>>> cpuhp.node);
>>>>>>>>> -    unsigned int target = i915_pmu_target_cpu;
>>>>>>>>> -
>>>>>>>>> -    /*
>>>>>>>>> -     * Unregistering an instance generates a CPU offline event
>>>>>>>>> which
>>>>>>>>> we must
>>>>>>>>> -     * ignore to avoid incorrectly modifying the shared
>>>>>>>>> i915_pmu_cpumask.
>>>>>>>>> -     */
>>>>>>>>> -    if (!pmu->registered)
>>>>>>>>> -        return 0;
>>>>>>>>> -
>>>>>>>>> -    if (cpumask_test_and_clear_cpu(cpu, &i915_pmu_cpumask)) {
>>>>>>>>> -        target = cpumask_any_but(topology_sibling_cpumask(cpu),
>>>>>>>>> cpu);
>>>>>>>>> -
>>>>>>>>
>>>>>>>> I'm not familar with the i915 PMU, but it seems suggest a core
>>>>>>>> scope
>>>>>>>> PMU, not a system-wide scope.
>>>>>>>
>>>>>>> counter is in a complete separate device - it doesn't depend on
>>>>>>> core or
>>>>>>> die or pkg - not sure why it cared about topology_sibling_cpumask
>>>>>>> here.
>>>>>>
>>>>>> OK. But it's still a behavior change. Please make it clear in the
>>>>>> description that the patch also changes/fixes the scope from core
>>>>>> scope
>>>>>> to system-wide.
>>>>>
>>>>> sure... do you have a suggestion how to test the hotplug? For testing
>>>>> purposes, can I force the perf cpu assigned to be something other than
>>>>> the cpu0?
>>>>
>>>> Yes, it's a bit tricky to verify the hotplug if the assigned CPU is
>>>> CPU0. I don't know a way to force another CPU without changing the
>>>> code.
>>>> You may have to instrument the code for the test.
>>>>
>>>> Another test you may want to do is the perf system-wide test, e.g.,
>>>> perf
>>>> stat -a -e i915/actual-frequency/ sleep 1.
>>>>
>>>> The existing code assumes the counter is core scope. So the result
>>>> should be huge, since perf will read the counter on each core and add
>>>> them up.
>>>
>>> that is not allowed and it simply fails to init the counter:
>>>
>>> static int i915_pmu_event_init(struct perf_event *event)
>>>     ...
>>>     if (event->cpu < 0)
>>>         return -EINVAL;
>>>     if (!cpumask_test_cpu(event->cpu, &i915_pmu_cpumask))
>>>         return -EINVAL;
>>>     ...
>>> }
>>>
>>> event only succeeds the initialization in the assigned cpu. I see no
>>> differences in results (using i915/interrupts/ since freq is harder to
>>> compare):
>>>
>>> $ sudo perf stat -e i915/interrupts/  sleep 1
>>>
>>>  Performance counter stats for 'system wide':
>>>
>>>                253      i915/
>>> interrupts/                                                     
>>>        1.002215175 seconds time elapsed
>>>
>>> $ sudo perf stat -a  -e i915/interrupts/  sleep 1
>>>
>>>  Performance counter stats for 'system wide':
>>>
>>>                251      i915/
>>> interrupts/                                                     
>>>        1.000900818 seconds time elapsed
>>>
>>> Note that our cpumask attr already returns just the assigned cpu and
>>> perf-stat only tries to open on that cpu:
>>>
>>> $ strace --follow -s 1024 -e perf_event_open --  perf stat -a  -e i915/
>>> interrupts/  sleep 1
>>>
>>> [pid 55777] perf_event_open({type=0x24 /* PERF_TYPE_??? */, size=0x88 /*
>>> PERF_ATTR_SIZE_??? */, config=0x100002, sample_period=0,
>>> sample_type=PERF_SAMPLE_IDENTIFIER,
>>> read_format=PERF_FORMAT_TOTAL_TIME_ENABLED|
>>> PERF_FORMAT_TOTAL_TIME_RUNNING, disabled=1, inherit=1, precise_ip=0 /*
>>> arbitrary skid */, exclude_guest=1, ...}, -1, 0, -1,
>>> PERF_FLAG_FD_CLOEXEC) = 3
>>>
>>
>> I see. The behavior is not changed with the patch. It should be just the
> 
> humn... the behavior doesn't change when using perf because perf will
> read the cpumask and use it accordingly. However apparently now it's not
> working anymore to reject calls to perf_event_open() that have a cpu
> that doesn't match the cpumask.
> 
> Just like before I have this output:
> 
> $ sudo cat /sys/devices/i915/cpumask 0
> 
> However if perf_event_open() is called with cpu == 1, it succeeds.
> Example:
> 
>     attr_init(&attr);
>     perf_event_open(&attr, -1, 1, -1, 0);
> 
> I was expecting it to fail and set errno to ENODEV, but that is not the
> case. For this particular system I'm seeing these values in
> perf_try_init_event():
> 
>     event->cpu == 1
>     cpumask=0-19
>     pmu_cpumask=0
> 
> Re-reading this: it will accept any (online) cpu of the system. Same
> behavior occurs with other scopes: any cpu of that scope is accepted and
> event->cpu will still keep what the user passed in (rather than the
> calculated by perf_try_init_event(). Is that expected?

Yes, for a system-wide event, it can be read from any CPU. The CPU mask
in the sysfs only tells the perf tool that only 1 CPU is required to get
system-wide information. It doesn't have to be the advised CPU. It can
be any CPU in the scope.

https://lore.kernel.org/all/20240802151643.1691631-3-kan.liang@linux.intel.com/

Thanks,
Kan
> 
> Lucas De Marchi
> 
>> topology_sibling_cpumask() which implies a misleading message.
>> Thanks for the confirmation.
>>
>>
>>> Lucas De Marchi
>>>
>>>> But this patch claims that the counter is system-wide. With the patch,
>>>> the same perf command should only read the counter on the assigned CPU.
>>>>
>>>> Please also post the test results in the changelog. That's the reason
>>>> why the scope has to be changed.
>>>
>>> it seems that migration code is simply wrong, not that we are changing
>>> the scope here - it was already considered system-wide. I can add a
>>> paragraph in the commit message explaining it.
>>>
>>
>> Yes, please.
>>
>> Thanks,
>> Kan
>>

