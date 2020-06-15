Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0EF1F9BFF
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 17:31:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81D8989D4B;
	Mon, 15 Jun 2020 15:31:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3401589F6F
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2020 15:31:49 +0000 (UTC)
IronPort-SDR: A7Zah2bRusaE+yUCEWS322uQIgSj+wIlh4m5UDycZCay2rBxqu8BGivgwENRv+rlsC9lq3ZOpR
 5oBM85JxQLkw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2020 08:31:48 -0700
IronPort-SDR: Ie/qLhv58quDZs4CJMjn9HV5k1pMFWYLf4rkWHdCb6xPUeP2HssLipQir4ZfJKqWHu8CBOMvmT
 5HHKPiQxVYDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,515,1583222400"; d="scan'208";a="261132857"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 15 Jun 2020 08:31:47 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id A30465C2C94; Mon, 15 Jun 2020 18:29:08 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200615123920.17749-1-chris@chris-wilson.co.uk>
References: <20200615123920.17749-1-chris@chris-wilson.co.uk>
Date: Mon, 15 Jun 2020 18:29:08 +0300
Message-ID: <87d0609wl7.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915/selftests: Disable
 preemptive heartbeats over preemption tests
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

> Since the heartbeat may cause a preemption event, disable it over the
> preemption suppression tests.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index f651bdf7f191..91543494f595 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -2282,7 +2282,7 @@ static int live_suppress_self_preempt(void *arg)
>  		if (igt_flush_test(gt->i915))
>  			goto err_wedged;
>  
> -		intel_engine_pm_get(engine);
> +		engine_heartbeat_disable(engine);
>  		engine->execlists.preempt_hang.count = 0;
>  
>  		rq_a = spinner_create_request(&a.spin,
> @@ -2290,14 +2290,14 @@ static int live_suppress_self_preempt(void *arg)
>  					      MI_NOOP);
>  		if (IS_ERR(rq_a)) {
>  			err = PTR_ERR(rq_a);
> -			intel_engine_pm_put(engine);
> +			engine_heartbeat_enable(engine);
>  			goto err_client_b;
>  		}
>  
>  		i915_request_add(rq_a);
>  		if (!igt_wait_for_spinner(&a.spin, rq_a)) {
>  			pr_err("First client failed to start\n");
> -			intel_engine_pm_put(engine);
> +			engine_heartbeat_enable(engine);
>  			goto err_wedged;
>  		}
>  
> @@ -2309,7 +2309,7 @@ static int live_suppress_self_preempt(void *arg)
>  						      MI_NOOP);
>  			if (IS_ERR(rq_b)) {
>  				err = PTR_ERR(rq_b);
> -				intel_engine_pm_put(engine);
> +				engine_heartbeat_enable(engine);
>  				goto err_client_b;
>  			}
>  			i915_request_add(rq_b);
> @@ -2320,7 +2320,7 @@ static int live_suppress_self_preempt(void *arg)
>  
>  			if (!igt_wait_for_spinner(&b.spin, rq_b)) {
>  				pr_err("Second client failed to start\n");
> -				intel_engine_pm_put(engine);
> +				engine_heartbeat_enable(engine);
>  				goto err_wedged;
>  			}
>  
> @@ -2334,12 +2334,12 @@ static int live_suppress_self_preempt(void *arg)
>  			       engine->name,
>  			       engine->execlists.preempt_hang.count,
>  			       depth);
> -			intel_engine_pm_put(engine);
> +			engine_heartbeat_enable(engine);
>  			err = -EINVAL;
>  			goto err_client_b;
>  		}
>  
> -		intel_engine_pm_put(engine);
> +		engine_heartbeat_enable(engine);
>  		if (igt_flush_test(gt->i915))
>  			goto err_wedged;
>  	}
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
