Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE21A17FC8
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 15:29:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5D6210E5C5;
	Tue, 21 Jan 2025 14:29:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VtzV2zvB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CFA310E5C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2025 14:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737469782; x=1769005782;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=w7U0hGL+yZiMoK5yYdVrObNLXegUV0+cVpLrM097O3I=;
 b=VtzV2zvBiW5k6EfSL0pRtwE8dUSGVT0J6pTuCIehr+g6jVp2o9oys7m/
 LKUItSPCAz9lm4UlspLUjQQ+fgNxVSqsfzKxReJf69O3/rKa76oSLrwiM
 kknMx85sE69ed7YK6S+vPTWb5GtcR7v1QaU+O5+LT0MIxL0vhVg7prClS
 cxEZ6ME94/7VR8dtHLiNthsPYB58rmcws4WTDsNQh6bFLg5M18hlc8inA
 bf1Hq7a6TaUbkjy0/VkD4QQU73wmq8eGJIE4Tiw7slBIQakNhJOQuqceD
 hKNqZneSAce3xZhZVCR6NB+6zXngeC7OJY1rvc9U4KV3DmnwxGm6FhsGv g==;
X-CSE-ConnectionGUID: FzU2uinhQaKDNTvWZxYlmA==
X-CSE-MsgGUID: 4vQc79XIR92zRrOY8ogSlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="48877295"
X-IronPort-AV: E=Sophos;i="6.13,222,1732608000"; d="scan'208";a="48877295"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 06:29:41 -0800
X-CSE-ConnectionGUID: azrqchH9Q7u4PLjRtQJyiQ==
X-CSE-MsgGUID: YHTL1JlSSfSXvAZzEHBdzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111442811"
Received: from ldmartin-desk2.corp.intel.com (HELO ldmartin-desk2)
 ([10.125.110.38])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 06:29:40 -0800
Date: Tue, 21 Jan 2025 08:29:35 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Liang, Kan" <kan.liang@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, 
 "Peter Zijlstra (Intel)" <peterz@infradead.org>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Subject: Re: [PATCH] drm/i915/pmu: Drop custom hotplug code
Message-ID: <rtmoiu2z4vg42efvz6mwo45eaileyghqowibdzikob7mlnklbm@bz5cc5zkalcd>
References: <20250116222426.77757-1-lucas.demarchi@intel.com>
 <aded1225-0022-4e86-845c-283641cf32a0@linux.intel.com>
 <pz7y2i25y5o2ox46s3ua3prsa5ap2mkqqb5chtebw3f2egwk6n@5m4xibw2h5yd>
 <6d4d7f82-7619-40bd-bbc8-58681de54a6a@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6d4d7f82-7619-40bd-bbc8-58681de54a6a@linux.intel.com>
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

On Mon, Jan 20, 2025 at 08:42:41PM -0500, Liang, Kan wrote:
>>>> -static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node
>>>> *node)
>>>> -{
>>>> -    struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu),
>>>> cpuhp.node);
>>>> -    unsigned int target = i915_pmu_target_cpu;
>>>> -
>>>> -    /*
>>>> -     * Unregistering an instance generates a CPU offline event which
>>>> we must
>>>> -     * ignore to avoid incorrectly modifying the shared
>>>> i915_pmu_cpumask.
>>>> -     */
>>>> -    if (!pmu->registered)
>>>> -        return 0;
>>>> -
>>>> -    if (cpumask_test_and_clear_cpu(cpu, &i915_pmu_cpumask)) {
>>>> -        target = cpumask_any_but(topology_sibling_cpumask(cpu), cpu);
>>>> -
>>>
>>> I'm not familar with the i915 PMU, but it seems suggest a core scope
>>> PMU, not a system-wide scope.
>>
>> counter is in a complete separate device - it doesn't depend on core or
>> die or pkg - not sure why it cared about topology_sibling_cpumask here.
>
>OK. But it's still a behavior change. Please make it clear in the
>description that the patch also changes/fixes the scope from core scope
>to system-wide.

sure... do you have a suggestion how to test the hotplug? For testing
purposes, can I force the perf cpu assigned to be something other than
the cpu0?

thanks
Lucas De Marchi
