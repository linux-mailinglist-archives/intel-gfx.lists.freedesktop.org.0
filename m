Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4183195FE1
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 21:35:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A6176EA76;
	Fri, 27 Mar 2020 20:35:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAE436EA76
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 20:35:05 +0000 (UTC)
IronPort-SDR: xlelD2cUEzHX5q8ws+DXDXkvqohYIqxURRD6i/REH+JVfTlvSw5r+NHb03pQ5xqH7mAkaiXDCw
 82Z8sjl5Cjiw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 13:35:05 -0700
IronPort-SDR: hM8RpfPs8LbLq6tMxAbrcLKcIh3v/KlCKVJz1zW3GMfG4A9hRKG84tRLqkWZp9cv6gqt4+Y521
 E03Ql5CF78Vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,313,1580803200"; d="scan'208";a="241052759"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 27 Mar 2020 13:35:03 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 491F25C1DB3; Fri, 27 Mar 2020 22:33:29 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200327201433.21864-1-chris@chris-wilson.co.uk>
References: <20200327201433.21864-1-chris@chris-wilson.co.uk>
Date: Fri, 27 Mar 2020 22:33:29 +0200
Message-ID: <87blohzgfa.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [CI] drm/i915/execlists: Workaround switching back
 to a complete context
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

> In what seems remarkably similar to the w/a required to not reload an
> idle context with HEAD==TAIL, it appears we must prevent the HW from
> switching to an idle context in ELSP[1], while simultaneously trying to
> preempt the HW to run another context and a continuation of the idle
> context (which is no longer idle).
>
> We can achieve this by preventing the context from completing while we
> reload a new ELSP (by applying ring_set_paused(1) across the whole of
> dequeue), except this eventually fails due to a lite-restore into a
> waiting semaphore does not generate an ACK. Instead, we try to avoid
> making the GPU do anything too challenging and not submit a new ELSP
> while the interrupts + CSB events appear to have fallen behind the
> completed contexts. We expect it to catch up shortly so we queue another
> tasklet execution and hope for the best.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1501
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 26 +++++++++++++++++++++++---
>  1 file changed, 23 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index b12355048501..5f17ece07858 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1915,11 +1915,26 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>  	 * of trouble.
>  	 */
>  	active = READ_ONCE(execlists->active);
> -	while ((last = *active) && i915_request_completed(last))
> -		active++;
>  
> -	if (last) {
> +	/*
> +	 * In theory we can skip over completed contexts that have not
> +	 * yet been processed by events (as those events are in flight):
> +	 *
> +	 * while ((last = *active) && i915_request_completed(last))
> +	 *	active++;
> +	 *
> +	 * However, the GPU is cannot handle this as it will ultimately

s/is//

I applaud the straightforward nature of this compared to the pausing.
Albeit this seems to have a cost. 

But this should be quite rare event comparatively?

> +	 * find itself trying to jump back into a context it has just
> +	 * completed and barf.
> +	 */
> +
> +	if ((last = *active)) {
>  		if (need_preempt(engine, last, rb)) {
> +			if (i915_request_completed(last)) {
> +				tasklet_hi_schedule(&execlists->tasklet);
> +				return;
> +			}
> +

I was pondering of the lost tracing and if you can
work it backwards to this condition.

But I really hope this nails it,
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  			ENGINE_TRACE(engine,
>  				     "preempting last=%llx:%lld, prio=%d, hint=%d\n",
>  				     last->fence.context,
> @@ -1947,6 +1962,11 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>  			last = NULL;
>  		} else if (need_timeslice(engine, last) &&
>  			   timer_expired(&engine->execlists.timer)) {
> +			if (i915_request_completed(last)) {
> +				tasklet_hi_schedule(&execlists->tasklet);
> +				return;
> +			}
> +
>  			ENGINE_TRACE(engine,
>  				     "expired last=%llx:%lld, prio=%d, hint=%d\n",
>  				     last->fence.context,
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
