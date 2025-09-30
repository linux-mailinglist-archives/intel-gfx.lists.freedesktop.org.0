Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D245BABF25
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Sep 2025 10:03:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 875CA89C83;
	Tue, 30 Sep 2025 08:03:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nTeP0hJ2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2D7089C83;
 Tue, 30 Sep 2025 08:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759219432; x=1790755432;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=blP+1aXofxiRorje2aYnseFkYVpT/JKUFVCD4egWEjQ=;
 b=nTeP0hJ2krYH7p62iXjngQbDNZuWiEo7cf+Bk4SgK4qf/0ON0xBl6D76
 2eFuPr9OCKvG+6EGAn4o1olUj7cdUI+L7p+IeHPQNf6DvQZYRzfZ6ugPm
 thC1XxY1gumSljRzM7gAY9/Hgf281VJBoZI4fuT/NxGWD2cQ5Vgktlje6
 HZfBja28jVhI0dWDbH1Nwa0wFcJ966hg1eTgPGOn7f+tVTsWuJHLBsSfx
 PIe+EvfwOG5AQ2vuwg9a0CcC9l1aF5o96Te97ngebCZUbzcXoTShYji8R
 eBNWn3HGqn9MBPgBdQu1DE9xARDY976hcWUap1z9shpGd4Guhd9REllCf g==;
X-CSE-ConnectionGUID: uPCdJpXASyuQuWPc1MX3Vg==
X-CSE-MsgGUID: 98UFM6UMSrKMEqNJ8r0SrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="61513025"
X-IronPort-AV: E=Sophos;i="6.18,303,1751266800"; d="scan'208";a="61513025"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 01:03:51 -0700
X-CSE-ConnectionGUID: Kj2Zd/VZQyyjrU7daZGOAA==
X-CSE-MsgGUID: NGO99cVCSIqbreozRJzEQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,303,1751266800"; d="scan'208";a="182877217"
Received: from dapengmi-mobl1.ccr.corp.intel.com (HELO [10.124.232.209])
 ([10.124.232.209])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 01:03:48 -0700
Message-ID: <25af94f5-79e3-4005-964e-e77b1320a16e@linux.intel.com>
Date: Tue, 30 Sep 2025 16:03:45 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: REGRESSION on linux-next (next-20250919)
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 seanjc@google.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, lucas.demarchi@intel.com,
 linux-perf-users@vger.kernel.org, kvm@vger.kernel.org
References: <70b64347-2aca-4511-af78-a767d5fa8226@intel.com>
Content-Language: en-US
From: "Mi, Dapeng" <dapeng1.mi@linux.intel.com>
In-Reply-To: <70b64347-2aca-4511-af78-a767d5fa8226@intel.com>
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


On 9/30/2025 1:30 PM, Borah, Chaitanya Kumar wrote:
> Hello Sean,
>
> Hope you are doing well. I am Chaitanya from the linux graphics team in 
> Intel.
>
> This mail is regarding a regression we are seeing in our CI runs[1] on
> linux-next repository.
>
> Since the version next-20250919 [2], we are seeing the following regression
>
> `````````````````````````````````````````````````````````````````````````````````
> <4>[   10.973827] ------------[ cut here ]------------
> <4>[   10.973841] WARNING: arch/x86/events/core.c:3089 at 
> perf_get_x86_pmu_capability+0xd/0xc0, CPU#15: (udev-worker)/386
> ...
> <4>[   10.974028] Call Trace:
> <4>[   10.974030]  <TASK>
> <4>[   10.974033]  ? kvm_init_pmu_capability+0x2b/0x190 [kvm]
> <4>[   10.974154]  kvm_x86_vendor_init+0x1b0/0x1a40 [kvm]
> <4>[   10.974248]  vmx_init+0xdb/0x260 [kvm_intel]
> <4>[   10.974278]  ? __pfx_vt_init+0x10/0x10 [kvm_intel]
> <4>[   10.974296]  vt_init+0x12/0x9d0 [kvm_intel]
> <4>[   10.974309]  ? __pfx_vt_init+0x10/0x10 [kvm_intel]
> <4>[   10.974322]  do_one_initcall+0x60/0x3f0
> <4>[   10.974335]  do_init_module+0x97/0x2b0
> <4>[   10.974345]  load_module+0x2d08/0x2e30
> <4>[   10.974349]  ? __kernel_read+0x158/0x2f0
> <4>[   10.974370]  ? kernel_read_file+0x2b1/0x320
> <4>[   10.974381]  init_module_from_file+0x96/0xe0
> <4>[   10.974384]  ? init_module_from_file+0x96/0xe0
> <4>[   10.974399]  idempotent_init_module+0x117/0x330
> <4>[   10.974415]  __x64_sys_finit_module+0x73/0xe0
> ...
> `````````````````````````````````````````````````````````````````````````````````
> Details log can be found in [3].
>
> After bisecting the tree, the following patch [4] seems to be the first 
> "bad" commit
>
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
>  From 51f34b1e650fc5843530266cea4341750bd1ae37 Mon Sep 17 00:00:00 2001
>
> From: Sean Christopherson <seanjc@google.com>
>
> Date: Wed, 6 Aug 2025 12:56:39 -0700
>
> Subject: KVM: x86/pmu: Snapshot host (i.e. perf's) reported PMU capabilities
>
> Take a snapshot of the unadulterated PMU capabilities provided by perf so
> that KVM can compare guest vPMU capabilities against hardware capabilities
> when determining whether or not to intercept PMU MSRs (and RDPMC).
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
>
> We also verified that if we revert the patch the issue is not seen.
>
> Could you please check why the patch causes this regression and provide 
> a fix if necessary?

Hi Chaitanya,

I suppose you found this warning on a hybrid client platform, right? It
looks the warning is triggered by the below WARN_ON_ONCE() in
perf_get_x86_pmu_capability() function.

  if (WARN_ON_ONCE(cpu_feature_enabled(X86_FEATURE_HYBRID_CPU)) ||
        !x86_pmu_initialized()) {
        memset(cap, 0, sizeof(*cap));
        return;
    }

The below change should fix it (just building, not test it). I would run a
full scope vPMU test after I come back from China national day's holiday.
Thanks.

diff --git a/arch/x86/kvm/pmu.c b/arch/x86/kvm/pmu.c
index cebce7094de8..6d87c25226d8 100644
--- a/arch/x86/kvm/pmu.c
+++ b/arch/x86/kvm/pmu.c
@@ -108,8 +108,6 @@ void kvm_init_pmu_capability(struct kvm_pmu_ops *pmu_ops)
        bool is_intel = boot_cpu_data.x86_vendor == X86_VENDOR_INTEL;
        int min_nr_gp_ctrs = pmu_ops->MIN_NR_GP_COUNTERS;

-       perf_get_x86_pmu_capability(&kvm_host_pmu);
-
        /*
         * Hybrid PMUs don't play nice with virtualization without careful
         * configuration by userspace, and KVM's APIs for reporting supported
@@ -120,6 +118,8 @@ void kvm_init_pmu_capability(struct kvm_pmu_ops *pmu_ops)
                enable_pmu = false;

        if (enable_pmu) {
+               perf_get_x86_pmu_capability(&kvm_host_pmu);
+
                /*
                 * WARN if perf did NOT disable hardware PMU if the number of
                 * architecturally required GP counters aren't present, i.e. if


>
> Thank you.
>
> Regards
>
> Chaitanya
>
> [1]
> https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
> [2] 
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250919
> [3]
> https://intel-gfx-ci.01.org/tree/linux-next/next-20250919/bat-arlh-2/boot0.txt
> [4] 
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250919&id=51f34b1e650fc5843530266cea4341750bd1ae37
>
