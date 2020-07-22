Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A342922932E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jul 2020 10:12:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9BD76E7D7;
	Wed, 22 Jul 2020 08:12:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58D896E7D4
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jul 2020 08:12:19 +0000 (UTC)
IronPort-SDR: MqcnWBQ1FWbrGbwV6TwLlIsRW0jJV9A/twVrjGe6Zo6uo24JmqOx8r97/Oizku7FiaNAr4Hc/G
 VVgAqBu/eBEg==
X-IronPort-AV: E=McAfee;i="6000,8403,9689"; a="149455436"
X-IronPort-AV: E=Sophos;i="5.75,381,1589266800"; d="scan'208";a="149455436"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 01:12:18 -0700
IronPort-SDR: V+CeKPiFGC/u3EQG8O/fNV+5jjKBa4xmzgWbrgDu8Q4yy1S/5qVMvXu+LU3k8Vuo8lu+9E0MG7
 E9fKtOAK/VcA==
X-IronPort-AV: E=Sophos;i="5.75,381,1589266800"; d="scan'208";a="284146210"
Received: from unknown (HELO [10.214.224.104]) ([10.214.224.104])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 01:12:17 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200720092312.16975-1-chris@chris-wilson.co.uk>
 <20200720092312.16975-5-chris@chris-wilson.co.uk>
 <19078363-d740-4a17-45b5-aa84316b6a16@linux.intel.com>
 <159525732054.15672.10561761760642698977@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a764e063-b62f-ccb9-24df-b52fa6caa13e@linux.intel.com>
Date: Wed, 22 Jul 2020 09:12:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <159525732054.15672.10561761760642698977@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/10] drm/i915/gt: Distinguish the virtual
 breadcrumbs from the irq breadcrumbs
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


On 20/07/2020 16:02, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-07-20 12:23:35)
>>
>> On 20/07/2020 10:23, Chris Wilson wrote:
>>> -void intel_engine_init_breadcrumbs(struct intel_engine_cs *engine)
>>> +struct intel_breadcrumbs *
>>> +intel_breadcrumbs_create(struct intel_engine_cs *irq_engine)
>>>    {
>>> -     struct intel_breadcrumbs *b = &engine->breadcrumbs;
>>> +     struct intel_breadcrumbs *b;
>>> +
>>> +     b = kzalloc(sizeof(*b), GFP_KERNEL);
>>> +     if (!b)
>>> +             return NULL;
>>>    
>>>        spin_lock_init(&b->irq_lock);
>>>        INIT_LIST_HEAD(&b->signalers);
>>>        INIT_LIST_HEAD(&b->signaled_requests);
>>>    
>>>        init_irq_work(&b->irq_work, signal_irq_work);
>>> +
>>> +     b->irq_engine = irq_engine;
>>> +     if (!irq_engine)
>>> +             b->irq_armed = true; /* fake HW, used for irq_work */
>>
>> Disarm is checking for !b->irq_engine and arm asserts there must be when
>> arming. If instead arm would abort on !b->irq_engine would it all work
>> just as well without the need for this hack?
> 
> Yes, it is asymmetric. I thought keeping the asymmetry in place for the
> conversion would be simpler, but didn't really make an attempt to make
> irq_armed behave as one would expect.

You think it's not as simple as early return in arm if on irq engine?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
