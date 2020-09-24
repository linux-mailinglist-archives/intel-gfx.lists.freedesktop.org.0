Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC10927727C
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 15:35:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 533636EADD;
	Thu, 24 Sep 2020 13:35:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 615256EADD
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 13:35:50 +0000 (UTC)
IronPort-SDR: exda9RM8/9tPtziEpBuAsOv/HFlkXmfjz3So0UZP7kxejMk6z5yPBNohDyx71Rcg5/o7SCxyEE
 PRA3VgQTN03A==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="162105898"
X-IronPort-AV: E=Sophos;i="5.77,297,1596524400"; d="scan'208";a="162105898"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 06:35:50 -0700
IronPort-SDR: xYueDg963HflFEGQZdmFiKalgrrcEt4jJAxDByKW/i3Ru72GSr9LlGyHSKjvGufKhyriSpnv7V
 5U7kjhmCRn+w==
X-IronPort-AV: E=Sophos;i="5.77,297,1596524400"; d="scan'208";a="486903083"
Received: from dsmahang-mobl2.ger.corp.intel.com (HELO [10.252.48.167])
 ([10.252.48.167])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 06:35:49 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200916094219.3878-1-chris@chris-wilson.co.uk>
 <20200916094219.3878-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <756c5947-dcc4-0a4e-e5b7-960d0afe8fd3@linux.intel.com>
Date: Thu, 24 Sep 2020 14:35:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200916094219.3878-2-chris@chris-wilson.co.uk>
Content-Language: en-US
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 16/09/2020 10:42, Chris Wilson wrote:
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
> ---
>   drivers/gpu/drm/i915/gt/intel_engine.h | 9 +++++++++
>   drivers/gpu/drm/i915/i915_request.c    | 5 +++++
>   2 files changed, 14 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index 08e2c000dcc3..7c3a1012e702 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -337,4 +337,13 @@ intel_engine_has_preempt_reset(const struct intel_engine_cs *engine)
>   	return intel_engine_has_preemption(engine);
>   }
>   
> +static inline bool
> +intel_engine_has_heartbeat(const struct intel_engine_cs *engine)
> +{
> +	if (!IS_ACTIVE(CONFIG_DRM_I915_HEARTBEAT_INTERVAL))
> +		return false;
> +
> +	return READ_ONCE(engine->props.heartbeat_interval_ms);
> +}
> +
>   #endif /* _INTEL_RINGBUFFER_H_ */
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 436ce368ddaa..0e813819b041 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -542,8 +542,13 @@ bool __i915_request_submit(struct i915_request *request)
>   	if (i915_request_completed(request))
>   		goto xfer;
>   
> +	if (unlikely(intel_context_is_closed(request->context) &&
> +		     !intel_engine_has_heartbeat(engine)))
> +		intel_context_set_banned(request->context);
> +
>   	if (unlikely(intel_context_is_banned(request->context)))
>   		i915_request_set_error_once(request, -EIO);
> +
>   	if (unlikely(fatal_error(request->fence.error)))
>   		__i915_request_skip(request);
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
