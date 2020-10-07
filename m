Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBB3285AAD
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Oct 2020 10:42:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C68E16E23B;
	Wed,  7 Oct 2020 08:42:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C8D96E23B
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 08:42:16 +0000 (UTC)
IronPort-SDR: d6tPWvWLShLmJ/kTl+Iu6ihpRoIBqtGfg29UUxHtY8cdt99Otc8CVsJHzgwZrmEI+QTXisxg3H
 zqUtgpthw1PQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9766"; a="144780454"
X-IronPort-AV: E=Sophos;i="5.77,346,1596524400"; d="scan'208";a="144780454"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 01:42:15 -0700
IronPort-SDR: 12MK1rBvt+uEw6GkXgZmw1XKQgLUsyGg0pdqfKCJAawt36rPhHoABBZCNHZgf1NeeaTR2YpWtX
 xvD7kCPu9jxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,346,1596524400"; d="scan'208";a="311646083"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga003.jf.intel.com with ESMTP; 07 Oct 2020 01:42:14 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 782C85C2038; Wed,  7 Oct 2020 11:40:47 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201006094653.7558-1-chris@chris-wilson.co.uk>
References: <20201002153256.28695-1-chris@chris-wilson.co.uk>
 <20201006094653.7558-1-chris@chris-wilson.co.uk>
Date: Wed, 07 Oct 2020 11:40:47 +0300
Message-ID: <87ft6qfmy8.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/gt: Track the most recent pulse
 for the heartbeat
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

> Since we track the idle_pulse for flushing the barriers and avoid
> re-emitting the pulse upon idling if no futher action is required, this
> also impacts the heartbeat. Before emitting a fresh heartbeat, we look
> at the engine idle status and assume that if the pulse was the last
> request emitted along the heartbeat, the engine is idling and a
> heartbeat pulse not required. This assumption fails, but we can reuse
> the idle pulse as the heartbeat if we are yet to emit one, and so track
> the status of that pulse for our engine health check.
>
> This impacts tgl/rcs0 as we rely on the heartbeat for our healthcheck for
> the normal preemption detection mechanism is disabled by default.
>
> Testcase: igt/gem_exec_schedule/preempt-hang/rcs0 #tgl
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> index 5067d0524d4b..9060385cd69e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> @@ -41,6 +41,8 @@ static void idle_pulse(struct intel_engine_cs *engine, struct i915_request *rq)
>  {
>  	engine->wakeref_serial = READ_ONCE(engine->serial) + 1;
>  	i915_request_add_active_barriers(rq);
> +	if (!engine->heartbeat.systole && intel_engine_has_heartbeat(engine))
> +		engine->heartbeat.systole = i915_request_get(rq);
>  }
>  
>  static void show_heartbeat(const struct i915_request *rq,
> @@ -144,8 +146,6 @@ static void heartbeat(struct work_struct *wrk)
>  		goto unlock;
>  
>  	idle_pulse(engine, rq);
> -	if (engine->i915->params.enable_hangcheck)
> -		engine->heartbeat.systole = i915_request_get(rq);
>  
>  	__i915_request_commit(rq);
>  	__i915_request_queue(rq, &attr);
> @@ -153,7 +153,7 @@ static void heartbeat(struct work_struct *wrk)
>  unlock:
>  	mutex_unlock(&ce->timeline->mutex);
>  out:
> -	if (!next_heartbeat(engine))
> +	if (!engine->i915->params.enable_hangcheck || !next_heartbeat(engine))
>  		i915_request_put(fetch_and_zero(&engine->heartbeat.systole));
>  	intel_engine_pm_put(engine);
>  }
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
