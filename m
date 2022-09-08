Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A63F25B26C5
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 21:34:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CC0910E1AF;
	Thu,  8 Sep 2022 19:34:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 414DD10E1AF
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 19:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662665647; x=1694201647;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=qY8wqfJ0AlsTGCR9vJ6DAA8Nn7VAfSWhKGKLn9izUSw=;
 b=W53oQOZbWoHEadz0QgFEqKutSON44Immpa75lOR1jLKvnply5zi2A+yG
 S0ibSjMo1Zi0jdc7WYnbO2zd6kShdvTCtOKLFTzr9bKhX3TX39G4Tetp0
 aMRcGnTaUsp+prtTUsAEqfdQrqtFhSkDgnWuzz0hEkydMNz1EPdjrogta
 PIffT2vTSJlAKD54bSEERcYEUXwcbL4gM+23l+/l2ZykftJAhkQcZacmj
 X64RyOxFcYsT+KiQPCEEdPIgCi4SzBddSUaM8Xsv/axdrj2V0hCMNutac
 8EOIW2uQ9PR451YnevkJkhIs0Iis1tDfKjSjuRIFpf3roct9aIpJ4a3Zy g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="277038789"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="277038789"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 12:34:06 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="676843861"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.47.100])
 ([10.252.47.100])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 12:34:05 -0700
Message-ID: <7280ab53-dfed-4b37-2bfc-b731010c5cd2@linux.intel.com>
Date: Thu, 8 Sep 2022 21:34:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20220906174609.23494-1-ville.syrjala@linux.intel.com>
 <6e71f8d2-fd50-4550-5168-240c6f703c7f@linux.intel.com>
 <YxoGJrriiWt1r5uT@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <YxoGJrriiWt1r5uT@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 9/8/2022 5:11 PM, Ville Syrjälä wrote:
> On Thu, Sep 08, 2022 at 04:32:56PM +0200, Das, Nirmoy wrote:
>> Hi Ville,
>>
>>
>> I fixed a similar issue in DII but I couldn't reproduce it in drm
>>
>> http://intel-gfx-pw.fi.intel.com/patch/228850/?series=15910&rev=2.
>>
>> I wonder if that fixes the problem you are facing then I can send that
>> to drm.
> CI can tell you. It has been complaining about this for ages


Could you please share a url/failed test name. I must be searching the 
wrong hw/test(https://intel-gfx-ci.01.org/tree/drm-tip/fi-ivb-3770.html).


Thanks,

Nirmoy

> without
> anyone doing anything about it.
>
>> diff --git a/drivers/gpu/drm/i915/i915_gem.c
>> b/drivers/gpu/drm/i915/i915_gem.c
>> index 7809be3a6840..5438e9277924 100644
>> --- a/drivers/gpu/drm/i915/i915_gem.c
>> +++ b/drivers/gpu/drm/i915/i915_gem.c
>> @@ -1213,7 +1213,7 @@  void i915_gem_init_early(struct drm_i915_private
>> *dev_priv)
>>
>>    void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
>>    {
>> -    i915_gem_drain_freed_objects(dev_priv);
>> +    i915_gem_drain_workqueue(dev_priv);
>>        GEM_BUG_ON(!llist_empty(&dev_priv->mm.free_list));
>>        GEM_BUG_ON(atomic_read(&dev_priv->mm.free_count));
>>        drm_WARN_ON(&dev_priv->drm, dev_priv->mm.shrink_count);
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
>>> <4> [383.822424] pci 0000:00:02.0: drm_WARN_ON(dev_priv->mm.shrink_count)
>>> <4> [383.822546] WARNING: CPU: 2 PID: 3560 at drivers/gpu/drm/i915/i915_gem.c:1223 i915_gem_cleanup_early+0x96/0xb0 [i915]
>>>
>>> Looks to be due to the status page object lingering on the
>>> purge_list. Call synchronize_rcu() ahead of it to make more
>>> sure all objects have been freed.
>>>
>>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/i915_gem.c | 1 +
>>>    1 file changed, 1 insertion(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
>>> index 0f49ec9d494a..5b61f7ad6473 100644
>>> --- a/drivers/gpu/drm/i915/i915_gem.c
>>> +++ b/drivers/gpu/drm/i915/i915_gem.c
>>> @@ -1098,6 +1098,7 @@ void i915_gem_drain_freed_objects(struct drm_i915_private *i915)
>>>    		flush_delayed_work(&i915->bdev.wq);
>>>    		rcu_barrier();
>>>    	}
>>> +	synchronize_rcu();
>>>    }
>>>    
>>>    /*
