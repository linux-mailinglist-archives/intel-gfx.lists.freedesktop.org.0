Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD1D268F0A
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 17:06:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC7C96E2B6;
	Mon, 14 Sep 2020 15:06:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33A9F6E2B6
 for <Intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 15:06:51 +0000 (UTC)
IronPort-SDR: b+4sDgB3wAfK6CN+/vbp5YV3oZLWOd2T/UayKvRTqnN8wDm0PbcY6VdZHLDL8RBkMRbvkU+7y+
 A4b3oI9PJ3Gw==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="177151437"
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="177151437"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 08:06:47 -0700
IronPort-SDR: qFs9lpo2y4ARMJASO3RZld+wyl/fHwoxeo5lrF7RcsKnt3GdPjpj7qKLOVm1ofKSu19XWOy4vz
 i1rFHHAKCr6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="306196442"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga006.jf.intel.com with ESMTP; 14 Sep 2020 08:06:46 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 496305C203C; Mon, 14 Sep 2020 18:05:37 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org
In-Reply-To: <20200914131256.89465-6-tvrtko.ursulin@linux.intel.com>
References: <20200914131256.89465-1-tvrtko.ursulin@linux.intel.com>
 <20200914131256.89465-6-tvrtko.ursulin@linux.intel.com>
Date: Mon, 14 Sep 2020 18:05:37 +0300
Message-ID: <87wo0w2ybi.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915: Track runtime spent in closed
 GEM contexts
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
> As GEM contexts are closed we want to have the DRM client remember how
> much GPU time they used (per class) so later we can used it for smarter
> purposes.
>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 12 +++++++++++-
>  drivers/gpu/drm/i915/i915_drm_client.h      |  7 +++++++
>  2 files changed, 18 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index a12e926444e1..a50b83659399 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -351,8 +351,18 @@ static void i915_gem_context_free(struct i915_gem_context *ctx)
>  
>  	GEM_BUG_ON(!i915_gem_context_is_closed(ctx));
>  
> -	if (client)
> +	if (client) {
> +		unsigned int i;
> +
> +		/* Transfer accumulated runtime to the parent drm client. */
> +		BUILD_BUG_ON(ARRAY_SIZE(client->past_runtime) !=
> +			     ARRAY_SIZE(ctx->past_runtime));
> +		for (i = 0; i < ARRAY_SIZE(client->past_runtime); i++)
> +			atomic64_add(atomic64_read(&ctx->past_runtime[i]),
> +				     &client->past_runtime[i]);
> +
>  		i915_drm_client_put(client);
> +	}
>  
>  	spin_lock(&ctx->i915->gem.contexts.lock);
>  	list_del(&ctx->link);
> diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
> index 11b48383881d..29b116606596 100644
> --- a/drivers/gpu/drm/i915/i915_drm_client.h
> +++ b/drivers/gpu/drm/i915/i915_drm_client.h
> @@ -15,6 +15,8 @@
>  #include <linux/sched.h>
>  #include <linux/xarray.h>
>  
> +#include "gt/intel_engine_types.h"
> +
>  struct i915_drm_clients {
>  	struct xarray xarray;
>  	u32 next_id;
> @@ -41,6 +43,11 @@ struct i915_drm_client {
>  		struct device_attribute pid;
>  		struct device_attribute name;
>  	} attr;
> +
> +	/**
> +	 * @past_runtime: Accumulation of pphwsp runtimes from closed contexts.
> +	 */
> +	atomic64_t past_runtime[MAX_ENGINE_CLASS + 1];
>  };
>  
>  void i915_drm_clients_init(struct i915_drm_clients *clients);
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
