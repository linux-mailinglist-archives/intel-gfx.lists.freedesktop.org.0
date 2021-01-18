Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC9C2FA3AF
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 15:54:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 660F26E2C7;
	Mon, 18 Jan 2021 14:54:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A6766E2C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 14:54:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23629964-1500050 for multiple; Mon, 18 Jan 2021 14:54:33 +0000
MIME-Version: 1.0
In-Reply-To: <20210118141732.90173-2-matthew.auld@intel.com>
References: <20210118141732.90173-1-matthew.auld@intel.com>
 <20210118141732.90173-2-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 18 Jan 2021 14:54:32 +0000
Message-ID: <161098167206.301.604373583078584678@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: prefer FORCE_WC for the
 blitter routines
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

Quoting Matthew Auld (2021-01-18 14:17:31)
> From: CQ Tang <cq.tang@intel.com>
> 
> The pool is shared and so we might find that there is a pool object with
> an existing mapping, but is mapped with different underlying type, which
> will result in -EBUSY.
> 
> Signed-off-by: CQ Tang <cq.tang@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_object_blt.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
> index 10cac9fac79b..c6db745900b3 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
> @@ -55,7 +55,7 @@ struct i915_vma *intel_emit_vma_fill_blt(struct intel_context *ce,
>         if (unlikely(err))
>                 goto out_put;
>  
> -       cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_WC);
> +       cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_FORCE_WC);
>         if (IS_ERR(cmd)) {
>                 err = PTR_ERR(cmd);
>                 goto out_unpin;
> @@ -277,7 +277,7 @@ struct i915_vma *intel_emit_vma_copy_blt(struct intel_context *ce,
>         if (unlikely(err))
>                 goto out_put;
>  
> -       cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_WC);
> +       cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_FORCE_WC);
>         if (IS_ERR(cmd)) {
>                 err = PTR_ERR(cmd);
>                 goto out_unpin;

FORCE is becoming meaningless.

In this case we pin the pages upon acquiring from the pool, which then
prevents us from changing the mapping type. The purpose of which was so
that we could cache the mapping between users, and here we are saying
that cache is made useless. The danger is that we are now thrashing the
cache, hurting ourselves with the vmap overhead.

Maybe we should move the mapping-type into the buffer-pool cache itself?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
