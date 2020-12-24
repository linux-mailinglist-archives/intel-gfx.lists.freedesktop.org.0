Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF082E27BC
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 15:40:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D13F689B4D;
	Thu, 24 Dec 2020 14:40:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91EB089B4D
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 14:40:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23423777-1500050 for multiple; Thu, 24 Dec 2020 14:40:40 +0000
MIME-Version: 1.0
In-Reply-To: <20201224143455.387624-2-matthew.auld@intel.com>
References: <20201224143455.387624-1-matthew.auld@intel.com>
 <20201224143455.387624-2-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Thu, 24 Dec 2020 14:40:40 +0000
Message-ID: <160882084044.19405.16995823804452678810@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: clear the gpu reloc batch
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

Quoting Matthew Auld (2020-12-24 14:34:55)
> The reloc batch is short lived but can exist in the user visible ppGTT,
> and since it's backed by an internal object, which lacks page clearing,
> we should take care to clear it upfront.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 0cf9e79325a8..a4ecd4b4e874 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1295,6 +1295,9 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
>                 goto err_pool;
>         }
>  
> +       memset64((void*)cmd, 0, pool->obj->base.size / sizeof(u64));

Might as well make it memset32 to avoid the cast. I'm willing to bet
it's in the noise by that point on 4096+ object.

> +       i915_gem_object_flush_map(pool->obj);

We really don't want to have to flush it twice. Remove the limit on the
flush_map before submission.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
