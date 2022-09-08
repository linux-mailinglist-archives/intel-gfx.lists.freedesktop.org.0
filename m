Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 647895B2157
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 16:55:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37FAE10E42E;
	Thu,  8 Sep 2022 14:55:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B50F10E42E
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 14:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662648935; x=1694184935;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=S6f08viLUE9h9wArq4dPftKGfCcRPDQ4Zs4iaajq4+8=;
 b=QVlP7/gFcfaSetYvQRCgvVOm8sIsKt2TEnPXN4cTjO74IRdIpBLt6ZyT
 rNq8pL9Pt4gynGlMVCPS/xJD2Tm4RZC/1EwqU0Sa9m+JAHR+/5Zl6cmUf
 S2wJEwkLTB0uDT4oJX5BvfGWw+CfSSCZtc6Tfnsv6V/NKvTz2YFUvqVoU
 v1TYc4D/+S+iZdERkumWFypUlSy4v7XT1vgnj83nBvb8Ha6O4h6Axg+F4
 uxbpyj/Vjz9yQJkl/5WFZo3/YysVLzfW4NqK+fFuIHy1xoP8ZYnh+3dsW
 3zrTGfBfQM5M7FDnB7uieJMfaLNOPxL5JvFyQNmVHSBxngj8F3W55pcBA A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="298005371"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="298005371"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 07:55:34 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="645113883"
Received: from jdemps5x-mobl.ger.corp.intel.com (HELO [10.213.237.77])
 ([10.213.237.77])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 07:55:33 -0700
Message-ID: <9ef06c2a-1ca6-7cf6-0f21-1722bdc4b4fb@linux.intel.com>
Date: Thu, 8 Sep 2022 15:55:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>,
 Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220906174609.23494-1-ville.syrjala@linux.intel.com>
 <6e71f8d2-fd50-4550-5168-240c6f703c7f@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <6e71f8d2-fd50-4550-5168-240c6f703c7f@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Kick rcu harder to free objects
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


On 08/09/2022 15:32, Das, Nirmoy wrote:
> Hi Ville,
> 
> 
> I fixed a similar issue in DII but I couldn't reproduce it in drm
> 
> http://intel-gfx-pw.fi.intel.com/patch/228850/?series=15910&rev=2.
> 
> I wonder if that fixes the problem you are facing then I can send that 
> to drm.
> 
> diff --git a/drivers/gpu/drm/i915/i915_gem.c 
> b/drivers/gpu/drm/i915/i915_gem.c
> index 7809be3a6840..5438e9277924 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1213,7 +1213,7 @@  void i915_gem_init_early(struct drm_i915_private 
> *dev_priv)
> 
>   void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
>   {
> -    i915_gem_drain_freed_objects(dev_priv);
> +    i915_gem_drain_workqueue(dev_priv);
>       GEM_BUG_ON(!llist_empty(&dev_priv->mm.free_list));
>       GEM_BUG_ON(atomic_read(&dev_priv->mm.free_count));
>       drm_WARN_ON(&dev_priv->drm, dev_priv->mm.shrink_count);

Yes why not, more black magic (count to three) but if it works... :) I 
also spy the general area has been a bit neglected. Like:

i915_gem_driver_remove:
...
   i915_gem_drain_workqueue
   i915_gem_drain_freed_objects

While i915_gem_drain_workqueue:
...
   i915_gem_drain_freed_objects

So i915_gem_drain_freed_objects in i915_gem_driver_remove is redundant 
already.

Should i915_gem_drain_freed_objects be unexported and all callers made 
just call i915_gem_drain_workqueue after your patch? Or if "drain free 
objects" is considered more self descriptive it could be made as an 
alias to i915_gem_drain_workqueue.

Regards,

Tvrtko

> 
> 
> Regards,
> 
> Nirmoy
> 
> On 9/6/2022 7:46 PM, Ville Syrjala wrote:
>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>
>> On gen3 the selftests are pretty much always tripping this:
>> <4> [383.822424] pci 0000:00:02.0: drm_WARN_ON(dev_priv->mm.shrink_count)
>> <4> [383.822546] WARNING: CPU: 2 PID: 3560 at 
>> drivers/gpu/drm/i915/i915_gem.c:1223 i915_gem_cleanup_early+0x96/0xb0 
>> [i915]
>>
>> Looks to be due to the status page object lingering on the
>> purge_list. Call synchronize_rcu() ahead of it to make more
>> sure all objects have been freed.
>>
>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_gem.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_gem.c 
>> b/drivers/gpu/drm/i915/i915_gem.c
>> index 0f49ec9d494a..5b61f7ad6473 100644
>> --- a/drivers/gpu/drm/i915/i915_gem.c
>> +++ b/drivers/gpu/drm/i915/i915_gem.c
>> @@ -1098,6 +1098,7 @@ void i915_gem_drain_freed_objects(struct 
>> drm_i915_private *i915)
>>           flush_delayed_work(&i915->bdev.wq);
>>           rcu_barrier();
>>       }
>> +    synchronize_rcu();
>>   }
>>   /*
