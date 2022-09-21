Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D655C0288
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 17:54:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F8C710E9A1;
	Wed, 21 Sep 2022 15:53:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B143910E4CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 15:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663775635; x=1695311635;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=S2w/lDkAkoLZqNMVQls9VCEtMhUDgvi2z2wKFMPigWk=;
 b=ZA1S2W22miYDYaAyIh+LVTq+XVLzpXEggPrf3sdxkzYJCAB+hNcND+eP
 turjYdpYGGBUzEFO5uAFjciKFBFI+dKOMewnwrMmEpCCAWKoDak5GeP16
 uZY9U0+9/QwTBje/zDusBX0DmlItUxUuDxc2MZd1NcbppJCJjp223IGI6
 vEbpUcRlwLkbyYdI670wI6Ym8BB6/4wQt8QQobYTJbZKKF1LYilsITFSG
 Ik/wmA69C6bnUZ9yDtZvzW8gBZ0tuznVwxmrRMMGJ307sQmITPy56RtNi
 q8tUqB+CX2C/slizeX91RmvDytnE82w2jfyChUzZ8tvasJ9oUiid86jQ1 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="386329364"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="386329364"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 08:53:54 -0700
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="621739776"
Received: from melaross-mobl.ger.corp.intel.com (HELO [10.252.3.19])
 ([10.252.3.19])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 08:53:53 -0700
Message-ID: <a7dcfcb7-f068-d821-9321-bba80b44ff36@linux.intel.com>
Date: Wed, 21 Sep 2022 17:53:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220908200706.25773-1-nirmoy.das@intel.com>
 <2cd5568f-e63c-1ae3-6aa9-809be360a397@linux.intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <2cd5568f-e63c-1ae3-6aa9-809be360a397@linux.intel.com>
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


On 9/9/2022 10:55 AM, Tvrtko Ursulin wrote:
>
> On 08/09/2022 21:07, Nirmoy Das wrote:
>> i915_gem_drain_freed_objects() might not be enough to
>> free all the objects and RCU delayed work might get
>> scheduled after the i915 device struct gets freed.
>>
>> Call i915_gem_drain_workqueue() to catch all RCU delayed work.
>>
>> Suggested-by: Chris Wilson <chris.p.wilson@intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_gem.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_gem.c 
>> b/drivers/gpu/drm/i915/i915_gem.c
>> index 0f49ec9d494a..e8a053eaaa89 100644
>> --- a/drivers/gpu/drm/i915/i915_gem.c
>> +++ b/drivers/gpu/drm/i915/i915_gem.c
>> @@ -1254,7 +1254,7 @@ void i915_gem_init_early(struct 
>> drm_i915_private *dev_priv)
>>     void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
>>   {
>> -    i915_gem_drain_freed_objects(dev_priv);
>> +    i915_gem_drain_workqueue(dev_priv);
>>       GEM_BUG_ON(!llist_empty(&dev_priv->mm.free_list));
>>       GEM_BUG_ON(atomic_read(&dev_priv->mm.free_count));
>>       drm_WARN_ON(&dev_priv->drm, dev_priv->mm.shrink_count);
>
>
> Help me spot the place where RCU free worker schedules itself back to 
> free more objects - if I got the rationale here right?
(Sorry for late reply, was on leave last week.)

I had to clarify this with Chris. So when driver frees a obj, it does 
dma_resv_fini() which will drop reference

for all the fences in it and a fence might  reference to an object and 
upon release of that fence can trigger a  release reference to an object.

Regards,

Nirmoy



>
> Regards,
>
> Tvrtko
