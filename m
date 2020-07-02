Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F21C221242C
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 15:10:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34C406E233;
	Thu,  2 Jul 2020 13:10:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A86036E233
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 13:10:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21689724-1500050 for multiple; Thu, 02 Jul 2020 14:10:35 +0100
MIME-Version: 1.0
In-Reply-To: <20200702130605.14747-2-chris@chris-wilson.co.uk>
References: <20200702130605.14747-1-chris@chris-wilson.co.uk>
 <20200702130605.14747-2-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 02 Jul 2020 14:10:36 +0100
Message-ID: <159369543682.22925.15055507114196787051@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/gem: Only revoke mmap
 handlers if active
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

Quoting Chris Wilson (2020-07-02 14:06:05)
> Avoid waking up the device and taking stale locks if we know that the
> object is not currently mmapped. This is particularly useful as not many
> object are actually mmapped and so we can destroy them without waking
> the device up, and gives us a little more freedom of workqueue ordering
> during shutdown.
> 
> v2: Pull the release_mmap() into its single user in freeing the objects,
> where there can not be any race with a concurrent user of the freed
> object. Or so one hopes!
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c   | 13 -------------
>  drivers/gpu/drm/i915/gem/i915_gem_mman.h   |  2 --
>  drivers/gpu/drm/i915/gem/i915_gem_object.c | 11 +++++++++++
>  3 files changed, 11 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index 7c2650cfb070..b23368529a40 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -507,19 +507,6 @@ void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj)
>         spin_unlock(&obj->mmo.lock);
>  }
>  
> -/**
> - * i915_gem_object_release_mmap - remove physical page mappings
> - * @obj: obj in question
> - *
> - * Preserve the reservation of the mmapping with the DRM core code, but
> - * relinquish ownership of the pages back to the system.
> - */
> -void i915_gem_object_release_mmap(struct drm_i915_gem_object *obj)
> -{
> -       i915_gem_object_release_mmap_gtt(obj);
> -       i915_gem_object_release_mmap_offset(obj);
> -}
> -
>  static struct i915_mmap_offset *
>  lookup_mmo(struct drm_i915_gem_object *obj,
>            enum i915_mmap_type mmap_type)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.h b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
> index 7c5ccdf59359..efee9e0d2508 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
> @@ -24,8 +24,6 @@ int i915_gem_dumb_mmap_offset(struct drm_file *file_priv,
>                               struct drm_device *dev,
>                               u32 handle, u64 *offset);
>  
> -void i915_gem_object_release_mmap(struct drm_i915_gem_object *obj);
> -
>  void __i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj);
>  void i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj);
>  
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index 6b69191c5543..d377c0ef8603 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -171,6 +171,17 @@ static void __i915_gem_free_object_rcu(struct rcu_head *head)
>         atomic_dec(&i915->mm.free_count);
>  }
>  
> +static void i915_gem_object_release_mmap(struct drm_i915_gem_object *obj)

Maybe free_mmaps to try and discourage re-use?

> +{
> +       /* Skip serialisation and waking the device if known to be not used. */
> +
> +       if (obj->userfault_count)
> +               i915_gem_object_release_mmap_gtt(obj);
> +
> +       if (!RB_EMPTY_ROOT(&obj->mmo.offsets))
> +               i915_gem_object_release_mmap_offset(obj);
> +}
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
