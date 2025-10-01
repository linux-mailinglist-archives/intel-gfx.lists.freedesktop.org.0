Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 070BFBB15DF
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 19:29:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E61E10E352;
	Wed,  1 Oct 2025 17:28:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NIxIBHla";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D62CB10E352;
 Wed,  1 Oct 2025 17:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759339739; x=1790875739;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=SCrZkLQQDUAQsjvhp4S9Hm09Io7gXoc5zqab7alDmFE=;
 b=NIxIBHlajbqCKilBUY0Tt9Snnmr7pg4GpFVeczRfeFSLi+MKosZ33ASh
 oEI/MW4bJqjEjweeB1ExB4uR82cOZCXyuLgeEeNvQOW8K4yvw5kIA6CfS
 mO+sQo2TyEKpYPYWGY0TDkcBAhRXz6BguUfpMuAcHBQJ0h5hxMvtmn+l1
 56oNYXGMjlC4waeyKe5ZG+p3Xj3aylvBaCVcX2kJVMyqVQhRlvyJknpA6
 OulSudstp7A684Ho6D85aI0w4YBvUCnDXS/OFhboL0OqNxJXaDmJIqkWH
 3pODKznxKVzpf+1V11f/JvbcLEH/VN39ngOmQh7+KL9A8IQP5njf8oxWA g==;
X-CSE-ConnectionGUID: CEjJIIQlTNeWhIe60Evb4w==
X-CSE-MsgGUID: HpioqZtZRne3xBoDi9rkuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="60659135"
X-IronPort-AV: E=Sophos;i="6.18,307,1751266800"; d="scan'208";a="60659135"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 10:28:58 -0700
X-CSE-ConnectionGUID: SSScHCnqTv22yqyUx4rmgA==
X-CSE-MsgGUID: YR+aRWbzTA6fHA+r0q0BAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,307,1751266800"; d="scan'208";a="179257064"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 10:28:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Jocelyn
 Falempe <jfalempe@redhat.com>, Maarten Lankhorst <dev@lankhorst.se>
Subject: Re: [PATCH 6/8] drm/{i915,xe}/panic: move framebuffer allocation
 where it belongs
In-Reply-To: <aN1Y2IB-oS4X5NU9@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1756835342.git.jani.nikula@intel.com>
 <d29f63e0118d002fc8edd368caea7e8185418e17.1756835342.git.jani.nikula@intel.com>
 <2224b0cc8934e4e7c89ed1fb80648c637669f188@intel.com>
 <aN1Y2IB-oS4X5NU9@intel.com>
Date: Wed, 01 Oct 2025 20:28:53 +0300
Message-ID: <413d3e0fc6e6bc10ed22b7d7fa9771ab8fbaf414@intel.com>
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

On Wed, 01 Oct 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Oct 01, 2025 at 06:04:58PM +0300, Jani Nikula wrote:
>> On Tue, 02 Sep 2025, Jani Nikula <jani.nikula@intel.com> wrote:
>> > The struct intel_framebuffer allocation naturally belongs in intel_fb.=
c,
>> > not hidden inside panic implementation. Separate the panic
>> > allocation. Drop the unnecessary struct i915_framebuffer and struct
>> > xe_framebuffer types.
>> >
>> > Cc: Jocelyn Falempe <jfalempe@redhat.com>
>> > Cc: Maarten Lankhorst <dev@lankhorst.se>
>> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_fb.c    | 17 ++++++++++++++++-
>> >  drivers/gpu/drm/i915/display/intel_panic.c |  4 ++--
>> >  drivers/gpu/drm/i915/display/intel_panic.h |  3 ++-
>> >  drivers/gpu/drm/i915/gem/i915_gem_object.h |  5 +++--
>> >  drivers/gpu/drm/i915/gem/i915_gem_pages.c  | 17 ++++-------------
>> >  drivers/gpu/drm/xe/display/xe_panic.c      | 17 ++++-------------
>> >  6 files changed, 31 insertions(+), 32 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm=
/i915/display/intel_fb.c
>> > index 2a2ed0f0461f..22a4a1575d22 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_fb.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
>> > @@ -2346,7 +2346,22 @@ intel_user_framebuffer_create(struct drm_device=
 *dev,
>> >=20=20
>> >  struct intel_framebuffer *intel_framebuffer_alloc(void)
>> >  {
>> > -	return intel_bo_alloc_framebuffer();
>> > +	struct intel_framebuffer *intel_fb;
>> > +	struct intel_panic *panic;
>> > +
>> > +	intel_fb =3D kzalloc(sizeof(*intel_fb), GFP_KERNEL);
>> > +	if (!intel_fb)
>> > +		return NULL;
>> > +
>> > +	panic =3D intel_panic_alloc();
>> > +	if (!panic) {
>> > +		kfree(intel_fb);
>> > +		return NULL;
>> > +	}
>> > +
>> > +	intel_fb->panic =3D panic;
>>=20
>> So I screwed up here. There's no deallocation of fb->panic, and this
>> leaks. I don't know what I was thinking.
>>=20
>> To make matters worse, struct intel_framebuffer is deallocated via
>> drm_framebuffer_put() i.e. there's no obvious place to plug the free in.
>
> intel_user_framebuffer_destroy()

D'oh! I still wasn't thinking it appears. Thanks.

Still not straightforward with the alloc and init split in
i9xx_get_initial_plane_config()/skl_get_initial_plane_config() and the
intel_alloc_initial_plane_obj() implementations.

I think the framebuffer leaked on the error paths already before my
change, so I guess I could just plug what I caused.

> And someone should probably s/_user// on all those fb func to
> make things less confusing.

...and do a bunch of other cleanups...

BR,
Jani.

>
>>=20
>> Any ideas before I start looking at reverting the changes, and get back
>> to the drawing board with abstracting the code between i915 and xe?
>>=20
>> BR,
>> Jani.
>>=20
>> > +
>> > +	return intel_fb;
>> >  }
>> >=20=20
>> >  struct drm_framebuffer *
>> > diff --git a/drivers/gpu/drm/i915/display/intel_panic.c b/drivers/gpu/=
drm/i915/display/intel_panic.c
>> > index 20eecb0f168f..5431bd4d3a7d 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_panic.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_panic.c
>> > @@ -4,9 +4,9 @@
>> >  #include "gem/i915_gem_object.h"
>> >  #include "intel_panic.h"
>> >=20=20
>> > -struct intel_framebuffer *intel_bo_alloc_framebuffer(void)
>> > +struct intel_panic *intel_panic_alloc(void)
>> >  {
>> > -	return i915_gem_object_alloc_framebuffer();
>> > +	return i915_gem_object_alloc_panic();
>> >  }
>> >=20=20
>> >  int intel_panic_setup(struct drm_scanout_buffer *sb)
>> > diff --git a/drivers/gpu/drm/i915/display/intel_panic.h b/drivers/gpu/=
drm/i915/display/intel_panic.h
>> > index 67ce253fcdf5..45ce6104e6fb 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_panic.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_panic.h
>> > @@ -6,8 +6,9 @@
>> >=20=20
>> >  struct drm_scanout_buffer;
>> >  struct intel_framebuffer;
>> > +struct intel_panic;
>> >=20=20
>> > -struct intel_framebuffer *intel_bo_alloc_framebuffer(void);
>> > +struct intel_panic *intel_panic_alloc(void);
>> >  int intel_panic_setup(struct drm_scanout_buffer *sb);
>> >  void intel_panic_finish(struct intel_framebuffer *fb);
>> >=20=20
>> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/=
drm/i915/gem/i915_gem_object.h
>> > index 565f8fa330db..9b3f25cb48db 100644
>> > --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> > @@ -16,9 +16,10 @@
>> >  #include "i915_gem_ww.h"
>> >  #include "i915_vma_types.h"
>> >=20=20
>> > -struct drm_scanout_buffer;
>> >  enum intel_region_id;
>> > +struct drm_scanout_buffer;
>> >  struct intel_framebuffer;
>> > +struct intel_panic;
>> >=20=20
>> >  #define obj_to_i915(obj__) to_i915((obj__)->base.dev)
>> >=20=20
>> > @@ -693,7 +694,7 @@ i915_gem_object_unpin_pages(struct drm_i915_gem_ob=
ject *obj)
>> >  int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj);
>> >  int i915_gem_object_truncate(struct drm_i915_gem_object *obj);
>> >=20=20
>> > -struct intel_framebuffer *i915_gem_object_alloc_framebuffer(void);
>> > +struct intel_panic *i915_gem_object_alloc_panic(void);
>> >  int i915_gem_object_panic_setup(struct drm_scanout_buffer *sb);
>> >  void i915_gem_object_panic_finish(struct intel_framebuffer *fb);
>> >=20=20
>> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/d=
rm/i915/gem/i915_gem_pages.c
>> > index e36d60b785b1..b219474aecc7 100644
>> > --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>> > @@ -363,11 +363,6 @@ struct intel_panic {
>> >  	void *vaddr;
>> >  };
>> >=20=20
>> > -struct i915_framebuffer {
>> > -	struct intel_framebuffer base;
>> > -	struct intel_panic panic;
>> > -};
>> > -
>> >  static void i915_panic_kunmap(struct intel_panic *panic)
>> >  {
>> >  	if (panic->vaddr) {
>> > @@ -436,17 +431,13 @@ static void i915_gem_object_panic_page_set_pixel=
(struct drm_scanout_buffer *sb,
>> >  	}
>> >  }
>> >=20=20
>> > -struct intel_framebuffer *i915_gem_object_alloc_framebuffer(void)
>> > +struct intel_panic *i915_gem_object_alloc_panic(void)
>> >  {
>> > -	struct i915_framebuffer *i915_fb;
>> > -
>> > -	i915_fb =3D kzalloc(sizeof(*i915_fb), GFP_KERNEL);
>> > -	if (!i915_fb)
>> > -		return NULL;
>> > +	struct intel_panic *panic;
>> >=20=20
>> > -	i915_fb->base.panic =3D &i915_fb->panic;
>> > +	panic =3D kzalloc(sizeof(*panic), GFP_KERNEL);
>> >=20=20
>> > -	return &i915_fb->base;
>> > +	return panic;
>> >  }
>> >=20=20
>> >  /*
>> > diff --git a/drivers/gpu/drm/xe/display/xe_panic.c b/drivers/gpu/drm/x=
e/display/xe_panic.c
>> > index 3ef23a6795b3..b5a7615708a1 100644
>> > --- a/drivers/gpu/drm/xe/display/xe_panic.c
>> > +++ b/drivers/gpu/drm/xe/display/xe_panic.c
>> > @@ -15,11 +15,6 @@ struct intel_panic {
>> >  	void *vaddr;
>> >  };
>> >=20=20
>> > -struct xe_framebuffer {
>> > -	struct intel_framebuffer base;
>> > -	struct intel_panic panic;
>> > -};
>> > -
>> >  static void xe_panic_kunmap(struct intel_panic *panic)
>> >  {
>> >  	if (panic->vaddr) {
>> > @@ -62,17 +57,13 @@ static void xe_panic_page_set_pixel(struct drm_sca=
nout_buffer *sb, unsigned int
>> >  	}
>> >  }
>> >=20=20
>> > -struct intel_framebuffer *intel_bo_alloc_framebuffer(void)
>> > +struct intel_panic *intel_panic_alloc(void)
>> >  {
>> > -	struct xe_framebuffer *xe_fb;
>> > -
>> > -	xe_fb =3D kzalloc(sizeof(*xe_fb), GFP_KERNEL);
>> > -	if (!xe_fb)
>> > -		return NULL;
>> > +	struct intel_panic *panic;
>> >=20=20
>> > -	xe_fb->base.panic =3D &xe_fb->panic;
>> > +	panic =3D kzalloc(sizeof(*panic), GFP_KERNEL);
>> >=20=20
>> > -	return &xe_fb->base;
>> > +	return panic;
>> >  }
>> >=20=20
>> >  int intel_panic_setup(struct drm_scanout_buffer *sb)
>>=20
>> --=20
>> Jani Nikula, Intel

--=20
Jani Nikula, Intel
