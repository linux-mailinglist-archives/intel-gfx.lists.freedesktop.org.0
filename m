Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JrzBTg+62nFKAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 11:56:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8076945C962
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 11:56:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A858910F49D;
	Fri, 24 Apr 2026 09:56:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n/0VCkYJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85F0C10F498;
 Fri, 24 Apr 2026 09:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777024564; x=1808560564;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=GNqalHDdDrboTM63MQB0TiTlZy0Z+HDqhv44t5Qh9EE=;
 b=n/0VCkYJA+G9eFRImOCjG3yyVJKJRZXF4275+D9uq0RYSl1emXhe5zw1
 1PXyZvB8MqBcTwAtmzjj5SVISsdD5rDtB+aAUSsLBTK3PWPUcz+eqoZ0V
 42CUeEM6TqlNg5cj3Llu6fk/L5M84mmUykzJlPD7klj6HtKGWl5BYp0I+
 VkrjaqTaI7MR2EZcVHmTZt0BSDowuF0koCjuLc/LiWnvITH3vO00XgoAc
 Q2bjqwUfjDFyESBl4I2N0KtKUlBr4tStnAeqEThd1KJylgzjWIGnqwIHL
 JLcH/RnEKV9CJmqpcAECSSv7C27eOBC6Vrc9XweDgYoSMXU9Sf5rbmDUI w==;
X-CSE-ConnectionGUID: W0BdJbc8QU6Fbk8cWu42UA==
X-CSE-MsgGUID: hdMAvmW8RRqQLPJfIzyyNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="80586696"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="80586696"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 02:56:04 -0700
X-CSE-ConnectionGUID: FCfKyIgGTh+Ocp3s2R2hEw==
X-CSE-MsgGUID: Pc/1phyERCGn/deT4jHIvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="256208329"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.89])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 02:56:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 05/16] drm/i915: Introduce i915_fb_pin_dpt_(un)pin()
In-Reply-To: <20260423165346.20884-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260423165346.20884-1-ville.syrjala@linux.intel.com>
 <20260423165346.20884-6-ville.syrjala@linux.intel.com>
Date: Fri, 24 Apr 2026 12:56:00 +0300
Message-ID: <34ee7800b691746c60f5d804f063c755eb279c9a@intel.com>
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
X-Rspamd-Queue-Id: 8076945C962
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

On Thu, 23 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Extract the inner DPT parts of intel_plane_(un)pin() into the
> i915_fb_pin_dpt_(un)pin(). These will become part of the new
> fb_pin parent interface.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_fb_pin.c | 76 ++++++++++++++++++++++--------
>  1 file changed, 56 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i9=
15_fb_pin.c
> index bc2e185b4573..0019f570d843 100644
> --- a/drivers/gpu/drm/i915/i915_fb_pin.c
> +++ b/drivers/gpu/drm/i915/i915_fb_pin.c
> @@ -257,6 +257,49 @@ intel_plane_fb_vtd_guard(const struct intel_plane_st=
ate *plane_state)
>  				       plane_state->hw.rotation);
>  }
>=20=20
> +static int i915_fb_pin_dpt_pin(struct drm_gem_object *obj, struct intel_=
dpt *dpt,
> +			       const struct intel_fb_pin_params *pin_params,
> +			       struct i915_vma **out_dpt_vma,
> +			       struct i915_vma **out_ggtt_vma,
> +			       u32 *out_offset)
> +{
> +	struct i915_vma *ggtt_vma, *dpt_vma;
> +
> +	WARN_ON(!dpt);
> +
> +	ggtt_vma =3D i915_dpt_pin_to_ggtt(dpt, pin_params->alignment / 512);
> +	if (IS_ERR(ggtt_vma))
> +		return PTR_ERR(ggtt_vma);
> +
> +	dpt_vma =3D intel_fb_pin_to_dpt(obj, dpt, pin_params);
> +	if (IS_ERR(dpt_vma)) {
> +		i915_dpt_unpin_from_ggtt(dpt);
> +		return PTR_ERR(dpt_vma);
> +	}
> +
> +	drm_WARN_ON(obj->dev, ggtt_vma =3D=3D dpt_vma);
> +
> +	*out_ggtt_vma =3D ggtt_vma;
> +	*out_dpt_vma =3D dpt_vma;
> +
> +	*out_offset =3D i915_ggtt_offset(ggtt_vma);
> +
> +	return 0;
> +}
> +
> +static void i915_fb_pin_dpt_unpin(struct intel_dpt *dpt,
> +				  struct i915_vma *dpt_vma,
> +				  struct i915_vma *ggtt_vma)
> +{
> +	WARN_ON(!dpt);
> +	WARN_ON(!!dpt_vma !=3D !!ggtt_vma);
> +
> +	if (dpt_vma)
> +		intel_fb_unpin_vma(dpt_vma, -1);
> +	if (ggtt_vma)
> +		i915_dpt_unpin_from_ggtt(dpt);
> +}
> +
>  int intel_plane_pin_fb(struct intel_plane_state *plane_state,
>  		       const struct intel_plane_state *old_plane_state)
>  {
> @@ -268,6 +311,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plan=
e_state,
>  	struct i915_vma *dpt_vma =3D NULL;
>  	int fence_id =3D -1;
>  	u32 offset;
> +	int ret;
>=20=20
>  	if (!intel_fb_uses_dpt(&fb->base)) {
>  		struct intel_fb_pin_params pin_params =3D {
> @@ -306,19 +350,11 @@ int intel_plane_pin_fb(struct intel_plane_state *pl=
ane_state,
>  			.needs_cpu_lmem_access =3D intel_fb_needs_cpu_access(&fb->base),
>  		};
>=20=20
> -		ggtt_vma =3D i915_dpt_pin_to_ggtt(fb->dpt, pin_params.alignment / 512);
> -		if (IS_ERR(ggtt_vma))
> -			return PTR_ERR(ggtt_vma);
> -
> -		dpt_vma =3D intel_fb_pin_to_dpt(intel_fb_bo(&fb->base), fb->dpt, &pin_=
params);
> -		if (IS_ERR(dpt_vma)) {
> -			i915_dpt_unpin_from_ggtt(fb->dpt);
> -			return PTR_ERR(dpt_vma);
> -		}
> -
> -		WARN_ON(ggtt_vma =3D=3D dpt_vma);
> -
> -		offset =3D i915_ggtt_offset(ggtt_vma);
> +		ret =3D i915_fb_pin_dpt_pin(intel_fb_bo(&fb->base), fb->dpt,
> +					  &pin_params, &dpt_vma,
> +					  &ggtt_vma, &offset);
> +		if (ret)
> +			return ret;
>  	}
>=20=20
>  	plane_state->dpt_vma =3D dpt_vma;
> @@ -333,22 +369,22 @@ void intel_plane_unpin_fb(struct intel_plane_state =
*old_plane_state)
>  {
>  	const struct intel_framebuffer *fb =3D
>  		to_intel_framebuffer(old_plane_state->hw.fb);
> -	struct i915_vma *vma;
>=20=20
>  	if (!intel_fb_uses_dpt(&fb->base)) {
> +		struct i915_vma *vma;
> +
>  		vma =3D fetch_and_zero(&old_plane_state->ggtt_vma);
>  		if (vma) {
>  			intel_fb_unpin_vma(vma, old_plane_state->fence_id);
>  			old_plane_state->fence_id =3D -1;
>  		}
>  	} else {
> -		vma =3D fetch_and_zero(&old_plane_state->dpt_vma);
> -		if (vma)
> -			intel_fb_unpin_vma(vma, -1);
> +		i915_fb_pin_dpt_unpin(fb->dpt,
> +				      old_plane_state->dpt_vma,
> +				      old_plane_state->ggtt_vma);
>=20=20
> -		vma =3D fetch_and_zero(&old_plane_state->ggtt_vma);
> -		if (vma)
> -			i915_dpt_unpin_from_ggtt(fb->dpt);
> +		old_plane_state->dpt_vma =3D NULL;
> +		old_plane_state->ggtt_vma =3D NULL;
>  	}
>  }

--=20
Jani Nikula, Intel
