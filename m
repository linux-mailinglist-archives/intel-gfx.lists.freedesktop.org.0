Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEB2BC71E6
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 03:34:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A51EE10E034;
	Thu,  9 Oct 2025 01:34:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HYK8IgAz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 403D710E034;
 Thu,  9 Oct 2025 01:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759973687; x=1791509687;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=eq1ErBn0paUoH1VyOJWvLBa1xZf5uLKYIdGW7A7Qi+M=;
 b=HYK8IgAz5dWv8Ico5dxrme5wzadCBpS52gFI3l8jBLoxLBP2gsAZKeMP
 FdOckDcJOqE7tvB13JKnxjU2ZkV7IaURsyxQlnhF6zEDHyzRp6nD2RB93
 ah0CiQ3tC077vTVJHu5+FEIzPJa08sGBPTP7cgDhsx9zEnAdsIU2SBCzI
 vjynCHPyIPJhNeOkAaxmTicvAStENuYTCx9Th32Fkb3XjriTMrHpYyvVt
 mo4AHxxh0lTYz5jGnOD9t6Lxo/VdzVHEIeDbT3cv33ZdZWEgzuu1KIlOk
 9q3UaQ5Q4Yk4OR8LzjfjlAgKmnqobtGKQUFuMcsZmMbKk4uTQF8XqjYn8 A==;
X-CSE-ConnectionGUID: jzr610rgSf24WykGpy6XWA==
X-CSE-MsgGUID: RuzK3DrBRiuigr+ZIwGusw==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="72789476"
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="72789476"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 18:34:47 -0700
X-CSE-ConnectionGUID: vzF1OKCdSPqPBTsdim5l8w==
X-CSE-MsgGUID: aU7v1SHWTUSeIllMAynIgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="179698971"
Received: from dapengmi-mobl1.ccr.corp.intel.com (HELO [10.124.232.209])
 ([10.124.232.209])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 18:34:44 -0700
Message-ID: <e9e8f087-60f6-455a-b0e0-e5c29fc54129@linux.intel.com>
Date: Thu, 9 Oct 2025 09:34:41 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: REGRESSION on linux-next (next-20250919)
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 Sean Christopherson <seanjc@google.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 Suresh Kumar Kurmi <suresh.kumar.kurmi@intel.com>,
 Jani Saarinen <jani.saarinen@intel.com>, lucas.demarchi@intel.com,
 linux-perf-users@vger.kernel.org, kvm@vger.kernel.org
References: <70b64347-2aca-4511-af78-a767d5fa8226@intel.com>
 <25af94f5-79e3-4005-964e-e77b1320a16e@linux.intel.com>
 <aNvyjkuDLOfxAANd@google.com>
 <3bbc4e6d-9f52-483c-a25d-166dca62fb25@intel.com>
 <00d0f3f3-d2b4-4885-9a49-5e6f8390142b@intel.com>
Content-Language: en-US
From: "Mi, Dapeng" <dapeng1.mi@linux.intel.com>
In-Reply-To: <00d0f3f3-d2b4-4885-9a49-5e6f8390142b@intel.com>
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


On 10/7/2025 2:22 PM, Borah, Chaitanya Kumar wrote:
> Hi,
>
> On 10/6/2025 1:33 PM, Borah, Chaitanya Kumar wrote:
>> Thank you for your responses.
>>
>> Following change fixes the issue for us.
>>
>>
>> diff --git a/arch/x86/kvm/pmu.c b/arch/x86/kvm/pmu.c
>> index 40ac4cb44ed2..487ad19a236e 100644
>> --- a/arch/x86/kvm/pmu.c
>> +++ b/arch/x86/kvm/pmu.c
>> @@ -108,16 +108,18 @@ void kvm_init_pmu_capability(const struct 
>> kvm_pmu_ops *pmu_ops)
>>          bool is_intel = boot_cpu_data.x86_vendor == X86_VENDOR_INTEL;
>>          int min_nr_gp_ctrs = pmu_ops->MIN_NR_GP_COUNTERS;
>>
>> -       perf_get_x86_pmu_capability(&kvm_host_pmu);
>> -
>>          /*
>>           * Hybrid PMUs don't play nice with virtualization without careful
>>           * configuration by userspace, and KVM's APIs for reporting 
>> supported
>>           * vPMU features do not account for hybrid PMUs.  Disable vPMU 
>> support
>>           * for hybrid PMUs until KVM gains a way to let userspace opt-in.
>>           */
>> -       if (cpu_feature_enabled(X86_FEATURE_HYBRID_CPU))
>> +       if (cpu_feature_enabled(X86_FEATURE_HYBRID_CPU)) {
>>                  enable_pmu = false;
>> +               memset(&kvm_host_pmu, 0, sizeof(kvm_host_pmu));
>> +       } else {
>> +               perf_get_x86_pmu_capability(&kvm_host_pmu);
>> +       }
> Can we expect a formal patch soon?

I'd like to post a patch to fix this tomorrow if Sean has no bandwidth on
this. Thanks.


>
> Regards
>
> Chaitanya
