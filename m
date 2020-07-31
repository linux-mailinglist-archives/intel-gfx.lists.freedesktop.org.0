Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53BB32348E4
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 18:06:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 210466EA5B;
	Fri, 31 Jul 2020 16:06:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12F336EA5B
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 16:06:25 +0000 (UTC)
IronPort-SDR: bPasHnoFP8ioIIn9yuh68zkYmAgTR/RdnUlt525WwlKybe9aGyyk83UC+5Crfm3euFimpq9Ta3
 p6Jdq42qr8/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="131877604"
X-IronPort-AV: E=Sophos;i="5.75,418,1589266800"; d="scan'208";a="131877604"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 09:06:17 -0700
IronPort-SDR: vXj2HHWxNFRdERtCowqZwGmIoHWdzthKw1eTsPQDzqARU4jZ09aTLe6G75CpKuM5fhmbVhj+U9
 yOMy88LMcbzQ==
X-IronPort-AV: E=Sophos;i="5.75,418,1589266800"; d="scan'208";a="465658773"
Received: from henyaffe-mobl2.ger.corp.intel.com (HELO [10.214.222.92])
 ([10.214.222.92])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 09:06:11 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200730093756.16737-1-chris@chris-wilson.co.uk>
 <20200730093756.16737-17-chris@chris-wilson.co.uk>
 <5d2020bf-c981-9b8b-f825-d4c88795ed0e@linux.intel.com>
 <159620835263.21624.6486195506614954052@build.alporthouse.com>
 <159620889211.21624.16106830089209931432@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <229eea77-f27f-594a-6413-16e530a495ee@linux.intel.com>
Date: Fri, 31 Jul 2020 17:06:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <159620889211.21624.16106830089209931432@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 16/21] drm/i915/gt: Track signaled
 breadcrumbs outside of the breadcrumb spinlock
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
Cc: thomas.hellstrom@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 31/07/2020 16:21, Chris Wilson wrote:
> Quoting Chris Wilson (2020-07-31 16:12:32)
>> Quoting Tvrtko Ursulin (2020-07-31 16:06:55)
>>>
>>> On 30/07/2020 10:37, Chris Wilson wrote:
>>>> @@ -191,17 +188,19 @@ static void signal_irq_work(struct irq_work *work)
>>>>    {
>>>>        struct intel_breadcrumbs *b = container_of(work, typeof(*b), irq_work);
>>>>        const ktime_t timestamp = ktime_get();
>>>> +     struct llist_node *signal, *sn;
>>>>        struct intel_context *ce, *cn;
>>>>        struct list_head *pos, *next;
>>>> -     LIST_HEAD(signal);
>>>> +
>>>> +     signal = NULL;
>>>> +     if (unlikely(!llist_empty(&b->signaled_requests)))
>>>> +             signal = llist_del_all(&b->signaled_requests);
>>>>    
>>>>        spin_lock(&b->irq_lock);
>>>>    
>>>> -     if (list_empty(&b->signalers))
>>>> +     if (!signal && list_empty(&b->signalers))
>>>
>>> The only open from previous round was on this change. If I understood
>>> your previous reply correctly, checking this or not simply controls the
>>> disarm point and is not related to this patch. With the check added now
>>> we would disarm later, because even already signaled requests would keep
>>> it armed. I would prefer this was a separate patch if you could possibly
>>> be convinced.
>>
>> I considered that since we add to the lockless list and then queue the
>> irq work, that is a path that is not driven by the interrupt and so
>> causing an issue with the idea of the interrupt shadow. Having a simple
>> test I thought was a positive side-effect to filter out the early
>> irq_work.
> 
> How about a compromise and I sell the patch with a comment:
>          /*
>           * Keep the irq armed until the interrupt after all listeners are gone.
>           *
>           * Enabling/disabling the interrupt is rather costly, roughly a couple
>           * of hundred microseconds. If we are proactive and enable/disable
>           * the interrupt around every request that wants a breadcrumb, we
>           * quickly drown in the extra orders of magnitude of latency imposed
>           * on request submission.
>           *
>           * So we try to be lazy, and keep the interrupts enabled until no
>           * more listeners appear within a breadcrumb interrupt interval (that
>           * is until a request completes that no one cares about). The
>           * observation is that listeners come in batches, and will often
>           * listen to a bunch of requests in succession.
>           *
>           * We also try to avoid raising too many interrupts, as they may
>           * be generated by userspace batches and it is unfortunately rather
>           * too easy to drown the CPU under a flood of GPU interrupts. Thus
>           * whenever no one appears to be listening, we turn off the interrupts.
>           * Fewer interrupts should conserve power -- at the very least, fewer
>           * interrupt draw less ire from other users of the system and tools
>           * like powertop.
> 	 */

It really feels like it should be a separate patch.

I am not sure at the moment how exactly the hysteresis this would apply 
would look like. The end point is driven by the requests on the signaled 
list, but that is also driven by the timing of listeners adding 
themselves versus the request completion. For instance maybe if we want 
a hysteresis we won't something more deterministic and explicit. Maybe 
tied directly to the user interrupt following no more listeners. Like 
simply disarm on the second irq work after all b->signalers have gone. I 
just can't picture the state or b->signaled_requests in relation to all 
dynamic actions.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
