Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FE92F4CE8
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 15:16:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E56D6EA01;
	Wed, 13 Jan 2021 14:16:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08D2C6EA01
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 14:16:39 +0000 (UTC)
IronPort-SDR: S99n4nui5yf1ngYZgyxTn5gMnQz5X4jdk19wmeBEMu33LDj7LNqi1Nvgiood7jQFuRAK43B75S
 +4SrcyHtzfsg==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="157982873"
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="157982873"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 06:16:39 -0800
IronPort-SDR: MEbv50MA+v/8aDl1Mey5z/BsuPdtu0AHd8jnDUY1WR9FUCcSOKopYMOP83Dq3+0Q+Vl+Zq/BYv
 2r341NBESjtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="572037155"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 13 Jan 2021 06:16:38 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 8E8FF5C2054; Wed, 13 Jan 2021 16:13:57 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210113125939.10205-1-chris@chris-wilson.co.uk>
References: <20210113125155.1029-1-chris@chris-wilson.co.uk>
 <20210113125939.10205-1-chris@chris-wilson.co.uk>
Date: Wed, 13 Jan 2021 16:13:57 +0200
Message-ID: <87czy8lyai.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Bump the scheduling
 threshold for fast heartbeats
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
> assertions. Accept this as inevitable and bump the error threshold to
> 20ms (from 6ms).
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> index b88aa35ad75b..e88a01390dc5 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> @@ -197,6 +197,7 @@ static int cmp_u32(const void *_a, const void *_b)
>  
>  static int __live_heartbeat_fast(struct intel_engine_cs *engine)
>  {
> +	const int error_threshold = max(20000, jffies_to_usecs(6));

s/jffies/jiffies

Also for the commit message, 6 jiffies are not 6ms so it needs
some mending.

-Mika

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
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
