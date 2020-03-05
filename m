Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E73DF17A486
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 12:46:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B74E46E0A1;
	Thu,  5 Mar 2020 11:46:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F8046E0A1
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 11:46:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 03:46:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,517,1574150400"; d="scan'208";a="259160198"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 05 Mar 2020 03:46:13 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 9D8DA5C1DDA; Thu,  5 Mar 2020 13:44:56 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200305082856.2595525-1-chris@chris-wilson.co.uk>
References: <20200305082856.2595525-1-chris@chris-wilson.co.uk>
Date: Thu, 05 Mar 2020 13:44:56 +0200
Message-ID: <87zhcv3u13.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Improve the start alignment of
 bonded pairs
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

> Always wait on the start of the signaler request to reduce the problem
> of dequeueing the bonded pair too early -- we want both payloads to
> start at the same time, with no latency, and yet still allow others to
> make full use of the slack in the system.
>
> Remindme: add testcases for starting the bonded pair too early due to an
> infinite spin before the signaler, and via a semaphore.
>
> Testcase: XXX
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_request.c | 33 ++++++++++++++++++++++++-----
>  1 file changed, 28 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 4bfe68edfc81..c0a0089111a1 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -1127,14 +1127,37 @@ __i915_request_await_execution(struct i915_request *to,
>  					  &from->fence))
>  		return 0;
>  
> -	/* Ensure both start together [after all semaphores in signal] */
> -	if (intel_engine_has_semaphores(to->engine))
> -		err = __emit_semaphore_wait(to, from, from->fence.seqno - 1);
> -	else
> -		err = i915_request_await_start(to, from);
> +	/*
> +	 * Wait until the start of this request.
> +	 *
> +	 * The execution cb fires when we submit the request to HW. But in
> +	 * many cases this may be long before the request itself is ready to
> +	 * run (consider that we submit 2 requests for the same context, where
> +	 * the request of interest is behind an indefinite spinner). So we hook
> +	 * up to both to reduce our queues tidy and execution lag minimised in
> +	 * the worst case, though we hope that the await_start is elided.
> +	 */
> +	err = i915_request_await_start(to, from);
>  	if (err < 0)
>  		return err;
>  
> +	/*
> +	 * Ensure both start together [after all semaphores in signal]
> +	 *
> +	 * Now that we are queued to the HW at roughly the same time (thanks
> +	 * to the execute cb) and are ready to run at roughly the same time
> +	 * (thanks to the await start), our signaler may still be indefinitely
> +	 * delayed by waiting on a semaphore from a remote engine. If our
> +	 * signaler depends on a sempahore, so indirectly do we, and we do not

s/sempahore/semaphore
-Mika

> +	 * want to start our payload until our signaler also starts theirs.
> +	 * So we wait.
> +	 */
> +	if (intel_engine_has_semaphores(to->engine) && from->sched.semaphores) {
> +		err = __emit_semaphore_wait(to, from, from->fence.seqno - 1);
> +		if (err < 0)
> +			return err;
> +	}
> +
>  	/* Couple the dependency tree for PI on this exposed to->fence */
>  	if (to->engine->schedule) {
>  		err = i915_sched_node_add_dependency(&to->sched, &from->sched);
> -- 
> 2.25.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
