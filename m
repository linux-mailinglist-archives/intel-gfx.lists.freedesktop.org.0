Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDeyC/Bo62m2MgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 14:58:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F4045EC1C
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 14:58:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8240410F584;
	Fri, 24 Apr 2026 12:58:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a61GLBA8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DF0F10F58F;
 Fri, 24 Apr 2026 12:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777035501; x=1808571501;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=/Pms0IQAAoBx4xTuhV9FJxARcQaQbaO+ge5+gDo84Es=;
 b=a61GLBA8lyyihSFHSNPYeyYyzW828WDW/bM7ZY2djnv/1ouXhLc6NHqz
 0tWt3dtslQzPqnW4wNBidb6cC8GJ5SrgS8WjsXYQJ1Xv5fdPO2rvdfoQu
 roZ+Q8BxGa6Pq9F/39NsDYHAQz98gt88hC8zupEC8a6cWSJiA/X6wW4K3
 nYBtFb33T1+FM/EHVCCF+tM7t49SShwqZKsLnBXjOwIG3ZO4gE55ztYp9
 bhCCVtddOdLhaZLkG3THrVpmslQT3Cna2tGAWmyH5RL626DomcYTxngc6
 pzOvqlsWhaYsKGBM3r09cVnV10Xd8aKxLEYvzYnJeWgsfBJ+chSt+yKmx A==;
X-CSE-ConnectionGUID: 45iwym9GTPW+QoHxZ7Qc/Q==
X-CSE-MsgGUID: AtMToskVQRKb2YIWf70Kvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="81621086"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="81621086"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 05:58:21 -0700
X-CSE-ConnectionGUID: hOQn4baHRfOCwXPkI7G+CA==
X-CSE-MsgGUID: hOTkWzd5TDS0KLJ2nIDPNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="226413255"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.89])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 05:58:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 15/16] drm/xe: Use xe_fb_pin_ggtt_pin() for the initial
 FB pin
In-Reply-To: <20260423165346.20884-16-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260423165346.20884-1-ville.syrjala@linux.intel.com>
 <20260423165346.20884-16-ville.syrjala@linux.intel.com>
Date: Fri, 24 Apr 2026 15:58:16 +0300
Message-ID: <5cca587cdf8a68b126b13d2947696f7fcf6fd3f8@intel.com>
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
X-Rspamd-Queue-Id: 83F4045EC1C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

On Thu, 23 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use xe_fb_pin_ggtt_pin() instead of intel_fb_pin_to_ggtt() for
> the initial FB pin. We want to get rid of intel_fb_pin_to_ggtt()
> and just use the new fb_pin parent interface.
>
> This still isn't quite the final solution since we bypass the
> actual parent interface and call the implementation directly.
> But sorting that out will require more cleanup to the initial
> FB code.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/xe/display/xe_fb_pin.c        | 21 +++++--------------
>  drivers/gpu/drm/xe/display/xe_fb_pin.h        | 12 +++++++++++
>  drivers/gpu/drm/xe/display/xe_initial_plane.c | 18 ++++++++++------
>  3 files changed, 29 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/=
display/xe_fb_pin.c
> index c3171625d150..c92c30ceba36 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -413,22 +413,11 @@ static void __xe_unpin_fb_vma(struct i915_vma *vma)
>  	kfree(vma);
>  }
>=20=20
> -struct i915_vma *
> -intel_fb_pin_to_ggtt(struct drm_gem_object *obj,
> -		     const struct intel_fb_pin_params *pin_params,
> -		     int *out_fence_id)
> -{
> -	if (out_fence_id)
> -		*out_fence_id =3D -1;
> -
> -	return __xe_pin_fb_vma(obj, false, pin_params);
> -}
> -
> -static int xe_fb_pin_ggtt_pin(struct drm_gem_object *obj,
> -			      const struct intel_fb_pin_params *pin_params,
> -			      struct i915_vma **out_ggtt_vma,
> -			      u32 *out_offset,
> -			      int *out_fence_id)
> +int xe_fb_pin_ggtt_pin(struct drm_gem_object *obj,
> +		       const struct intel_fb_pin_params *pin_params,
> +		       struct i915_vma **out_ggtt_vma,
> +		       u32 *out_offset,
> +		       int *out_fence_id)
>  {
>  	struct i915_vma *ggtt_vma;
>=20=20
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.h b/drivers/gpu/drm/xe/=
display/xe_fb_pin.h
> index 8a42d4009f5d..20dd8a99a25f 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.h
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.h
> @@ -4,6 +4,18 @@
>  #ifndef __XE_FB_PIN_H__
>  #define __XE_FB_PIN_H__
>=20=20
> +#include <linux/types.h>
> +
> +struct drm_gem_object;
> +struct i915_vma;
> +struct intel_fb_pin_params;
> +
> +int xe_fb_pin_ggtt_pin(struct drm_gem_object *obj,
> +		       const struct intel_fb_pin_params *pin_params,
> +		       struct i915_vma **out_ggtt_vma,
> +		       u32 *out_offset,
> +		       int *out_fence_id);
> +
>  extern const struct intel_display_fb_pin_interface xe_display_fb_pin_int=
erface;
>=20=20
>  #endif /* __XE_FB_PIN_H__ */
> diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/=
drm/xe/display/xe_initial_plane.c
> index 8e3c0c4b81fe..02b46cc3b6df 100644
> --- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
> +++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
> @@ -7,12 +7,16 @@
>=20=20
>  #include "regs/xe_gtt_defs.h"
>=20=20
> -#include "intel_display_types.h"
> +/* FIXME move intel_remapped_info_size() & co. */
>  #include "intel_fb.h"
> -#include "intel_fb_pin.h"
> +
> +/* FIXME move intel_initial_plane_config */
> +#include "intel_display_types.h"
> +
>  #include "xe_bo.h"
>  #include "xe_display_bo.h"
>  #include "xe_display_vma.h"
> +#include "xe_fb_pin.h"
>  #include "xe_ggtt.h"
>  #include "xe_mmio.h"
>  #include "xe_vram_types.h"
> @@ -137,14 +141,16 @@ xe_initial_plane_setup(struct drm_plane_state *_pla=
ne_state,
>  	struct intel_fb_pin_params pin_params =3D {
>  		.view =3D &plane_state->view.gtt,
>  	};
> +	u32 offset;
> +	int ret;
>=20=20
> -	vma =3D intel_fb_pin_to_ggtt(intel_fb_bo(fb), &pin_params, NULL);
> -	if (IS_ERR(vma))
> -		return PTR_ERR(vma);
> +	ret =3D xe_fb_pin_ggtt_pin(intel_fb_bo(fb), &pin_params, &vma, &offset,=
 NULL);
> +	if (ret)
> +		return ret;
>=20=20
>  	plane_state->ggtt_vma =3D vma;
>=20=20
> -	plane_state->surf =3D xe_ggtt_node_addr(plane_state->ggtt_vma->node);
> +	plane_state->surf =3D offset;
>=20=20
>  	plane_config->vma =3D vma;

--=20
Jani Nikula, Intel
