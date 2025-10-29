Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5E4C1B7D3
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 15:59:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25F9310E7F1;
	Wed, 29 Oct 2025 14:59:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XEYs7cyZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 172E210E7F1
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Oct 2025 14:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761749964; x=1793285964;
 h=resent-to:resent-from:resent-date:resent-message-id:from:
 to:cc:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=4fCZemPU/0Tq8L8QvQ9/VIdKjhxkIKr2w/0BZVxkK7c=;
 b=XEYs7cyZ5bmnL+mjeLDgiLtwyT4eylGxLZ9j0ut7OcQHWJt/YcR0Su+/
 STY09g7e8U5aFwa97HKiS/Pa0zBWRvyIfFwjO7kMpPcZMO+YhbSr/ogXO
 VZucf8ZJUizn+0yNqMHG5qGJ+Zm1uB96wYefE+vVibUyTEuujgIadk2yz
 jK9gjw19EOM92QYoxskvCVcfthkQIAD5vgWgIxFRKEDQDSZaweNdJ0qiP
 d89S1YC61cowO9CfcGEpZmSfaqDWr3H3AmLu3KLBcBlt9wJGZxaZkK7vf
 O82u1VMWY7QtMDc34jkXNM5bw9TWPcfqLPjlQIHqFUhJq1Vwnt3seA8mO g==;
X-CSE-ConnectionGUID: B+UIM42eQGi9kZTg7tYu6A==
X-CSE-MsgGUID: DXxhZ25CRLqUx/hNtXbohw==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="67736262"
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="67736262"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 07:59:24 -0700
X-CSE-ConnectionGUID: 8aZ6VYGvScmIdp+GA5ZBGg==
X-CSE-MsgGUID: cTeZUG28QWmIi1YG/A7pUw==
X-ExtLoop1: 1
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 07:59:22 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Wed, 29 Oct 2025 16:59:20 +0200
Resent-Message-ID: <18d352a67948563c80a84466b53662fd4cf9c4da@intel.com>
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 10/10] drm/i915/gem:
 s/i915_gem_object_get_frontbuffer/i915_gem_object_frontbuffer_lookup/
In-Reply-To: <20251016185408.22735-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251016185408.22735-1-ville.syrjala@linux.intel.com>
 <20251016185408.22735-11-ville.syrjala@linux.intel.com>
Date: Wed, 29 Oct 2025 15:37:33 +0200
Message-ID: <90f8197f3a1cdaa0b5c42b25ee7bdefb1c774aa0@intel.com>
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
> The i915_gem_object_get_frontbuffer() name is rather confusing wrt.
> intel_frontbuffer_get(). Rename to i915_gem_object_frontbuffer_lookup()
> to make things less confusing.
>
> Acked-by: Jani Nikula <jani.nikula@intel.com>

Upgrade to

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_object.c             | 4 ++--
>  drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c | 2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h | 6 +++---
>  drivers/gpu/drm/i915/i915_vma.c                        | 2 +-
>  4 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm=
/i915/gem/i915_gem_object.c
> index 36680eddf88e..828936e603a6 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -478,7 +478,7 @@ void __i915_gem_object_flush_frontbuffer(struct drm_i=
915_gem_object *obj,
>  {
>  	struct i915_frontbuffer *front;
>=20=20
> -	front =3D i915_gem_object_get_frontbuffer(obj);
> +	front =3D i915_gem_object_frontbuffer_lookup(obj);
>  	if (front) {
>  		intel_frontbuffer_flush(&front->base, origin);
>  		i915_gem_object_frontbuffer_put(front);
> @@ -490,7 +490,7 @@ void __i915_gem_object_invalidate_frontbuffer(struct =
drm_i915_gem_object *obj,
>  {
>  	struct i915_frontbuffer *front;
>=20=20
> -	front =3D i915_gem_object_get_frontbuffer(obj);
> +	front =3D i915_gem_object_frontbuffer_lookup(obj);
>  	if (front) {
>  		intel_frontbuffer_invalidate(&front->base, origin);
>  		i915_gem_object_frontbuffer_put(front);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c b/dri=
vers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c
> index 7ef89613c025..aaa15e7b3f17 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c
> @@ -28,7 +28,7 @@ i915_gem_object_frontbuffer_get(struct drm_i915_gem_obj=
ect *obj)
>  	struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
>  	struct i915_frontbuffer *front, *cur;
>=20=20
> -	front =3D i915_gem_object_get_frontbuffer(obj);
> +	front =3D i915_gem_object_frontbuffer_lookup(obj);
>  	if (front)
>  		return front;
>=20=20
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h b/dri=
vers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
> index 385f7e8049b8..2133e29047c5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
> @@ -46,8 +46,8 @@ void i915_gem_object_frontbuffer_ref(struct i915_frontb=
uffer *front);
>  void i915_gem_object_frontbuffer_put(struct i915_frontbuffer *front);
>=20=20
>  /**
> - * i915_gem_object_get_frontbuffer - Get the object's frontbuffer
> - * @obj: The object whose frontbuffer to get.
> + * i915_gem_object_frontbuffer_lookup - Look up the object's frontbuffer
> + * @obj: The object whose frontbuffer to look up.
>   *
>   * Get pointer to object's frontbuffer if such exists. Please note that =
RCU
>   * mechanism is used to handle e.g. ongoing removal of frontbuffer point=
er.
> @@ -55,7 +55,7 @@ void i915_gem_object_frontbuffer_put(struct i915_frontb=
uffer *front);
>   * Return: pointer to object's frontbuffer is such exists or NULL
>   */
>  static inline struct i915_frontbuffer *
> -i915_gem_object_get_frontbuffer(const struct drm_i915_gem_object *obj)
> +i915_gem_object_frontbuffer_lookup(const struct drm_i915_gem_object *obj)
>  {
>  	struct i915_frontbuffer *front;
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_=
vma.c
> index cb36daaa101d..6888d3f4557b 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1992,7 +1992,7 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
>  	if (flags & EXEC_OBJECT_WRITE) {
>  		struct i915_frontbuffer *front;
>=20=20
> -		front =3D i915_gem_object_get_frontbuffer(obj);
> +		front =3D i915_gem_object_frontbuffer_lookup(obj);
>  		if (unlikely(front)) {
>  			if (intel_frontbuffer_invalidate(&front->base, ORIGIN_CS))
>  				i915_active_add_request(&front->write, rq);

--=20
Jani Nikula, Intel
