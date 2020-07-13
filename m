Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F2F21D2E0
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 11:34:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD8FB6E190;
	Mon, 13 Jul 2020 09:34:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADF5A6E190
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2020 09:34:39 +0000 (UTC)
IronPort-SDR: TTZ+EtzB41EYeLxh9zXSQ8Z/iaGUl5Gz5nAg60eT+jJZawZKdaSRLnsD31CXOXMmbwV0WodTT8
 6l0Bqt3brfxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9680"; a="210119171"
X-IronPort-AV: E=Sophos;i="5.75,347,1589266800"; d="scan'208";a="210119171"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 02:34:39 -0700
IronPort-SDR: YFBOXUmfv3+YgN08JQeV8hMtr7VWjR5ZRYEKi7jw5jSgHoqv/XWsFcdoZ37m0zTwCs06/AMZJS
 Hc97ziLPLg/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,347,1589266800"; d="scan'208";a="485413947"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 13 Jul 2020 02:34:38 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 25C745C0D4C; Mon, 13 Jul 2020 12:34:17 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200711091349.28865-1-chris@chris-wilson.co.uk>
References: <20200711091349.28865-1-chris@chris-wilson.co.uk>
Date: Mon, 13 Jul 2020 12:34:17 +0300
Message-ID: <87mu433giu.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Always reset the engine,
 even if inactive, on execlists failure
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

> If something has gone awry with the CSB processing, we need to pause,
> unwind and restart the request submission and event processing. However,
> currently we skip the engine reset if we raise an error but discover no
> active context, in the mistaken belief that it was merely a glitch in
> the matrix. The glitches are real enough, and we do need to unwind even
> if the engine appears idle (as it has gone permanently idle!) The
> simplest way to unwind and recover is simply do the engine reset, which
> should be very fast and _safe_ as nothing is active.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index cd4262cc96e2..3ea05a86dc95 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -3029,12 +3029,12 @@ static u32 active_ccid(struct intel_engine_cs *engine)
>  	return ENGINE_READ_FW(engine, RING_EXECLIST_STATUS_HI);
>  }
>  
> -static bool execlists_capture(struct intel_engine_cs *engine)
> +static void execlists_capture(struct intel_engine_cs *engine)
>  {
>  	struct execlists_capture *cap;
>  
>  	if (!IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR))
> -		return true;
> +		return;
>  
>  	/*
>  	 * We need to _quickly_ capture the engine state before we reset.
> @@ -3043,7 +3043,7 @@ static bool execlists_capture(struct intel_engine_cs *engine)
>  	 */
>  	cap = capture_regs(engine);
>  	if (!cap)
> -		return true;
> +		return;
>  
>  	spin_lock_irq(&engine->active.lock);
>  	cap->rq = active_context(engine, active_ccid(engine));
> @@ -3080,14 +3080,13 @@ static bool execlists_capture(struct intel_engine_cs *engine)
>  
>  	INIT_WORK(&cap->work, execlists_capture_work);
>  	schedule_work(&cap->work);
> -	return true;
> +	return;
>  
>  err_rq:
>  	i915_request_put(cap->rq);
>  err_free:
>  	i915_gpu_coredump_put(cap->error);
>  	kfree(cap);
> -	return false;
>  }
>  
>  static void execlists_reset(struct intel_engine_cs *engine, const char *msg)
> @@ -3107,10 +3106,8 @@ static void execlists_reset(struct intel_engine_cs *engine, const char *msg)
>  	tasklet_disable_nosync(&engine->execlists.tasklet);
>  
>  	ring_set_paused(engine, 1); /* Freeze the current request in place */
> -	if (execlists_capture(engine))
> -		intel_engine_reset(engine, msg);
> -	else
> -		ring_set_paused(engine, 0);
> +	execlists_capture(engine);
> +	intel_engine_reset(engine, msg);
>  
>  	tasklet_enable(&engine->execlists.tasklet);
>  	clear_and_wake_up_bit(bit, lock);
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
