Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7424189D74
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 14:57:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29DA46E895;
	Wed, 18 Mar 2020 13:57:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E06C46E895
 for <Intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 13:57:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20603506-1500050 for multiple; Wed, 18 Mar 2020 13:57:06 +0000
MIME-Version: 1.0
In-Reply-To: <20200318121138.909-7-tvrtko.ursulin@linux.intel.com>
References: <20200318121138.909-1-tvrtko.ursulin@linux.intel.com>
 <20200318121138.909-7-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <158453982435.6873.17389070835854220815@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 18 Mar 2020 13:57:04 +0000
Subject: Re: [Intel-gfx] [PATCH 06/10] drm/i915: Track runtime spent in
 closed GEM contexts
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

Quoting Tvrtko Ursulin (2020-03-18 12:11:35)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> As GEM contexts are closed we want to have the DRM client remember how
> much GPU time they used (per class) so later we can used it for smarter
> purposes.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 12 +++++++++++-
>  drivers/gpu/drm/i915/i915_drm_client.h      |  7 +++++++
>  2 files changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 5edf79ed6247..912375fb8a3b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -355,8 +355,18 @@ static void i915_gem_context_free(struct i915_gem_context *ctx)
>  
>         GEM_BUG_ON(!i915_gem_context_is_closed(ctx));
>  
> -       if (client)
> +       if (client) {
> +               unsigned int i;
> +
> +               /* Transfer accumulated runtime to the parent drm client. */
> +               BUILD_BUG_ON(ARRAY_SIZE(client->past_runtime) !=
> +                            ARRAY_SIZE(ctx->past_runtime));
> +               for (i = 0; i < ARRAY_SIZE(client->past_runtime); i++)
> +                       atomic64_add(atomic64_read(&ctx->past_runtime[i]),
> +                                    &client->past_runtime[i]);
> +
>                 i915_drm_client_put(client);
> +       }

Ok, order looks good.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
