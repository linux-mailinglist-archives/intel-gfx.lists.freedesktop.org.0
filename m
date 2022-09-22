Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CBD5E5EB4
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 11:37:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00BAD10EA85;
	Thu, 22 Sep 2022 09:37:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBA5B10EA8D
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 09:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663839426; x=1695375426;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=7gyvgtlWZWPdY2HAOZWMHNvyrcx9AjAPrLLRCh6JAxw=;
 b=gKTjNzRprDW/S+FwEhq4LfJaFgckVDkfp4qigAPI4kXWL6DNkvxRBmGM
 CCMhB/CemyQuTHoM/9oilvL72XZJLV/JuqckqFfL4DZ7LWHShvJttl3O5
 X8V+TYM+YSQVS7t0H86cRU4083cU7Vlf8OSoLCkvEOEpBfx0lCXHHcbcV
 6/wMhvDxcc8/YKq+5g+eyNhO7EcfqUENWH7Z/0v8A2cqttTh22oAkbnn/
 yUd1Npfw4oHCBWQsUKiXfLi6sB4dJ6bP6vUxBfOv6naFO5RpsFzR1DobY
 EXvn5lwToYnIYmdqNWJ5dVepfFBIoML6hONBbKHIDOhwVz/Lm329s927G Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="287331030"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="287331030"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 02:37:06 -0700
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="650451862"
Received: from emurphy-mobl.ger.corp.intel.com (HELO [10.213.205.83])
 ([10.213.205.83])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 02:37:04 -0700
Message-ID: <27158ebf-24e4-c519-13a5-f3d91a539ea2@linux.intel.com>
Date: Thu, 22 Sep 2022 10:37:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220908200706.25773-1-nirmoy.das@intel.com>
 <2cd5568f-e63c-1ae3-6aa9-809be360a397@linux.intel.com>
 <a7dcfcb7-f068-d821-9321-bba80b44ff36@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <a7dcfcb7-f068-d821-9321-bba80b44ff36@linux.intel.com>
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


On 21/09/2022 16:53, Das, Nirmoy wrote:
> 
> On 9/9/2022 10:55 AM, Tvrtko Ursulin wrote:
>>
>> On 08/09/2022 21:07, Nirmoy Das wrote:
>>> i915_gem_drain_freed_objects() might not be enough to
>>> free all the objects and RCU delayed work might get
>>> scheduled after the i915 device struct gets freed.
>>>
>>> Call i915_gem_drain_workqueue() to catch all RCU delayed work.
>>>
>>> Suggested-by: Chris Wilson <chris.p.wilson@intel.com>
>>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/i915_gem.c | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_gem.c 
>>> b/drivers/gpu/drm/i915/i915_gem.c
>>> index 0f49ec9d494a..e8a053eaaa89 100644
>>> --- a/drivers/gpu/drm/i915/i915_gem.c
>>> +++ b/drivers/gpu/drm/i915/i915_gem.c
>>> @@ -1254,7 +1254,7 @@ void i915_gem_init_early(struct 
>>> drm_i915_private *dev_priv)
>>>     void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
>>>   {
>>> -    i915_gem_drain_freed_objects(dev_priv);
>>> +    i915_gem_drain_workqueue(dev_priv);
>>>       GEM_BUG_ON(!llist_empty(&dev_priv->mm.free_list));
>>>       GEM_BUG_ON(atomic_read(&dev_priv->mm.free_count));
>>>       drm_WARN_ON(&dev_priv->drm, dev_priv->mm.shrink_count);
>>
>>
>> Help me spot the place where RCU free worker schedules itself back to 
>> free more objects - if I got the rationale here right?
> (Sorry for late reply, was on leave last week.)
> 
> I had to clarify this with Chris. So when driver frees a obj, it does 
> dma_resv_fini() which will drop reference
> 
> for all the fences in it and a fence might  reference to an object and 
> upon release of that fence can trigger a  release reference to an object.

Hmm I couldn't find that in code but never mind. It's just a stronger 
version of the same flushing and it's not on a path where speed matters 
so feel free to go with it.

Regards,

Tvrtko
