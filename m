Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0390234885
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 17:32:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2956E6EB08;
	Fri, 31 Jul 2020 15:32:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EA126EB08
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 15:32:10 +0000 (UTC)
IronPort-SDR: 86Bqp27V1lDS08t9xkHinkPhMfZ97vST/kcQIovq7K20KM6ErxMPEBS/jnkU5CR0TFhHEcx/Nu
 oDoIlBba55oQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="150998739"
X-IronPort-AV: E=Sophos;i="5.75,418,1589266800"; d="scan'208";a="150998739"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 08:32:09 -0700
IronPort-SDR: AdUFQRRS3SEw1uAwsTjhqOodL+UGq6SZHscRccrhiPUhZtmWXY+zdq/AavlPGlD6C1qG9am0vS
 6CgukZUm1gCg==
X-IronPort-AV: E=Sophos;i="5.75,418,1589266800"; d="scan'208";a="465647758"
Received: from henyaffe-mobl2.ger.corp.intel.com (HELO [10.214.222.92])
 ([10.214.222.92])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 08:32:07 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200730093756.16737-1-chris@chris-wilson.co.uk>
 <20200730093756.16737-17-chris@chris-wilson.co.uk>
 <5d2020bf-c981-9b8b-f825-d4c88795ed0e@linux.intel.com>
 <159620835263.21624.6486195506614954052@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ea6ace16-bea5-f71d-8fcf-a96fa61f7cef@linux.intel.com>
Date: Fri, 31 Jul 2020 16:32:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <159620835263.21624.6486195506614954052@build.alporthouse.com>
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


On 31/07/2020 16:12, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-07-31 16:06:55)
>>
>> On 30/07/2020 10:37, Chris Wilson wrote:
>>> @@ -191,17 +188,19 @@ static void signal_irq_work(struct irq_work *work)
>>>    {
>>>        struct intel_breadcrumbs *b = container_of(work, typeof(*b), irq_work);
>>>        const ktime_t timestamp = ktime_get();
>>> +     struct llist_node *signal, *sn;
>>>        struct intel_context *ce, *cn;
>>>        struct list_head *pos, *next;
>>> -     LIST_HEAD(signal);
>>> +
>>> +     signal = NULL;
>>> +     if (unlikely(!llist_empty(&b->signaled_requests)))
>>> +             signal = llist_del_all(&b->signaled_requests);
>>>    
>>>        spin_lock(&b->irq_lock);
>>>    
>>> -     if (list_empty(&b->signalers))
>>> +     if (!signal && list_empty(&b->signalers))
>>
>> The only open from previous round was on this change. If I understood
>> your previous reply correctly, checking this or not simply controls the
>> disarm point and is not related to this patch. With the check added now
>> we would disarm later, because even already signaled requests would keep
>> it armed. I would prefer this was a separate patch if you could possibly
>> be convinced.
> 
> I considered that since we add to the lockless list and then queue the
> irq work, that is a path that is not driven by the interrupt and so
> causing an issue with the idea of the interrupt shadow. Having a simple
> test I thought was a positive side-effect to filter out the early
> irq_work.

I don't really follow. I look at it like this: No active signalers so we 
can disarm. What is the purpose of keeping the interrupt enabled if all 
that is on list are already completed requests? They will get signaled 
in the very same run of signal_irq_work so I don't see a connection with 
lockless list and keeping the interrupts on for longer.

Regards,

Tvrtko

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
