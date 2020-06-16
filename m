Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA5F1FABBB
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 10:59:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65E6889EEB;
	Tue, 16 Jun 2020 08:59:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2EFA89EEB
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 08:59:39 +0000 (UTC)
IronPort-SDR: LdsABKhj1evR3CYaPgF6YDgUVGDiN9y7W1LlNhTzficze2DkpGb8rzYJklgTxlNjFsZHeQ2JoV
 s95lmqDbzOLA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 01:59:39 -0700
IronPort-SDR: rozbAR25pEdCWIV4FxQRHkXMw9uXqopoRwUwqYamcmy/AARIVrnCJLfPXyAew4FSHXOLrgA+ji
 b0T+U8UWzEhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="308395094"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga008.jf.intel.com with ESMTP; 16 Jun 2020 01:59:38 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id A00215C2C1C; Tue, 16 Jun 2020 11:56:58 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200616084141.3722-2-chris@chris-wilson.co.uk>
References: <20200616084141.3722-1-chris@chris-wilson.co.uk>
 <20200616084141.3722-2-chris@chris-wilson.co.uk>
Date: Tue, 16 Jun 2020 11:56:58 +0300
Message-ID: <877dw7s811.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/selftests: Use friendly
 request names for live_timeslice_rewind
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

> Rather than mixing [012] and (A1, A2, B2) for the request indices, use
> the enums throughout.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Yes, much more friendlier.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 3d088116a055..72d52c9c042f 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -1176,18 +1176,18 @@ static int live_timeslice_rewind(void *arg)
>  			goto err;
>  		}
>  
> -		rq[0] = create_rewinder(ce, NULL, slot, X);
> -		if (IS_ERR(rq[0])) {
> +		rq[A1] = create_rewinder(ce, NULL, slot, X);
> +		if (IS_ERR(rq[A1])) {
>  			intel_context_put(ce);
>  			goto err;
>  		}
>  
> -		rq[1] = create_rewinder(ce, NULL, slot, Y);
> +		rq[A2] = create_rewinder(ce, NULL, slot, Y);
>  		intel_context_put(ce);
> -		if (IS_ERR(rq[1]))
> +		if (IS_ERR(rq[A2]))
>  			goto err;
>  
> -		err = wait_for_submit(engine, rq[1], HZ / 2);
> +		err = wait_for_submit(engine, rq[A2], HZ / 2);
>  		if (err) {
>  			pr_err("%s: failed to submit first context\n",
>  			       engine->name);
> @@ -1200,12 +1200,12 @@ static int live_timeslice_rewind(void *arg)
>  			goto err;
>  		}
>  
> -		rq[2] = create_rewinder(ce, rq[0], slot, Z);
> +		rq[B1] = create_rewinder(ce, rq[A1], slot, Z);
>  		intel_context_put(ce);
>  		if (IS_ERR(rq[2]))
>  			goto err;
>  
> -		err = wait_for_submit(engine, rq[2], HZ / 2);
> +		err = wait_for_submit(engine, rq[B1], HZ / 2);
>  		if (err) {
>  			pr_err("%s: failed to submit second context\n",
>  			       engine->name);
> @@ -1213,6 +1213,7 @@ static int live_timeslice_rewind(void *arg)
>  		}
>  
>  		/* ELSP[] = { { A:rq1, A:rq2 }, { B:rq1 } } */
> +		ENGINE_TRACE(engine, "forcing tasklet for rewind\n");
>  		if (i915_request_is_active(rq[A2])) { /* semaphore yielded! */
>  			/* Wait for the timeslice to kick in */
>  			del_timer(&engine->execlists.timer);
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
