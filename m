Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12363A18162
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 16:53:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88EF810E5E2;
	Tue, 21 Jan 2025 15:53:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P3AZI3JX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63D2E10E5E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2025 15:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737474820; x=1769010820;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=nFgqBYQ640kb0hYy5qDZ7gW76EuiK8sFf0DDeP2jLuQ=;
 b=P3AZI3JXiF42a6sq1UAQClaPKH/b68oO7GouJiyhdPOWBg9UFJkyQsgO
 CoUkW0miUpkwMpkSEsMSew/vKs+VRvsQ41M+1GyItciQnVLjvzDeTwxwp
 3+ZwdGzmUYn0nn6us+dJYfRvwyl8G9r1x4Ldc0WTxRfKpROPFdkfiw0hD
 w+sUft6F9g5QFEWjUmYzb1IHFk3xOmB+h2d7R19WSTbkYme/34exXtRvX
 DbPI7ohUE5XNQnKMmQgUhpeJSIisMVslguQlW9tQPOMLjqyd4HIWuz+ZH
 f2xXuURlJzJgPa87aKL+Gu0Dl74SAXD1TnS61cURYy+Wuz1dph1D6OSVG g==;
X-CSE-ConnectionGUID: UntKTZIASxCWfHDpL4ZQKg==
X-CSE-MsgGUID: dg7rDQdhS9im3wf/bE7mWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="40710246"
X-IronPort-AV: E=Sophos;i="6.13,222,1732608000"; d="scan'208";a="40710246"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 07:53:35 -0800
X-CSE-ConnectionGUID: qsPLGMZHTU2NYtcaVHyMrg==
X-CSE-MsgGUID: ExNcgzmyReSQr4enjqGjaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="111835526"
Received: from linux.intel.com ([10.54.29.200])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 07:53:33 -0800
Received: from [10.246.136.10] (kliang2-mobl1.ccr.corp.intel.com
 [10.246.136.10])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id BCE0720B5713;
 Tue, 21 Jan 2025 07:53:32 -0800 (PST)
Message-ID: <e15c89bb-88d6-4caf-a199-2febd067634d@linux.intel.com>
Date: Tue, 21 Jan 2025 10:53:31 -0500
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
Content-Language: en-US
From: "Liang, Kan" <kan.liang@linux.intel.com>
In-Reply-To: <rtmoiu2z4vg42efvz6mwo45eaileyghqowibdzikob7mlnklbm@bz5cc5zkalcd>
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



On 2025-01-21 9:29 a.m., Lucas De Marchi wrote:
> On Mon, Jan 20, 2025 at 08:42:41PM -0500, Liang, Kan wrote:
>>>>> -static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node
>>>>> *node)
>>>>> -{
>>>>> -    struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu),
>>>>> cpuhp.node);
>>>>> -    unsigned int target = i915_pmu_target_cpu;
>>>>> -
>>>>> -    /*
>>>>> -     * Unregistering an instance generates a CPU offline event which
>>>>> we must
>>>>> -     * ignore to avoid incorrectly modifying the shared
>>>>> i915_pmu_cpumask.
>>>>> -     */
>>>>> -    if (!pmu->registered)
>>>>> -        return 0;
>>>>> -
>>>>> -    if (cpumask_test_and_clear_cpu(cpu, &i915_pmu_cpumask)) {
>>>>> -        target = cpumask_any_but(topology_sibling_cpumask(cpu), cpu);
>>>>> -
>>>>
>>>> I'm not familar with the i915 PMU, but it seems suggest a core scope
>>>> PMU, not a system-wide scope.
>>>
>>> counter is in a complete separate device - it doesn't depend on core or
>>> die or pkg - not sure why it cared about topology_sibling_cpumask here.
>>
>> OK. But it's still a behavior change. Please make it clear in the
>> description that the patch also changes/fixes the scope from core scope
>> to system-wide.
> 
> sure... do you have a suggestion how to test the hotplug? For testing
> purposes, can I force the perf cpu assigned to be something other than
> the cpu0?

Yes, it's a bit tricky to verify the hotplug if the assigned CPU is
CPU0. I don't know a way to force another CPU without changing the code.
You may have to instrument the code for the test.

Another test you may want to do is the perf system-wide test, e.g., perf
stat -a -e i915/actual-frequency/ sleep 1.

The existing code assumes the counter is core scope. So the result
should be huge, since perf will read the counter on each core and add
them up.
But this patch claims that the counter is system-wide. With the patch,
the same perf command should only read the counter on the assigned CPU.

Please also post the test results in the changelog. That's the reason
why the scope has to be changed.

Thanks,
Kan


