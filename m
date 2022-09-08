Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEFF5B26A7
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 21:23:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E81F10E16E;
	Thu,  8 Sep 2022 19:23:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7E2810E16E
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 19:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662664980; x=1694200980;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=VEpRk92BqYx2L5NfoGLpfAIgkindgP5m6fYypPqMGOY=;
 b=YpSNYS+MmHyf5z+1XQbioGQwImYl2eVDSWPaVTvNPQPhLD1/mtbgA4vR
 zFWLtTQ/J+oETwecmjY0AeGzH4r7Y3ssCuk2eMoC21s78n1C4bB9YBLSR
 WNnOTTUhZIXmQ+QpfMV1fyxWbAAiSs/7IpYw7Ov/nXnpTPx421vi0ITKu
 MOm12dRHwgL2BXcuN+Q54q1S4tjb5XjVr9nJ5R5lpSK9eqquWmSt3K+ef
 qmyuJLRqO7+FFCsJ8RiRd0DV/yhBQajGtQ//yod5c7hk5bc1Ux+lpq3/U
 7ckUavYwAJY2iitU/YfjEdlzXCvhk4UrHPUpuzFeTAF3j2l1FwsLkiD8p w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="296035964"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="296035964"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 12:22:52 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="676839781"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.47.100])
 ([10.252.47.100])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 12:22:51 -0700
Message-ID: <8ebdf841-f118-d855-bf44-c189167cc05d@linux.intel.com>
Date: Thu, 8 Sep 2022 21:22:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220906174609.23494-1-ville.syrjala@linux.intel.com>
 <6e71f8d2-fd50-4550-5168-240c6f703c7f@linux.intel.com>
 <9ef06c2a-1ca6-7cf6-0f21-1722bdc4b4fb@linux.intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <9ef06c2a-1ca6-7cf6-0f21-1722bdc4b4fb@linux.intel.com>
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


On 9/8/2022 4:55 PM, Tvrtko Ursulin wrote:
>
> On 08/09/2022 15:32, Das, Nirmoy wrote:
>> Hi Ville,
>>
>>
>> I fixed a similar issue in DII but I couldn't reproduce it in drm
>>
>> http://intel-gfx-pw.fi.intel.com/patch/228850/?series=15910&rev=2.
>>
>> I wonder if that fixes the problem you are facing then I can send 
>> that to drm.
>>
>> diff --git a/drivers/gpu/drm/i915/i915_gem.c 
>> b/drivers/gpu/drm/i915/i915_gem.c
>> index 7809be3a6840..5438e9277924 100644
>> --- a/drivers/gpu/drm/i915/i915_gem.c
>> +++ b/drivers/gpu/drm/i915/i915_gem.c
>> @@ -1213,7 +1213,7 @@  void i915_gem_init_early(struct 
>> drm_i915_private *dev_priv)
>>
>>   void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
>>   {
>> -    i915_gem_drain_freed_objects(dev_priv);
>> +    i915_gem_drain_workqueue(dev_priv);
>>       GEM_BUG_ON(!llist_empty(&dev_priv->mm.free_list));
>>       GEM_BUG_ON(atomic_read(&dev_priv->mm.free_count));
>>       drm_WARN_ON(&dev_priv->drm, dev_priv->mm.shrink_count);
>
> Yes why not, more black magic (count to three) but if it works... :) I 
> also spy the general area has been a bit neglected. Like:


Not sure what should be the correct solution here.  I wonder if we might 
have to change this because of

https://lwn.net/Articles/906975/ ?


>
> i915_gem_driver_remove:
> ...
>   i915_gem_drain_workqueue
>   i915_gem_drain_freed_objects
>
> While i915_gem_drain_workqueue:
> ...
>   i915_gem_drain_freed_objects
>
> So i915_gem_drain_freed_objects in i915_gem_driver_remove is redundant 
> already.
>
> Should i915_gem_drain_freed_objects be unexported and all callers made 
> just call i915_gem_drain_workqueue after your patch? Or if "drain free 
> objects" is considered more self descriptive it could be made as an 
> alias to i915_gem_drain_workqueue.


We are using i915_gem_drain_freed_objects() in many places and replacing 
that with i915_gem_drain_workqueue() might have performance implication.


Nirmoy


>
> Regards,
>
> Tvrtko
>
>>
>>
>> Regards,
>>
>> Nirmoy
>>
>> On 9/6/2022 7:46 PM, Ville Syrjala wrote:
>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>
>>> On gen3 the selftests are pretty much always tripping this:
>>> <4> [383.822424] pci 0000:00:02.0: 
>>> drm_WARN_ON(dev_priv->mm.shrink_count)
>>> <4> [383.822546] WARNING: CPU: 2 PID: 3560 at 
>>> drivers/gpu/drm/i915/i915_gem.c:1223 
>>> i915_gem_cleanup_early+0x96/0xb0 [i915]
>>>
>>> Looks to be due to the status page object lingering on the
>>> purge_list. Call synchronize_rcu() ahead of it to make more
>>> sure all objects have been freed.
>>>
>>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/i915_gem.c | 1 +
>>>   1 file changed, 1 insertion(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_gem.c 
>>> b/drivers/gpu/drm/i915/i915_gem.c
>>> index 0f49ec9d494a..5b61f7ad6473 100644
>>> --- a/drivers/gpu/drm/i915/i915_gem.c
>>> +++ b/drivers/gpu/drm/i915/i915_gem.c
>>> @@ -1098,6 +1098,7 @@ void i915_gem_drain_freed_objects(struct 
>>> drm_i915_private *i915)
>>>           flush_delayed_work(&i915->bdev.wq);
>>>           rcu_barrier();
>>>       }
>>> +    synchronize_rcu();
>>>   }
>>>   /*
