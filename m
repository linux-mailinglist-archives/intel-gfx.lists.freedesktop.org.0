Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC4DC1B78A
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 15:58:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 116EC10E7EB;
	Wed, 29 Oct 2025 14:58:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="asj+EJlf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D217F10E7EB
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Oct 2025 14:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761749910; x=1793285910;
 h=resent-to:resent-from:resent-date:resent-message-id:from:
 to:cc:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Eg42eIlVjTIvpeJYrlk96jl0jz6ZJtcxnAU3KOuvDRo=;
 b=asj+EJlfeCb5uFeT7pou6VSsDoNtJMZ/Sy+YlMgZR1UMVJNgqJveGg4D
 XsGDEgd4Gz9BvtMYHdLUO1Bjc2CxZ7ch5Tw5/Lk5UJtHbJKC89vy/mo4W
 FPO2SBrIdPLI5KAgkh/iY27GtMY2ZNhaYXF129jLmPFJO1SyEwHsMqszo
 EATkY8dL2L+7a2kYoM9su3maKISApAWGvDc/xsObiLNTfqEZ9CkJV1sOF
 2HiU05IgMrxzX0lck/RBk8v3IB+7z2a3MXhQjA7Uw/gRC0QqP/RqY281L
 X8J7nCBf/KAsVRDjzpAX3n/hmybqhGyM8HRjGCEzrbCBAexmV22hxawit Q==;
X-CSE-ConnectionGUID: ByL7qyGDSKKylsWuPpfIpQ==
X-CSE-MsgGUID: JIXcphfNR0Gxlm5UvK0mVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="89341987"
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="89341987"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 07:58:30 -0700
X-CSE-ConnectionGUID: CulSc/AGT5at59bufxVk+Q==
X-CSE-MsgGUID: kLSmlEtZT/2n3RF9LCW4dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="222904445"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 07:58:29 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Wed, 29 Oct 2025 16:58:26 +0200
Resent-Message-ID: <19f7252eb865105d12c065111213a25d1217fd36@intel.com>
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 04/10] drm/i915/frontbuffer: Turn
 intel_bo_flush_if_display() into a frontbuffer operation
In-Reply-To: <20251016185408.22735-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251016185408.22735-1-ville.syrjala@linux.intel.com>
 <20251016185408.22735-5-ville.syrjala@linux.intel.com>
Date: Wed, 29 Oct 2025 15:33:36 +0200
Message-ID: <2025b90847909fec24b7aeee6af8465a3cd3d566@intel.com>
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
> Convert intel_bo_flush_if_display() to be an operation on the
> frontbuffer object rather than the underlying gem bo. This
> will help with cleaning up the frontbuffer xe/i915 vs. display
> split.
>
> Acked-by: Jani Nikula <jani.nikula@intel.com>

Upgrade to

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bo.c          | 10 +++++-----
>  drivers/gpu/drm/i915/display/intel_bo.h          |  2 +-
>  drivers/gpu/drm/i915/display/intel_fb.c          |  2 +-
>  drivers/gpu/drm/i915/display/intel_frontbuffer.c |  2 +-
>  drivers/gpu/drm/xe/display/intel_bo.c            |  8 ++++----
>  5 files changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i9=
15/display/intel_bo.c
> index 6ae1374d5c2b..2792aca7bc22 100644
> --- a/drivers/gpu/drm/i915/display/intel_bo.c
> +++ b/drivers/gpu/drm/i915/display/intel_bo.c
> @@ -29,11 +29,6 @@ bool intel_bo_is_protected(struct drm_gem_object *obj)
>  	return i915_gem_object_is_protected(to_intel_bo(obj));
>  }
>=20=20
> -void intel_bo_flush_if_display(struct drm_gem_object *obj)
> -{
> -	i915_gem_object_flush_if_display(to_intel_bo(obj));
> -}
> -
>  int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *=
vma)
>  {
>  	return i915_gem_fb_mmap(to_intel_bo(obj), vma);
> @@ -55,6 +50,11 @@ struct intel_frontbuffer *intel_bo_set_frontbuffer(str=
uct drm_gem_object *obj,
>  	return i915_gem_object_set_frontbuffer(to_intel_bo(obj), front);
>  }
>=20=20
> +void intel_bo_frontbuffer_flush_for_display(struct intel_frontbuffer *fr=
ont)
> +{
> +	i915_gem_object_flush_if_display(to_intel_bo(front->obj));
> +}
> +
>  void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj)
>  {
>  	i915_debugfs_describe_obj(m, to_intel_bo(obj));
> diff --git a/drivers/gpu/drm/i915/display/intel_bo.h b/drivers/gpu/drm/i9=
15/display/intel_bo.h
> index 48d87019e48a..08247bf36d40 100644
> --- a/drivers/gpu/drm/i915/display/intel_bo.h
> +++ b/drivers/gpu/drm/i915/display/intel_bo.h
> @@ -16,13 +16,13 @@ bool intel_bo_is_tiled(struct drm_gem_object *obj);
>  bool intel_bo_is_userptr(struct drm_gem_object *obj);
>  bool intel_bo_is_shmem(struct drm_gem_object *obj);
>  bool intel_bo_is_protected(struct drm_gem_object *obj);
> -void intel_bo_flush_if_display(struct drm_gem_object *obj);
>  int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *=
vma);
>  int intel_bo_read_from_page(struct drm_gem_object *obj, u64 offset, void=
 *dst, int size);
>=20=20
>  struct intel_frontbuffer *intel_bo_get_frontbuffer(struct drm_gem_object=
 *obj);
>  struct intel_frontbuffer *intel_bo_set_frontbuffer(struct drm_gem_object=
 *obj,
>  						   struct intel_frontbuffer *front);
> +void intel_bo_frontbuffer_flush_for_display(struct intel_frontbuffer *fr=
ont);
>=20=20
>  void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index 3958628c73e9..ab301c657395 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -2194,7 +2194,7 @@ static int intel_user_framebuffer_dirty(struct drm_=
framebuffer *fb,
>  	return ret;
>=20=20
>  flush:
> -	intel_bo_flush_if_display(obj);
> +	intel_bo_frontbuffer_flush_for_display(front);
>  	intel_frontbuffer_flush(front, ORIGIN_DIRTYFB);
>  	return ret;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/g=
pu/drm/i915/display/intel_frontbuffer.c
> index 53e93985c7d4..5562801d2ea3 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -167,7 +167,7 @@ static void intel_frontbuffer_flush_work(struct work_=
struct *work)
>  	struct intel_frontbuffer *front =3D
>  		container_of(work, struct intel_frontbuffer, flush_work);
>=20=20
> -	intel_bo_flush_if_display(front->obj);
> +	intel_bo_frontbuffer_flush_for_display(front);
>  	intel_frontbuffer_flush(front, ORIGIN_DIRTYFB);
>  	intel_frontbuffer_put(front);
>  }
> diff --git a/drivers/gpu/drm/xe/display/intel_bo.c b/drivers/gpu/drm/xe/d=
isplay/intel_bo.c
> index 27437c22bd70..2437c00a2d3e 100644
> --- a/drivers/gpu/drm/xe/display/intel_bo.c
> +++ b/drivers/gpu/drm/xe/display/intel_bo.c
> @@ -28,10 +28,6 @@ bool intel_bo_is_protected(struct drm_gem_object *obj)
>  	return xe_bo_is_protected(gem_to_xe_bo(obj));
>  }
>=20=20
> -void intel_bo_flush_if_display(struct drm_gem_object *obj)
> -{
> -}
> -
>  int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *=
vma)
>  {
>  	return drm_gem_prime_mmap(obj, vma);
> @@ -55,6 +51,10 @@ struct intel_frontbuffer *intel_bo_set_frontbuffer(str=
uct drm_gem_object *obj,
>  	return front;
>  }
>=20=20
> +void intel_bo_frontbuffer_flush_for_display(struct intel_frontbuffer *fr=
ont)
> +{
> +}
> +
>  void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj)
>  {
>  	/* FIXME */

--=20
Jani Nikula, Intel
