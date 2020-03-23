Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3531918F282
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 11:14:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81EF189E5B;
	Mon, 23 Mar 2020 10:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1215F89E5B
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 10:14:32 +0000 (UTC)
IronPort-SDR: M0cf3OPgZMTvyz2kLIvBPMS43iPr9NB6oRd+lms7g09NkdEIuCobEmKx6pT7cg9OnR3Y+WV3Da
 AyKPlemLY+fA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 03:14:30 -0700
IronPort-SDR: +B5oHWRY7XyqphcQqKqZuzXjA6USxfQnRNfphhaqGbTouIiPfZugK3VhxC7t7lxV2u1Kp+yb56
 bRi5r2020gMg==
X-IronPort-AV: E=Sophos;i="5.72,296,1580803200"; d="scan'208";a="419452610"
Received: from unknown (HELO [10.252.47.179]) ([10.252.47.179])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 03:14:29 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200323092841.22240-1-chris@chris-wilson.co.uk>
 <20200323092841.22240-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <aaee9d7c-fad6-9404-a4ce-848aeafef6fc@linux.intel.com>
Date: Mon, 23 Mar 2020 10:14:27 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200323092841.22240-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915/gt: Delay release of engine-pm
 after last retirement
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 23/03/2020 09:28, Chris Wilson wrote:
> Keep the engine-pm awake until the next jiffie, to avoid immediate
> ping-pong under moderate load. (Forcing the idle barrier excerbates the
> moderate load, dramatically increasing the driver overhead.) On the
> other hand, delaying the idle-barrier slightly incurs longer rc6-off
> and so more power consumption.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/848
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_context.c | 2 +-
>   drivers/gpu/drm/i915/i915_active.c      | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> index e4aece20bc80..622ff425fce9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> @@ -350,7 +350,7 @@ void intel_context_enter_engine(struct intel_context *ce)
>   void intel_context_exit_engine(struct intel_context *ce)
>   {
>   	intel_timeline_exit(ce->timeline);
> -	intel_engine_pm_put(ce->engine);
> +	intel_engine_pm_put_delay(ce->engine, 1);
>   }
>   
>   int intel_context_prepare_remote_request(struct intel_context *ce,
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> index c4048628188a..a0d31f7bfb42 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -818,7 +818,7 @@ void i915_active_acquire_barrier(struct i915_active *ref)
>   
>   		GEM_BUG_ON(!intel_engine_pm_is_awake(engine));
>   		llist_add(barrier_to_ll(node), &engine->barrier_tasks);
> -		intel_engine_pm_put(engine);
> +		intel_engine_pm_put_delay(engine, 1);
>   	}
>   }
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
