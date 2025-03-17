Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BFAA63DDC
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Mar 2025 05:08:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABE5510E2C7;
	Mon, 17 Mar 2025 04:08:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ED/fDL+7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 805B210E2C7;
 Mon, 17 Mar 2025 04:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742184490; x=1773720490;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Q+NFRkJhdROpPNZnI+Lvy+dWL8oooEG2BSiN8YH993s=;
 b=ED/fDL+71Rwyqa6VNEU0paImWBwm7LSRgEwlHnu+8FTLKWfQ1QX23Jd8
 SnOG+uNJzlZ5ncICe0ZUuEU7ausy6XCn3yhU6eI61Un/utEU4dpbFAcix
 jy8oLkn78PD0DueuSnmDoTv2y59CkFz4zERSraTgrES1dIeDK6Pyx0Kro
 ylVHFNmcieTtlrigcR/5G9LtkOZkTJhKNGq7KuR7k8AhoZbmBGj341VRc
 AUGZaAeC2bUXlO1mBOjiDDqsX8gsbu+1uFjCDTzv4BmlJIRXim5r07Ofn
 dwjD271mUrClunbFjhJijptX22CHIDnjRt2VX7sYZHYrl7fzw+Omm99/6 g==;
X-CSE-ConnectionGUID: 8xhL+XlSSe+GubnlyAfoGw==
X-CSE-MsgGUID: 9Bqf2kBfTba4uYdUldHyQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11375"; a="43365380"
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="43365380"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2025 21:08:07 -0700
X-CSE-ConnectionGUID: Wz67EZ8bQ7+NZTALdMTNNg==
X-CSE-MsgGUID: q6h9fHPSQ5Gaix7CJLfECw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="121848156"
Received: from allen-sbox.sh.intel.com (HELO [10.239.159.30]) ([10.239.159.30])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2025 21:08:04 -0700
Message-ID: <ec6e3bb6-8093-4082-b09f-26068693b83c@linux.intel.com>
Date: Mon, 17 Mar 2025 12:04:40 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Regression on drm-tip
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
References: <SJ1PR11MB612953431F94F18C954C4A9CB9D32@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <4951eb3c-aa2b-46cf-87bd-37b09447748d@linux.intel.com>
 <SJ1PR11MB6129AAF87542D06B7A23C0FCB9D22@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <5e6d65b6-4f9a-4d23-925c-75be7c4bd561@linux.intel.com>
 <SJ1PR11MB61299D9421F7B3DEA6424389B9DC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <7db3b702-51e1-4c0d-8e0a-578239247587@linux.intel.com>
 <SJ1PR11MB6129A28720CF33982397E777B9DC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
Content-Language: en-US
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <SJ1PR11MB6129A28720CF33982397E777B9DC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
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

On 3/16/25 18:01, Borah, Chaitanya Kumar wrote:
> 
>> -----Original Message-----
>> From: Baolu Lu<baolu.lu@linux.intel.com>
>> Sent: Sunday, March 16, 2025 1:33 PM
>> To: Borah, Chaitanya Kumar<chaitanya.kumar.borah@intel.com>
>> Cc:intel-gfx@lists.freedesktop.org;intel-xe@lists.freedesktop.org;
>> iommu@lists.linux.dev; Kurmi, Suresh Kumar
>> <suresh.kumar.kurmi@intel.com>; Saarinen, Jani<jani.saarinen@intel.com>;
>> De Marchi, Lucas<lucas.demarchi@intel.com>
>> Subject: Re: Regression on drm-tip
>>
>> On 3/16/25 15:27, Borah, Chaitanya Kumar wrote:
>>>> -----Original Message-----
>>>> From: Baolu Lu<baolu.lu@linux.intel.com>
>>>> Sent: Sunday, March 16, 2025 8:04 AM
>>>> To: Borah, Chaitanya Kumar<chaitanya.kumar.borah@intel.com>
>>>> Cc:intel-gfx@lists.freedesktop.org;intel-xe@lists.freedesktop.org;
>>>> iommu@lists.linux.dev
>>>> Subject: Re: Regression on drm-tip
>>>>
>>>> On 3/14/25 17:04, Borah, Chaitanya Kumar wrote:
>>>>>> -----Original Message-----
>>>>>> From: Baolu Lu<baolu.lu@linux.intel.com>
>>>>>> Sent: Thursday, March 13, 2025 7:53 PM
>>>>>> To: Borah, Chaitanya Kumar<chaitanya.kumar.borah@intel.com>
>>>>>> Cc:baolu.lu@linux.intel.com;intel-gfx@lists.freedesktop.org; intel-
>>>>>> xe@lists.freedesktop.org;iommu@lists.linux.dev
>>>>>> Subject: Re: Regression on drm-tip
>>>>>>
>>>>>> On 2025/3/13 16:51, Borah, Chaitanya Kumar wrote:
>>>>>>> Hello Lu,
>>>>>>>
>>>>>>> Hope you are doing well. I am Chaitanya from the linux graphics
>>>>>>> team in
>>>>>> Intel.
>>>>>>> This mail is regarding a regression we are seeing in our CI
>>>>>>> runs[1] on drm-tip
>>>>>> repository.
>>>>>>> ``````````````````````````````````````````````````````````````````
>>>>>>> `` `` ``````````` <4>[    2.856622] WARNING: possible circular
>>>>>>> locking dependency detected <4>[    2.856631]
>>>>>>> 6.14.0-rc5-CI_DRM_16217-gc55ef90b69d3+ #1 Tainted: G          I
>>>>>>> <4>[ 2.856642]
>>>>>>> ------------------------------------------------------
>>>>>>> <4>[    2.856650] swapper/0/1 is trying to acquire lock:
>>>>>>> <4>[    2.856657] ffffffff8360ecc8
>>>>>>> (iommu_probe_device_lock){+.+.}-{3:3}, at:
>>>>>>> iommu_probe_device+0x1d/0x70 <4>[    2.856679]
>>>>>>>                       but task is already holding lock:
>>>>>>> <4>[    2.856686] ffff888102ab6fa8
>>>>>>> (&device->physical_node_lock){+.+.}-{3:3}, at:
>>>>>>> intel_iommu_init+0xea1/0x1220
>>>>>>> ``````````````````````````````````````````````````````````````````
>>>>>>> ``
>>>>>>> ``
>>>>>>> ```````````
>>>>>>> Details log can be found in [2].
>>>>>>>
>>>>>>> After bisecting the tree, the following patch [3] seems to be the
>>>>>>> first "bad" commit
>>>>>>>
>>>>>>> ``````````````````````````````````````````````````````````````````
>>>>>>> ``
>>>>>>> ``
>>>>>>> ```````````````````````````````````
>>>>>>> commit b150654f74bf0df8e6a7936d5ec51400d9ec06d8
>>>>>>> Author:LuBaolumailto:baolu.lu@linux.intel.com
>>>>>>> Date:   Fri Feb 28 18:27:26 2025 +0800
>>>>>>>
>>>>>>>         iommu/vt-d: Fix suspicious RCU usage
>>>>>>>
>>>>>>> ``````````````````````````````````````````````````````````````````
>>>>>>> ``
>>>>>>> ``
>>>>>>> ```````````````````````````````````
>>>>>>>
>>>>>>> We also verified that if we revert the patch the issue is not seen.
>>>>>>>
>>>>>>> Could you please check why the patch causes this regression and
>>>>>>> provide a
>>>>>> fix if necessary?
>>>>>>
>>>>>> Can you please take a quick test to check if the following fix works?
>>>>>>
>>>>>> diff --git a/drivers/iommu/intel/dmar.c
>>>>>> b/drivers/iommu/intel/dmar.c index
>>>>>> e540092d664d..06debeaec643 100644
>>>>>> --- a/drivers/iommu/intel/dmar.c
>>>>>> +++ b/drivers/iommu/intel/dmar.c
>>>>>> @@ -2051,8 +2051,13 @@ int enable_drhd_fault_handling(unsigned int
>>>> cpu)
>>>>>>                     if (iommu->irq || iommu->node != cpu_to_node(cpu))
>>>>>>                             continue;
>>>>>>
>>>>>> +               /*
>>>>>> +                * Call dmar_alloc_hwirq() with dmar_global_lock held,
>>>>>> +                * could cause possible lock race condition.
>>>>>> +                */
>>>>>> +               up_read(&dmar_global_lock);
>>>>>>                     ret = dmar_set_interrupt(iommu);
>>>>>> -
>>>>>> +               down_read(&dmar_global_lock);
>>>>>>                     if (ret) {
>>>>>>                             pr_err("DRHD %Lx: failed to enable
>>>>>> fault, interrupt, ret
>>>> %d\n",
>>>>>>                                    (unsigned long
>>>>>> long)drhd->reg_base_addr, ret);
>>>>>>
>>>>>> Thanks,
>>>>>> baolu
>>>>> We still see the issue with this change.
>>>> I am attempting to reproduce this issue with my MTL machine. I pulled
>>>> the test branch from:
>>>>
>>>> https://anongit.freedesktop.org/git/drm-tip.git
>>>>
>>>> and built the test kernel image using the configuration file from:
>>>>
>>>> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16217/kconfig.txt
>>>>
>>>> But I did not observe the lockdep splat mentioned above after booting.
>>>>
>>>> Is there anything I might have missed?
>>>>
>>> +Suresh, Jani, Lucas
>>>
>>> We are seeing this only the skykale and kabylake on our CI runs.
>> If so, will below change make any difference?
>>
>> diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
>> index 85aa66ef4d61..ec2f385ae25b 100644
>> --- a/drivers/iommu/intel/iommu.c
>> +++ b/drivers/iommu/intel/iommu.c
>> @@ -3049,6 +3049,7 @@ static int __init
>> probe_acpi_namespace_devices(void)
>>                           if (dev->bus != &acpi_bus_type)
>>                                   continue;
>>
>> +                       up_read(&dmar_global_lock);
>>                           adev = to_acpi_device(dev);
>>                           mutex_lock(&adev->physical_node_lock);
>>                           list_for_each_entry(pn, @@ -3058,6 +3059,7 @@ static int __init
>> probe_acpi_namespace_devices(void)
>>                                           break;
>>                           }
>>                           mutex_unlock(&adev->physical_node_lock);
>> +                       down_read(&dmar_global_lock);
>>
>>                           if (ret)
>>                                   return ret;
>>
> Thank you for the change. This seems to be working. Can we expect a fix patch soon?

Sure. I have posted a fix patch here,

https://lore.kernel.org/linux-iommu/20250317035714.1041549-1-baolu.lu@linux.intel.com/

Thanks,
baolu
