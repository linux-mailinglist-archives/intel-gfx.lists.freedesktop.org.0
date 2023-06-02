Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FA07207F1
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 18:53:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CE7E10E209;
	Fri,  2 Jun 2023 16:53:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8BA910E05B
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 16:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685724797; x=1717260797;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=GPgn0tbUyCqeHq5nVhbDomaBaC1mQ05jn8geb93TeDc=;
 b=HfVncJgcCwM0+ERHvAGDGWp+M4FFXY6RQOLT24qnYUwg3CapvZW+ipCj
 mgY21PGb6w6u60VaMa4vWcRG42V0JkFxxTLRa2SNlNOuxBOMZegWkDygV
 xPM9+jYRDFnSeruDccm5pBIoOMyy6/2Jnld7wLBay+pSE90MGKazusUfO
 mvjV2vQk2PTcpLfCmrFQBmsI3NWZedoo+KPXRELr6GQ2nGAmAks/G7jE6
 zKpzq7io89ml+g97DCBUip6wIWP5kTH6fvB+2B7TOoQXx5OmAziigySf3
 Zx5Ov5mAKQ8t1kw0hntlcqncpbSTw3wxUbgiVsre8LatJgsYZxlfBq4dp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="421729666"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="421729666"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 09:53:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="685372016"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="685372016"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.111])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 09:52:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230530061417.2384188-5-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230530061417.2384188-1-jouni.hogander@intel.com>
 <20230530061417.2384188-5-jouni.hogander@intel.com>
Date: Fri, 02 Jun 2023 19:52:55 +0300
Message-ID: <87jzwldcwo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915: Add function to clear
 scanout flag for vmas
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

On Tue, 30 May 2023, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Currently frontbuffer tracking code is directly iterating over object vmas
> and clearing scanout flags for them. Add function to clear scanout flag f=
or
> vmas and use it from frontbuffer tracking code.
>
> v2: describe function parameter.
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

I don't really have confidence on what the right placement of the
function should be, but it does what it says on the box.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_frontbuffer.c  |  8 +-------
>  drivers/gpu/drm/i915/i915_vma.c               | 20 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_vma.h               |  2 ++
>  3 files changed, 23 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/g=
pu/drm/i915/display/intel_frontbuffer.c
> index 41ac65c98720..29ac068b8fa5 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -226,16 +226,10 @@ static void frontbuffer_release(struct kref *ref)
>  	struct intel_frontbuffer *front =3D
>  		container_of(ref, typeof(*front), ref);
>  	struct drm_i915_gem_object *obj =3D front->obj;
> -	struct i915_vma *vma;
>=20=20
>  	drm_WARN_ON(&intel_bo_to_i915(obj)->drm, atomic_read(&front->bits));
>=20=20
> -	spin_lock(&obj->vma.lock);
> -	for_each_ggtt_vma(vma, obj) {
> -		i915_vma_clear_scanout(vma);
> -		vma->display_alignment =3D I915_GTT_MIN_ALIGNMENT;
> -	}
> -	spin_unlock(&obj->vma.lock);
> +	i915_ggtt_clear_scanout(obj);
>=20=20
>  	i915_gem_object_set_frontbuffer(obj, NULL);
>  	spin_unlock(&intel_bo_to_i915(obj)->display.fb_tracking.lock);
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_=
vma.c
> index c66ff2157f6a..c6be96206ee5 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1629,6 +1629,26 @@ int i915_ggtt_pin(struct i915_vma *vma, struct i91=
5_gem_ww_ctx *ww,
>  	return err;
>  }
>=20=20
> +/**
> + * i915_ggtt_clear_scanout - Clear scanout flag for all objects ggtt vmas
> + * @obj: i915 GEM object
> + * This function clears scanout flags for objects ggtt vmas. These flags=
 are set
> + * when object is pinned for display use and this function to clear them=
 all is
> + * targeted to be called by frontbuffer tracking code when the frontbuff=
er is
> + * about to be released.
> + */
> +void i915_ggtt_clear_scanout(struct drm_i915_gem_object *obj)
> +{
> +	struct i915_vma *vma;
> +
> +	spin_lock(&obj->vma.lock);
> +	for_each_ggtt_vma(vma, obj) {
> +		i915_vma_clear_scanout(vma);
> +		vma->display_alignment =3D I915_GTT_MIN_ALIGNMENT;
> +	}
> +	spin_unlock(&obj->vma.lock);
> +}
> +
>  static void __vma_close(struct i915_vma *vma, struct intel_gt *gt)
>  {
>  	/*
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_=
vma.h
> index 9a9729205d5b..eaa310864370 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -435,6 +435,8 @@ static inline void i915_vma_clear_scanout(struct i915=
_vma *vma)
>  	clear_bit(I915_VMA_SCANOUT_BIT, __i915_vma_flags(vma));
>  }
>=20=20
> +void i915_ggtt_clear_scanout(struct drm_i915_gem_object *obj);
> +
>  #define for_each_until(cond) if (cond) break; else
>=20=20
>  /**

--=20
Jani Nikula, Intel Open Source Graphics Center
