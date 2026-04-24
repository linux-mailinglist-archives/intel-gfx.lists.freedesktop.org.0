Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4FawJ/1B62nZKAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 12:12:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E4545CC94
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 12:12:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13B7010F4CD;
	Fri, 24 Apr 2026 10:12:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kh6tnh/A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25BC810F4D3;
 Fri, 24 Apr 2026 10:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777025530; x=1808561530;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=miRcK2e9e1Dvl/ZVKT0aDQN9fvuZLJTozPMv3uAMmNU=;
 b=kh6tnh/AtWh7+Rzqlcmn1s/+G7Dt6H+AR4S5VycRhodUSq8olP+OBcZG
 1iKXALel9bDWaaz7Cf/Lw9x7r0FjvOtrJ3pQT7VEmV/FpYx1EZjXDnj2w
 UtvsVhqUlrbsCqM4Bvgld4BITdNu6podDyKZSNekDYfzEL2OFUpEPiqUf
 lQMVgSoVqmvglogXJV7mHKPFX5oJnurXPzQtwm18B/0pJX4mdiLIfV+cW
 HddF0MhTBYVdz5w+2Lt5uY/SJt85qax09WVKrpKmk/MdRwHSsD5RkT9Ya
 RXQvZTXsinGlkeec1eT71yso/Fgq9dns5YyYxF/OkTpA/qv8+5e78N+i9 g==;
X-CSE-ConnectionGUID: AiT/qvDNRnmi4cQkqIanIA==
X-CSE-MsgGUID: 9GXR1PhMQmeL9CiHDia9Ng==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="88311396"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="88311396"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 03:12:09 -0700
X-CSE-ConnectionGUID: 0uXFGr3oSTeqVGEoI0v64g==
X-CSE-MsgGUID: fXuIOflHSHKXrnhSCi7dJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="237970914"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.89])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 03:12:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 10/16] drm/xe: Introduce xe_fb_pin_dpt_(un)pin()
In-Reply-To: <20260423165346.20884-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260423165346.20884-1-ville.syrjala@linux.intel.com>
 <20260423165346.20884-11-ville.syrjala@linux.intel.com>
Date: Fri, 24 Apr 2026 13:12:05 +0300
Message-ID: <5c693619e1f9551c8cc8ad5cfce521e45216f574@intel.com>
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
X-Rspamd-Queue-Id: E2E4545CC94
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
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[intel.com:+];
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
> xe_fb_pin_dpt_(un)pin(). These will become part of the new
> fb_pin parent interface.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/xe/display/xe_fb_pin.c | 69 ++++++++++++++++++++++----
>  1 file changed, 59 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/=
display/xe_fb_pin.c
> index 9774089ee75c..46f6ae6acc4e 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -428,6 +428,36 @@ void intel_fb_unpin_vma(struct i915_vma *vma, int fe=
nce_id)
>  	__xe_unpin_fb_vma(vma);
>  }
>=20=20
> +static int xe_fb_pin_dpt_pin(struct drm_gem_object *obj, struct intel_dp=
t *dpt,
> +			     const struct intel_fb_pin_params *pin_params,
> +			     struct i915_vma **out_dpt_vma,
> +			     struct i915_vma **out_ggtt_vma,
> +			     u32 *out_offset)
> +{
> +	struct i915_vma *ggtt_vma;
> +
> +	WARN_ON(dpt);
> +
> +	ggtt_vma =3D __xe_pin_fb_vma(obj, true, pin_params);
> +	if (IS_ERR(ggtt_vma))
> +		return PTR_ERR(ggtt_vma);
> +
> +	*out_dpt_vma =3D NULL; /* not used on xe */
> +	*out_ggtt_vma =3D ggtt_vma;
> +	*out_offset =3D xe_ggtt_node_addr(ggtt_vma->node);
> +
> +	return 0;
> +}
> +
> +static void xe_fb_pin_dpt_unpin(struct intel_dpt *dpt,
> +				struct i915_vma *dpt_vma,
> +				struct i915_vma *ggtt_vma)
> +{
> +	WARN_ON(dpt || dpt_vma);
> +
> +	__xe_unpin_fb_vma(ggtt_vma);
> +}
> +
>  static bool reuse_vma(struct intel_plane_state *new_plane_state,
>  		      const struct intel_plane_state *old_plane_state)
>  {
> @@ -457,27 +487,35 @@ static bool reuse_vma(struct intel_plane_state *new=
_plane_state,
>  int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
>  		       const struct intel_plane_state *old_plane_state)
>  {
> -	struct drm_framebuffer *fb =3D new_plane_state->hw.fb;
> -	struct drm_gem_object *obj =3D intel_fb_bo(fb);
> +	struct intel_framebuffer *fb =3D to_intel_framebuffer(new_plane_state->=
hw.fb);
> +	struct drm_gem_object *obj =3D intel_fb_bo(&fb->base);
>  	struct intel_plane *plane =3D to_intel_plane(new_plane_state->uapi.plan=
e);
>  	struct intel_fb_pin_params pin_params =3D {
>  		.view =3D &new_plane_state->view.gtt,
> -		.alignment =3D plane->min_alignment(plane, fb, 0),
> -		.needs_cpu_lmem_access =3D intel_fb_needs_cpu_access(fb),
> +		.alignment =3D plane->min_alignment(plane, &fb->base, 0),
> +		.needs_cpu_lmem_access =3D intel_fb_needs_cpu_access(&fb->base),
>  	};
>  	struct i915_vma *ggtt_vma =3D NULL;
>  	struct i915_vma *dpt_vma =3D NULL;
>  	int fence_id =3D -1;
>  	u32 offset;
> +	int ret;
>=20=20
>  	if (reuse_vma(new_plane_state, old_plane_state))
>  		return 0;
>=20=20
> -	ggtt_vma =3D __xe_pin_fb_vma(obj, intel_fb_uses_dpt(fb), &pin_params);
> -	if (IS_ERR(ggtt_vma))
> -		return PTR_ERR(ggtt_vma);
> +	if (!intel_fb_uses_dpt(&fb->base)) {
> +		ggtt_vma =3D __xe_pin_fb_vma(obj, false, &pin_params);
> +		if (IS_ERR(ggtt_vma))
> +			return PTR_ERR(ggtt_vma);
>=20=20
> -	offset =3D xe_ggtt_node_addr(ggtt_vma->node);
> +		offset =3D xe_ggtt_node_addr(ggtt_vma->node);
> +	} else {
> +		ret =3D xe_fb_pin_dpt_pin(obj, fb->dpt, &pin_params,
> +					&dpt_vma, &ggtt_vma, &offset);
> +		if (ret)
> +			return ret;
> +	}
>=20=20
>  	new_plane_state->dpt_vma =3D dpt_vma;
>  	new_plane_state->ggtt_vma =3D ggtt_vma;
> @@ -489,8 +527,19 @@ int intel_plane_pin_fb(struct intel_plane_state *new=
_plane_state,
>=20=20
>  void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
>  {
> -	__xe_unpin_fb_vma(old_plane_state->ggtt_vma);
> -	old_plane_state->ggtt_vma =3D NULL;
> +	const struct intel_framebuffer *fb =3D to_intel_framebuffer(old_plane_s=
tate->hw.fb);
> +
> +	if (!intel_fb_uses_dpt(&fb->base)) {
> +		__xe_unpin_fb_vma(old_plane_state->ggtt_vma);
> +
> +		old_plane_state->ggtt_vma =3D NULL;
> +	} else {
> +		xe_fb_pin_dpt_unpin(fb->dpt, old_plane_state->dpt_vma,
> +				    old_plane_state->ggtt_vma);
> +
> +		old_plane_state->dpt_vma =3D NULL;
> +		old_plane_state->ggtt_vma =3D NULL;
> +	}
>  }
>=20=20
>  static void xe_fb_pin_get_map(struct i915_vma *vma, struct iosys_map *ma=
p)

--=20
Jani Nikula, Intel
