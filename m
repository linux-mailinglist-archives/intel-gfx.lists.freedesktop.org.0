Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 119F51F9CFA
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 18:19:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 657776E3B5;
	Mon, 15 Jun 2020 16:19:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C12F76E3B5
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2020 16:19:11 +0000 (UTC)
IronPort-SDR: 57VyIRhYYos7TdRIGuhrlG94hYlF9zmrJVg1vJUDF2xkfMUZpQNGE61wm2Z4isVhHwyoZra+ng
 2ldUa7mLDatg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2020 09:19:11 -0700
IronPort-SDR: cMB01h7ZZuopMPxOBW0gL3rGPr1Jb2gypJdqkKVcFacSNNrhGABd2PF+6DBKk3Dvf0PxoaTfmx
 lX+jVefTPzuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,515,1583222400"; d="scan'208";a="262760405"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 15 Jun 2020 09:19:09 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 738765C2C94; Mon, 15 Jun 2020 19:16:30 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200615131120.18948-1-chris@chris-wilson.co.uk>
References: <20200615123920.17749-3-chris@chris-wilson.co.uk>
 <20200615131120.18948-1-chris@chris-wilson.co.uk>
Date: Mon, 15 Jun 2020 19:16:30 +0300
Message-ID: <877dw89ue9.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Add a safety submission flush
 in the heartbeat
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

> Just in case everything fails (like for example "missed interrupt
> syndrome" on Sandybridge), always flush the submission tasklet from the
> heartbeat. This papers over such issues, but will still appear as a
> second long glitch, and prevents us from detecting it unless we happen
> to be performing a timed test.
>
> v2: We rely on flush_submission() synchronizing with the tasklet on
> another CPU.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 23 +++++++++----------
>  .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |  3 +++
>  2 files changed, 14 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index d613cf31970c..31049e0bdb57 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1094,19 +1094,18 @@ void intel_engine_flush_submission(struct intel_engine_cs *engine)
>  {
>  	struct tasklet_struct *t = &engine->execlists.tasklet;
>  
> -	if (__tasklet_is_scheduled(t)) {
> -		local_bh_disable();
> -		if (tasklet_trylock(t)) {
> -			/* Must wait for any GPU reset in progress. */
> -			if (__tasklet_is_enabled(t))
> -				t->func(t->data);
> -			tasklet_unlock(t);
> -		}
> -		local_bh_enable();
> +	/* Synchronise and wait for the tasklet on another CPU */
> +	tasklet_kill(t);
> +
> +	/* Having cancelled the tasklet, ensure that is run */
> +	local_bh_disable();
> +	if (tasklet_trylock(t)) {
> +		/* Must wait for any GPU reset in progress. */
> +		if (__tasklet_is_enabled(t))

On heartbeat context this could be an assertion I think.

But it is difficult to enforce hw sanity and still please the
user.

They will curse on glitch, even tho thye are saved!

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

-Mika

> +			t->func(t->data);
> +		tasklet_unlock(t);
>  	}
> -
> -	/* Otherwise flush the tasklet if it was running on another cpu */
> -	tasklet_unlock_wait(t);
> +	local_bh_enable();
>  }
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> index f67ad937eefb..cd20fb549b38 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> @@ -65,6 +65,9 @@ static void heartbeat(struct work_struct *wrk)
>  	struct intel_context *ce = engine->kernel_context;
>  	struct i915_request *rq;
>  
> +	/* Just in case everything has gone horribly wrong, give it a kick */
> +	intel_engine_flush_submission(engine);
> +
>  	rq = engine->heartbeat.systole;
>  	if (rq && i915_request_completed(rq)) {
>  		i915_request_put(rq);
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
