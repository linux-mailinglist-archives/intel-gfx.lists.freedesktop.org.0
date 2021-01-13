Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A12A22F4906
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 11:55:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0728C6E41B;
	Wed, 13 Jan 2021 10:55:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 500806E41B
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 10:55:23 +0000 (UTC)
IronPort-SDR: n4RV18PgkKp4B73hdyFHTBN12jO4eQL9N3h/2T0fYEtz+f2OnTaGApCGvBHHfA1qG1H0bQUVZA
 1Kf23gwdew1Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="178333306"
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="178333306"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 02:55:22 -0800
IronPort-SDR: waFRfJitg37wke+i7p47PAf7wIX0cK0hGQHkNRqm21PE4Q5+vnHNxhvQAEL5suJ+x+DXJ+PVGC
 gnv1o9A1iX8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="567818152"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga005.jf.intel.com with ESMTP; 13 Jan 2021 02:55:21 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 1F1F15C2054; Wed, 13 Jan 2021 12:52:40 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <161048398029.9280.6299529944985317684@build.alporthouse.com>
References: <20210108105608.18424-1-chris@chris-wilson.co.uk>
 <87im82klo9.fsf@gaia.fi.intel.com>
 <161048398029.9280.6299529944985317684@build.alporthouse.com>
Date: Wed, 13 Jan 2021 12:52:40 +0200
Message-ID: <87ft35kt1j.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Rearrange ktime_get to
 reduce latency against CS
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Quoting Mika Kuoppala (2021-01-12 19:19:34)
>> Chris Wilson <chris@chris-wilson.co.uk> writes:
>> 
>> > In our tests where we measure the elapsed time on both the CPU and CS
>> > using a udelay, our CS results match the udelay much more accurately
>> > than the ktime (even when using ktime_get_fast_ns). With preemption
>> > disabled, we can go one step lower than ktime and use local_clock.
>> >
>> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2919
>> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> > ---
>> >  drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 4 ++--
>> >  1 file changed, 2 insertions(+), 2 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>> > index ca080445695e..c3d965279fc3 100644
>> > --- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>> > +++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>> > @@ -112,11 +112,11 @@ static int __measure_timestamps(struct intel_context *ce,
>> >  
>> >       /* Run the request for a 100us, sampling timestamps before/after */
>> >       preempt_disable();
>> 
>> Do you need to promote this to local_irq_disable() ?
>
> Good suggestion. Will try to remember if we still see discrepancies...
>
> Interrupt handlers are meant to <5us, right???

With both test types, we might sometimes find out what they are :)

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
