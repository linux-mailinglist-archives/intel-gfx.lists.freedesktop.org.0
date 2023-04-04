Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE84A6D68A7
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 18:22:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F092810E6F8;
	Tue,  4 Apr 2023 16:22:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF99A10E6F4;
 Tue,  4 Apr 2023 16:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680625364; x=1712161364;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=TXMnWgYYUe95e5xj9YuOxrPZIevDXcLlaiDRaU0YY64=;
 b=eARlqWd/1CkEZ4NQC9V/b3AgssmxHDt5LZjWZsgx2DqiWFgASgPnk6zU
 6CcDXtgrXOnEcNY/hwUP4mNTx19g22U1mof7lBX1X5vkQa/2+cn/KPBnM
 AyyqHNIuNtDrIEE7fguwJEaDsHk5xjVuQA/+mkbttg9gtFwIq31Ml58kp
 g2edmpx+K2j2tGfDhvSMiByhlenQ1psi1VtplsnRJW1tQLvtxvBPDlnJU
 kOjAqY+4/omFwWJzk9huz4oD3fy/eUAPig7trf4946V9G3t45rJ64sCQy
 +4KVdDGHSF1F5YZTP1gg+I9eJptimd/YutUajEY8lkuA1CgGzHtKdsKOm Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="428522225"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="428522225"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 09:22:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="755701017"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="755701017"
Received: from pcanders-mobl1.ger.corp.intel.com (HELO [10.213.217.134])
 ([10.213.217.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 09:22:41 -0700
Message-ID: <74add824-76b6-96eb-b4b2-67d908474c8b@linux.intel.com>
Date: Tue, 4 Apr 2023 17:22:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20230330-hold_wakeref_for_active_vm-v2-1-724d201499c2@intel.com>
 <ZCxEoelnOSpRiy6A@ashyti-mobl2.lan>
 <f193eb7f-19f9-b9a8-7edf-438dafb74da4@linux.intel.com>
 <ZCxJitP+XtC2/run@ashyti-mobl2.lan>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZCxJitP+XtC2/run@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Hold a wakeref for the
 active VM
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 04/04/2023 17:00, Andi Shyti wrote:
> Hi Tvrtko,
> 
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
>>>> index 0a8d553da3f439..48f888c3da083b 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_context.h
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_context.h
>>>> @@ -14,6 +14,7 @@
>>>>    #include "i915_drv.h"
>>>>    #include "intel_context_types.h"
>>>>    #include "intel_engine_types.h"
>>>> +#include "intel_gt_pm.h"
>>>>    #include "intel_ring_types.h"
>>>>    #include "intel_timeline_types.h"
>>>>    #include "i915_trace.h"
>>>> @@ -207,8 +208,11 @@ void intel_context_exit_engine(struct intel_context *ce);
>>>>    static inline void intel_context_enter(struct intel_context *ce)
>>>>    {
>>>>    	lockdep_assert_held(&ce->timeline->mutex);
>>>> -	if (!ce->active_count++)
>>>> -		ce->ops->enter(ce);
>>>> +	if (ce->active_count++)
>>>> +		return;
>>>> +
>>>> +	ce->ops->enter(ce);
>>>> +	intel_gt_pm_get(ce->vm->gt);
>>>>    }
>>>>    static inline void intel_context_mark_active(struct intel_context *ce)
>>>> @@ -222,8 +226,11 @@ static inline void intel_context_exit(struct intel_context *ce)
>>>>    {
>>>>    	lockdep_assert_held(&ce->timeline->mutex);
>>>>    	GEM_BUG_ON(!ce->active_count);
>>>> -	if (!--ce->active_count)
>>>> -		ce->ops->exit(ce);
>>>> +	if (--ce->active_count)
>>>> +		return;
>>>> +
>>>> +	intel_gt_pm_put_async(ce->vm->gt);
>>>> +	ce->ops->exit(ce);
>>>
>>> shouldn't these two be swapped?
> 
> maybe I wasn't clear here... shouldn't it be

I missed this one.

> 	ce->ops->exit(ce);
> 	intel_gt_pm_put_async(ce->vm->gt);
> 
> Don't we need to hold the pm until exiting?

I think it doesn't matter. The problematic edge case this is fixing is 
when ce->engine->gt is different from ce->vm->gt but at this point if it 
is safe to release one it must be safe to release the other too.

Regards,

Tvrtko


> 
>>>>    }
>>>>    static inline struct intel_context *intel_context_get(struct intel_context *ce)
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
>>>> index e971b153fda976..ee531a5c142c77 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
>>>> @@ -114,6 +114,15 @@ __queue_and_release_pm(struct i915_request *rq,
>>>>    	ENGINE_TRACE(engine, "parking\n");
>>>> +	/*
>>>> +	 * Open coded one half of intel_context_enter, which we have to omit
>>>> +	 * here (see the large comment below) and because the other part must
>>>> +	 * not be called due constructing directly with __i915_request_create
>>>> +	 * which increments active count via intel_context_mark_active.
>>>> +	 */
>>>> +	GEM_BUG_ON(rq->context->active_count != 1);
>>>> +	__intel_gt_pm_get(engine->gt);
>>>
>>> where is it's brother "put"?
>>
>> It's in request retire via intel_context_exit. Ie. request construction is
>> special here, while retirement is standard.
> 
> Thank you!
> Andi
