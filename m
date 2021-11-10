Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A7444C163
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Nov 2021 13:35:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B48536E104;
	Wed, 10 Nov 2021 12:35:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B721F6E441;
 Wed, 10 Nov 2021 12:35:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10163"; a="219553381"
X-IronPort-AV: E=Sophos;i="5.87,223,1631602800"; d="scan'208";a="219553381"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2021 04:35:13 -0800
X-IronPort-AV: E=Sophos;i="5.87,223,1631602800"; d="scan'208";a="503947510"
Received: from blu2-mobl3.ccr.corp.intel.com (HELO [10.254.212.217])
 ([10.254.212.217])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2021 04:35:11 -0800
Message-ID: <4c5ab72f-aaff-8b92-7471-44dd907cf2f6@linux.intel.com>
Date: Wed, 10 Nov 2021 20:35:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org
References: <20211109121759.170915-1-tvrtko.ursulin@linux.intel.com>
 <6e8c55a7-45b6-57ab-35f7-d522401efccb@linux.intel.com>
 <4d1a0ab9-e0d8-2ed9-1fc4-9ffaf2f19bef@linux.intel.com>
 <7b2e1427-69cf-8f5d-0c15-73c4e602953d@linux.intel.com>
 <2a1ae709-19f8-7983-b171-98ec2f3f010a@linux.intel.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
In-Reply-To: <2a1ae709-19f8-7983-b171-98ec2f3f010a@linux.intel.com>
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
Cc: dri-devel@lists.freedesktop.org, baolu.lu@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2021/11/10 20:08, Tvrtko Ursulin wrote:
> 
> On 10/11/2021 12:04, Lu Baolu wrote:
>> On 2021/11/10 17:30, Tvrtko Ursulin wrote:
>>>
>>> On 10/11/2021 07:12, Lu Baolu wrote:
>>>> Hi Tvrtko,
>>>>
>>>> On 2021/11/9 20:17, Tvrtko Ursulin wrote:
>>>>> From: Tvrtko Ursulin<tvrtko.ursulin@intel.com>
>>>>>
>>>>> On igfx + dgfx setups, it appears that intel_iommu=igfx_off option 
>>>>> only
>>>>> disables the igfx iommu. Stop relying on global intel_iommu_gfx_mapped
>>>>> and probe presence of iommu domain per device to accurately reflect 
>>>>> its
>>>>> status.
>>>>>
>>>>> Signed-off-by: Tvrtko Ursulin<tvrtko.ursulin@intel.com>
>>>>> Cc: Lu Baolu<baolu.lu@linux.intel.com>
>>>>> ---
>>>>> Baolu, is my understanding here correct? Maybe I am confused by both
>>>>> intel_iommu_gfx_mapped and dmar_map_gfx being globals in the 
>>>>> intel_iommu
>>>>> driver. But it certainly appears the setup can assign some iommu 
>>>>> ops (and
>>>>> assign the discrete i915 to iommu group) when those two are set to 
>>>>> off.
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h 
>>>> b/drivers/gpu/drm/i915/i915_drv.h
>>>> index e967cd08f23e..9fb38a54f1fe 100644
>>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>>> @@ -1763,26 +1763,27 @@ static inline bool run_as_guest(void)
>>>>   #define HAS_D12_PLANE_MINIMIZATION(dev_priv) 
>>>> (IS_ROCKETLAKE(dev_priv) || \
>>>>                             IS_ALDERLAKE_S(dev_priv))
>>>>
>>>> -static inline bool intel_vtd_active(void)
>>>> +static inline bool intel_vtd_active(struct drm_i915_private *i915)
>>>>   {
>>>> -#ifdef CONFIG_INTEL_IOMMU
>>>> -    if (intel_iommu_gfx_mapped)
>>>> +    if (iommu_get_domain_for_dev(i915->drm.dev))
>>>>           return true;
>>>> -#endif
>>>>
>>>>       /* Running as a guest, we assume the host is enforcing VT'd */
>>>>       return run_as_guest();
>>>>   }
>>>>
>>>> Have you verified this change? I am afraid that
>>>> iommu_get_domain_for_dev() always gets a valid iommu domain even
>>>> intel_iommu_gfx_mapped == 0.
>>>
>>> Yes it seems to work as is:
>>>
>>> default:
>>>
>>> # grep -i iommu /sys/kernel/debug/dri/*/i915_capabilities
>>> /sys/kernel/debug/dri/0/i915_capabilities:iommu: enabled
>>> /sys/kernel/debug/dri/1/i915_capabilities:iommu: enabled
>>>
>>> intel_iommu=igfx_off:
>>>
>>> # grep -i iommu /sys/kernel/debug/dri/*/i915_capabilities
>>> /sys/kernel/debug/dri/0/i915_capabilities:iommu: disabled
>>> /sys/kernel/debug/dri/1/i915_capabilities:iommu: enabled
>>>
>>> On my system dri device 0 is integrated graphics and 1 is discrete.
>>
>> The drm device 0 has a dedicated iommu. When the user request igfx not
>> mapped, the VT-d implementation will turn it off to save power. But for
>> shared iommu, you definitely will get it enabled.
> 
> Sorry I am not following, what exactly do you mean? Is there a platform 
> with integrated graphics without a dedicated iommu, in which case 
> intel_iommu=igfx_off results in intel_iommu_gfx_mapped == 0 and 
> iommu_get_domain_for_dev returning non-NULL?

Your code always work for an igfx with a dedicated iommu. This might be
always true on today's platforms. But from driver's point of view, we
should not make such assumption.

For example, if the iommu implementation decides not to turn off the
graphic iommu (perhaps due to some hw quirk or for graphic
virtualization), your code will be broken.

Best regards,
baolu
