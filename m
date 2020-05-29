Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A571E7690
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 09:25:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 600BD6E86F;
	Fri, 29 May 2020 07:25:17 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 329046E86F
 for <Intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 07:25:16 +0000 (UTC)
IronPort-SDR: pQ4OVUQ2exwZk5WCKg1lOhJrsPw3jJfqUgH109SfTDRNhA48vqlwqkECOYiL+DaJfSRRHyjKWj
 G7YxlDksc+Fg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 00:25:15 -0700
IronPort-SDR: ouwR8BxWfwRe5PF05rlQd+DeaddwjwU9rGfzY23ngzfBo11NVME6380ip880MzGS/vTQaoRXzr
 PsGD92XkDXow==
X-IronPort-AV: E=Sophos;i="5.73,447,1583222400"; d="scan'208";a="443277437"
Received: from esperlin-mobl.ger.corp.intel.com (HELO [10.214.231.68])
 ([10.214.231.68])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 00:25:14 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200527085322.25861-1-tvrtko.ursulin@linux.intel.com>
 <159065984908.10651.3817818286053938468@build.alporthouse.com>
 <8f1c20cb-b538-97c1-a953-772d75c232bd@linux.intel.com>
 <159069741815.10651.7846303087037389376@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <62dc8d12-4c5a-69a3-581b-99b231c8be8c@linux.intel.com>
Date: Fri, 29 May 2020 08:25:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <159069741815.10651.7846303087037389376@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Special handling for bonded
 requests
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
Cc: Xiaogang Li <xiaogang.li@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 28/05/2020 21:23, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-05-28 11:20:07)
>>
>> On 28/05/2020 10:57, Chris Wilson wrote:
>>> Quoting Tvrtko Ursulin (2020-05-27 09:53:22)
>>>> +static void
>>>> +mark_bonded_pair(struct i915_request *rq, struct i915_request *signal)
>>>> +{
>>>> +       /*
>>>> +        * Give (temporary) special meaning to a pair requests with requested
>>>> +        * aligned start along the video engines.
>>>> +        *
>>>> +        * They should be non-preemptable and have all ELSP ports to themselves
>>>> +        * to avoid any deadlocks caused by inversions.
>>>> +        *
>>>> +        * Gen11+
>>>> +        */
>>>> +       if (INTEL_GEN(rq->i915) < 11 ||
>>>> +           rq->engine->class != VIDEO_DECODE_CLASS ||
>>>> +           rq->engine->class != signal->engine->class)
>>>> +               return;
>>>> +
>>>> +       set_bit(I915_FENCE_FLAG_NOPREEMPT, &rq->fence.flags);
>>>> +       set_bit(I915_FENCE_FLAG_NOPREEMPT, &signal->fence.flags);
>>>> +
>>>> +       intel_context_set_single_submission(rq->context);
>>>> +       intel_context_set_single_submission(signal->context);
>>>
>>> The thought that just popped into my head:
>>>
>>> This can be after signal is already submitted into ELSP[1].
>>
>> Yep I knew that but thought it would still work.
>>
>> Master in vcs0 port1, slave in vcs1 port0 or queued.
>>
>> If queued that means at worst case another bonded pair is running on
>> same engines, so they should be able to complete.
>>
>> If slave submitted to vcs1 port0 then it will stay there until whatever
>> is in vcs0 port0 finishes and lets master in.
>>
>> Do you see a possibility for things to go bad?
> 
> Because the master is already submitted in port1, the bond can go into
> port0. Then a second bond turns up for the master in port0, and we're
> back at square one.
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 37855ae8f8b3..698608e11df3 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -2502,6 +2502,7 @@ static void eb_request_add(struct i915_execbuffer *eb)
>          lockdep_unpin_lock(&tl->mutex, rq->cookie);
>   
>          trace_i915_request_add(rq);
> +       set_bit(I915_FENCE_FLAG_SENTINEL, &rq->fence.flags);
>   
>          prev = __i915_request_commit(rq);
> 
> Will do the trick.
> 
> (Plus fixing up the rules for assert_pending_valid).

Hmm yes, my logic was flawed by missing to see the async disconnect 
between master and slave submission on both ends. That's why Xiaogang 
was saying slaves must not have no-preempt set... But sentinel on 
everything? Or just everything vcs and gen11+?

So if we indeed had slave preemptible the deadlock would have been 
avoided I think, but can the media pipeline handle that is the question.

Another question is that it sounds it could be possible to work around 
this in userspace, combined with this patch (original thread), if a 
fence was used to block master until slave is submitted.

  split_fence = sw_fence_create()
  execbuf(master, in_fence = split_fence) = master_fence
  execbuf(slave, submit_fence = master_fence)
  sw_fence_advance(split_fence)

That would make sure the single port and no-preempt properties are 
applied before either master or slave can enter elsp.

Sounds tempting to try, thoughts?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
