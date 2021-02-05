Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35172310835
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 10:49:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90A246F388;
	Fri,  5 Feb 2021 09:49:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 779F16F388
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 09:48:59 +0000 (UTC)
IronPort-SDR: auXNVVDu+QD01vQHhh7F0U+5DWiqhWZTihW+2EQs5++ghkfnlsY4pJQzg6dmEaurLvz7ATGcYx
 Ns0XTcRBmTng==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="180633975"
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="180633975"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 01:48:56 -0800
IronPort-SDR: mnvS2BuHZx9iukWvhZ1UFoONAiINpfVMEhmiZAhoH8MkpiqC+TegEy0iF3nIEBOkFvDVwF0ksV
 XC5vUQPH4f0A==
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="393785651"
Received: from ibriker-mobl.ger.corp.intel.com (HELO [10.249.46.109])
 ([10.249.46.109])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 01:48:55 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-30-chris@chris-wilson.co.uk>
 <f46141bd-5ec2-5b7a-5ab0-e6ce0b5baec8@linux.intel.com>
 <161245509589.3075.11559724927083884362@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8df777e9-46e8-6b66-5ffe-e68cfacb5ae0@linux.intel.com>
Date: Fri, 5 Feb 2021 09:48:54 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <161245509589.3075.11559724927083884362@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 30/57] drm/i915: Move timeslicing flag to
 scheduler
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


On 04/02/2021 16:11, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2021-02-04 15:18:31)
>>
>> On 01/02/2021 08:56, Chris Wilson wrote:
>>> Whether a scheduler chooses to implement timeslicing is up to it, and
>>> not an underlying property of the HW engine. The scheduler does depend
>>> on the HW supporting preemption.
>>
>> Therefore, continuing on the comment I made in the previous patch, if we
>> had a helper with which engine would request scheduling (setting the
>> tasklet), if it passed in a pointer to itself, scheduler would then be
>> able to inspect if the engine supports preemption and so set its own
>> internal flag. Makes sense? It would require something like:
> 
> Actually not keen on pushing the inspection into the core scheduler and
> would rather have the backend turn it on for itself. Because it's not
> just about the engine supporting preemption, it's about whether or not
> the backend wants to bother implement timeslicing itself.
> 
> If we skip to the end, it looks like this for execlists:
> 
>          i915_sched_init(&el->sched, i915->drm.dev,
>                          engine->name, engine->mask,
>                          &execlists_ops, engine);
> 
>          if (IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION) &&
>              intel_engine_has_preemption(engine))
>                  __set_bit(I915_SCHED_TIMESLICE_BIT, &el->sched.flags);
> 
>          if (intel_engine_has_preemption(engine)) {
>                  __set_bit(I915_SCHED_BUSYWAIT_BIT, &el->sched.flags);
>                  __set_bit(I915_SCHED_PREEMPT_RESET_BIT, &el->sched.flags);
>          }
> 
> with the virtual scheduler:
> 
>          ve->base.sched =
>                  i915_sched_create(ve->base.i915->drm.dev,
>                                    ve->base.name,
>                                    ve->base.mask,
>                                    &virtual_ops, ve);
>          if (!ve->base.sched) {
>                  err = -ENOMEM;
>                  goto err_put;
>          }
> 
>          ve->base.sched->flags |= sched; /* override submission method */
> 
> I think the virtual scheduler suggests that we can't rely on the
> scheduler core to dtrt by itself. And if you are still awake by the time
> we get to this point, how to avoid ve->base.sched->flags |= sched are
> welcome.

Not at the moment. Since it is details lets finish first and then see is 
my thinking.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
