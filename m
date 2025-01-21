Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 347CBA18263
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 17:59:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4D2410E1B0;
	Tue, 21 Jan 2025 16:59:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lH8noRoi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBE2E10E1B0
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2025 16:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737478754; x=1769014754;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MbRWprz3CxZZK89BMGg02JvAozszk3Sej1my395R8FI=;
 b=lH8noRoi/yqjxExnfIhaJ3ZmI6ixStSMGP1o4GvKboGY01O+uHr/A1az
 QDhVuy3yg3RbiHniiBLJRdEvpz2AJe52Q+qd7G3x6C4nm9eKCmwlEjD7h
 qzsMIwW0BQN0/Fg9iSklbwgd/il3dRfUf2z5/KyIc+2nCIbruNUJTTklh
 k8mVrCnfpOGIut+VoeVpA0emqq56Ym+s1HXoX/Y7/+s14xiGyOIdPHhxw
 43iwDBSgSYEFxvcBWxX4c0MzynfoWbhnJlUm+rNaYHwfwjg7pKNnlpV1E
 w9T05nqvVECzdEnOY7J/BEaB7Qzk7/bEFhb3GBY7ARs3E4i2UkfNsLNRA w==;
X-CSE-ConnectionGUID: 9nMCqDFoTvyBi95egnQelQ==
X-CSE-MsgGUID: XgBxueWvTP+sEdCd39voOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="38002703"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="38002703"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 08:59:14 -0800
X-CSE-ConnectionGUID: Lg+YolWLTGeuTYI96bgWFw==
X-CSE-MsgGUID: w/qaXeQjRj+Q06X2e9P1kQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,222,1732608000"; d="scan'208";a="106782218"
Received: from lstrano-mobl6.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.125.110.72])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 08:59:12 -0800
Date: Tue, 21 Jan 2025 10:59:08 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Liang, Kan" <kan.liang@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, 
 "Peter Zijlstra (Intel)" <peterz@infradead.org>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Subject: Re: [PATCH] drm/i915/pmu: Drop custom hotplug code
Message-ID: <szokgaqqg22wu7ufam4ab5fnnf47ei62urn6gpgv2rise4h4qt@a7zb3uqvyc3r>
References: <20250116222426.77757-1-lucas.demarchi@intel.com>
 <aded1225-0022-4e86-845c-283641cf32a0@linux.intel.com>
 <pz7y2i25y5o2ox46s3ua3prsa5ap2mkqqb5chtebw3f2egwk6n@5m4xibw2h5yd>
 <6d4d7f82-7619-40bd-bbc8-58681de54a6a@linux.intel.com>
 <rtmoiu2z4vg42efvz6mwo45eaileyghqowibdzikob7mlnklbm@bz5cc5zkalcd>
 <e15c89bb-88d6-4caf-a199-2febd067634d@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e15c89bb-88d6-4caf-a199-2febd067634d@linux.intel.com>
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

On Tue, Jan 21, 2025 at 10:53:31AM -0500, Liang, Kan wrote:
>
>
>On 2025-01-21 9:29 a.m., Lucas De Marchi wrote:
>> On Mon, Jan 20, 2025 at 08:42:41PM -0500, Liang, Kan wrote:
>>>>>> -static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node
>>>>>> *node)
>>>>>> -{
>>>>>> -    struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu),
>>>>>> cpuhp.node);
>>>>>> -    unsigned int target = i915_pmu_target_cpu;
>>>>>> -
>>>>>> -    /*
>>>>>> -     * Unregistering an instance generates a CPU offline event which
>>>>>> we must
>>>>>> -     * ignore to avoid incorrectly modifying the shared
>>>>>> i915_pmu_cpumask.
>>>>>> -     */
>>>>>> -    if (!pmu->registered)
>>>>>> -        return 0;
>>>>>> -
>>>>>> -    if (cpumask_test_and_clear_cpu(cpu, &i915_pmu_cpumask)) {
>>>>>> -        target = cpumask_any_but(topology_sibling_cpumask(cpu), cpu);
>>>>>> -
>>>>>
>>>>> I'm not familar with the i915 PMU, but it seems suggest a core scope
>>>>> PMU, not a system-wide scope.
>>>>
>>>> counter is in a complete separate device - it doesn't depend on core or
>>>> die or pkg - not sure why it cared about topology_sibling_cpumask here.
>>>
>>> OK. But it's still a behavior change. Please make it clear in the
>>> description that the patch also changes/fixes the scope from core scope
>>> to system-wide.
>>
>> sure... do you have a suggestion how to test the hotplug? For testing
>> purposes, can I force the perf cpu assigned to be something other than
>> the cpu0?
>
>Yes, it's a bit tricky to verify the hotplug if the assigned CPU is
>CPU0. I don't know a way to force another CPU without changing the code.
>You may have to instrument the code for the test.
>
>Another test you may want to do is the perf system-wide test, e.g., perf
>stat -a -e i915/actual-frequency/ sleep 1.
>
>The existing code assumes the counter is core scope. So the result
>should be huge, since perf will read the counter on each core and add
>them up.

that is not allowed and it simply fails to init the counter:

static int i915_pmu_event_init(struct perf_event *event)
	...
	if (event->cpu < 0)
		return -EINVAL;
	if (!cpumask_test_cpu(event->cpu, &i915_pmu_cpumask))
		return -EINVAL;
	...
}

event only succeeds the initialization in the assigned cpu. I see no
differences in results (using i915/interrupts/ since freq is harder to
compare):

$ sudo perf stat -e i915/interrupts/  sleep 1

  Performance counter stats for 'system wide':

                253      i915/interrupts/                                                      

        1.002215175 seconds time elapsed

$ sudo perf stat -a  -e i915/interrupts/  sleep 1

  Performance counter stats for 'system wide':

                251      i915/interrupts/                                                      

        1.000900818 seconds time elapsed

Note that our cpumask attr already returns just the assigned cpu and
perf-stat only tries to open on that cpu:

$ strace --follow -s 1024 -e perf_event_open --  perf stat -a  -e i915/interrupts/  sleep 1

[pid 55777] perf_event_open({type=0x24 /* PERF_TYPE_??? */, size=0x88 /* PERF_ATTR_SIZE_??? */, config=0x100002, sample_period=0, sample_type=PERF_SAMPLE_IDENTIFIER, read_format=PERF_FORMAT_TOTAL_TIME_ENABLED|PERF_FORMAT_TOTAL_TIME_RUNNING, disabled=1, inherit=1, precise_ip=0 /* arbitrary skid */, exclude_guest=1, ...}, -1, 0, -1, PERF_FLAG_FD_CLOEXEC) = 3

Lucas De Marchi

>But this patch claims that the counter is system-wide. With the patch,
>the same perf command should only read the counter on the assigned CPU.
>
>Please also post the test results in the changelog. That's the reason
>why the scope has to be changed.

it seems that migration code is simply wrong, not that we are changing
the scope here - it was already considered system-wide. I can add a
paragraph in the commit message explaining it.

thanks
Lucas De Marchi

>
>Thanks,
>Kan
>
>
