Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +N+VMhAA4mna0QAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 11:40:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BE94196BD
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 11:40:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BF7110E9A0;
	Fri, 17 Apr 2026 09:40:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iaWlh6nQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AA6D10E99B;
 Fri, 17 Apr 2026 09:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776418829; x=1807954829;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=EkeQDeWE82t+ui3Izfr/TQVi1XtNTVpWlhiT+W2a+6s=;
 b=iaWlh6nQqpGccHuTyb8EGdTOPaUhz1DDjCxR6UTIUeMdLYOxqduHUTpp
 tZzyxvOeYzI89dQqXahgFcqQbB3Ay4ek49FRvvsc2X2nwSTcCO07N3kgf
 x/4VixBiyZhXktytyPgM1uWoRIg0r9h6xBmYA+rw0WA7w/INerwxEQcqp
 /gXqEhp2TqZP1J6wCE+b/glUs2MGQ/WBOiJ/DK3P4RS6WMX9cMq7XtXvD
 JnPx3AjEUsR30K65tjWFEWxcq6E8oh5BYCvK/iVEp9KdPhSKO8Gga5Whn
 ZJulsTeozqMJ+p52tM3ge0Qyybrm2akoXdgr43sLFohdBaeInyg4bR+Kk w==;
X-CSE-ConnectionGUID: hyKZ9w0mSYKAbo+Etrthjw==
X-CSE-MsgGUID: NcInStIHQFmfRcMpOtxL9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="88051673"
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="88051673"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 02:40:29 -0700
X-CSE-ConnectionGUID: HyK5cKTITySgl6i4JEaG5g==
X-CSE-MsgGUID: PShA1fgxTXCA3skwMCbjRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="254467168"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.127])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 02:40:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 02/11] drm/i915: Introduce struct intel_fb_pin_params
In-Reply-To: <20260416174448.28264-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260416174448.28264-1-ville.syrjala@linux.intel.com>
 <20260416174448.28264-3-ville.syrjala@linux.intel.com>
Date: Fri, 17 Apr 2026 12:40:25 +0300
Message-ID: <51957ce9a7bc6c41a146046e89699c5f006d954e@intel.com>
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
X-Rspamd-Queue-Id: 73BE94196BD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 16 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We need to pass a lot of information between the display driver
> and the core driver to get framebuffers mapped into GGTT/DPT
> correctly. Rather than passing around a swarm of integers and
> boolean as function arguments, let's collect it all into a
> structure (struct intel_fb_pin_params).
>
> Start by moving the gtt view, alignment, phys_alignment,
> and vtd_guard there. Going forward additional things need
> to added as well (mainly various boolean flags).

Neat.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb_pin.h   | 12 +++--
>  drivers/gpu/drm/i915/display/intel_fbdev.c    | 13 +++--
>  drivers/gpu/drm/i915/i915_fb_pin.c            | 54 ++++++++++---------
>  drivers/gpu/drm/xe/display/xe_fb_pin.c        | 39 +++++++-------
>  drivers/gpu/drm/xe/display/xe_initial_plane.c |  6 ++-
>  5 files changed, 69 insertions(+), 55 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/dr=
m/i915/display/intel_fb_pin.h
> index 2eca42b74c4a..e6271437459d 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
> @@ -14,12 +14,16 @@ struct intel_plane_state;
>  struct i915_gtt_view;
>  struct iosys_map;
>=20=20
> +struct intel_fb_pin_params {
> +	const struct i915_gtt_view *view;
> +	unsigned int alignment;
> +	unsigned int phys_alignment;
> +	unsigned int vtd_guard;
> +};
> +
>  struct i915_vma *
>  intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
> -		     const struct i915_gtt_view *view,
> -		     unsigned int alignment,
> -		     unsigned int phys_alignment,
> -		     unsigned int vtd_guard,
> +		     const struct intel_fb_pin_params *pin_params,
>  		     int *out_fence_id);
>=20=20
>  void intel_fb_unpin_vma(struct i915_vma *vma, int fence_id);
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm=
/i915/display/intel_fbdev.c
> index 1e22b3fd79ba..136fa827c8f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -264,6 +264,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_help=
er *helper,
>  {
>  	struct intel_display *display =3D to_intel_display(helper->dev);
>  	struct intel_fbdev *ifbdev =3D to_intel_fbdev(helper);
> +	struct intel_fb_pin_params pin_params =3D {};
>  	struct intel_framebuffer *fb =3D ifbdev->fb;
>  	struct fb_info *info =3D helper->info;
>  	struct ref_tracker *wakeref;
> @@ -308,11 +309,13 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_he=
lper *helper,
>  	 * This also validates that any existing fb inherited from the
>  	 * BIOS is suitable for own access.
>  	 */
> -	vma =3D intel_fb_pin_to_ggtt(&fb->base, &fb->normal_view.gtt,
> -				   fb->min_alignment, 0,
> -				   intel_fb_view_vtd_guard(&fb->base, &fb->normal_view,
> -							   DRM_MODE_ROTATE_0),
> -				   NULL);
> +	pin_params.view =3D &fb->normal_view.gtt;
> +	pin_params.alignment =3D fb->min_alignment;
> +	pin_params.vtd_guard =3D intel_fb_view_vtd_guard(&fb->base,
> +						       &fb->normal_view,
> +						       DRM_MODE_ROTATE_0);
> +
> +	vma =3D intel_fb_pin_to_ggtt(&fb->base, &pin_params, NULL);
>  	if (IS_ERR(vma)) {
>  		ret =3D PTR_ERR(vma);
>  		goto out_unlock;
> diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i9=
15_fb_pin.c
> index 85649bae25fb..4fe6b9859b3f 100644
> --- a/drivers/gpu/drm/i915/i915_fb_pin.c
> +++ b/drivers/gpu/drm/i915/i915_fb_pin.c
> @@ -24,9 +24,8 @@
>=20=20
>  static struct i915_vma *
>  intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
> -		    const struct i915_gtt_view *view,
> -		    unsigned int alignment,
> -		    struct intel_dpt *dpt)
> +		    struct intel_dpt *dpt,
> +		    const struct intel_fb_pin_params *pin_params)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(fb->dev);
>  	struct drm_gem_object *_obj =3D intel_fb_bo(fb);
> @@ -74,19 +73,20 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
>  		if (ret)
>  			continue;
>=20=20
> -		vma =3D i915_vma_instance(obj, vm, view);
> +		vma =3D i915_vma_instance(obj, vm, pin_params->view);
>  		if (IS_ERR(vma)) {
>  			ret =3D PTR_ERR(vma);
>  			continue;
>  		}
>=20=20
> -		if (i915_vma_misplaced(vma, 0, alignment, 0)) {
> +		if (i915_vma_misplaced(vma, 0, pin_params->alignment, 0)) {
>  			ret =3D i915_vma_unbind(vma);
>  			if (ret)
>  				continue;
>  		}
>=20=20
> -		ret =3D i915_vma_pin_ww(vma, &ww, 0, alignment, PIN_GLOBAL);
> +		ret =3D i915_vma_pin_ww(vma, &ww, 0, pin_params->alignment,
> +				      PIN_GLOBAL);
>  		if (ret)
>  			continue;
>  	}
> @@ -95,7 +95,8 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
>  		goto err;
>  	}
>=20=20
> -	vma->display_alignment =3D max(vma->display_alignment, alignment);
> +	vma->display_alignment =3D max(vma->display_alignment,
> +				     pin_params->alignment);
>=20=20
>  	i915_gem_object_flush_if_display(obj);
>=20=20
> @@ -108,10 +109,7 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
>=20=20
>  struct i915_vma *
>  intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
> -		     const struct i915_gtt_view *view,
> -		     unsigned int alignment,
> -		     unsigned int phys_alignment,
> -		     unsigned int vtd_guard,
> +		     const struct intel_fb_pin_params *pin_params,
>  		     int *out_fence_id)
>  {
>  	struct intel_display *display =3D to_intel_display(fb->dev);
> @@ -127,7 +125,8 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
>  	if (drm_WARN_ON(&i915->drm, !i915_gem_object_is_framebuffer(obj)))
>  		return ERR_PTR(-EINVAL);
>=20=20
> -	if (drm_WARN_ON(&i915->drm, alignment && !is_power_of_2(alignment)))
> +	if (drm_WARN_ON(&i915->drm, pin_params->alignment &&
> +			!is_power_of_2(pin_params->alignment)))
>  		return ERR_PTR(-EINVAL);
>=20=20
>  	/*
> @@ -156,8 +155,8 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
>  	i915_gem_ww_ctx_init(&ww, true);
>  retry:
>  	ret =3D i915_gem_object_lock(obj, &ww);
> -	if (!ret && phys_alignment)
> -		ret =3D i915_gem_object_attach_phys(obj, phys_alignment);
> +	if (!ret && pin_params->phys_alignment)
> +		ret =3D i915_gem_object_attach_phys(obj, pin_params->phys_alignment);
>  	else if (!ret && HAS_LMEM(i915))
>  		ret =3D i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
>  	if (!ret)
> @@ -165,8 +164,10 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *f=
b,
>  	if (ret)
>  		goto err;
>=20=20
> -	vma =3D i915_gem_object_pin_to_display_plane(obj, &ww, alignment,
> -						   vtd_guard, view, pinctl);
> +	vma =3D i915_gem_object_pin_to_display_plane(obj, &ww,
> +						   pin_params->alignment,
> +						   pin_params->vtd_guard,
> +						   pin_params->view, pinctl);
>  	if (IS_ERR(vma)) {
>  		ret =3D PTR_ERR(vma);
>  		goto err_unpin;
> @@ -269,12 +270,15 @@ int intel_plane_pin_fb(struct intel_plane_state *pl=
ane_state,
>  	struct i915_vma *vma;
>=20=20
>  	if (!intel_fb_uses_dpt(&fb->base)) {
> +		struct intel_fb_pin_params pin_params =3D {
> +			.view =3D &plane_state->view.gtt,
> +			.alignment =3D intel_plane_fb_min_alignment(plane_state),
> +			.phys_alignment =3D intel_plane_fb_min_phys_alignment(plane_state),
> +			.vtd_guard =3D intel_plane_fb_vtd_guard(plane_state),
> +		};
>  		int fence_id =3D -1;
>=20=20
> -		vma =3D intel_fb_pin_to_ggtt(&fb->base, &plane_state->view.gtt,
> -					   intel_plane_fb_min_alignment(plane_state),
> -					   intel_plane_fb_min_phys_alignment(plane_state),
> -					   intel_plane_fb_vtd_guard(plane_state),
> +		vma =3D intel_fb_pin_to_ggtt(&fb->base, &pin_params,
>  					   intel_plane_uses_fence(plane_state) ? &fence_id : NULL);
>  		if (IS_ERR(vma))
>  			return PTR_ERR(vma);
> @@ -282,16 +286,18 @@ int intel_plane_pin_fb(struct intel_plane_state *pl=
ane_state,
>  		plane_state->ggtt_vma =3D vma;
>  		plane_state->fence_id =3D fence_id;
>  	} else {
> -		unsigned int alignment =3D intel_plane_fb_min_alignment(plane_state);
> +		struct intel_fb_pin_params pin_params =3D {
> +			.view =3D &plane_state->view.gtt,
> +			.alignment =3D intel_plane_fb_min_alignment(plane_state),
> +		};
>=20=20
> -		vma =3D i915_dpt_pin_to_ggtt(fb->dpt, alignment / 512);
> +		vma =3D i915_dpt_pin_to_ggtt(fb->dpt, pin_params.alignment / 512);
>  		if (IS_ERR(vma))
>  			return PTR_ERR(vma);
>=20=20
>  		plane_state->ggtt_vma =3D vma;
>=20=20
> -		vma =3D intel_fb_pin_to_dpt(&fb->base, &plane_state->view.gtt,
> -					  alignment, fb->dpt);
> +		vma =3D intel_fb_pin_to_dpt(&fb->base, fb->dpt, &pin_params);
>  		if (IS_ERR(vma)) {
>  			i915_dpt_unpin_from_ggtt(fb->dpt);
>  			plane_state->ggtt_vma =3D NULL;
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/=
display/xe_fb_pin.c
> index 91e5c1052589..58cd527e1fde 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -140,14 +140,14 @@ write_dpt_remapped(struct xe_bo *bo,
>  }
>=20=20
>  static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
> -			       const struct i915_gtt_view *view,
> -			       struct i915_vma *vma,
> -			       unsigned int alignment)
> +			       const struct intel_fb_pin_params *pin_params,
> +			       struct i915_vma *vma)
>  {
>  	struct xe_device *xe =3D to_xe_device(fb->base.dev);
>  	struct xe_tile *tile0 =3D xe_device_get_root_tile(xe);
>  	struct xe_ggtt *ggtt =3D tile0->mem.ggtt;
>  	struct drm_gem_object *obj =3D intel_fb_bo(&fb->base);
> +	const struct i915_gtt_view *view =3D pin_params->view;
>  	struct xe_bo *bo =3D gem_to_xe_bo(obj), *dpt;
>  	u32 dpt_size, size =3D bo->ttm.base.size;
>=20=20
> @@ -168,7 +168,7 @@ static int __xe_pin_fb_vma_dpt(const struct intel_fra=
mebuffer *fb,
>  						   XE_BO_FLAG_VRAM0 |
>  						   XE_BO_FLAG_GGTT |
>  						   XE_BO_FLAG_PAGETABLE,
> -						   alignment, false);
> +						   pin_params->alignment, false);
>  	else
>  		dpt =3D xe_bo_create_pin_map_at_novm(xe, tile0,
>  						   dpt_size,  ~0ull,
> @@ -176,7 +176,7 @@ static int __xe_pin_fb_vma_dpt(const struct intel_fra=
mebuffer *fb,
>  						   XE_BO_FLAG_STOLEN |
>  						   XE_BO_FLAG_GGTT |
>  						   XE_BO_FLAG_PAGETABLE,
> -						   alignment, false);
> +						   pin_params->alignment, false);
>  	if (IS_ERR(dpt))
>  		dpt =3D xe_bo_create_pin_map_at_novm(xe, tile0,
>  						   dpt_size,  ~0ull,
> @@ -185,7 +185,7 @@ static int __xe_pin_fb_vma_dpt(const struct intel_fra=
mebuffer *fb,
>  						   XE_BO_FLAG_GGTT |
>  						   XE_BO_FLAG_PAGETABLE |
>  						   XE_BO_FLAG_FORCE_WC,
> -						   alignment, false);
> +						   pin_params->alignment, false);
>  	if (IS_ERR(dpt))
>  		return PTR_ERR(dpt);
>=20=20
> @@ -269,11 +269,11 @@ static void write_ggtt_rotated_node(struct xe_ggtt =
*ggtt, struct xe_ggtt_node *n
>  }
>=20=20
>  static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
> -				const struct i915_gtt_view *view,
> -				struct i915_vma *vma,
> -				unsigned int alignment)
> +				const struct intel_fb_pin_params *pin_params,
> +				struct i915_vma *vma)
>  {
>  	struct drm_gem_object *obj =3D intel_fb_bo(&fb->base);
> +	const struct i915_gtt_view *view =3D pin_params->view;
>  	struct xe_bo *bo =3D gem_to_xe_bo(obj);
>  	struct xe_device *xe =3D to_xe_device(fb->base.dev);
>  	struct xe_tile *tile0 =3D xe_device_get_root_tile(xe);
> @@ -319,8 +319,7 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_fr=
amebuffer *fb,
>  }
>=20=20
>  static struct i915_vma *__xe_pin_fb_vma(const struct intel_framebuffer *=
fb,
> -					const struct i915_gtt_view *view,
> -					unsigned int alignment)
> +					const struct intel_fb_pin_params *pin_params)
>  {
>  	struct drm_device *dev =3D fb->base.dev;
>  	struct xe_device *xe =3D to_xe_device(dev);
> @@ -377,9 +376,9 @@ static struct i915_vma *__xe_pin_fb_vma(const struct =
intel_framebuffer *fb,
>=20=20
>  	vma->bo =3D bo;
>  	if (intel_fb_uses_dpt(&fb->base))
> -		ret =3D __xe_pin_fb_vma_dpt(fb, view, vma, alignment);
> +		ret =3D __xe_pin_fb_vma_dpt(fb, pin_params, vma);
>  	else
> -		ret =3D __xe_pin_fb_vma_ggtt(fb, view, vma,  alignment);
> +		ret =3D __xe_pin_fb_vma_ggtt(fb, pin_params, vma);
>  	if (ret)
>  		goto err_unpin;
>=20=20
> @@ -414,16 +413,13 @@ static void __xe_unpin_fb_vma(struct i915_vma *vma)
>=20=20
>  struct i915_vma *
>  intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
> -		     const struct i915_gtt_view *view,
> -		     unsigned int alignment,
> -		     unsigned int phys_alignment,
> -		     unsigned int vtd_guard,
> +		     const struct intel_fb_pin_params *pin_params,
>  		     int *out_fence_id)
>  {
>  	if (out_fence_id)
>  		*out_fence_id =3D -1;
>=20=20
> -	return __xe_pin_fb_vma(to_intel_framebuffer(fb), view, alignment);
> +	return __xe_pin_fb_vma(to_intel_framebuffer(fb), pin_params);
>  }
>=20=20
>  void intel_fb_unpin_vma(struct i915_vma *vma, int fence_id)
> @@ -475,7 +471,10 @@ int intel_plane_pin_fb(struct intel_plane_state *new=
_plane_state,
>  	struct i915_vma *vma;
>  	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
>  	struct intel_plane *plane =3D to_intel_plane(new_plane_state->uapi.plan=
e);
> -	unsigned int alignment =3D plane->min_alignment(plane, fb, 0);
> +	struct intel_fb_pin_params pin_params =3D {
> +		.view =3D &new_plane_state->view.gtt,
> +		.alignment =3D plane->min_alignment(plane, fb, 0),
> +	};
>=20=20
>  	if (reuse_vma(new_plane_state, old_plane_state))
>  		return 0;
> @@ -483,7 +482,7 @@ int intel_plane_pin_fb(struct intel_plane_state *new_=
plane_state,
>  	/* We reject creating !SCANOUT fb's, so this is weird.. */
>  	drm_WARN_ON(bo->ttm.base.dev, !(bo->flags & XE_BO_FLAG_FORCE_WC));
>=20=20
> -	vma =3D __xe_pin_fb_vma(intel_fb, &new_plane_state->view.gtt, alignment=
);
> +	vma =3D __xe_pin_fb_vma(intel_fb, &pin_params);
>=20=20
>  	if (IS_ERR(vma))
>  		return PTR_ERR(vma);
> diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/=
drm/xe/display/xe_initial_plane.c
> index 381d68c58463..4f0ad4692ed6 100644
> --- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
> +++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
> @@ -134,9 +134,11 @@ xe_initial_plane_setup(struct drm_plane_state *_plan=
e_state,
>  {
>  	struct intel_plane_state *plane_state =3D to_intel_plane_state(_plane_s=
tate);
>  	struct i915_vma *vma;
> +	struct intel_fb_pin_params pin_params =3D {
> +		.view =3D &plane_state->view.gtt,
> +	};
>=20=20
> -	vma =3D intel_fb_pin_to_ggtt(fb, &plane_state->view.gtt,
> -				   0, 0, 0, NULL);
> +	vma =3D intel_fb_pin_to_ggtt(fb, &pin_params, NULL);
>  	if (IS_ERR(vma))
>  		return PTR_ERR(vma);

--=20
Jani Nikula, Intel
