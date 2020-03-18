Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FC9189E0C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 15:39:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C4A66E90A;
	Wed, 18 Mar 2020 14:39:14 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89B6C6E909
 for <Intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 14:39:12 +0000 (UTC)
IronPort-SDR: XvubM7JmOYDwX16UHOcZVCah44Ddu++ikc1ZtafqAWHBeOf/t3yMS0QauyLRds8OichecfzL/H
 8Xy8oRPni43Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 07:38:59 -0700
IronPort-SDR: xjwTHSQJ/snS2/FGK06jscT418Hlj5E5sD5gcGexAM2FhdLRTC0xPsjM5YBhMId/47/MOUmkfF
 bIVdBhuwWsBA==
X-IronPort-AV: E=Sophos;i="5.70,568,1574150400"; d="scan'208";a="238624546"
Received: from unknown (HELO [10.214.196.8]) ([10.214.196.8])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 07:38:58 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200318121138.909-1-tvrtko.ursulin@linux.intel.com>
 <20200318121138.909-6-tvrtko.ursulin@linux.intel.com>
 <158453975088.6873.9360235878777457602@build.alporthouse.com>
 <3565cd32-5dd8-0d45-ee55-fb4fb51aa7bd@linux.intel.com>
 <158454197252.6873.7587021909076621666@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b1cf4682-4374-1ec6-589e-8d1e0b0acd93@linux.intel.com>
Date: Wed, 18 Mar 2020 14:38:53 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <158454197252.6873.7587021909076621666@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/10] drm/i915: Track runtime spent in
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


On 18/03/2020 14:32, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-03-18 14:13:14)
>>
>> On 18/03/2020 13:55, Chris Wilson wrote:
>>> Quoting Tvrtko Ursulin (2020-03-18 12:11:34)
>>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>
>>>> As contexts are abandoned we want to remember how much GPU time they used
>>>> (per class) so later we can used it for smarter purposes.
>>>>
>>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/gem/i915_gem_context.c       | 13 ++++++++++++-
>>>>    drivers/gpu/drm/i915/gem/i915_gem_context_types.h |  5 +++++
>>>>    2 files changed, 17 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>>>> index 7c119a3a2cbd..5edf79ed6247 100644
>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>>>> @@ -257,7 +257,19 @@ static void free_engines_rcu(struct rcu_head *rcu)
>>>>    {
>>>>           struct i915_gem_engines *engines =
>>>>                   container_of(rcu, struct i915_gem_engines, rcu);
>>>> +       struct i915_gem_context *ctx = engines->ctx;
>>>> +       struct i915_gem_engines_iter it;
>>>> +       struct intel_context *ce;
>>>> +
>>>> +       /* Transfer accumulated runtime to the parent GEM context. */
>>>> +       for_each_gem_engine(ce, engines, it) {
>>>> +               unsigned int class = ce->engine->uabi_class;
>>>>    
>>>> +               GEM_BUG_ON(class >= ARRAY_SIZE(ctx->past_runtime));
>>>> +               atomic64_add(ce->runtime.total, &ctx->past_runtime[class]);
>>>
>>> Hmm, there's an odd situation where the free_engines_rcu could fire
>>> before we do the final schedule_out of the context.
>>>
>>> GEM_BUG_ON(intel_context_inflight(ce)) to see if that's being too
>>> paranoid.
>>
>> Deja vu.. have I forgotten to move this into intel_context_free while
>> the purpose of keeping ce->gem_context valid was exactly to enable that.
> 
> I would rather not have it in gt/ if possible. The delay should be
> nominal at worst.

But I thought your concern was this can miss the accumulation of the 
last active period due active tracker triggering the rcu cleanup before 
last context save. What do you then recommend?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
