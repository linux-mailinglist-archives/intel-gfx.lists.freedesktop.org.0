Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F7E212028
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 11:39:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55C3F6E0AA;
	Thu,  2 Jul 2020 09:39:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A4DB6E0AA
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 09:39:56 +0000 (UTC)
IronPort-SDR: 7zrXVz0ZvMN2dKVyl/xZLQJa0vTfhYEgP+cf3NGJIV3ewFKn9wMAwojdpRTLxoUn0Crove+j5m
 tQ72DNwyqDBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="134297294"
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="134297294"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 02:39:55 -0700
IronPort-SDR: Erzc3Hit1WiOIw9KIhLqZUHHhG3ePE8ehOYqy8qteBDmvTkKzlaaQNgLcOMXkCPVe3Km+YhLTG
 Maj9gHpyQGRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="312974278"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga008.jf.intel.com with ESMTP; 02 Jul 2020 02:39:54 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 356645C0D84; Thu,  2 Jul 2020 12:39:43 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200701084053.6086-1-chris@chris-wilson.co.uk>
References: <20200701084053.6086-1-chris@chris-wilson.co.uk>
Date: Thu, 02 Jul 2020 12:39:43 +0300
Message-ID: <87d05e45nk.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/33] drm/i915/gt: Harden the heartbeat
 against a stuck driver
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

> If the driver get stuck holding the kernel timeline, we cannot issue a
> heartbeat and so fail to discover that the driver is indeed stuck and do
> not issue a GPU reset (which would hopefully unstick the driver!).
> Switch to using a trylock so that we can query if the heartbeat's
> timelin mutex is locked elsewhere, and then use the timer to probe if it

timeline

> remains stuck at the same spot for consecutive heartbeats, indicating
> that the mutex has not been released and the engine has not progressed.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c | 14 ++++++++++++--
>  drivers/gpu/drm/i915/gt/intel_engine_types.h     |  1 +
>  2 files changed, 13 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> index 8db7e93abde5..1663ab5c68a5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> @@ -65,6 +65,7 @@ static void heartbeat(struct work_struct *wrk)
>  		container_of(wrk, typeof(*engine), heartbeat.work.work);
>  	struct intel_context *ce = engine->kernel_context;
>  	struct i915_request *rq;
> +	unsigned long serial;
>  
>  	/* Just in case everything has gone horribly wrong, give it a kick */
>  	intel_engine_flush_submission(engine);
> @@ -122,10 +123,19 @@ static void heartbeat(struct work_struct *wrk)
>  		goto out;
>  	}
>  
> -	if (engine->wakeref_serial == engine->serial)
> +	serial = READ_ONCE(engine->serial);
> +	if (engine->wakeref_serial == serial)
>  		goto out;
>  
> -	mutex_lock(&ce->timeline->mutex);
> +	if (!mutex_trylock(&ce->timeline->mutex)) {
> +		/* Unable to lock the kernel timeline, is the engine stuck? */
> +		if (xchg(&engine->heartbeat.blocked, serial) == serial)
> +			intel_gt_handle_error(engine->gt, engine->mask,
> +					      I915_ERROR_CAPTURE,
> +					      "stopped heartbeat on %s",
> +					      engine->name);
> +		goto out;
> +	}

This should do the trick. I was worried on the submit signal (fence) block being
empty above in this function that what happens if we never manage to
submit.

But this should cover that case also.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  
>  	intel_context_enter(ce);
>  	rq = __i915_request_create(ce, GFP_NOWAIT | __GFP_NOWARN);
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 073c3769e8cc..490af81bd6f3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -348,6 +348,7 @@ struct intel_engine_cs {
>  	struct {
>  		struct delayed_work work;
>  		struct i915_request *systole;
> +		unsigned long blocked;
>  	} heartbeat;
>  
>  	unsigned long serial;
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
