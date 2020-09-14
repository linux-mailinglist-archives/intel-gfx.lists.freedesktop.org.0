Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0588F268EF1
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 17:05:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 980BF6E14D;
	Mon, 14 Sep 2020 15:05:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B8436E14D
 for <Intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 15:05:16 +0000 (UTC)
IronPort-SDR: Dp/WtYxx3somxUVU6nKaEtm6SzjZsSThpCJ+nU42gB0uLjtyDFHQf04/33379/hSF631R80Rz0
 HV3obD6j+Q7g==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="158374016"
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="158374016"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 08:05:14 -0700
IronPort-SDR: 2zmRcMr4zCIpZpGNMXrikevCpIxtCEfpaUnOu9tD3mVysLuiCTYrxVNoQkaDCcFrARWUI/CEhp
 TVF7eTUokYlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="345457639"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga007.jf.intel.com with ESMTP; 14 Sep 2020 08:05:12 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 41C865C203C; Mon, 14 Sep 2020 18:04:03 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org
In-Reply-To: <20200914131256.89465-5-tvrtko.ursulin@linux.intel.com>
References: <20200914131256.89465-1-tvrtko.ursulin@linux.intel.com>
 <20200914131256.89465-5-tvrtko.ursulin@linux.intel.com>
Date: Mon, 14 Sep 2020 18:04:03 +0300
Message-ID: <87zh5s2ye4.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915: Track runtime spent in
 unreachable intel_contexts
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

Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> writes:

> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
> As contexts are abandoned we want to remember how much GPU time they used
> (per class) so later we can used it for smarter purposes.
>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c       | 13 ++++++++++++-
>  drivers/gpu/drm/i915/gem/i915_gem_context_types.h |  5 +++++
>  2 files changed, 17 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index df5488998d53..a12e926444e1 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -253,7 +253,19 @@ static void free_engines_rcu(struct rcu_head *rcu)
>  {
>  	struct i915_gem_engines *engines =
>  		container_of(rcu, struct i915_gem_engines, rcu);
> +	struct i915_gem_context *ctx = engines->ctx;
> +	struct i915_gem_engines_iter it;
> +	struct intel_context *ce;
> +
> +	/* Transfer accumulated runtime to the parent GEM context. */
> +	for_each_gem_engine(ce, engines, it) {
> +		unsigned int class = ce->engine->uabi_class;
>  
> +		GEM_BUG_ON(class >= ARRAY_SIZE(ctx->past_runtime));
> +		atomic64_add(ce->runtime.total, &ctx->past_runtime[class]);
> +	}
> +
> +	i915_gem_context_put(ctx);
>  	i915_sw_fence_fini(&engines->fence);
>  	free_engines(engines);
>  }
> @@ -274,7 +286,6 @@ engines_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
>  			list_del(&engines->link);
>  			spin_unlock_irqrestore(&ctx->stale.lock, flags);
>  		}
> -		i915_gem_context_put(engines->ctx);
>  		break;
>  
>  	case FENCE_FREE:
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> index 31a6a30f7ea8..e473984b52c8 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> @@ -178,6 +178,11 @@ struct i915_gem_context {
>  		spinlock_t lock;
>  		struct list_head engines;
>  	} stale;
> +
> +	/**
> +	 * @past_runtime: Accumulation of freed intel_context pphwsp runtimes.

We are tracking runtime in per engine hw context, which pphwsp is just
part of (first page of it).

If this is also in par with the documentation, good enough.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> +	 */
> +	atomic64_t past_runtime[MAX_ENGINE_CLASS + 1];
>  };
>  
>  #endif /* __I915_GEM_CONTEXT_TYPES_H__ */
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
