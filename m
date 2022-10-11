Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBAF5FB715
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 17:28:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C768410E84D;
	Tue, 11 Oct 2022 15:28:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4ADA10E84C
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 15:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665502092; x=1697038092;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Q/nEqKvPQ+PaG6m34tmrXlUQOiIE05JVIlggu9g+l90=;
 b=IY4ddu/fhYa4SzlyKwKr4+wai9nle933DDtdkpEk1+F6ZZJJNMCQ6/So
 ppN+EK6ZFXjmE2ErMe2cHbeJABDRreTdjmqFksNTAE4fFm67UsXD7s+ux
 bkMaUqqINPduF+9J7tcoZnaGeUxNZRZMxHmHSeQy/hda2zyH/AjzGTa0Q
 aGBtWu6dHgfQ493dYtNZQJgVcpLcXVJWQX5tcbLjKifcgC/npT0dcclvc
 whT7QDWeInQq9nS8U9o2kqCJlsb0amVMHl5ofK2ba0cCi69KZmwgWbF/G
 x7T7ofltc9baRPRnKdFCTT+J3c1PUWnJc9emQYweSE1kpoE0MWCDwrzmC g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="287797702"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="287797702"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 08:28:12 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="801489836"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="801489836"
Received: from korubohx-mobl.ger.corp.intel.com (HELO [10.252.10.79])
 ([10.252.10.79])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 08:28:11 -0700
Message-ID: <6448dbb3-fff4-7045-8f55-fb7a46b9d408@intel.com>
Date: Tue, 11 Oct 2022 16:28:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.1
Content-Language: en-GB
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221004131916.233474-1-matthew.auld@intel.com>
 <20221004131916.233474-4-matthew.auld@intel.com>
 <c2639c20-6abc-08bb-76bf-bc8693f2f418@linux.intel.com>
 <519a0e90-3396-ba3e-5b82-e9d0dc9c452e@intel.com>
 <afa9ddae-c282-4735-be68-88f8b3e5dc39@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <afa9ddae-c282-4735-be68-88f8b3e5dc39@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v5 4/5] drm/i915/display: consider
 DG2_RC_CCS_CC when migrating buffers
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
Cc: Jianshui Yu <jianshui.yu@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/10/2022 16:03, Tvrtko Ursulin wrote:
> 
> On 11/10/2022 15:39, Matthew Auld wrote:
>> Hi,
>>
>> On 11/10/2022 14:54, Tvrtko Ursulin wrote:
>>>
>>> Hi Matt,
>>>
>>> On 04/10/2022 14:19, Matthew Auld wrote:
>>>> For these types of display buffers, we need to able to CPU access some
>>>> part of the backing memory in prepare_plane_clear_colors(). As a result
>>>> we need to ensure we always place in the mappable part of lmem, which
>>>> becomes necessary on small-bar systems.
>>>>
>>>> v2(Nirmoy & Ville):
>>>>   - Add some commentary for why we need to CPU access the buffer.
>>>>   - Split out the other changes, so we just consider the display change
>>>>     here.
>>>> v3:
>>>>   - Handle this in the dpt path.
>>>> v4(Ville):
>>>>   - Drop the intel_fb_rc_ccs_cc_plane() sanity check in
>>>>     pin_and_fence_fb_obj(), since we can also trigger this on DG1 it
>>>>     seems.
>>>>
>>>> Fixes: eb1c535f0d69 ("drm/i915: turn on small BAR support")
>>>
>>> That one landed in 6.0 - do you want to send this (with 
>>> pre-requisite(s)) to stable? Or if not do you want me to send for 6.1 
>>> as part of fixes flow? In which case what are the per-requisites?
>>
>> This one is only for DG2, which is still hidden behind force_probe, so 
>> not too sure if it needs stable? I think the only pre-requisite is 
>> 999f45620772 ("drm/i915: allow control over the flags when 
>> migrating"), but again I'm not too sure how much we care about fixes 
>> for platforms hidden behind force_probe? What do you think?
> 
> It is certainly not mandatory, but now that cards are about to ship and 
> reach end users it may be nice to have if not too hard - at least for 
> 6.1 release candidates. I am not clear on the importance of the fix to 
> say for sure. Like what goes bang and under what circumstances. So I do 
> basically defer to someone who knows those answers.

It's important for small-bar DG2 systems, where it will potentially oops 
somewhere in the driver without this, so if we want to support DG2 as a 
platform in 6.1, then we also need this fix, along with 999f45620772.

> 
> Regards,
> 
> Tvrtko
> 
>>
>>>
>>> Regards,
>>>
>>> Tvrtko
>>>
>>>> Reported-by: Jianshui Yu <jianshui.yu@intel.com>
>>>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>>>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>> Cc: Nirmoy Das <nirmoy.das@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/display/intel_fb_pin.c | 13 ++++++++++++-
>>>>   1 file changed, 12 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c 
>>>> b/drivers/gpu/drm/i915/display/intel_fb_pin.c
>>>> index 5031ee5695dd..e12339f46640 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
>>>> @@ -50,7 +50,18 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
>>>>               continue;
>>>>           if (HAS_LMEM(dev_priv)) {
>>>> -            ret = i915_gem_object_migrate(obj, &ww, 
>>>> INTEL_REGION_LMEM_0);
>>>> +            unsigned int flags = obj->flags;
>>>> +
>>>> +            /*
>>>> +             * For this type of buffer we need to able to read from 
>>>> the CPU
>>>> +             * the clear color value found in the buffer, hence we 
>>>> need to
>>>> +             * ensure it is always in the mappable part of lmem, if 
>>>> this is
>>>> +             * a small-bar device.
>>>> +             */
>>>> +            if (intel_fb_rc_ccs_cc_plane(fb) >= 0)
>>>> +                flags &= ~I915_BO_ALLOC_GPU_ONLY;
>>>> +            ret = __i915_gem_object_migrate(obj, &ww, 
>>>> INTEL_REGION_LMEM_0,
>>>> +                            flags);
>>>>               if (ret)
>>>>                   continue;
>>>>           }
