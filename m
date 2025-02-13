Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C3CA346AA
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 16:27:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABB6510EB10;
	Thu, 13 Feb 2025 15:27:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mdx3tGEO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C8CF10EB10
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 15:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739460453; x=1770996453;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=DqLYS033yvlkvQA/G2X76+BoO5iLDWsGLRFC668rTFA=;
 b=Mdx3tGEO5azlhSHxW42dY4Vl5ER1DGJfBBkUUGlaiQyQNLSa6pa9MIsx
 bhhbu4INDmrgHq4lg0Dcm4BZwXAD+f1GCVYxDIFQpljsPO83WtRx2GJLA
 ZYbr8yK2SOleglMs0YfRYfGGW8LJp47ztulworEWy9ojLT+/JV8wsJ1ns
 uRgzPkIA5l6DKfTPA3QEjCqRyuf0VBnOl8D2InFS3OxKY4eq4VOgH0juH
 skBXTyh9NPsZjkg87VuBNC5QPcbtKM6UDJMO8LbtX5U1bsoyBOfWK0bj6
 5akebf4bKR8c1f9ax+qHyT19wRPDG8FugurwDXct6GXIxK/zzSPmSsXcu Q==;
X-CSE-ConnectionGUID: UOvY1PJ1QcSB7BL3xeYZpA==
X-CSE-MsgGUID: inszOPfoShmv9pwhuihhQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="57573110"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="57573110"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 07:27:32 -0800
X-CSE-ConnectionGUID: n64TzKZTS4+cBEHeAN7w6Q==
X-CSE-MsgGUID: YtjmIeb8TjWC5PKAupYdvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113357303"
Received: from linux.intel.com ([10.54.29.200])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 07:27:31 -0800
Received: from [10.246.136.14] (kliang2-mobl1.ccr.corp.intel.com
 [10.246.136.14])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 5219120B5713;
 Thu, 13 Feb 2025 07:27:30 -0800 (PST)
Message-ID: <46afcfac-6546-4246-a432-c8e1454f9dd9@linux.intel.com>
Date: Thu, 13 Feb 2025 10:27:28 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/pmu: Drop custom hotplug code
To: Tvrtko Ursulin <tursulin@ursulin.net>,
 Lucas De Marchi <lucas.demarchi@intel.com>
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
 <25bc2cb3-f0ab-4e64-b331-98f52cce9a99@linux.intel.com>
 <6508eb18-c31e-4ec2-b2ee-3f1e6e2b9224@ursulin.net>
Content-Language: en-US
From: "Liang, Kan" <kan.liang@linux.intel.com>
In-Reply-To: <6508eb18-c31e-4ec2-b2ee-3f1e6e2b9224@ursulin.net>
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



On 2025-02-13 9:28 a.m., Tvrtko Ursulin wrote:
> 
> On 13/02/2025 13:36, Liang, Kan wrote:
>> On 2025-02-12 11:13 p.m., Lucas De Marchi wrote:
>>> On Tue, Jan 21, 2025 at 12:19:15PM -0500, Liang, Kan wrote:
>>>>
>>>>
>>>> On 2025-01-21 11:59 a.m., Lucas De Marchi wrote:
>>>>> On Tue, Jan 21, 2025 at 10:53:31AM -0500, Liang, Kan wrote:
>>>>>>
>>>>>>
>>>>>> On 2025-01-21 9:29 a.m., Lucas De Marchi wrote:
>>>>>>> On Mon, Jan 20, 2025 at 08:42:41PM -0500, Liang, Kan wrote:
>>>>>>>>>>> -static int i915_pmu_cpu_offline(unsigned int cpu, struct
>>>>>>>>>>> hlist_node
>>>>>>>>>>> *node)
>>>>>>>>>>> -{
>>>>>>>>>>> -    struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu),
>>>>>>>>>>> cpuhp.node);
>>>>>>>>>>> -    unsigned int target = i915_pmu_target_cpu;
>>>>>>>>>>> -
>>>>>>>>>>> -    /*
>>>>>>>>>>> -     * Unregistering an instance generates a CPU offline event
>>>>>>>>>>> which
>>>>>>>>>>> we must
>>>>>>>>>>> -     * ignore to avoid incorrectly modifying the shared
>>>>>>>>>>> i915_pmu_cpumask.
>>>>>>>>>>> -     */
>>>>>>>>>>> -    if (!pmu->registered)
>>>>>>>>>>> -        return 0;
>>>>>>>>>>> -
>>>>>>>>>>> -    if (cpumask_test_and_clear_cpu(cpu, &i915_pmu_cpumask)) {
>>>>>>>>>>> -        target = cpumask_any_but(topology_sibling_cpumask(cpu),
>>>>>>>>>>> cpu);
>>>>>>>>>>> -
>>>>>>>>>>
>>>>>>>>>> I'm not familar with the i915 PMU, but it seems suggest a core
>>>>>>>>>> scope
>>>>>>>>>> PMU, not a system-wide scope.
>>>>>>>>>
>>>>>>>>> counter is in a complete separate device - it doesn't depend on
>>>>>>>>> core or
>>>>>>>>> die or pkg - not sure why it cared about topology_sibling_cpumask
>>>>>>>>> here.
>>>>>>>>
>>>>>>>> OK. But it's still a behavior change. Please make it clear in the
>>>>>>>> description that the patch also changes/fixes the scope from core
>>>>>>>> scope
>>>>>>>> to system-wide.
>>>>>>>
>>>>>>> sure... do you have a suggestion how to test the hotplug? For
>>>>>>> testing
>>>>>>> purposes, can I force the perf cpu assigned to be something other
>>>>>>> than
>>>>>>> the cpu0?
>>>>>>
>>>>>> Yes, it's a bit tricky to verify the hotplug if the assigned CPU is
>>>>>> CPU0. I don't know a way to force another CPU without changing the
>>>>>> code.
>>>>>> You may have to instrument the code for the test.
>>>>>>
>>>>>> Another test you may want to do is the perf system-wide test, e.g.,
>>>>>> perf
>>>>>> stat -a -e i915/actual-frequency/ sleep 1.
>>>>>>
>>>>>> The existing code assumes the counter is core scope. So the result
>>>>>> should be huge, since perf will read the counter on each core and add
>>>>>> them up.
>>>>>
>>>>> that is not allowed and it simply fails to init the counter:
>>>>>
>>>>> static int i915_pmu_event_init(struct perf_event *event)
>>>>>      ...
>>>>>      if (event->cpu < 0)
>>>>>          return -EINVAL;
>>>>>      if (!cpumask_test_cpu(event->cpu, &i915_pmu_cpumask))
>>>>>          return -EINVAL;
>>>>>      ...
>>>>> }
>>>>>
>>>>> event only succeeds the initialization in the assigned cpu. I see no
>>>>> differences in results (using i915/interrupts/ since freq is harder to
>>>>> compare):
>>>>>
>>>>> $ sudo perf stat -e i915/interrupts/  sleep 1
>>>>>
>>>>>   Performance counter stats for 'system wide':
>>>>>
>>>>>                 253      i915/
>>>>> interrupts/
>>>>>         1.002215175 seconds time elapsed
>>>>>
>>>>> $ sudo perf stat -a  -e i915/interrupts/  sleep 1
>>>>>
>>>>>   Performance counter stats for 'system wide':
>>>>>
>>>>>                 251      i915/
>>>>> interrupts/
>>>>>         1.000900818 seconds time elapsed
>>>>>
>>>>> Note that our cpumask attr already returns just the assigned cpu and
>>>>> perf-stat only tries to open on that cpu:
>>>>>
>>>>> $ strace --follow -s 1024 -e perf_event_open --  perf stat -a  -e
>>>>> i915/
>>>>> interrupts/  sleep 1
>>>>>
>>>>> [pid 55777] perf_event_open({type=0x24 /* PERF_TYPE_??? */,
>>>>> size=0x88 /*
>>>>> PERF_ATTR_SIZE_??? */, config=0x100002, sample_period=0,
>>>>> sample_type=PERF_SAMPLE_IDENTIFIER,
>>>>> read_format=PERF_FORMAT_TOTAL_TIME_ENABLED|
>>>>> PERF_FORMAT_TOTAL_TIME_RUNNING, disabled=1, inherit=1, precise_ip=0 /*
>>>>> arbitrary skid */, exclude_guest=1, ...}, -1, 0, -1,
>>>>> PERF_FLAG_FD_CLOEXEC) = 3
>>>>>
>>>>
>>>> I see. The behavior is not changed with the patch. It should be just
>>>> the
>>>
>>> humn... the behavior doesn't change when using perf because perf will
>>> read the cpumask and use it accordingly. However apparently now it's not
>>> working anymore to reject calls to perf_event_open() that have a cpu
>>> that doesn't match the cpumask.
>>>
>>> Just like before I have this output:
>>>
>>> $ sudo cat /sys/devices/i915/cpumask 0
>>>
>>> However if perf_event_open() is called with cpu == 1, it succeeds.
>>> Example:
>>>
>>>      attr_init(&attr);
>>>      perf_event_open(&attr, -1, 1, -1, 0);
>>>
>>> I was expecting it to fail and set errno to ENODEV, but that is not the
>>> case. For this particular system I'm seeing these values in
>>> perf_try_init_event():
>>>
>>>      event->cpu == 1
>>>      cpumask=0-19
>>>      pmu_cpumask=0
>>>
>>> Re-reading this: it will accept any (online) cpu of the system. Same
>>> behavior occurs with other scopes: any cpu of that scope is accepted and
>>> event->cpu will still keep what the user passed in (rather than the
>>> calculated by perf_try_init_event(). Is that expected?
>>
>> Yes, for a system-wide event, it can be read from any CPU. The CPU mask
>> in the sysfs only tells the perf tool that only 1 CPU is required to get
>> system-wide information. It doesn't have to be the advised CPU. It can
>> be any CPU in the scope.
>>
>> https://lore.kernel.org/all/20240802151643.1691631-3-
>> kan.liang@linux.intel.com/
> 
> I was asking about this during review - will it also allow for group
> reads to mix cpus and if yes are there any downsides etc?
> 

The original idea was from the below patch. It's to avoid the IPIs when
reading an event from a CPU that is not advertised but in the same scope.
https://lore.kernel.org/all/tip-d6a2f9035bfc27d0e9d78b13635dda9fb017ac01@git.kernel.org/

Usually, a group is read together from the same CPU. But, in theory, it
doesn't prevent the read requests from different CPUs. If so, for a
system-wide event group like here, it reads the counters from the CPU
sending the request separately. Some members may be read from CPU A.
Other members may be read from CPU B. The only downside I can imagine is
that the counter value could be a little bit off, since you cannot
guarantee the read from different CPUs occur at the exact same time, right?

Thanks,
Kan
