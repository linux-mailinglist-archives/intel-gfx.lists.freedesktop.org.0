Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E04291F7E9C
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 23:59:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 398DA6E185;
	Fri, 12 Jun 2020 21:59:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 046856E185
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 21:58:58 +0000 (UTC)
IronPort-SDR: LOr3xzreGP+WI5zMPFWgLDwIdCzAeOMttc11wcT4PG/qvgmOajrbkuR37SynDj3n2ykDeIlQPu
 sMAi2dfAsb/w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 14:58:58 -0700
IronPort-SDR: gV2ytaF6sApxt3rOj9WPxsThh8qNyP63W0A9HripVMuHl6cWuTK6KvnMsriUgA3r40laJN/8bq
 gWQ42ljv+51Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,504,1583222400"; d="scan'208";a="260060010"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 12 Jun 2020 14:58:57 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id B929A5C2C94; Sat, 13 Jun 2020 00:56:20 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200612142551.30956-1-chris@chris-wilson.co.uk>
References: <20200612142551.30956-1-chris@chris-wilson.co.uk>
Date: Sat, 13 Jun 2020 00:56:20 +0300
Message-ID: <87imfwrlrv.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/execlists: Lift opportunistic
 process_csb to before engine lock
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

> Since the process_csb() does not require us to hold the
> engine->active.lock, we can move the opportunistic flush before
> direction submission to outside of the lock.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 21 ++++++++++++++-------
>  1 file changed, 14 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 5ab0ed35af84..e866b8d721ed 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -3170,13 +3170,6 @@ static void __submit_queue_imm(struct intel_engine_cs *engine)
>  	if (reset_in_progress(execlists))
>  		return; /* defer until we restart the engine following reset */
>  
> -	/* Hopefully we clear execlists->pending[] to let us through */
> -	if (READ_ONCE(execlists->pending[0]) &&
> -	    tasklet_trylock(&execlists->tasklet)) {
> -		process_csb(engine);
> -		tasklet_unlock(&execlists->tasklet);
> -	}
> -
>  	__execlists_submission_tasklet(engine);
>  }
>  
> @@ -3199,11 +3192,25 @@ static bool ancestor_on_hold(const struct intel_engine_cs *engine,
>  	return !list_empty(&engine->active.hold) && hold_request(rq);
>  }
>  
> +static void flush_csb(struct intel_engine_cs *engine)
> +{
> +	struct intel_engine_execlists *el = &engine->execlists;
> +
> +	if (READ_ONCE(el->pending[0]) && tasklet_trylock(&el->tasklet)) {
> +		if (!reset_in_progress(el))
> +			process_csb(engine);
> +		tasklet_unlock(&el->tasklet);
> +	}
> +}
> +
>  static void execlists_submit_request(struct i915_request *request)
>  {
>  	struct intel_engine_cs *engine = request->engine;
>  	unsigned long flags;
>  
> +	/* Hopefully we clear execlists->pending[] to let us through */
> +	flush_csb(engine);
> +
>  	/* Will be called from irq-context when using foreign fences. */
>  	spin_lock_irqsave(&engine->active.lock, flags);
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
