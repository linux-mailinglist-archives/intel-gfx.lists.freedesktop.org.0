Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7969EA6349A
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Mar 2025 09:06:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3C7F10E051;
	Sun, 16 Mar 2025 08:06:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ffEZJgsD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B37410E051;
 Sun, 16 Mar 2025 08:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742112408; x=1773648408;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=azyn019Mg37xRw6TNN+LFuApnUtpfUc20/IMj7YR9EM=;
 b=ffEZJgsDt0lbE9aKH23vqbYaM2HVucMxo4+YmNDLg4kwLZ6AXkUyWObg
 IgEQOJnUeTJ2m2N8Bl1YbbXolwjhP5y06L3VQtSytrwZ/r/hAhB7kQqod
 pqwLWvo2h2ygsrVk1NYLkluAgbn8K6JIPLwFrJbSDF0gxZ0lQHm72NLRR
 w0y926IV4JeO64Mr7+InRQzHb7IwdO+pb5JtfSvRMhRavv5jiWLViXRWp
 52qtx3Iu4i8JWFSh/guCA2h1ucQKER6sTlFu4wC/aP6KB1dV4ywTyQ0EQ
 gZNUQDjIgzwgf43HU79Gxc6QBpSuWvmAiGGaXa5X8CDhUXFMmR46hyCtT w==;
X-CSE-ConnectionGUID: yqYMPlG3To2STnE0hAHO6Q==
X-CSE-MsgGUID: JCCsRySmSyOKwpadbk7zFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11374"; a="60618507"
X-IronPort-AV: E=Sophos;i="6.14,251,1736841600"; d="scan'208";a="60618507"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2025 01:06:46 -0700
X-CSE-ConnectionGUID: WYxtG2V4Si60eLOgFPpofQ==
X-CSE-MsgGUID: zMl26X6aSq2BNbdoPqIfBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,251,1736841600"; d="scan'208";a="121858051"
Received: from allen-sbox.sh.intel.com (HELO [10.239.159.30]) ([10.239.159.30])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2025 01:06:44 -0700
Message-ID: <7db3b702-51e1-4c0d-8e0a-578239247587@linux.intel.com>
Date: Sun, 16 Mar 2025 16:03:21 +0800
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
Content-Language: en-US
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <SJ1PR11MB61299D9421F7B3DEA6424389B9DC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
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

On 3/16/25 15:27, Borah, Chaitanya Kumar wrote:
> 
>> -----Original Message-----
>> From: Baolu Lu<baolu.lu@linux.intel.com>
>> Sent: Sunday, March 16, 2025 8:04 AM
>> To: Borah, Chaitanya Kumar<chaitanya.kumar.borah@intel.com>
>> Cc:intel-gfx@lists.freedesktop.org;intel-xe@lists.freedesktop.org;
>> iommu@lists.linux.dev
>> Subject: Re: Regression on drm-tip
>>
>> On 3/14/25 17:04, Borah, Chaitanya Kumar wrote:
>>>
>>>> -----Original Message-----
>>>> From: Baolu Lu<baolu.lu@linux.intel.com>
>>>> Sent: Thursday, March 13, 2025 7:53 PM
>>>> To: Borah, Chaitanya Kumar<chaitanya.kumar.borah@intel.com>
>>>> Cc:baolu.lu@linux.intel.com;intel-gfx@lists.freedesktop.org; intel-
>>>> xe@lists.freedesktop.org;iommu@lists.linux.dev
>>>> Subject: Re: Regression on drm-tip
>>>>
>>>> On 2025/3/13 16:51, Borah, Chaitanya Kumar wrote:
>>>>> Hello Lu,
>>>>>
>>>>> Hope you are doing well. I am Chaitanya from the linux graphics team
>>>>> in
>>>> Intel.
>>>>> This mail is regarding a regression we are seeing in our CI runs[1]
>>>>> on drm-tip
>>>> repository.
>>>>> ````````````````````````````````````````````````````````````````````
>>>>> `` ``````````` <4>[    2.856622] WARNING: possible circular locking
>>>>> dependency detected <4>[    2.856631]
>>>>> 6.14.0-rc5-CI_DRM_16217-gc55ef90b69d3+ #1 Tainted: G          I <4>[
>>>>> 2.856642] ------------------------------------------------------
>>>>> <4>[    2.856650] swapper/0/1 is trying to acquire lock:
>>>>> <4>[    2.856657] ffffffff8360ecc8
>>>>> (iommu_probe_device_lock){+.+.}-{3:3}, at:
>>>>> iommu_probe_device+0x1d/0x70 <4>[    2.856679]
>>>>>                      but task is already holding lock:
>>>>> <4>[    2.856686] ffff888102ab6fa8
>>>>> (&device->physical_node_lock){+.+.}-{3:3}, at:
>>>>> intel_iommu_init+0xea1/0x1220
>>>>> ````````````````````````````````````````````````````````````````````
>>>>> ``
>>>>> ```````````
>>>>> Details log can be found in [2].
>>>>>
>>>>> After bisecting the tree, the following patch [3] seems to be the
>>>>> first "bad" commit
>>>>>
>>>>> ````````````````````````````````````````````````````````````````````
>>>>> ``
>>>>> ```````````````````````````````````
>>>>> commit b150654f74bf0df8e6a7936d5ec51400d9ec06d8
>>>>> Author: LuBaolumailto:baolu.lu@linux.intel.com
>>>>> Date:   Fri Feb 28 18:27:26 2025 +0800
>>>>>
>>>>>        iommu/vt-d: Fix suspicious RCU usage
>>>>>
>>>>> ````````````````````````````````````````````````````````````````````
>>>>> ``
>>>>> ```````````````````````````````````
>>>>>
>>>>> We also verified that if we revert the patch the issue is not seen.
>>>>>
>>>>> Could you please check why the patch causes this regression and
>>>>> provide a
>>>> fix if necessary?
>>>>
>>>> Can you please take a quick test to check if the following fix works?
>>>>
>>>> diff --git a/drivers/iommu/intel/dmar.c b/drivers/iommu/intel/dmar.c
>>>> index
>>>> e540092d664d..06debeaec643 100644
>>>> --- a/drivers/iommu/intel/dmar.c
>>>> +++ b/drivers/iommu/intel/dmar.c
>>>> @@ -2051,8 +2051,13 @@ int enable_drhd_fault_handling(unsigned int
>> cpu)
>>>>                    if (iommu->irq || iommu->node != cpu_to_node(cpu))
>>>>                            continue;
>>>>
>>>> +               /*
>>>> +                * Call dmar_alloc_hwirq() with dmar_global_lock held,
>>>> +                * could cause possible lock race condition.
>>>> +                */
>>>> +               up_read(&dmar_global_lock);
>>>>                    ret = dmar_set_interrupt(iommu);
>>>> -
>>>> +               down_read(&dmar_global_lock);
>>>>                    if (ret) {
>>>>                            pr_err("DRHD %Lx: failed to enable fault, interrupt, ret
>> %d\n",
>>>>                                   (unsigned long
>>>> long)drhd->reg_base_addr, ret);
>>>>
>>>> Thanks,
>>>> baolu
>>> We still see the issue with this change.
>> I am attempting to reproduce this issue with my MTL machine. I pulled the
>> test branch from:
>>
>> https://anongit.freedesktop.org/git/drm-tip.git
>>
>> and built the test kernel image using the configuration file from:
>>
>> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16217/kconfig.txt
>>
>> But I did not observe the lockdep splat mentioned above after booting.
>>
>> Is there anything I might have missed?
>>
> +Suresh, Jani, Lucas
> 
> We are seeing this only the skykale and kabylake on our CI runs.

If so, will below change make any difference?

diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
index 85aa66ef4d61..ec2f385ae25b 100644
--- a/drivers/iommu/intel/iommu.c
+++ b/drivers/iommu/intel/iommu.c
@@ -3049,6 +3049,7 @@ static int __init probe_acpi_namespace_devices(void)
                         if (dev->bus != &acpi_bus_type)
                                 continue;

+                       up_read(&dmar_global_lock);
                         adev = to_acpi_device(dev);
                         mutex_lock(&adev->physical_node_lock);
                         list_for_each_entry(pn,
@@ -3058,6 +3059,7 @@ static int __init probe_acpi_namespace_devices(void)
                                         break;
                         }
                         mutex_unlock(&adev->physical_node_lock);
+                       down_read(&dmar_global_lock);

                         if (ret)
                                 return ret;

Thanks,
baolu
