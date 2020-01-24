Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5A014851B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 13:23:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 904156FA50;
	Fri, 24 Jan 2020 12:23:43 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A187E6FA4F;
 Fri, 24 Jan 2020 12:23:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19994689-1500050 for multiple; Fri, 24 Jan 2020 12:23:36 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200124121759.22308-1-tvrtko.ursulin@linux.intel.com>
References: <20200124121759.22308-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <157986861487.2524.12141917333565358192@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 24 Jan 2020 12:23:34 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] lib/i915: Add helper for copying
 engine maps from one context to another
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-01-24 12:17:58)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> We also need to support copying across file descriptors.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Sreedhar Telukuntla <sreedhar.telukuntla@intel.com>
> ---
>  lib/i915/gem_context.c | 30 ++++++++++++++++++++++++++++++
>  lib/i915/gem_context.h |  2 ++
>  2 files changed, 32 insertions(+)
> 
> diff --git a/lib/i915/gem_context.c b/lib/i915/gem_context.c
> index 0b6a554dfe27..41957b66ca52 100644
> --- a/lib/i915/gem_context.c
> +++ b/lib/i915/gem_context.c
> @@ -462,3 +462,33 @@ bool gem_context_has_engine(int fd, uint32_t ctx, uint64_t engine)
>  
>         return __gem_execbuf(fd, &execbuf) == -ENOENT;
>  }
> +
> +/**
> + * gem_context_copy_engines:
> + * @src_fd: open i915 drm file descriptor where @src context belongs to
> + * @src: source engine map context id
> + * @dst_fd: open i915 drm file descriptor where @dst context belongs to
> + * @dst: destination engine map context id
> + *
> + * Special purpose wrapper for copying engine map from one context to another.
> + *
> + * In can be called regardless of whether the kernel supports context engine
> + * maps and is a no-op if not supported.
> + */
> +void
> +gem_context_copy_engines(int src_fd, uint32_t src, int dst_fd, uint32_t dst)
> +{
> +       I915_DEFINE_CONTEXT_PARAM_ENGINES(engines, I915_EXEC_RING_MASK + 1);
> +       struct drm_i915_gem_context_param param = {
> +               .param = I915_CONTEXT_PARAM_ENGINES,
> +               .ctx_id = src,
> +               .size = sizeof(engines),
> +               .value = to_user_pointer(&engines),
> +       };
> +
> +       if (__gem_context_get_param(src_fd, &param) || !param.size)
> +               return;
> +
> +       param.ctx_id = dst;
> +       gem_context_set_param(dst_fd, &param);

You don't want to copy across the use-default set? You presume dst is
already using defaults?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
