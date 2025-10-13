Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42018BD296D
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 12:37:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3410610E0AB;
	Mon, 13 Oct 2025 10:37:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vs+bsUsz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4697210E0AB;
 Mon, 13 Oct 2025 10:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760351865; x=1791887865;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=2ggc/LRfkaMXKzHCR6UXDW1VTvBj7T/sBkGkP+/usYA=;
 b=Vs+bsUszhSzBoAtHGrD5e7lpbY/zGvOwDFw858miHfZyf98HlVKmAEO9
 3+FTLn+RewUk2ZYMgtYy5fOq0dHx8UXceMkc0nVOkdbe4BKlEpIayruNN
 cPRGfFgYs32WbU+iTBN0lHPCiPyP95cwSEXoVW43/qp4QZAvnKFzwum4B
 OnItwYyCwb7LBQC439T5y0w12TTMn8gxeytpGsBqsbRLIGoZD2ZfzG/sV
 VpgfPeurS9vmFZv1gZJHN58ehwQUVSAIubMG/L69mUh7Q6BvKCNWQorXN
 +IJZWZM9Mw7s61qRWti/vwJis/pUWtmAZGXM2sjcngDVovpHy9g/eL9+x w==;
X-CSE-ConnectionGUID: O5bYbWVPSTqnOqPpEf+cLw==
X-CSE-MsgGUID: zFzD/BaUTmebrRGcuUPReA==
X-IronPort-AV: E=McAfee;i="6800,10657,11580"; a="85111951"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="85111951"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 03:37:44 -0700
X-CSE-ConnectionGUID: NeOHbsAXSQmbEnfum5+28A==
X-CSE-MsgGUID: WYdf6Q9zTnWn0KkOKG8G0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="186657316"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.253])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 03:37:42 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [core-for-CI] KVM: x86/pmu: Don't try to get perf capabilities
 for hybrid CPUs
In-Reply-To: <20251013055515.4105002-1-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251013055515.4105002-1-chaitanya.kumar.borah@intel.com>
Date: Mon, 13 Oct 2025 13:37:39 +0300
Message-ID: <ca8fc27adb327a7ed198154511b66c648bfee592@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 13 Oct 2025, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> From: Dapeng Mi <dapeng1.mi@linux.intel.com>
>
> Explicitly zero kvm_host_pmu instead of attempting to get the perf PMU
> capabilities when running on a hybrid CPU to avoid running afoul of perf's
> sanity check.
>
>   ------------[ cut here ]------------
>   WARNING: arch/x86/events/core.c:3089 at perf_get_x86_pmu_capability+0xd/0xc0,
>   Call Trace:
>    <TASK>
>    kvm_x86_vendor_init+0x1b0/0x1a40 [kvm]
>    vmx_init+0xdb/0x260 [kvm_intel]
>    vt_init+0x12/0x9d0 [kvm_intel]
>    do_one_initcall+0x60/0x3f0
>    do_init_module+0x97/0x2b0
>    load_module+0x2d08/0x2e30
>    init_module_from_file+0x96/0xe0
>    idempotent_init_module+0x117/0x330
>    __x64_sys_finit_module+0x73/0xe0
>
> Always read the capabilities for non-hybrid CPUs, i.e. don't entirely
> revert to reading capabilities if and only if KVM wants to use a PMU, as
> it may be useful to have the host PMU capabilities available, e.g. if only
> or debug.
>
> Reported-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Closes: https://lore.kernel.org/all/70b64347-2aca-4511-af78-a767d5fa8226@intel.com/
> Fixes: 51f34b1e650f ("KVM: x86/pmu: Snapshot host (i.e. perf's) reported PMU capabilities")
> Suggested-by: Sean Christopherson <seanjc@google.com>
> Signed-off-by: Dapeng Mi <dapeng1.mi@linux.intel.com>
> Link: https://lore.kernel.org/r/20251010005239.146953-1-dapeng1.mi@linux.intel.com
> [sean: rework changelog, call out hybrid CPUs in shortlog]
> References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15122
> Signed-off-by: Sean Christopherson <seanjc@google.com>

Chaitanya, please reply with your Signed-off-by, otherwise I can't merge
this. You *must* add your Signed-off-by even when sending someone else's
work unmodified.

BR,
Jani.


> ---
>  arch/x86/kvm/pmu.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/arch/x86/kvm/pmu.c b/arch/x86/kvm/pmu.c
> index 40ac4cb44ed2..487ad19a236e 100644
> --- a/arch/x86/kvm/pmu.c
> +++ b/arch/x86/kvm/pmu.c
> @@ -108,16 +108,18 @@ void kvm_init_pmu_capability(const struct kvm_pmu_ops *pmu_ops)
>  	bool is_intel = boot_cpu_data.x86_vendor == X86_VENDOR_INTEL;
>  	int min_nr_gp_ctrs = pmu_ops->MIN_NR_GP_COUNTERS;
>  
> -	perf_get_x86_pmu_capability(&kvm_host_pmu);
> -
>  	/*
>  	 * Hybrid PMUs don't play nice with virtualization without careful
>  	 * configuration by userspace, and KVM's APIs for reporting supported
>  	 * vPMU features do not account for hybrid PMUs.  Disable vPMU support
>  	 * for hybrid PMUs until KVM gains a way to let userspace opt-in.
>  	 */
> -	if (cpu_feature_enabled(X86_FEATURE_HYBRID_CPU))
> +	if (cpu_feature_enabled(X86_FEATURE_HYBRID_CPU)) {
>  		enable_pmu = false;
> +		memset(&kvm_host_pmu, 0, sizeof(kvm_host_pmu));
> +	} else {
> +		perf_get_x86_pmu_capability(&kvm_host_pmu);
> +	}
>  
>  	if (enable_pmu) {
>  		/*

-- 
Jani Nikula, Intel
