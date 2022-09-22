Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4735E6257
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 14:28:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F86810EAF6;
	Thu, 22 Sep 2022 12:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 439CE10EAF6
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 12:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663849693; x=1695385693;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=WKczz+ikHdiALuDHOsARSULi4brO6E0AN98993WZDSU=;
 b=JOJavBxexdxZyCA9X01cj/CMEUPdYL0ypYGaLJhL9t4GW9cTOFnEwNRO
 RL+vNlHL+FUtepMA4hrD/oV8kOWbyfdjaZFEYmmJmB7l8Nhvkh6X3tmUd
 5BPnOkk2WkxqH/o6mOGxhalGDPYlszmz1+AciqvIs2EvuDAR6Ak3HozRz
 SMZtWyAtZkPE8/VLRimTU7qyPHx+ts26Cppnxigmt5ZpQtjAXgD3ADWL1
 aeaML3jyPvmiAA+d6Z20CT3JIcQgwZ9+1NiWShWXyTKmKYPBGs431v7JY
 kqXT4+Dr4pYGM8hKSf2owtCvvNpEtvIvwg+tyFfCEHoRpoAbDrjMCQShc g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="287363024"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="287363024"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 05:28:12 -0700
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="745363172"
Received: from emurphy-mobl.ger.corp.intel.com (HELO [10.213.205.83])
 ([10.213.205.83])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 05:28:11 -0700
Message-ID: <90befd6f-da2c-702d-e92a-e6ace9d3e9f2@linux.intel.com>
Date: Thu, 22 Sep 2022 13:28:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: "Das, Nirmoy" <nirmoy.das@intel.com>,
 "Das, Nirmoy" <nirmoy.das@linux.intel.com>, intel-gfx@lists.freedesktop.org
References: <20220908200706.25773-1-nirmoy.das@intel.com>
 <2cd5568f-e63c-1ae3-6aa9-809be360a397@linux.intel.com>
 <a7dcfcb7-f068-d821-9321-bba80b44ff36@linux.intel.com>
 <27158ebf-24e4-c519-13a5-f3d91a539ea2@linux.intel.com>
 <94abfe4d-991f-e354-b6bc-84674c49ef51@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <94abfe4d-991f-e354-b6bc-84674c49ef51@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix a potential UAF at device
 unload
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
Cc: matthew.auld@intel.com, Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 22/09/2022 13:11, Das, Nirmoy wrote:
> 
> On 9/22/2022 11:37 AM, Tvrtko Ursulin wrote:
>>
>> On 21/09/2022 16:53, Das, Nirmoy wrote:
>>>
>>> On 9/9/2022 10:55 AM, Tvrtko Ursulin wrote:
>>>>
>>>> On 08/09/2022 21:07, Nirmoy Das wrote:
>>>>> i915_gem_drain_freed_objects() might not be enough to
>>>>> free all the objects and RCU delayed work might get
>>>>> scheduled after the i915 device struct gets freed.
>>>>>
>>>>> Call i915_gem_drain_workqueue() to catch all RCU delayed work.
>>>>>
>>>>> Suggested-by: Chris Wilson <chris.p.wilson@intel.com>
>>>>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>>>>> ---
>>>>>   drivers/gpu/drm/i915/i915_gem.c | 2 +-
>>>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/i915_gem.c 
>>>>> b/drivers/gpu/drm/i915/i915_gem.c
>>>>> index 0f49ec9d494a..e8a053eaaa89 100644
>>>>> --- a/drivers/gpu/drm/i915/i915_gem.c
>>>>> +++ b/drivers/gpu/drm/i915/i915_gem.c
>>>>> @@ -1254,7 +1254,7 @@ void i915_gem_init_early(struct 
>>>>> drm_i915_private *dev_priv)
>>>>>     void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
>>>>>   {
>>>>> -    i915_gem_drain_freed_objects(dev_priv);
>>>>> +    i915_gem_drain_workqueue(dev_priv);
>>>>> GEM_BUG_ON(!llist_empty(&dev_priv->mm.free_list));
>>>>> GEM_BUG_ON(atomic_read(&dev_priv->mm.free_count));
>>>>>       drm_WARN_ON(&dev_priv->drm, dev_priv->mm.shrink_count);
>>>>
>>>>
>>>> Help me spot the place where RCU free worker schedules itself back 
>>>> to free more objects - if I got the rationale here right?
>>> (Sorry for late reply, was on leave last week.)
>>>
>>> I had to clarify this with Chris. So when driver frees a obj, it does 
>>> dma_resv_fini() which will drop reference
>>>
>>> for all the fences in it and a fence might  reference to an object 
>>> and upon release of that fence can trigger a  release reference to an 
>>> object.
>>
>> Hmm I couldn't find that in code but never mind. It's just a stronger 
>> version of the same flushing and it's not on a path where speed 
>> matters so feel free to go with it.
> 
> 
> Can I get a Ack from you for this, Tvrtko ?

Sorry yes, forgot to be explicit.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
