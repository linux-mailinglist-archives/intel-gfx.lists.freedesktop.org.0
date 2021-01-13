Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3656E2F4F68
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 17:03:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F22D66EB07;
	Wed, 13 Jan 2021 16:03:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59FC66EB07
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 16:03:30 +0000 (UTC)
IronPort-SDR: WsN3L8Aen5N8opJyIUCT1qpxXvhkO7w+6zw9+wcBz5w0gGMJ+E3tCOxLssAudGlGsvnJv8Ysgy
 yvW/4NHLQUoA==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="174717789"
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="174717789"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 08:02:55 -0800
IronPort-SDR: wuS4I8j8eJtH8tzzy43ym7VfjVfb4c7Qk9/eEg5OdihKqV0MXGh5DCvMX+cMt9lDKUA8OfQZVB
 AQyzf2o30xuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="381905798"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga008.jf.intel.com with ESMTP; 13 Jan 2021 08:02:52 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id EAF0E5C2054; Wed, 13 Jan 2021 18:00:09 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210113144532.16979-1-chris@chris-wilson.co.uk>
References: <20210113125155.1029-1-chris@chris-wilson.co.uk>
 <20210113144532.16979-1-chris@chris-wilson.co.uk>
Date: Wed, 13 Jan 2021 18:00:09 +0200
Message-ID: <87a6tcltdi.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/selftests: Bump the scheduling
 error threshold for fast heartbeats
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

> Since we are system_highpri_wq, we expected the heartbeat to be
> scheduled promptly. However, we see delays of over 10ms upsetting our
> assertions. Accept this as inevitable and bump the minimum error
> threshold to 20ms (from 6 jiffies).
>
> <6> [616.784749] rcs0: Heartbeat delay: 3570us [2802, 9188]
> <6> [616.807790] bcs0: Heartbeat delay: 2111us [745, 4372]
> <6> [616.853776] vcs0: Heartbeat delay: 6485us [2424, 11637]
> <3> [616.859296] vcs0: Heartbeat delay was 6485us, expected less than 6000us
> <3> [616.860901] i915/intel_heartbeat_live_selftests: live_heartbeat_fast failed with error -22
>
> v2: More context from CI.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> index b88aa35ad75b..223ab88f7e57 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> @@ -197,6 +197,7 @@ static int cmp_u32(const void *_a, const void *_b)
>  
>  static int __live_heartbeat_fast(struct intel_engine_cs *engine)
>  {
> +	const unsigned int error_threshold = max(20000u, jiffies_to_usecs(6));
>  	struct intel_context *ce;
>  	struct i915_request *rq;
>  	ktime_t t0, t1;
> @@ -254,12 +255,18 @@ static int __live_heartbeat_fast(struct intel_engine_cs *engine)
>  		times[0],
>  		times[ARRAY_SIZE(times) - 1]);
>  
> -	/* Min work delay is 2 * 2 (worst), +1 for scheduling, +1 for slack */
> -	if (times[ARRAY_SIZE(times) / 2] > jiffies_to_usecs(6)) {
> +	/*
> +	 * Ideally, the upper bound on min work delay would be something like
> +	 * 2 * 2 (worst), +1 for scheduling, +1 for slack. In practice, we
> +	 * are, even with system_wq_highpri, at the mercy of the CPU scheduler
> +	 * and may be stuck behind some slow work for many millisecond. Such
> +	 * as our very own display workers.
> +	 */
> +	if (times[ARRAY_SIZE(times) / 2] > error_threshold) {
>  		pr_err("%s: Heartbeat delay was %uus, expected less than %dus\n",
>  		       engine->name,
>  		       times[ARRAY_SIZE(times) / 2],
> -		       jiffies_to_usecs(6));
> +		       error_threshold);
>  		err = -EINVAL;
>  	}
>  
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
