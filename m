Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A11E058A8ED
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Aug 2022 11:39:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BFB8B2F0B;
	Fri,  5 Aug 2022 09:35:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AE16B2970
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Aug 2022 09:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659691654; x=1691227654;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=SMEH5LNV+hA5Ov1aUuR0OujJDnnKudKA0h8dCz0xbic=;
 b=YaDtUEW/IHtoPvzQJwi1e3WZ6Hz4MaS+XIgh2W6p51BOqRntoN6wtB/q
 fPChsmL0SycKl2wF2iBt8D9Bfp/bqgVaofZNiH9KZtdUMS87xpTcgKn1A
 yBRH4OxnikCXWhjt10+PFnkrSVnzfwc7eSsdiOYZOubwkubHslWCjti0B
 xF1UC/FCkWccG70GoFyZFcjepoRHyZ2iJvfSWz/eutsfZc1EeaScnpDkY
 XpMUK4ZHepLuUKVQGAbsmZQbXQD4Vm06KiaKwJYFVZjdoIstkPfh3ojwS
 rd5EwSSFTYlZHrsXHqe6Nt74sJ1Qk8hAwzYD5F/hUWWHEFGoE1IbgqP/u Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="269935280"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="269935280"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 02:26:50 -0700
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="554053690"
Received: from bfglenno-mobl.ger.corp.intel.com (HELO [10.213.238.183])
 ([10.213.238.183])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 02:26:49 -0700
Message-ID: <fda71d18-1f9e-8526-54e8-1ff21eca2bf7@linux.intel.com>
Date: Fri, 5 Aug 2022 10:26:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: "Summers, Stuart" <stuart.summers@intel.com>
References: <20220803230325.137593-1-stuart.summers@intel.com>
 <a3920919-26c0-fde9-7954-cf44539d223d@linux.intel.com>
 <9f8bc74b5f0de4ca2803caba4c99a7bdea0c1953.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <9f8bc74b5f0de4ca2803caba4c99a7bdea0c1953.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix NPD in PMU during driver
 teardown
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 04/08/2022 19:56, Summers, Stuart wrote:
> On Thu, 2022-08-04 at 09:42 +0100, Tvrtko Ursulin wrote:
>> On 04/08/2022 00:03, Stuart Summers wrote:
>>> In the driver teardown, we are unregistering the gt prior
>>> to unregistering the PMU. This means there is a small window
>>> of time in which the application can request metrics from the
>>> PMU, some of which are calling into the uapi engines list,
>>> while the engines are not available. In this case we can
>>> see null pointer dereferences.
>>>
>>> Fix this ordering in both the driver load and unload sequences.
>>>
>>> v1: Actually address the driver load/unload ordering issue
>>> v2: Remove the NULL checks since they shouldn't be necessary
>>>       now with the proper ordering
>>>
>>> Fixes: 42014f69bb235 ("drm/i915: Hook up GT power management")
>>
>> What happened in this commit to break it?
> 
> Hm.. well this was the patch that added the abstraction ordering issue,
> i.e. gt_register/unregister. There isn't anything specifically broken
> here since we don't actually access the gt structure underneath. My
> assertion is that this patch should have taken the expansion of the gt
> structure into consideration and added the correct ordering with
> respect to the pmu.
> 
> Are you asking for the specific patch where things stopped working
> functionally?

No, I was looking for the info on what is actually broken with the 
ordering, as is since I couldn't spot it myself yesterday. In other 
words, with patch 2/2 applied - does 1/2 fix anything further for the 
PMU use cases?

Regards,

Tvrtko

>>> Signed-off-by: Stuart Summers <stuart.summers@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/i915_driver.c | 11 ++++++-----
>>>    1 file changed, 6 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_driver.c
>>> b/drivers/gpu/drm/i915/i915_driver.c
>>> index deb8a8b76965a..ee4dcb85d2060 100644
>>> --- a/drivers/gpu/drm/i915/i915_driver.c
>>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>>> @@ -717,7 +717,6 @@ static void i915_driver_register(struct
>>> drm_i915_private *dev_priv)
>>>    	struct drm_device *dev = &dev_priv->drm;
>>>    
>>>    	i915_gem_driver_register(dev_priv);
>>> -	i915_pmu_register(dev_priv);
>>>    
>>>    	intel_vgpu_register(dev_priv);
>>>    
>>> @@ -731,11 +730,12 @@ static void i915_driver_register(struct
>>> drm_i915_private *dev_priv)
>>>    	i915_debugfs_register(dev_priv);
>>>    	i915_setup_sysfs(dev_priv);
>>>    
>>> +	intel_gt_driver_register(to_gt(dev_priv));
>>> +
>>>    	/* Depends on sysfs having been initialized */
>>> +	i915_pmu_register(dev_priv);
>>>    	i915_perf_register(dev_priv);
>>>    
>>> -	intel_gt_driver_register(to_gt(dev_priv));
>>> -
>>
>> There was a bit of a time distance since we originally discussed this
>> so
>> things kind of evaporated from my head. Or at least it feels like
>> that.
>>    Today when I look at the code I don't understand why is this
>> shuffle
>> relevant.
>>
>> The sysfs comment does not really apply to pmu, but also if I look
>> into
>> intel_gt_driver_(un)register I did not spot what is the relevant
>> part
>> which interacts with the PMU.
>>
>> On register it is engine list first then PMU.
>>
>> On unregister it is PMU first, then engine list:
>>
>>     i915_driver_remove
>>       i915_driver_unregister
>>         i915_pmu_unregister
>>       i915_gem_driver_remove
>>         clears uabi engines list
>>
>> Help please? :)
>>
>> Regards,
>>
>> Tvrtko
>>
>>>    	intel_display_driver_register(dev_priv);
>>>    
>>>    	intel_power_domains_enable(dev_priv);
>>> @@ -762,11 +762,12 @@ static void i915_driver_unregister(struct
>>> drm_i915_private *dev_priv)
>>>    
>>>    	intel_display_driver_unregister(dev_priv);
>>>    
>>> -	intel_gt_driver_unregister(to_gt(dev_priv));
>>> -
>>>    	i915_perf_unregister(dev_priv);
>>> +	/* GT should be available until PMU is gone */
>>>    	i915_pmu_unregister(dev_priv);
>>>    
>>> +	intel_gt_driver_unregister(to_gt(dev_priv));
>>> +
>>>    	i915_teardown_sysfs(dev_priv);
>>>    	drm_dev_unplug(&dev_priv->drm);
>>>    
