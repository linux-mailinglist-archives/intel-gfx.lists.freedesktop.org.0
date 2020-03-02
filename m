Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CF8175CCE
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 15:20:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94D5889D39;
	Mon,  2 Mar 2020 14:20:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1AF189D39
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 14:20:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 06:20:36 -0800
X-IronPort-AV: E=Sophos;i="5.70,507,1574150400"; d="scan'208";a="228473255"
Received: from evanmeer-mobl1.ger.corp.intel.com (HELO [10.252.14.245])
 ([10.252.14.245])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 02 Mar 2020 06:20:35 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200227085723.1961649-5-chris@chris-wilson.co.uk>
 <20200227110131.1975034-1-chris@chris-wilson.co.uk>
 <b46f5046-c8ca-7771-6213-696b7d13cc80@linux.intel.com>
 <158289234833.24106.8967086034235723167@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <636e6894-d47d-0399-3bd8-0e2e7b81bdec@linux.intel.com>
Date: Mon, 2 Mar 2020 14:20:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <158289234833.24106.8967086034235723167@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Consolidate ctx->engines[]
 release
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 28/02/2020 12:19, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-02-28 12:08:18)
>>
>> On 27/02/2020 11:01, Chris Wilson wrote:
>>> +static void engines_idle_release(struct i915_gem_context *ctx,
>>> +                              struct i915_gem_engines *engines)
>>> +{
>>> +     struct i915_gem_engines_iter it;
>>> +     struct intel_context *ce;
>>> +
>>> +     i915_sw_fence_init(&engines->fence, engines_notify);
>>> +     INIT_LIST_HEAD(&engines->link);
>>> +
>>> +     engines->ctx = i915_gem_context_get(ctx);
>>> +
>>> +     for_each_gem_engine(ce, engines, it) {
>>> +             struct dma_fence *fence;
>>> +             int err = 0;
>>> +
>>> +             /* serialises with execbuf */
>>> +             RCU_INIT_POINTER(ce->gem_context, NULL);
>>
>> What is the purpose of this? Looks dodgy - like it can't really
>> guarantee much.
> 
> It should be fine if we do:
> 
> execbuf:				context_close:
> 					ce->gem_context = NULL;
> add_to_timeline();			get(&ce->timeline->last_request);
> if (!ce->gem_context)			
> 	return -ENOENT;
> 
> If add is before the get, we will wait on it.
> If add is after the get, we will wait on the earlier request, and skip
> this one -- it will not execute.

What guarantees we see the latest last_request here, or that execbuf 
sees the NULL before we try the get? The code elsewhere isn't assuming 
unstable ce->gem_context I think.. engines we can change, but I don't 
remember we accounted for this.

>>> +             if (!intel_context_pin_if_active(ce))
>>> +                     continue;
>>> +
>>> +             fence = i915_active_fence_get(&ce->timeline->last_request);
>>> +             if (fence) {
>>> +                     err = i915_sw_fence_await_dma_fence(&engines->fence,
>>> +                                                         fence, 0,
>>> +                                                         GFP_KERNEL);
>>> +                     dma_fence_put(fence);
>>> +             }
>>> +             intel_context_unpin(ce);
>>> +             if (err < 0)
>>> +                     goto kill;
>>> +     }
>>> +
>>> +     spin_lock_irq(&ctx->stale.lock);
>>> +     if (!i915_gem_context_is_closed(ctx))
>>> +             list_add_tail(&engines->link, &ctx->stale.engines);
>>> +     spin_unlock_irq(&ctx->stale.lock);
>>> +
>>> +kill:
>>> +     if (list_empty(&engines->link)) /* raced, already closed */
>>> +             kill_engines(engines);
>>
>> Raced with.. ? context_close? Can't be the fence yet, before it has been
>> committed.
> 
> Yes, there's still the set_engines vs context_close to worry about.

I'd just say "raced with context_close" then.

Regards,

Tvrtko



_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
