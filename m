Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 940AB1B6071
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 18:12:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64CE6E8F2;
	Thu, 23 Apr 2020 16:12:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C0EB6E91A
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 16:12:23 +0000 (UTC)
IronPort-SDR: f7vU+FgdAazAk3KL8jaHlLvTQoAh4ujciXVFEiaFPkPZoTCG+KBnwBUhK5uuXCdqjHegkZH08u
 nJ7jUv7ps3Ow==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 09:12:22 -0700
IronPort-SDR: 9ZkWEq7R66F96tov+BVbagKh6bO2Mv9QfdW0F2uM78dfRO9R/TZLWOLTj/TIuMqL3kMnn/S+yl
 c54pFyL8PVhQ==
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="430377258"
Received: from dytagah-mobl.amr.corp.intel.com (HELO [10.252.51.48])
 ([10.252.51.48])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 09:12:22 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200423085940.28168-1-chris@chris-wilson.co.uk>
 <20200423085940.28168-2-chris@chris-wilson.co.uk>
 <a39636b2-8e42-6eef-1e9e-c13a2b7af5c3@linux.intel.com>
 <158765496993.9772.5796288344060758150@build.alporthouse.com>
 <158765506895.9772.11624276209789432084@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <57843114-6815-4cb8-a311-93533ba9cd08@linux.intel.com>
Date: Thu, 23 Apr 2020 17:12:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <158765506895.9772.11624276209789432084@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [CI 2/2] drm/i915/gt: Warn more clearly if the
 context state is still pinned
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


On 23/04/2020 16:17, Chris Wilson wrote:
> Quoting Chris Wilson (2020-04-23 16:16:09)
>> Quoting Tvrtko Ursulin (2020-04-23 15:47:58)
>>>
>>> On 23/04/2020 09:59, Chris Wilson wrote:
>>>> When recording the default context state, we submit an ordinary context
>>>> and then steal the context image for our defaults. To be able to steal
>>>> the state, we must have total ownership of the context. During CI we
>>>> want to make this error extremely obvious, as otherwise we will fail the
>>>> user's module load.
>>>>
>>>> References: https://gitlab.freedesktop.org/drm/intel/-/issues/1763
>>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>>> ---
>>>>    drivers/gpu/drm/i915/gt/intel_gt.c | 1 +
>>>>    1 file changed, 1 insertion(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
>>>> index 1c99cc72305a..379eb39e7979 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>>>> @@ -472,6 +472,7 @@ static int __engines_record_defaults(struct intel_gt *gt)
>>>>    
>>>>                /* We want to be able to unbind the state from the GGTT */
>>>>                GEM_BUG_ON(intel_context_is_pinned(rq->context));
>>>> +             GEM_BUG_ON(i915_vma_is_pinned(state));
>>>
>>> Not sure - context->state ownership is in the context pinned status and
>>> then there is the unbind below which will fail if vma is pinned. Which
>>> sounds better than a bug on. Is it difficult to figure out what is
>>> failing in practice? A debug message on the unbind failure path might be
>>> more friendly in that case.
>>
>> I was able to recognise the failure :) I thought this might be more
>> explicit.
> 
> One thing in the GEM_BUG_ON()'s favour is that in the unbind we do have
> one more wait, which gives a small saving grace and we have fewer
> EAGAINs than BUG_ONs. So the BUG_ON were more sensitive and so useful
> for testing.

Okay.. :)

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
