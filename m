Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 276A9BCB4D8
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 02:47:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD14210EB3C;
	Fri, 10 Oct 2025 00:47:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nh9l7eec";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D33E10E253;
 Fri, 10 Oct 2025 00:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760057244; x=1791593244;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=6U1GR6HQN6L9uMYLb6utvpWeP7fXmMqpxnXNoNgTZ1c=;
 b=Nh9l7eecWVlT/1YXiwthoEyE8EBr0dfi5jce+LgIdb2vEZh0OhPVXS3a
 3UwieTlnyYR5AdkSNpjs7Zm2HTpUPDbtbP2svkeZ3dAQZM2C44MlYrHpz
 bBs9z673sWbQyI7iFY9w0BAJQ4p0jJa15HbJJbK2tZ8sAOgZHMFYGxoUk
 K9ZTP/0IEMlY42JTtkEImTXHB1h2w/6L0qNvZAzFrZvgxwdyBoymau16e
 rCkwHC39frvkie2ei26SHkrUB/8MlPkaSHwwGqFNXd8ZmkxM5YXrc6nP8
 mGaWzpNAHHvtzpEkclVdHCijIipl+yjsdtC87/Vf+JsAmFoWQFnJitDA8 w==;
X-CSE-ConnectionGUID: CNDrVmn4TuiVo5tku5aCVw==
X-CSE-MsgGUID: MmmCBC5TTempGUbZPCOl4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="62434275"
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="62434275"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 17:47:23 -0700
X-CSE-ConnectionGUID: Yk8PsyMMRRepxbxnTGcngg==
X-CSE-MsgGUID: f+0bBtuaSQK7CZA6fKmccQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="185225279"
Received: from unknown (HELO [10.238.2.75]) ([10.238.2.75])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 17:47:20 -0700
Message-ID: <cca2aa42-0e96-405d-a9aa-9d81b735b3ef@linux.intel.com>
Date: Fri, 10 Oct 2025 08:47:18 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: REGRESSION on linux-next (next-20250919)
To: Sean Christopherson <seanjc@google.com>
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 Suresh Kumar Kurmi <suresh.kumar.kurmi@intel.com>,
 Jani Saarinen <jani.saarinen@intel.com>, lucas.demarchi@intel.com,
 linux-perf-users@vger.kernel.org, kvm@vger.kernel.org
References: <70b64347-2aca-4511-af78-a767d5fa8226@intel.com>
 <25af94f5-79e3-4005-964e-e77b1320a16e@linux.intel.com>
 <aNvyjkuDLOfxAANd@google.com>
 <3bbc4e6d-9f52-483c-a25d-166dca62fb25@intel.com>
 <00d0f3f3-d2b4-4885-9a49-5e6f8390142b@intel.com>
 <e9e8f087-60f6-455a-b0e0-e5c29fc54129@linux.intel.com>
 <aOexe4LNpmJnHTm9@google.com>
Content-Language: en-US
From: "Mi, Dapeng" <dapeng1.mi@linux.intel.com>
In-Reply-To: <aOexe4LNpmJnHTm9@google.com>
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


On 10/9/2025 8:58 PM, Sean Christopherson wrote:
> On Thu, Oct 09, 2025, Dapeng Mi wrote:
>> On 10/7/2025 2:22 PM, Borah, Chaitanya Kumar wrote:
>>> Hi,
>>>
>>> On 10/6/2025 1:33 PM, Borah, Chaitanya Kumar wrote:
>>>> Thank you for your responses.
>>>>
>>>> Following change fixes the issue for us.
>>>>
>>>>
>>>> diff --git a/arch/x86/kvm/pmu.c b/arch/x86/kvm/pmu.c
>>>> index 40ac4cb44ed2..487ad19a236e 100644
>>>> --- a/arch/x86/kvm/pmu.c
>>>> +++ b/arch/x86/kvm/pmu.c
>>>> @@ -108,16 +108,18 @@ void kvm_init_pmu_capability(const struct 
>>>> kvm_pmu_ops *pmu_ops)
>>>>          bool is_intel = boot_cpu_data.x86_vendor == X86_VENDOR_INTEL;
>>>>          int min_nr_gp_ctrs = pmu_ops->MIN_NR_GP_COUNTERS;
>>>>
>>>> -       perf_get_x86_pmu_capability(&kvm_host_pmu);
>>>> -
>>>>          /*
>>>>           * Hybrid PMUs don't play nice with virtualization without careful
>>>>           * configuration by userspace, and KVM's APIs for reporting 
>>>> supported
>>>>           * vPMU features do not account for hybrid PMUs.  Disable vPMU 
>>>> support
>>>>           * for hybrid PMUs until KVM gains a way to let userspace opt-in.
>>>>           */
>>>> -       if (cpu_feature_enabled(X86_FEATURE_HYBRID_CPU))
>>>> +       if (cpu_feature_enabled(X86_FEATURE_HYBRID_CPU)) {
>>>>                  enable_pmu = false;
>>>> +               memset(&kvm_host_pmu, 0, sizeof(kvm_host_pmu));
>>>> +       } else {
>>>> +               perf_get_x86_pmu_capability(&kvm_host_pmu);
>>>> +       }
>>> Can we expect a formal patch soon?
>> I'd like to post a patch to fix this tomorrow if Sean has no bandwidth on
>> this. Thanks.
> Sorry, my bad, I was waiting for you to post a patch, but that wasn't at all
> clear.  So yeah, go ahead and post one :-)

Sure. Would post it now.


