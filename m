Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F925A341F7
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 15:29:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 130AF10EAC6;
	Thu, 13 Feb 2025 14:29:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="YbUvQPPm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8728A10EAC6
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 14:28:59 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id
 ffacd0b85a97d-38dc0cd94a6so523423f8f.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 06:28:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1739456938; x=1740061738;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Wbby/SG/Jxw9GijHETN2axeHBV2aPonuxCvU/q/457Q=;
 b=YbUvQPPm+l0q0VVOo/ry1zd/DdYtIxYiETKnX6U5TqKNShPhilDRUfTExNVRab/AJI
 hdTBLOZtXnUEyorZmf5Wl8xaA5YgaI3foPX2Lzo1qg2n06u3DelSst6WTaOWOX9TGxKu
 KcW0JwHIqVuFZresVMD/8RtfFJsCUSi9XXsh9do9+baIzG/rt1XDpg4DJvoiLRMfjtAu
 BeDD530+YaQKFMB4+veKZu3KddQXcZH7J0j3KM/a/vNyEirtoVWgCdQ0AhCutHPWWbpx
 watsNv/kH60s+LrLbG5AeS2z+o5lO3FBeGD9LnhCstJLHHoHGX6cxLd/oXsNhO17ijX4
 IANw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739456938; x=1740061738;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Wbby/SG/Jxw9GijHETN2axeHBV2aPonuxCvU/q/457Q=;
 b=Ewrogofea5MTZOzM+QUW0/bPqivYWxpV+7EtE+jy+5h1iAFUwFjiUZH2el8GrS0HhP
 OKlj2KjAoyY/IcGMEdwPjInk5Z9HSqrKtlHlmrQ1pE4v3aZ7U9ivKzOowg4zLzIhUSuz
 BxreNL8XBnc0snPZH6f6LLSVRaxyyCUwSrLibuaNqqykGQOYXeNZTQMQ+BlBs2PhKl6E
 OcnrNtHloVjNw8BBzpR4ZGOh5SFIKvm/e2B9nBfvgay8R14CNnt8hrsdXp+XaPgQJ3Tk
 BFHKqvExAEemWwJeiQlJufTfY6sVD84wkzptv9pcAPXSNqdiOL2u/zmrhuQHgeBpZ3aD
 yZqw==
X-Gm-Message-State: AOJu0Yw1hME9o7py5OQDDsEVwa5X8BhjJPsFzn2V1UZZ3oKorKt3ADla
 yUuxqtsTw2Dv7+4TShekXArUMU1VKKfX8rlz0w7JNyXXBIU8UO7tY/uGB8SwqgQ=
X-Gm-Gg: ASbGnct1t1zFz8bfdqwFjpjtAKPGi7x+FNQnCAcNF0VI+tRST75xkodrquEoRip3Q4S
 5x0Ptcz08zkMnMVuuBzA3ZKAjBUA0Omimy0+SoBRlnKu1DWDYA4obro4Y6FeuFR+OqQC2P6eWL7
 XKCTy5Se3liRhMuW0Zh7R0ZUD6l2hXXxiRhBEcp31xQUUGHGZOTfUiMKvf5IsYJOqSm2YEVlYFd
 8uBjgc01kkeaQJIj61ALmUQrcLEvri357hdWsJPmBMYppxNyBFFtJDrwA4zv+y2mpAvJ+5HyaA3
 aooeJf6toNxxjt+xD1DJZEWwcBivtfQ=
X-Google-Smtp-Source: AGHT+IF8QRJ/r4z/d5w4AMMVkDogHCh4x7W8nQRccLEhiR50ltyJZIa6HwXVz2pjgl4kS6EoUXR5WQ==
X-Received: by 2002:adf:f38f:0:b0:38f:2407:103e with SMTP id
 ffacd0b85a97d-38f244fcb0amr2830173f8f.30.1739456937580; 
 Thu, 13 Feb 2025 06:28:57 -0800 (PST)
Received: from [192.168.0.101] ([90.241.98.187])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38f259fe1efsm2052642f8f.97.2025.02.13.06.28.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Feb 2025 06:28:57 -0800 (PST)
Message-ID: <6508eb18-c31e-4ec2-b2ee-3f1e6e2b9224@ursulin.net>
Date: Thu, 13 Feb 2025 14:28:56 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/pmu: Drop custom hotplug code
To: "Liang, Kan" <kan.liang@linux.intel.com>,
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
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <25bc2cb3-f0ab-4e64-b331-98f52cce9a99@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
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


On 13/02/2025 13:36, Liang, Kan wrote:
> On 2025-02-12 11:13 p.m., Lucas De Marchi wrote:
>> On Tue, Jan 21, 2025 at 12:19:15PM -0500, Liang, Kan wrote:
>>>
>>>
>>> On 2025-01-21 11:59 a.m., Lucas De Marchi wrote:
>>>> On Tue, Jan 21, 2025 at 10:53:31AM -0500, Liang, Kan wrote:
>>>>>
>>>>>
>>>>> On 2025-01-21 9:29 a.m., Lucas De Marchi wrote:
>>>>>> On Mon, Jan 20, 2025 at 08:42:41PM -0500, Liang, Kan wrote:
>>>>>>>>>> -static int i915_pmu_cpu_offline(unsigned int cpu, struct
>>>>>>>>>> hlist_node
>>>>>>>>>> *node)
>>>>>>>>>> -{
>>>>>>>>>> -    struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu),
>>>>>>>>>> cpuhp.node);
>>>>>>>>>> -    unsigned int target = i915_pmu_target_cpu;
>>>>>>>>>> -
>>>>>>>>>> -    /*
>>>>>>>>>> -     * Unregistering an instance generates a CPU offline event
>>>>>>>>>> which
>>>>>>>>>> we must
>>>>>>>>>> -     * ignore to avoid incorrectly modifying the shared
>>>>>>>>>> i915_pmu_cpumask.
>>>>>>>>>> -     */
>>>>>>>>>> -    if (!pmu->registered)
>>>>>>>>>> -        return 0;
>>>>>>>>>> -
>>>>>>>>>> -    if (cpumask_test_and_clear_cpu(cpu, &i915_pmu_cpumask)) {
>>>>>>>>>> -        target = cpumask_any_but(topology_sibling_cpumask(cpu),
>>>>>>>>>> cpu);
>>>>>>>>>> -
>>>>>>>>>
>>>>>>>>> I'm not familar with the i915 PMU, but it seems suggest a core
>>>>>>>>> scope
>>>>>>>>> PMU, not a system-wide scope.
>>>>>>>>
>>>>>>>> counter is in a complete separate device - it doesn't depend on
>>>>>>>> core or
>>>>>>>> die or pkg - not sure why it cared about topology_sibling_cpumask
>>>>>>>> here.
>>>>>>>
>>>>>>> OK. But it's still a behavior change. Please make it clear in the
>>>>>>> description that the patch also changes/fixes the scope from core
>>>>>>> scope
>>>>>>> to system-wide.
>>>>>>
>>>>>> sure... do you have a suggestion how to test the hotplug? For testing
>>>>>> purposes, can I force the perf cpu assigned to be something other than
>>>>>> the cpu0?
>>>>>
>>>>> Yes, it's a bit tricky to verify the hotplug if the assigned CPU is
>>>>> CPU0. I don't know a way to force another CPU without changing the
>>>>> code.
>>>>> You may have to instrument the code for the test.
>>>>>
>>>>> Another test you may want to do is the perf system-wide test, e.g.,
>>>>> perf
>>>>> stat -a -e i915/actual-frequency/ sleep 1.
>>>>>
>>>>> The existing code assumes the counter is core scope. So the result
>>>>> should be huge, since perf will read the counter on each core and add
>>>>> them up.
>>>>
>>>> that is not allowed and it simply fails to init the counter:
>>>>
>>>> static int i915_pmu_event_init(struct perf_event *event)
>>>>      ...
>>>>      if (event->cpu < 0)
>>>>          return -EINVAL;
>>>>      if (!cpumask_test_cpu(event->cpu, &i915_pmu_cpumask))
>>>>          return -EINVAL;
>>>>      ...
>>>> }
>>>>
>>>> event only succeeds the initialization in the assigned cpu. I see no
>>>> differences in results (using i915/interrupts/ since freq is harder to
>>>> compare):
>>>>
>>>> $ sudo perf stat -e i915/interrupts/  sleep 1
>>>>
>>>>   Performance counter stats for 'system wide':
>>>>
>>>>                 253      i915/
>>>> interrupts/
>>>>         1.002215175 seconds time elapsed
>>>>
>>>> $ sudo perf stat -a  -e i915/interrupts/  sleep 1
>>>>
>>>>   Performance counter stats for 'system wide':
>>>>
>>>>                 251      i915/
>>>> interrupts/
>>>>         1.000900818 seconds time elapsed
>>>>
>>>> Note that our cpumask attr already returns just the assigned cpu and
>>>> perf-stat only tries to open on that cpu:
>>>>
>>>> $ strace --follow -s 1024 -e perf_event_open --  perf stat -a  -e i915/
>>>> interrupts/  sleep 1
>>>>
>>>> [pid 55777] perf_event_open({type=0x24 /* PERF_TYPE_??? */, size=0x88 /*
>>>> PERF_ATTR_SIZE_??? */, config=0x100002, sample_period=0,
>>>> sample_type=PERF_SAMPLE_IDENTIFIER,
>>>> read_format=PERF_FORMAT_TOTAL_TIME_ENABLED|
>>>> PERF_FORMAT_TOTAL_TIME_RUNNING, disabled=1, inherit=1, precise_ip=0 /*
>>>> arbitrary skid */, exclude_guest=1, ...}, -1, 0, -1,
>>>> PERF_FLAG_FD_CLOEXEC) = 3
>>>>
>>>
>>> I see. The behavior is not changed with the patch. It should be just the
>>
>> humn... the behavior doesn't change when using perf because perf will
>> read the cpumask and use it accordingly. However apparently now it's not
>> working anymore to reject calls to perf_event_open() that have a cpu
>> that doesn't match the cpumask.
>>
>> Just like before I have this output:
>>
>> $ sudo cat /sys/devices/i915/cpumask 0
>>
>> However if perf_event_open() is called with cpu == 1, it succeeds.
>> Example:
>>
>>      attr_init(&attr);
>>      perf_event_open(&attr, -1, 1, -1, 0);
>>
>> I was expecting it to fail and set errno to ENODEV, but that is not the
>> case. For this particular system I'm seeing these values in
>> perf_try_init_event():
>>
>>      event->cpu == 1
>>      cpumask=0-19
>>      pmu_cpumask=0
>>
>> Re-reading this: it will accept any (online) cpu of the system. Same
>> behavior occurs with other scopes: any cpu of that scope is accepted and
>> event->cpu will still keep what the user passed in (rather than the
>> calculated by perf_try_init_event(). Is that expected?
> 
> Yes, for a system-wide event, it can be read from any CPU. The CPU mask
> in the sysfs only tells the perf tool that only 1 CPU is required to get
> system-wide information. It doesn't have to be the advised CPU. It can
> be any CPU in the scope.
> 
> https://lore.kernel.org/all/20240802151643.1691631-3-kan.liang@linux.intel.com/

I was asking about this during review - will it also allow for group 
reads to mix cpus and if yes are there any downsides etc?

Regards,

Tvrtko

