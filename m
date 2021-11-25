Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AE845D7DC
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Nov 2021 11:00:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 810B96EADF;
	Thu, 25 Nov 2021 10:00:48 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 600586EADF;
 Thu, 25 Nov 2021 10:00:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="298890401"
X-IronPort-AV: E=Sophos;i="5.87,262,1631602800"; d="scan'208";a="298890401"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2021 02:00:17 -0800
X-IronPort-AV: E=Sophos;i="5.87,262,1631602800"; d="scan'208";a="510236544"
Received: from dlathrox-mobl1.amr.corp.intel.com (HELO [10.212.122.191])
 ([10.212.122.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2021 02:00:16 -0800
Message-ID: <5651f774-1554-1cd1-b6b2-923de4891249@linux.intel.com>
Date: Thu, 25 Nov 2021 10:00:14 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Lu Baolu <baolu.lu@linux.intel.com>, Intel-gfx@lists.freedesktop.org
References: <20211109121759.170915-1-tvrtko.ursulin@linux.intel.com>
 <6e8c55a7-45b6-57ab-35f7-d522401efccb@linux.intel.com>
 <4d1a0ab9-e0d8-2ed9-1fc4-9ffaf2f19bef@linux.intel.com>
 <7b2e1427-69cf-8f5d-0c15-73c4e602953d@linux.intel.com>
 <2a1ae709-19f8-7983-b171-98ec2f3f010a@linux.intel.com>
 <4c5ab72f-aaff-8b92-7471-44dd907cf2f6@linux.intel.com>
 <24c75ce7-1b14-42e1-a4d4-943e472aed68@linux.intel.com>
 <2a99dbb9-9ed2-2e3e-b329-21730056d940@linux.intel.com>
 <58616bdc-1150-46dd-5e48-b05f20dc9bc9@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <58616bdc-1150-46dd-5e48-b05f20dc9bc9@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use per device iommu check
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 12/11/2021 13:40, Tvrtko Ursulin wrote:
> 
> On 12/11/2021 00:53, Lu Baolu wrote:
>> On 11/11/21 11:06 PM, Tvrtko Ursulin wrote:
>>>
>>> On 10/11/2021 12:35, Lu Baolu wrote:
>>>> On 2021/11/10 20:08, Tvrtko Ursulin wrote:
>>>>>
>>>>> On 10/11/2021 12:04, Lu Baolu wrote:
>>>>>> On 2021/11/10 17:30, Tvrtko Ursulin wrote:
>>>>>>>
>>>>>>> On 10/11/2021 07:12, Lu Baolu wrote:
>>>>>>>> Hi Tvrtko,
>>>>>>>>
>>>>>>>> On 2021/11/9 20:17, Tvrtko Ursulin wrote:
>>>>>>>>> From: Tvrtko Ursulin<tvrtko.ursulin@intel.com>
>>>>>>>>>
>>>>>>>>> On igfx + dgfx setups, it appears that intel_iommu=igfx_off 
>>>>>>>>> option only
>>>>>>>>> disables the igfx iommu. Stop relying on global 
>>>>>>>>> intel_iommu_gfx_mapped
>>>>>>>>> and probe presence of iommu domain per device to accurately 
>>>>>>>>> reflect its
>>>>>>>>> status.
>>>>>>>>>
>>>>>>>>> Signed-off-by: Tvrtko Ursulin<tvrtko.ursulin@intel.com>
>>>>>>>>> Cc: Lu Baolu<baolu.lu@linux.intel.com>
>>>>>>>>> ---
>>>>>>>>> Baolu, is my understanding here correct? Maybe I am confused by 
>>>>>>>>> both
>>>>>>>>> intel_iommu_gfx_mapped and dmar_map_gfx being globals in the 
>>>>>>>>> intel_iommu
>>>>>>>>> driver. But it certainly appears the setup can assign some 
>>>>>>>>> iommu ops (and
>>>>>>>>> assign the discrete i915 to iommu group) when those two are set 
>>>>>>>>> to off.
>>>>>>>>
>>>>>>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h 
>>>>>>>> b/drivers/gpu/drm/i915/i915_drv.h
>>>>>>>> index e967cd08f23e..9fb38a54f1fe 100644
>>>>>>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>>>>>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>>>>>>> @@ -1763,26 +1763,27 @@ static inline bool run_as_guest(void)
>>>>>>>>   #define HAS_D12_PLANE_MINIMIZATION(dev_priv) 
>>>>>>>> (IS_ROCKETLAKE(dev_priv) || \
>>>>>>>>                             IS_ALDERLAKE_S(dev_priv))
>>>>>>>>
>>>>>>>> -static inline bool intel_vtd_active(void)
>>>>>>>> +static inline bool intel_vtd_active(struct drm_i915_private *i915)
>>>>>>>>   {
>>>>>>>> -#ifdef CONFIG_INTEL_IOMMU
>>>>>>>> -    if (intel_iommu_gfx_mapped)
>>>>>>>> +    if (iommu_get_domain_for_dev(i915->drm.dev))
>>>>>>>>           return true;
>>>>>>>> -#endif
>>>>>>>>
>>>>>>>>       /* Running as a guest, we assume the host is enforcing 
>>>>>>>> VT'd */
>>>>>>>>       return run_as_guest();
>>>>>>>>   }
>>>>>>>>
>>>>>>>> Have you verified this change? I am afraid that
>>>>>>>> iommu_get_domain_for_dev() always gets a valid iommu domain even
>>>>>>>> intel_iommu_gfx_mapped == 0.
>>>>>>>
>>>>>>> Yes it seems to work as is:
>>>>>>>
>>>>>>> default:
>>>>>>>
>>>>>>> # grep -i iommu /sys/kernel/debug/dri/*/i915_capabilities
>>>>>>> /sys/kernel/debug/dri/0/i915_capabilities:iommu: enabled
>>>>>>> /sys/kernel/debug/dri/1/i915_capabilities:iommu: enabled
>>>>>>>
>>>>>>> intel_iommu=igfx_off:
>>>>>>>
>>>>>>> # grep -i iommu /sys/kernel/debug/dri/*/i915_capabilities
>>>>>>> /sys/kernel/debug/dri/0/i915_capabilities:iommu: disabled
>>>>>>> /sys/kernel/debug/dri/1/i915_capabilities:iommu: enabled
>>>>>>>
>>>>>>> On my system dri device 0 is integrated graphics and 1 is discrete.
>>>>>>
>>>>>> The drm device 0 has a dedicated iommu. When the user request igfx 
>>>>>> not
>>>>>> mapped, the VT-d implementation will turn it off to save power. 
>>>>>> But for
>>>>>> shared iommu, you definitely will get it enabled.
>>>>>
>>>>> Sorry I am not following, what exactly do you mean? Is there a 
>>>>> platform with integrated graphics without a dedicated iommu, in 
>>>>> which case intel_iommu=igfx_off results in intel_iommu_gfx_mapped 
>>>>> == 0 and iommu_get_domain_for_dev returning non-NULL?
>>>>
>>>> Your code always work for an igfx with a dedicated iommu. This might be
>>>> always true on today's platforms. But from driver's point of view, we
>>>> should not make such assumption.
>>>>
>>>> For example, if the iommu implementation decides not to turn off the
>>>> graphic iommu (perhaps due to some hw quirk or for graphic
>>>> virtualization), your code will be broken.
>>>
>>> I tried your suggestion (checking for __IOMMU_DOMAIN_PAGING) and it 
>>> works better, however I have observed one odd behaviour (for me at 
>>> least).
>>>
>>> In short - why does the DMAR mode for the discrete device change 
>>> depending on igfx_off parameter?
>>>
>>> Consider the laptop has these two graphics cards:
>>>
>>> # cat /sys/kernel/debug/dri/0/name
>>> i915 dev=0000:00:02.0 unique=0000:00:02.0 # integrated
>>>
>>> # cat /sys/kernel/debug/dri/1/name
>>> i915 dev=0000:03:00.0 unique=0000:03:00.0 # discrete
>>>
>>> Booting with different options:
>>> ===============================
>>>
>>> default / intel_iommu=on
>>> ------------------------
>>>
>>> # cat /sys/class/iommu/dmar0/devices/0000:00:02.0/iommu_group/type
>>> DMA-FQ
>>> # cat /sys/class/iommu/dmar2/devices/0000:03:00.0/iommu_group/type
>>> DMA-FQ
>>>
>>> # grep -i iommu /sys/kernel/debug/dri/*/i915_capabilities
>>> /sys/kernel/debug/dri/0/i915_capabilities:iommu: enabled
>>> /sys/kernel/debug/dri/1/i915_capabilities:iommu: enabled
>>>
>>> All good.
>>>
>>> intel_iommu=igfx_off
>>> --------------------
>>>
>>> ## no dmar0 in sysfs
>>> # cat /sys/class/iommu/dmar2/devices/0000:03:00.0/iommu_group/type
>>> identity
>>>
>>> Unexpected!?
>>>
>>> # grep -i iommu /sys/kernel/debug/dri/*/i915_capabilities
>>> /sys/kernel/debug/dri/0/i915_capabilities:iommu: disabled
>>> /sys/kernel/debug/dri/1/i915_capabilities:iommu: disabled # At least 
>>> the i915 patch detects it correctly.
>>>
>>> intel_iommu=off
>>> ---------------
>>>
>>> ## no dmar0 in sysfs
>>> ## no dmar2 in sysfs
>>>
>>> # grep -i iommu /sys/kernel/debug/dri/*/i915_capabilities
>>> /sys/kernel/debug/dri/0/i915_capabilities:iommu: disabled
>>> /sys/kernel/debug/dri/1/i915_capabilities:iommu: disabled
>>>
>>> All good.
>>>
>>> The fact discrete graphics changes from translated to pass-through 
>>> when igfx_off is set is surprising to me. Is this a bug?
>>
>> The existing VT-d implementation doesn't distinguish igfx from dgfx. It
>> only checks whether the device is of a display class:
>>
>> #define IS_GFX_DEVICE(pdev) ((pdev->class >> 16) == 
>> PCI_BASE_CLASS_DISPLAY)
>>
>> When igfx_off is specified, all graphic devices will put into pass-
>> through (the same meaning as identity mapping) mode. For igfx, since
>> the iommu is always dedicated, hence it further turn off the iommu
>> (hence there's no iommu domain) to save power.
> 
> Ah okay. Is this something we want to change/fix?

Ping on this - don't we want to fix igfx_off option to not apply to 
discrete GPUs?

Regards,

Tvrtko
