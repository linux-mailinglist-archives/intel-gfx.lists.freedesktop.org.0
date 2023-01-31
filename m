Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 037EF682586
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 08:27:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F07010E33B;
	Tue, 31 Jan 2023 07:27:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D8EE10E33B
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 07:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675150060; x=1706686060;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=n/WxqLgKWXL2M7krLOu+XgEuKMjMvpZBFh7dT6Y4EGo=;
 b=Zo9LbwonYEXEiHtGeekGfuX+wyPCfvUlTe+TBeinAfp93WbLz90IDe9I
 Pog0+7v7PZB70TYkkaR3VabVpDDieBOTiEKzwnAWzmgkXLkmj1DvGmAu9
 swSmEXdAvXyH490U4l62tp9PodhbHzvWC9INjYPIwt9ZaDiyV/o3Jk8aV
 a0RS/sSZl9wYNJWvCki8JIm+YuqYu9hMiHfghpXieny7/hU3Xjib91dhQ
 oq7VBEJnXzq41qdJTTAL7BMTMrLxwkGTqfkKvnKRo3UqtSQhy67DuXkHw
 aDbuIhZYNyP+OjeeSW0icI/U3HtGSuTbqNW7HcBAl0hDbiAaTlW09lm6U g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="327791233"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="327791233"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 23:27:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="614340263"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="614340263"
Received: from akryuko1-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.34.35])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 23:27:39 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230131002127.29305-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230131002127.29305-1-ville.syrjala@linux.intel.com>
 <20230131002127.29305-2-ville.syrjala@linux.intel.com>
Date: Tue, 31 Jan 2023 09:27:36 +0200
Message-ID: <87lelj2mfr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Introduce HAS_SAGV()
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

On Tue, 31 Jan 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Introuce a HAS_SAGV() macro to answer the question whether
> the platform in general supports SAGV. intel_has_sagv() will
> keep on giving us the more specific answer whether the current
> device supports SAGV or not.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 6 +++---
>  drivers/gpu/drm/i915/i915_drv.h              | 3 ++-
>  2 files changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 0c605034356f..5916694f147c 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -64,7 +64,7 @@ static bool skl_needs_memory_bw_wa(struct drm_i915_priv=
ate *i915)
>  static bool
>  intel_has_sagv(struct drm_i915_private *i915)
>  {
> -	return DISPLAY_VER(i915) >=3D 9 && !IS_LP(i915) &&
> +	return HAS_SAGV(i915) &&
>  		i915->display.sagv.status !=3D I915_SAGV_NOT_CONTROLLED;
>  }
>=20=20
> @@ -92,7 +92,7 @@ intel_sagv_block_time(struct drm_i915_private *i915)
>  		return val;
>  	} else if (DISPLAY_VER(i915) =3D=3D 11) {
>  		return 10;
> -	} else if (DISPLAY_VER(i915) =3D=3D 9 && !IS_LP(i915)) {
> +	} else if (HAS_SAGV(i915)) {
>  		return 30;
>  	} else {
>  		return 0;
> @@ -101,7 +101,7 @@ intel_sagv_block_time(struct drm_i915_private *i915)
>=20=20
>  static void intel_sagv_init(struct drm_i915_private *i915)
>  {
> -	if (!intel_has_sagv(i915))
> +	if (!HAS_SAGV(i915))
>  		i915->display.sagv.status =3D I915_SAGV_NOT_CONTROLLED;
>=20=20
>  	/*
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index a0dcf3352b66..0393273faa09 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -863,7 +863,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   */
>  #define HAS_64K_PAGES(dev_priv) (INTEL_INFO(dev_priv)->has_64k_pages)
>=20=20
> -#define HAS_IPC(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ipc)
> +#define HAS_IPC(dev_priv)		(INTEL_INFO(dev_priv)->display.has_ipc)
> +#define HAS_SAGV(dev_priv)		(DISPLAY_VER(dev_priv) >=3D 9 && !IS_LP(dev_=
priv))
>=20=20
>  #define HAS_REGION(i915, i) (RUNTIME_INFO(i915)->memory_regions & (i))
>  #define HAS_LMEM(i915) HAS_REGION(i915, REGION_LMEM)

--=20
Jani Nikula, Intel Open Source Graphics Center
