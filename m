Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2582F39F8
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 20:22:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 179FE89CB8;
	Tue, 12 Jan 2021 19:22:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AFAD89CB8
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 19:22:16 +0000 (UTC)
IronPort-SDR: 0mDECYe4K+x/h/2EqDN48wNQR76yT7qHxATCvARg2zV0+pffUoo4SQTD0EN6a+EQj5HhpyMjF5
 6H9oPdTtb4RQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="174587686"
X-IronPort-AV: E=Sophos;i="5.79,342,1602572400"; d="scan'208";a="174587686"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 11:22:16 -0800
IronPort-SDR: 5FO6AoThE0Dma72a4bldooE66O3kqzJ9Mhpx/tYXA0APVp3a/Qra5ETEqWRMtBJqL2z2Rr6tH9
 R7lN3GV72VzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,342,1602572400"; d="scan'208";a="389261182"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga007.jf.intel.com with ESMTP; 12 Jan 2021 11:22:14 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 596A45C2054; Tue, 12 Jan 2021 21:19:34 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210108105608.18424-1-chris@chris-wilson.co.uk>
References: <20210108105608.18424-1-chris@chris-wilson.co.uk>
Date: Tue, 12 Jan 2021 21:19:34 +0200
Message-ID: <87im82klo9.fsf@gaia.fi.intel.com>
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> In our tests where we measure the elapsed time on both the CPU and CS
> using a udelay, our CS results match the udelay much more accurately
> than the ktime (even when using ktime_get_fast_ns). With preemption
> disabled, we can go one step lower than ktime and use local_clock.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2919
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> index ca080445695e..c3d965279fc3 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> @@ -112,11 +112,11 @@ static int __measure_timestamps(struct intel_context *ce,
>  
>  	/* Run the request for a 100us, sampling timestamps before/after */
>  	preempt_disable();

Do you need to promote this to local_irq_disable() ?
-Mika

> -	*dt = ktime_get_raw_fast_ns();
> +	*dt = local_clock();
>  	write_semaphore(&sema[2], 0);
>  	udelay(100);
> +	*dt = local_clock() - *dt;
>  	write_semaphore(&sema[2], 1);
> -	*dt = ktime_get_raw_fast_ns() - *dt;
>  	preempt_enable();
>  
>  	if (i915_request_wait(rq, 0, HZ / 2) < 0) {
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
