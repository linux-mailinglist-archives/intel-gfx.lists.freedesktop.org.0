Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFECC1AF24
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 14:51:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3050B10E1F4;
	Wed, 29 Oct 2025 13:51:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GmXV2Lwu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAD0610E02C;
 Wed, 29 Oct 2025 13:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761745886; x=1793281886;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=j9B60oANQnGazrkKCxf0J1YUGbGt+cV0ijHu3yg1CJ0=;
 b=GmXV2LwunXx4/Dx1QLfwPqeUWoJxyQel4qHkzEcmVwU139sUS4sNJwBb
 qtB2dupxqwEECEqAW2nN56OZDXS5wfwlFdGr8bZWnZXXOKuJ4BEDrlX1a
 2qqcU72srUifwLEToaow/LDpoHVmlm8JHi6IyHtHSjs1OJo36Yd1GaptF
 Eg8pFBDIYq1EF8ymL6JXFq6HlyLSUEf6zeZwdyx/0PaYmYbu8OqnmqGQg
 IE+Zq++TiXfCUBivmbNJQM6sA4Wq4FHUh3/nRlpO/1oh7azt3ltLUSBcB
 k0y9t564pyyVQZvN8XfBJX3nCFgZMP/OO2/5+NtGEAw+K/1s21ChYYVxc w==;
X-CSE-ConnectionGUID: eCE0XpU7TOiDiDUJRgV50A==
X-CSE-MsgGUID: AwiqKWmzQFG8vwCNhRvJDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11596"; a="74156428"
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="74156428"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 06:51:25 -0700
X-CSE-ConnectionGUID: FP1mr6cjQX664+dBAZHZxQ==
X-CSE-MsgGUID: qu72EAIqQfy+Hk10iZxsbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="209269279"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 06:51:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 09/10] drm/i915/frontbuffer: Fix intel_frontbuffer
 lifetime handling
In-Reply-To: <20251016185408.22735-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251016185408.22735-1-ville.syrjala@linux.intel.com>
 <20251016185408.22735-10-ville.syrjala@linux.intel.com>
Date: Wed, 29 Oct 2025 15:51:21 +0200
Message-ID: <3ff7d1d35b1c71b4fdf55fc3b208c8f84bc0f18f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 16 Oct 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The current attempted split between xe/i915 vs. display
> for intel_frontbuffer is a mess:
> - the i915 rcu leaks through the interface to the display side
> - the obj->frontbuffer write-side is now protected by a display
>   specific spinlock even though the actual obj->framebuffer
>   pointer lives in a i915 specific structure
> - the kref is getting poked directly from both sides
> - i915_active is still on the display side
>
> Clean up the mess by moving everything about the frontbuffer
> lifetime management to the i915/xe side:
> - the rcu usage is now completely contained in i915
> - frontbuffer_lock is moved into i915
> - kref is on the i915/xe side (xe needs the refcount as well
>   due to intel_frontbuffer_queue_flush()->intel_frontbuffer_ref())
> - the bo (and its refcounting) is no longer on the display side
> - i915_active is contained in i915
>
> I was pondering whether we could do this in some kind of smaller
> steps, and perhaps we could, but it would probably have to start
> with a bunch of reverts (which for sure won't go cleanly anymore).
> So not convinced it's worth the hassle.

It's a PITA to review, that's for sure. :p

I'm not particularly fond of embedding struct intel_frontbuffer inside
struct i915_frontbuffer and struct xe_frontbuffer, because it means i915
and xe will need to know the struct intel_frontbuffer definition. If we
can't live with the embedding long term, we'll probably need opaque
pointers back and forth.

That said, I think the overall change here is net positive, and makes
life much easier. We don't have to fix everything at once, so let's go
with this.

I didn't spot any obvious issues, but my confidence level with the
review is super low. :(

I guess the alternatives are to just go with that, trusting CI, or give
me more time to review. I'm fine either way, as I can trust you to step
up if it goes crashing down. ;)

BR,
Jani.

PS. I think patches 1-2 are fine with the acks alone.

>
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_bo.c       |  34 ++++--
>  drivers/gpu/drm/i915/display/intel_bo.h       |   6 +-
>  .../gpu/drm/i915/display/intel_display_core.h |   3 -
>  .../drm/i915/display/intel_display_driver.c   |   1 -
>  .../gpu/drm/i915/display/intel_frontbuffer.c  |  89 ++-------------
>  .../gpu/drm/i915/display/intel_frontbuffer.h  |  13 +--
>  drivers/gpu/drm/i915/gem/i915_gem_object.c    |  12 +-
>  .../i915/gem/i915_gem_object_frontbuffer.c    | 103 ++++++++++++++++++
>  .../i915/gem/i915_gem_object_frontbuffer.h    |  48 +++-----
>  .../gpu/drm/i915/gem/i915_gem_object_types.h  |   2 +-
>  drivers/gpu/drm/i915/i915_drv.h               |   2 +
>  drivers/gpu/drm/i915/i915_gem.c               |   2 +
>  drivers/gpu/drm/i915/i915_vma.c               |   6 +-
>  .../gpu/drm/xe/compat-i915-headers/i915_vma.h |   2 -
>  drivers/gpu/drm/xe/display/intel_bo.c         |  52 ++++++++-
>  16 files changed, 227 insertions(+), 149 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index aa2f0fd95117..717e57205c85 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -155,6 +155,7 @@ gem-y +=3D \
>  	gem/i915_gem_lmem.o \
>  	gem/i915_gem_mman.o \
>  	gem/i915_gem_object.o \
> +	gem/i915_gem_object_frontbuffer.o \
>  	gem/i915_gem_pages.o \
>  	gem/i915_gem_phys.o \
>  	gem/i915_gem_pm.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i9=
15/display/intel_bo.c
> index 2792aca7bc22..f3687eb63467 100644
> --- a/drivers/gpu/drm/i915/display/intel_bo.c
> +++ b/drivers/gpu/drm/i915/display/intel_bo.c
> @@ -39,20 +39,40 @@ int intel_bo_read_from_page(struct drm_gem_object *ob=
j, u64 offset, void *dst, i
>  	return i915_gem_object_read_from_page(to_intel_bo(obj), offset, dst, si=
ze);
>  }
>=20=20
> -struct intel_frontbuffer *intel_bo_get_frontbuffer(struct drm_gem_object=
 *obj)
> +struct intel_frontbuffer *intel_bo_frontbuffer_get(struct drm_gem_object=
 *_obj)
>  {
> -	return i915_gem_object_get_frontbuffer(to_intel_bo(obj));
> +	struct drm_i915_gem_object *obj =3D to_intel_bo(_obj);
> +	struct i915_frontbuffer *front;
> +
> +	front =3D i915_gem_object_frontbuffer_get(obj);
> +	if (!front)
> +		return NULL;
> +
> +	return &front->base;
> +}
> +
> +void intel_bo_frontbuffer_ref(struct intel_frontbuffer *_front)
> +{
> +	struct i915_frontbuffer *front =3D
> +		container_of(_front, typeof(*front), base);
> +
> +	i915_gem_object_frontbuffer_ref(front);
>  }
>=20=20
> -struct intel_frontbuffer *intel_bo_set_frontbuffer(struct drm_gem_object=
 *obj,
> -						   struct intel_frontbuffer *front)
> +void intel_bo_frontbuffer_put(struct intel_frontbuffer *_front)
>  {
> -	return i915_gem_object_set_frontbuffer(to_intel_bo(obj), front);
> +	struct i915_frontbuffer *front =3D
> +		container_of(_front, typeof(*front), base);
> +
> +	return i915_gem_object_frontbuffer_put(front);
>  }
>=20=20
> -void intel_bo_frontbuffer_flush_for_display(struct intel_frontbuffer *fr=
ont)
> +void intel_bo_frontbuffer_flush_for_display(struct intel_frontbuffer *_f=
ront)
>  {
> -	i915_gem_object_flush_if_display(to_intel_bo(front->obj));
> +	struct i915_frontbuffer *front =3D
> +		container_of(_front, typeof(*front), base);
> +
> +	i915_gem_object_flush_if_display(front->obj);
>  }
>=20=20
>  void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj)
> diff --git a/drivers/gpu/drm/i915/display/intel_bo.h b/drivers/gpu/drm/i9=
15/display/intel_bo.h
> index 08247bf36d40..fc05f680dc76 100644
> --- a/drivers/gpu/drm/i915/display/intel_bo.h
> +++ b/drivers/gpu/drm/i915/display/intel_bo.h
> @@ -19,9 +19,9 @@ bool intel_bo_is_protected(struct drm_gem_object *obj);
>  int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *=
vma);
>  int intel_bo_read_from_page(struct drm_gem_object *obj, u64 offset, void=
 *dst, int size);
>=20=20
> -struct intel_frontbuffer *intel_bo_get_frontbuffer(struct drm_gem_object=
 *obj);
> -struct intel_frontbuffer *intel_bo_set_frontbuffer(struct drm_gem_object=
 *obj,
> -						   struct intel_frontbuffer *front);
> +struct intel_frontbuffer *intel_bo_frontbuffer_get(struct drm_gem_object=
 *obj);
> +void intel_bo_frontbuffer_ref(struct intel_frontbuffer *front);
> +void intel_bo_frontbuffer_put(struct intel_frontbuffer *front);
>  void intel_bo_frontbuffer_flush_for_display(struct intel_frontbuffer *fr=
ont);
>=20=20
>  void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/=
gpu/drm/i915/display/intel_display_core.h
> index 13576d07c999..34d578e2cc25 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -141,9 +141,6 @@ struct intel_dpll_global {
>  };
>=20=20
>  struct intel_frontbuffer_tracking {
> -	/* protects obj->frontbuffer (write-side) */
> -	spinlock_t frontbuffer_lock;
> -
>  	/* protects busy_bits */
>  	spinlock_t lock;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index ac684f8c5d40..f84a0b26b7a6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -184,7 +184,6 @@ void intel_display_driver_early_probe(struct intel_di=
splay *display)
>  	if (!HAS_DISPLAY(display))
>  		return;
>=20=20
> -	spin_lock_init(&display->fb_tracking.frontbuffer_lock);
>  	spin_lock_init(&display->fb_tracking.lock);
>  	mutex_init(&display->backlight.lock);
>  	mutex_init(&display->audio.mutex);
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/g=
pu/drm/i915/display/intel_frontbuffer.c
> index 5d627eac07bd..4761e116e442 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -57,8 +57,6 @@
>=20=20
>  #include <drm/drm_gem.h>
>=20=20
> -#include "i915_active.h"
> -#include "i915_vma.h"
>  #include "intel_bo.h"
>  #include "intel_display_trace.h"
>  #include "intel_display_types.h"
> @@ -167,7 +165,7 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
>=20=20
>  static void intel_frontbuffer_ref(struct intel_frontbuffer *front)
>  {
> -	kref_get(&front->ref);
> +	intel_bo_frontbuffer_ref(front);
>  }
>=20=20
>  static void intel_frontbuffer_flush_work(struct work_struct *work)
> @@ -196,89 +194,26 @@ void intel_frontbuffer_queue_flush(struct intel_fro=
ntbuffer *front)
>  		intel_frontbuffer_put(front);
>  }
>=20=20
> -static int frontbuffer_active(struct i915_active *ref)
> +void intel_frontbuffer_init(struct intel_frontbuffer *front, struct drm_=
device *drm)
>  {
> -	struct intel_frontbuffer *front =3D
> -		container_of(ref, typeof(*front), write);
> -
> -	kref_get(&front->ref);
> -	return 0;
> -}
> -
> -static void frontbuffer_retire(struct i915_active *ref)
> -{
> -	struct intel_frontbuffer *front =3D
> -		container_of(ref, typeof(*front), write);
> -
> -	intel_frontbuffer_flush(front, ORIGIN_CS);
> -	intel_frontbuffer_put(front);
> -}
> -
> -static void frontbuffer_release(struct kref *ref)
> -	__releases(&front->display->fb_tracking.frontbuffer_lock)
> -{
> -	struct intel_frontbuffer *ret, *front =3D
> -		container_of(ref, typeof(*front), ref);
> -	struct intel_display *display =3D front->display;
> -	struct drm_gem_object *obj =3D front->obj;
> -
> -	drm_WARN_ON(display->drm, atomic_read(&front->bits));
> -
> -	i915_ggtt_clear_scanout(to_intel_bo(obj));
> -
> -	ret =3D intel_bo_set_frontbuffer(obj, NULL);
> -	drm_WARN_ON(display->drm, ret);
> -	spin_unlock(&display->fb_tracking.frontbuffer_lock);
> -
> -	i915_active_fini(&front->write);
> -
> -	drm_gem_object_put(obj);
> -	kfree_rcu(front, rcu);
> -}
> -
> -struct intel_frontbuffer *
> -intel_frontbuffer_get(struct drm_gem_object *obj)
> -{
> -	struct intel_display *display =3D to_intel_display(obj->dev);
> -	struct intel_frontbuffer *front, *cur;
> -
> -	front =3D intel_bo_get_frontbuffer(obj);
> -	if (front)
> -		return front;
> -
> -	front =3D kmalloc(sizeof(*front), GFP_KERNEL);
> -	if (!front)
> -		return NULL;
> -
> -	drm_gem_object_get(obj);
> -
> -	front->obj =3D obj;
> -	front->display =3D display;
> -	kref_init(&front->ref);
> +	front->display =3D to_intel_display(drm);
>  	atomic_set(&front->bits, 0);
> -	i915_active_init(&front->write,
> -			 frontbuffer_active,
> -			 frontbuffer_retire,
> -			 I915_ACTIVE_RETIRE_SLEEPS);
>  	INIT_WORK(&front->flush_work, intel_frontbuffer_flush_work);
> +}
>=20=20
> -	spin_lock(&display->fb_tracking.frontbuffer_lock);
> -	cur =3D intel_bo_set_frontbuffer(obj, front);
> -	spin_unlock(&display->fb_tracking.frontbuffer_lock);
> +void intel_frontbuffer_fini(struct intel_frontbuffer *front)
> +{
> +	drm_WARN_ON(front->display->drm, atomic_read(&front->bits));
> +}
>=20=20
> -	if (cur !=3D front) {
> -		drm_gem_object_put(obj);
> -		kfree(front);
> -	}
> -
> -	return cur;
> +struct intel_frontbuffer *intel_frontbuffer_get(struct drm_gem_object *o=
bj)
> +{
> +	return intel_bo_frontbuffer_get(obj);
>  }
>=20=20
>  void intel_frontbuffer_put(struct intel_frontbuffer *front)
>  {
> -	kref_put_lock(&front->ref,
> -		      frontbuffer_release,
> -		      &front->display->fb_tracking.frontbuffer_lock);
> +	intel_bo_frontbuffer_put(front);
>  }
>=20=20
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/g=
pu/drm/i915/display/intel_frontbuffer.h
> index ff2a6ac75a34..22677acb4c06 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
> @@ -26,10 +26,9 @@
>=20=20
>  #include <linux/atomic.h>
>  #include <linux/bits.h>
> -#include <linux/kref.h>
> -
> -#include "i915_active_types.h"
> +#include <linux/workqueue_types.h>
>=20=20
> +struct drm_device;
>  struct drm_gem_object;
>  struct intel_display;
>=20=20
> @@ -42,13 +41,8 @@ enum fb_op_origin {
>  };
>=20=20
>  struct intel_frontbuffer {
> -	struct kref ref;
>  	struct intel_display *display;
>  	atomic_t bits;
> -	struct i915_active write;
> -	struct drm_gem_object *obj;
> -	struct rcu_head rcu;
> -
>  	struct work_struct flush_work;
>  };
>=20=20
> @@ -141,4 +135,7 @@ void intel_frontbuffer_track(struct intel_frontbuffer=
 *old,
>  			     struct intel_frontbuffer *new,
>  			     unsigned int frontbuffer_bits);
>=20=20
> +void intel_frontbuffer_init(struct intel_frontbuffer *front, struct drm_=
device *drm);
> +void intel_frontbuffer_fini(struct intel_frontbuffer *front);
> +
>  #endif /* __INTEL_FRONTBUFFER_H__ */
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm=
/i915/gem/i915_gem_object.c
> index 478011e5ecb3..36680eddf88e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -476,24 +476,24 @@ static void i915_gem_free_object(struct drm_gem_obj=
ect *gem_obj)
>  void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
>  					 enum fb_op_origin origin)
>  {
> -	struct intel_frontbuffer *front;
> +	struct i915_frontbuffer *front;
>=20=20
>  	front =3D i915_gem_object_get_frontbuffer(obj);
>  	if (front) {
> -		intel_frontbuffer_flush(front, origin);
> -		intel_frontbuffer_put(front);
> +		intel_frontbuffer_flush(&front->base, origin);
> +		i915_gem_object_frontbuffer_put(front);
>  	}
>  }
>=20=20
>  void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object=
 *obj,
>  					      enum fb_op_origin origin)
>  {
> -	struct intel_frontbuffer *front;
> +	struct i915_frontbuffer *front;
>=20=20
>  	front =3D i915_gem_object_get_frontbuffer(obj);
>  	if (front) {
> -		intel_frontbuffer_invalidate(front, origin);
> -		intel_frontbuffer_put(front);
> +		intel_frontbuffer_invalidate(&front->base, origin);
> +		i915_gem_object_frontbuffer_put(front);
>  	}
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c b/dri=
vers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c
> new file mode 100644
> index 000000000000..7ef89613c025
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c
> @@ -0,0 +1,103 @@
> +// SPDX-License-Identifier: MIT
> +/* Copyright =C2=A9 2025 Intel Corporation */
> +
> +#include "i915_drv.h"
> +#include "i915_gem_object_frontbuffer.h"
> +
> +static int frontbuffer_active(struct i915_active *ref)
> +{
> +	struct i915_frontbuffer *front =3D
> +		container_of(ref, typeof(*front), write);
> +
> +	kref_get(&front->ref);
> +	return 0;
> +}
> +
> +static void frontbuffer_retire(struct i915_active *ref)
> +{
> +	struct i915_frontbuffer *front =3D
> +		container_of(ref, typeof(*front), write);
> +
> +	intel_frontbuffer_flush(&front->base, ORIGIN_CS);
> +	i915_gem_object_frontbuffer_put(front);
> +}
> +
> +struct i915_frontbuffer *
> +i915_gem_object_frontbuffer_get(struct drm_i915_gem_object *obj)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
> +	struct i915_frontbuffer *front, *cur;
> +
> +	front =3D i915_gem_object_get_frontbuffer(obj);
> +	if (front)
> +		return front;
> +
> +	front =3D kmalloc(sizeof(*front), GFP_KERNEL);
> +	if (!front)
> +		return NULL;
> +
> +	intel_frontbuffer_init(&front->base, &i915->drm);
> +
> +	kref_init(&front->ref);
> +	i915_gem_object_get(obj);
> +	front->obj =3D obj;
> +
> +	i915_active_init(&front->write,
> +			 frontbuffer_active,
> +			 frontbuffer_retire,
> +			 I915_ACTIVE_RETIRE_SLEEPS);
> +
> +	spin_lock(&i915->frontbuffer_lock);
> +	if (rcu_access_pointer(obj->frontbuffer)) {
> +		cur =3D rcu_dereference_protected(obj->frontbuffer, true);
> +		kref_get(&cur->ref);
> +	} else {
> +		cur =3D front;
> +		rcu_assign_pointer(obj->frontbuffer, front);
> +	}
> +	spin_unlock(&i915->frontbuffer_lock);
> +
> +	if (cur !=3D front) {
> +		i915_gem_object_put(obj);
> +		intel_frontbuffer_fini(&front->base);
> +		kfree(front);
> +	}
> +
> +	return cur;
> +}
> +
> +void i915_gem_object_frontbuffer_ref(struct i915_frontbuffer *front)
> +{
> +	kref_get(&front->ref);
> +}
> +
> +static void frontbuffer_release(struct kref *ref)
> +	__releases(&i915->frontbuffer_lock)
> +{
> +	struct i915_frontbuffer *front =3D
> +		container_of(ref, typeof(*front), ref);
> +	struct drm_i915_gem_object *obj =3D front->obj;
> +	struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
> +
> +	i915_ggtt_clear_scanout(obj);
> +
> +	RCU_INIT_POINTER(obj->frontbuffer, NULL);
> +
> +	spin_unlock(&i915->frontbuffer_lock);
> +
> +	i915_active_fini(&front->write);
> +
> +	i915_gem_object_put(obj);
> +
> +	intel_frontbuffer_fini(&front->base);
> +
> +	kfree_rcu(front, rcu);
> +}
> +
> +void i915_gem_object_frontbuffer_put(struct i915_frontbuffer *front)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(front->obj->base.dev);
> +
> +	kref_put_lock(&front->ref, frontbuffer_release,
> +		      &i915->frontbuffer_lock);
> +}
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h b/dri=
vers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
> index 1ec382c43aee..385f7e8049b8 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
> @@ -12,6 +12,14 @@
>  #include "display/intel_frontbuffer.h"
>  #include "i915_gem_object_types.h"
>=20=20
> +struct i915_frontbuffer {
> +	struct intel_frontbuffer base;
> +	struct drm_i915_gem_object *obj;
> +	struct i915_active write;
> +	struct rcu_head rcu;
> +	struct kref ref;
> +};
> +
>  void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
>  					 enum fb_op_origin origin);
>  void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object=
 *obj,
> @@ -33,6 +41,10 @@ i915_gem_object_invalidate_frontbuffer(struct drm_i915=
_gem_object *obj,
>  		__i915_gem_object_invalidate_frontbuffer(obj, origin);
>  }
>=20=20
> +struct i915_frontbuffer *i915_gem_object_frontbuffer_get(struct drm_i915=
_gem_object *obj);
> +void i915_gem_object_frontbuffer_ref(struct i915_frontbuffer *front);
> +void i915_gem_object_frontbuffer_put(struct i915_frontbuffer *front);
> +
>  /**
>   * i915_gem_object_get_frontbuffer - Get the object's frontbuffer
>   * @obj: The object whose frontbuffer to get.
> @@ -42,10 +54,10 @@ i915_gem_object_invalidate_frontbuffer(struct drm_i91=
5_gem_object *obj,
>   *
>   * Return: pointer to object's frontbuffer is such exists or NULL
>   */
> -static inline struct intel_frontbuffer *
> +static inline struct i915_frontbuffer *
>  i915_gem_object_get_frontbuffer(const struct drm_i915_gem_object *obj)
>  {
> -	struct intel_frontbuffer *front;
> +	struct i915_frontbuffer *front;
>=20=20
>  	if (likely(!rcu_access_pointer(obj->frontbuffer)))
>  		return NULL;
> @@ -62,41 +74,11 @@ i915_gem_object_get_frontbuffer(const struct drm_i915=
_gem_object *obj)
>  		if (likely(front =3D=3D rcu_access_pointer(obj->frontbuffer)))
>  			break;
>=20=20
> -		intel_frontbuffer_put(front);
> +		i915_gem_object_frontbuffer_put(front);
>  	} while (1);
>  	rcu_read_unlock();
>=20=20
>  	return front;
>  }
>=20=20
> -/**
> - * i915_gem_object_set_frontbuffer - Set the object's frontbuffer
> - * @obj: The object whose frontbuffer to set.
> - * @front: The frontbuffer to set
> - *
> - * Set object's frontbuffer pointer. If frontbuffer is already set for t=
he
> - * object keep it and return it's pointer to the caller. Please note tha=
t RCU
> - * mechanism is used to handle e.g. ongoing removal of frontbuffer point=
er. This
> - * function is protected by i915->display->fb_tracking.frontbuffer_lock
> - *
> - * Return: pointer to frontbuffer which was set.
> - */
> -static inline struct intel_frontbuffer *
> -i915_gem_object_set_frontbuffer(struct drm_i915_gem_object *obj,
> -				struct intel_frontbuffer *front)
> -{
> -	struct intel_frontbuffer *cur =3D front;
> -
> -	if (!front) {
> -		RCU_INIT_POINTER(obj->frontbuffer, NULL);
> -	} else if (rcu_access_pointer(obj->frontbuffer)) {
> -		cur =3D rcu_dereference_protected(obj->frontbuffer, true);
> -		kref_get(&cur->ref);
> -	} else {
> -		rcu_assign_pointer(obj->frontbuffer, front);
> -	}
> -
> -	return cur;
> -}
> -
>  #endif
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/g=
pu/drm/i915/gem/i915_gem_object_types.h
> index 64600aa8227f..465ce94aee76 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -574,7 +574,7 @@ struct drm_i915_gem_object {
>  	 */
>  	u16 write_domain;
>=20=20
> -	struct intel_frontbuffer __rcu *frontbuffer;
> +	struct i915_frontbuffer __rcu *frontbuffer;
>=20=20
>  	/** Current tiling stride for the object, if it's tiled. */
>  	unsigned int tiling_and_stride;
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 95f9ddf22ce4..5381a934a671 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -311,6 +311,8 @@ struct drm_i915_private {
>  		struct file *mmap_singleton;
>  	} gem;
>=20=20
> +	spinlock_t frontbuffer_lock; /* protects obj->frontbuffer (write-side) =
*/
> +
>  	struct intel_pxp *pxp;
>=20=20
>  	struct i915_pmu pmu;
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_=
gem.c
> index e14a0c3db999..39b747c3e223 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1298,6 +1298,8 @@ void i915_gem_init_early(struct drm_i915_private *d=
ev_priv)
>  {
>  	i915_gem_init__mm(dev_priv);
>  	i915_gem_init__contexts(dev_priv);
> +
> +	spin_lock_init(&dev_priv->frontbuffer_lock);
>  }
>=20=20
>  void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_=
vma.c
> index 25e97031d76e..cb36daaa101d 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1990,13 +1990,13 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
>  	}
>=20=20
>  	if (flags & EXEC_OBJECT_WRITE) {
> -		struct intel_frontbuffer *front;
> +		struct i915_frontbuffer *front;
>=20=20
>  		front =3D i915_gem_object_get_frontbuffer(obj);
>  		if (unlikely(front)) {
> -			if (intel_frontbuffer_invalidate(front, ORIGIN_CS))
> +			if (intel_frontbuffer_invalidate(&front->base, ORIGIN_CS))
>  				i915_active_add_request(&front->write, rq);
> -			intel_frontbuffer_put(front);
> +			i915_gem_object_frontbuffer_put(front);
>  		}
>  	}
>=20=20
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h b/drivers/=
gpu/drm/xe/compat-i915-headers/i915_vma.h
> index 4465c40f8134..b17e3bab23d5 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h
> @@ -26,8 +26,6 @@ struct i915_vma {
>  	struct xe_ggtt_node *node;
>  };
>=20=20
> -#define i915_ggtt_clear_scanout(bo) do { } while (0)
> -
>  #define i915_vma_fence_id(vma) -1
>=20=20
>  static inline u32 i915_ggtt_offset(const struct i915_vma *vma)
> diff --git a/drivers/gpu/drm/xe/display/intel_bo.c b/drivers/gpu/drm/xe/d=
isplay/intel_bo.c
> index 2437c00a2d3e..bad2243b9114 100644
> --- a/drivers/gpu/drm/xe/display/intel_bo.c
> +++ b/drivers/gpu/drm/xe/display/intel_bo.c
> @@ -5,6 +5,7 @@
>=20=20
>  #include "xe_bo.h"
>  #include "intel_bo.h"
> +#include "intel_frontbuffer.h"
>=20=20
>  bool intel_bo_is_tiled(struct drm_gem_object *obj)
>  {
> @@ -40,15 +41,56 @@ int intel_bo_read_from_page(struct drm_gem_object *ob=
j, u64 offset, void *dst, i
>  	return xe_bo_read(bo, offset, dst, size);
>  }
>=20=20
> -struct intel_frontbuffer *intel_bo_get_frontbuffer(struct drm_gem_object=
 *obj)
> +struct xe_frontbuffer {
> +	struct intel_frontbuffer base;
> +	struct drm_gem_object *obj;
> +	struct kref ref;
> +};
> +
> +struct intel_frontbuffer *intel_bo_frontbuffer_get(struct drm_gem_object=
 *obj)
>  {
> -	return NULL;
> +	struct xe_frontbuffer *front;
> +
> +	front =3D kmalloc(sizeof(*front), GFP_KERNEL);
> +	if (!front)
> +		return NULL;
> +
> +	intel_frontbuffer_init(&front->base, obj->dev);
> +
> +	kref_init(&front->ref);
> +
> +	drm_gem_object_get(obj);
> +	front->obj =3D obj;
> +
> +	return &front->base;
>  }
>=20=20
> -struct intel_frontbuffer *intel_bo_set_frontbuffer(struct drm_gem_object=
 *obj,
> -						   struct intel_frontbuffer *front)
> +void intel_bo_frontbuffer_ref(struct intel_frontbuffer *_front)
>  {
> -	return front;
> +	struct xe_frontbuffer *front =3D
> +		container_of(_front, typeof(*front), base);
> +
> +	kref_get(&front->ref);
> +}
> +
> +static void frontbuffer_release(struct kref *ref)
> +{
> +	struct xe_frontbuffer *front =3D
> +		container_of(ref, typeof(*front), ref);
> +
> +	intel_frontbuffer_fini(&front->base);
> +
> +	drm_gem_object_put(front->obj);
> +
> +	kfree(front);
> +}
> +
> +void intel_bo_frontbuffer_put(struct intel_frontbuffer *_front)
> +{
> +	struct xe_frontbuffer *front =3D
> +		container_of(_front, typeof(*front), base);
> +
> +	kref_put(&front->ref, frontbuffer_release);
>  }
>=20=20
>  void intel_bo_frontbuffer_flush_for_display(struct intel_frontbuffer *fr=
ont)

--=20
Jani Nikula, Intel
