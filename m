Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08523184571
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 12:03:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71E416EBBF;
	Fri, 13 Mar 2020 11:03:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B7FE6EBC0
 for <Intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 11:03:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20547355-1500050 for multiple; Fri, 13 Mar 2020 11:03:19 +0000
MIME-Version: 1.0
In-Reply-To: <20200311182618.21513-5-tvrtko.ursulin@linux.intel.com>
References: <20200311182618.21513-1-tvrtko.ursulin@linux.intel.com>
 <20200311182618.21513-5-tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158409739938.10732.16786367266538559650@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 13 Mar 2020 11:03:19 +0000
Subject: Re: [Intel-gfx] [RFC 04/10] drm/i915: Use explicit flag to mark
 unreachable intel_context
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

Quoting Tvrtko Ursulin (2020-03-11 18:26:12)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> I need to keep the GEM context around a bit longer so adding an explicit
> flag for syncing execbuf with closed/abandonded contexts.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c    | 3 ++-
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
>  drivers/gpu/drm/i915/gt/intel_context_types.h  | 1 +
>  3 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 0f4150c8d7fe..c49cfec6d616 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -568,7 +568,8 @@ static void engines_idle_release(struct i915_gem_context *ctx,
>                 int err = 0;
>  
>                 /* serialises with execbuf */
> -               RCU_INIT_POINTER(ce->gem_context, NULL);
> +               WRITE_ONCE(ce->closed, true);
> +
>                 if (!intel_context_pin_if_active(ce))
>                         continue;
>  
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 0893ce781a84..17dbe03f8e2e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -2547,7 +2547,7 @@ static void eb_request_add(struct i915_execbuffer *eb)
>         prev = __i915_request_commit(rq);
>  
>         /* Check that the context wasn't destroyed before submission */
> -       if (likely(rcu_access_pointer(eb->context->gem_context))) {
> +       if (likely(!READ_ONCE(eb->context->closed))) {
>                 attr = eb->gem_context->sched;
>  
>                 /*
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index 0f3b68b95c56..bcefebcf6b88 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -50,6 +50,7 @@ struct intel_context {
>  
>         struct i915_address_space *vm;
>         struct i915_gem_context __rcu *gem_context;
> +       bool closed;

But we do have intel_context.flags, right?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
