Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 469B3159315
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 16:24:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AF146EA94;
	Tue, 11 Feb 2020 15:24:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3789D6EA94
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 15:24:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 07:24:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="280959101"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Feb 2020 07:24:23 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 249445C0D8C; Tue, 11 Feb 2020 17:23:24 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200210205722.794180-3-chris@chris-wilson.co.uk>
References: <20200210205722.794180-1-chris@chris-wilson.co.uk>
 <20200210205722.794180-3-chris@chris-wilson.co.uk>
Date: Tue, 11 Feb 2020 17:23:24 +0200
Message-ID: <87a75p9mhf.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915/selftests: Relax timeout for
 error-interrupt reset processing
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

> We can not require that the system process a tasklet in reasonable time
> (thanks be to ksoftirqd), but we can insist that having waited
> sufficiently for the error interrupt to have been raised and having
> kicked the tasklet, the reset has begun and the request will be marked
> as in error (if not already completed).
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 15 +++++++++++----
>  1 file changed, 11 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 8b7383f6d9b3..ccd4cd2c202d 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -503,14 +503,21 @@ static int live_error_interrupt(void *arg)
>  			}
>  
>  			for (i = 0; i < ARRAY_SIZE(client); i++) {
> -				if (i915_request_wait(client[i], 0, HZ / 5) < 0) {
> -					pr_err("%s: %s request still executing!\n",
> -					       engine->name,
> -					       error_repr(p->error[i]));
> +				if (i915_request_wait(client[i], 0, HZ / 5) < 0)
> +					pr_debug("%s: %s request incomplete!\n",
> +						 engine->name,
> +						 error_repr(p->error[i]));
> +
> +				if (!i915_request_started(client[i])) {
> +					pr_debug("%s: %s request not stated!\n",
> +						 engine->name,
> +						 error_repr(p->error[i]));
>  					err = -ETIME;
>  					goto out;
>  				}
>  
> +				/* Kick the tasklet to process the error */
> +				intel_engine_flush_submission(engine);

This pattern of usage in selftests makes me want to add mb(); to
intel_engine_flush_submission(), as it does not seem to do it
implicitly.

We want to flush submission and observe the effects, thus
it seems like a good place.

Not in a scope of this patch tho,
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

-Mika

>  				if (client[i]->fence.error != p->error[i]) {
>  					pr_err("%s: %s request completed with wrong error code: %d\n",
>  					       engine->name,
> -- 
> 2.25.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
