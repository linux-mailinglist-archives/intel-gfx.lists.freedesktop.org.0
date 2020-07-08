Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DEC7218988
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 15:50:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 578FA6E130;
	Wed,  8 Jul 2020 13:50:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 429A86E8D2
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 13:50:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21753197-1500050 for multiple; Wed, 08 Jul 2020 14:50:36 +0100
MIME-Version: 1.0
In-Reply-To: <20200708134742.727-2-chris@chris-wilson.co.uk>
References: <20200708134742.727-1-chris@chris-wilson.co.uk>
 <20200708134742.727-2-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 08 Jul 2020 14:50:34 +0100
Message-ID: <159421623441.17526.13026099610349787065@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: Release shortlived maps of
 longlived objects
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-07-08 14:47:37)
> Some objects we map once during their construction, and then never
> access their mappings again, even if they are kept around for the
> duration of the driver. Keeping those pages mapped, often vmapped, is
> therefore wasteful and we should release the maps as soon as we no
> longer need them.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_object.h    |  2 ++
>  drivers/gpu/drm/i915/gem/i915_gem_pages.c     | 20 +++++++++++++++++++
>  drivers/gpu/drm/i915/gt/gen7_renderclear.c    |  1 +
>  drivers/gpu/drm/i915/gt/intel_lrc.c           |  1 +
>  .../gpu/drm/i915/gt/intel_ring_submission.c   |  1 +
>  drivers/gpu/drm/i915/i915_perf.c              |  2 ++
>  6 files changed, 27 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index 2faa481cc18f..a26a4faf014f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -394,6 +394,8 @@ static inline void i915_gem_object_unpin_map(struct drm_i915_gem_object *obj)
>         i915_gem_object_unpin_pages(obj);
>  }
>  
> +int i915_gem_object_release_map(struct drm_i915_gem_object *obj);
> +
>  void
>  i915_gem_object_flush_write_domain(struct drm_i915_gem_object *obj,
>                                    unsigned int flush_domains);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> index af9e48ee4a33..114256014a97 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -408,6 +408,26 @@ void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
>         }
>  }
>  
> +int i915_gem_object_release_map(struct drm_i915_gem_object *obj)
> +{
> +       int err;
> +
> +       err = mutex_lock_interruptible(&obj->mm.lock);
> +       if (err)
> +               return err;
> +
> +       if (atomic_read(&obj->mm.pages_pin_count)) {
> +               err = -EBUSY;

Hmm. I realise this slightly defeats the efficacy of the patch, since we
often have a pinned vma at the time.

Since we only call this at known points, we can just say the caller
knows best and force the unmap. If we get it wrong, we'll have a very
weird GPF.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
