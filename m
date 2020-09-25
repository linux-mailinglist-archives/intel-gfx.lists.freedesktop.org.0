Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A05E2278586
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 13:04:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1701E6EC7E;
	Fri, 25 Sep 2020 11:04:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B40BD6EC7E
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Sep 2020 11:04:15 +0000 (UTC)
IronPort-SDR: r4y+1CC9r9o1PmZL/CJo4pOH3hnzQToqYnM7lxWcAMxdoD4+33pgv/xXRPu8pr/bfmkEtzudOA
 KTR2zIXf1QfA==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="246277266"
X-IronPort-AV: E=Sophos;i="5.77,301,1596524400"; d="scan'208";a="246277266"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 04:04:15 -0700
IronPort-SDR: CZKxz2YcHMrBDhdnoMh8DD78AiwgTgMk1XCVVcCYnfZJQLRgFcQ81bh37+XfqstdE/qgjOUxwZ
 n4owsiso+BtA==
X-IronPort-AV: E=Sophos;i="5.77,301,1596524400"; d="scan'208";a="455786504"
Received: from gkeaveny-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.30.201])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 04:04:12 -0700
MIME-Version: 1.0
In-Reply-To: <20200916094219.3878-2-chris@chris-wilson.co.uk>
References: <20200916094219.3878-1-chris@chris-wilson.co.uk>
 <20200916094219.3878-2-chris@chris-wilson.co.uk>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160103184907.9735.4650760110326834457@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Fri, 25 Sep 2020 14:04:09 +0300
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Cancel outstanding work after
 disabling heartbeats on an engine
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-09-16 12:42:17)
> We only allow persistent requests to remain on the GPU past the closure
> of their containing context (and process) so long as they are continuously
> checked for hangs or allow other requests to preempt them, as we need to
> ensure forward progress of the system. If we allow persistent contexts
> to remain on the system after the the hangcheck mechanism is disabled,
> the system may grind to a halt. On disabling the mechanism, we sent a
> pulse along the engine to remove all executing contexts from the engine
> which would check for hung contexts -- but we did not prevent those
> contexts from being resubmitted if they survived the final hangcheck.
> 
> Fixes: 9a40bddd47ca ("drm/i915/gt: Expose heartbeat interval via sysfs")
> Testcase: igt/gem_ctx_persistence/heartbeat-stop
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v5.7+

Definitely makes sense to ensure.

Acked-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Regards, Joonas

> ---
>  drivers/gpu/drm/i915/gt/intel_engine.h | 9 +++++++++
>  drivers/gpu/drm/i915/i915_request.c    | 5 +++++
>  2 files changed, 14 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index 08e2c000dcc3..7c3a1012e702 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -337,4 +337,13 @@ intel_engine_has_preempt_reset(const struct intel_engine_cs *engine)
>         return intel_engine_has_preemption(engine);
>  }
>  
> +static inline bool
> +intel_engine_has_heartbeat(const struct intel_engine_cs *engine)
> +{
> +       if (!IS_ACTIVE(CONFIG_DRM_I915_HEARTBEAT_INTERVAL))
> +               return false;
> +
> +       return READ_ONCE(engine->props.heartbeat_interval_ms);
> +}
> +
>  #endif /* _INTEL_RINGBUFFER_H_ */
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 436ce368ddaa..0e813819b041 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -542,8 +542,13 @@ bool __i915_request_submit(struct i915_request *request)
>         if (i915_request_completed(request))
>                 goto xfer;
>  
> +       if (unlikely(intel_context_is_closed(request->context) &&
> +                    !intel_engine_has_heartbeat(engine)))
> +               intel_context_set_banned(request->context);
> +
>         if (unlikely(intel_context_is_banned(request->context)))
>                 i915_request_set_error_once(request, -EIO);
> +
>         if (unlikely(fatal_error(request->fence.error)))
>                 __i915_request_skip(request);
>  
> -- 
> 2.20.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
