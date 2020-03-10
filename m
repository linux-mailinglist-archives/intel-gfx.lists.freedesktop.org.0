Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B699C1808A6
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 21:00:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6D906E8D5;
	Tue, 10 Mar 2020 20:00:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 234476E8D5
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 20:00:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 13:00:21 -0700
X-IronPort-AV: E=Sophos;i="5.70,538,1574150400"; d="scan'208";a="236159618"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO [10.252.21.27])
 ([10.252.21.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 10 Mar 2020 13:00:20 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
 <20200309183129.2296-6-tvrtko.ursulin@linux.intel.com>
 <158386474983.28297.14100791660131613004@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <11ede409-42d2-62ec-dcd7-cdb4399b0562@linux.intel.com>
Date: Tue, 10 Mar 2020 20:00:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <158386474983.28297.14100791660131613004@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 05/12] drm/i915: Track runtime spent in
 unreachable intel_contexts
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


On 10/03/2020 18:25, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-03-09 18:31:22)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> As contexts are abandoned we want to remember how much GPU time they used
>> (per class) so later we can used it for smarter purposes.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_context.c       | 13 ++++++++++++-
>>   drivers/gpu/drm/i915/gem/i915_gem_context_types.h |  5 +++++
>>   2 files changed, 17 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> index abc3a3e2fcf1..5f6861a36655 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> @@ -257,7 +257,19 @@ static void free_engines_rcu(struct rcu_head *rcu)
>>   {
>>          struct i915_gem_engines *engines =
>>                  container_of(rcu, struct i915_gem_engines, rcu);
>> +       struct i915_gem_context *ctx = engines->ctx;
>> +       struct i915_gem_engines_iter it;
>> +       struct intel_context *ce;
>> +
>> +       /* Transfer accumulated runtime to the parent GEM context. */
>> +       for_each_gem_engine(ce, engines, it) {
>> +               unsigned int class = ce->engine->uabi_class;
>>   
>> +               GEM_BUG_ON(class >= ARRAY_SIZE(ctx->past_runtime));
>> +               atomic64_add(ce->runtime.total, &ctx->past_runtime[class]);
>> +       }
> 
> -> give this its own routine.

Ack.

>> +
>> +       i915_gem_context_put(ctx);
>>          i915_sw_fence_fini(&engines->fence);
>>          free_engines(engines);
>>   }
>> @@ -540,7 +552,6 @@ static int engines_notify(struct i915_sw_fence *fence,
>>                          list_del(&engines->link);
>>                          spin_unlock_irqrestore(&ctx->stale.lock, flags);
>>                  }
>> -               i915_gem_context_put(engines->ctx);
> 
> Or accumulate here? Here we know the engines are idle and released,
> albeit there is the delay in accumulating after the swap. I'm not going
> to worry about that, live replacement of engines I don't expect anyone
> to notice the busy stats being off for a bit. Worst case is that they
> see a sudden jump; but typical practice will be to setup engines up
> before they being activity. We only have to worry about is if the
> transient misleading stats can be exploited.

It was even here initially but then I started fearing it may not be the 
last unpin of intel_context, pending context save/complete so sounded 
safer to make it really really last. And

But I guess you are right in saying that small error when replacing 
engines should not be large concern. If I move the accumulation back 
here I don't need the intel_context->closed patch any more so that's a plus.

Unless it can be a large error if context ran for quite some time. Hm.. 
I think I still prefer to be safe and accumulate latest as possible.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
