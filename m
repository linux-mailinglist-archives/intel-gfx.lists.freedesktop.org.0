Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKPOMkIZzWnOaAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 15:10:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 174BF37AF8A
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 15:10:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4154C10ED9D;
	Wed,  1 Apr 2026 13:10:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HaeEu7DU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D01B10ECE6;
 Wed,  1 Apr 2026 13:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775049022; x=1806585022;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=NxcqYI/Vl6hCqyZ88eE6A8UknJy2km/M2CSURZNTVqg=;
 b=HaeEu7DUszGLnOuZy+LZSSGsb3b/RPUvFBRXEZkRSKlScMym2cVZ6uJr
 rO8qeaujwkyFWCRsRuF4zAcOvONFIWCiAS+4VkqbdaGTFQVSlmJXR+lJ+
 5NtniFiRZui+J/ZwDw6ETv4Qfnj32EjlEyGqX+rMfSY7nShyiB8dKTr93
 vR/aNqOAR4pkVMqR3ampzUb9L0GWHqRnphNYQFYg355EUF7QT2cqHMTkF
 LbCRujABZP6wq8773HZU6ZxQvYH7O7kT5ZiASIt3wluJdTX5hv8nRq/k6
 8OeoEXeWBCAzVyuMHglAwlcREDaBMfUEjL31kxJnrKvh9lG5VFE/pZaRa Q==;
X-CSE-ConnectionGUID: 8bTueVkxQvyBmurPgBFIgA==
X-CSE-MsgGUID: dsg9HPJ5SvuRprHwf15DYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="76144677"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="76144677"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 06:10:21 -0700
X-CSE-ConnectionGUID: EdoJeFc1SyGkSHAaDxJZxg==
X-CSE-MsgGUID: wGnweDFvR2SBhQNIED5cjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="257153139"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 06:10:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915: Track fence region ID in plane state
In-Reply-To: <20260331162138.19258-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260331162138.19258-1-ville.syrjala@linux.intel.com>
Date: Wed, 01 Apr 2026 16:10:16 +0300
Message-ID: <4dee82289c67c00562cbb4fcc8a16c8b3c7a6e4c@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 174BF37AF8A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 31 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Get rid of the needlessly complicated PLANE_HAS_FENCE +
> intel_parent_vma_fence_id() dance by simply tracking the
> fence_id directly in the plane state.

This is good cleanup, but I still dread what to do about the whole
{intel,xe}_fb_pin.[ch] interface. Needs to be moved to the parent
interface, but there's just too much direct display structure poking
from the i915 and xe cores there. Ugh.

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  5 +--
>  drivers/gpu/drm/i915/display/intel_fb_pin.c   | 33 ++++++++++---------
>  drivers/gpu/drm/i915/display/intel_fb_pin.h   |  5 ++-
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 11 ++-----
>  drivers/gpu/drm/i915/display/intel_fbdev.c    | 14 ++++----
>  drivers/gpu/drm/i915/display/intel_plane.c    |  3 +-
>  drivers/gpu/drm/i915/i915_initial_plane.c     |  2 +-
>  drivers/gpu/drm/xe/display/xe_fb_pin.c        |  8 ++---
>  drivers/gpu/drm/xe/display/xe_initial_plane.c |  2 +-
>  9 files changed, 42 insertions(+), 41 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index e2496db1642a..73eb4f38620c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -683,14 +683,15 @@ struct intel_plane_state {
>=20=20
>  	struct i915_vma *ggtt_vma;
>  	struct i915_vma *dpt_vma;
> -	unsigned long flags;
> -#define PLANE_HAS_FENCE BIT(0)
>=20=20
>  	struct intel_fb_view view;
>=20=20
>  	/* for legacy cursor fb unpin */
>  	struct drm_vblank_work unpin_work;
>=20=20
> +	/* fenced region ID (-1 if none) */
> +	s8 fence_id;

I guess I would've made this an int for consistency with all the
parameters and local variables.

> +
>  	/* Plane pxp decryption state */
>  	bool decrypt;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/dr=
m/i915/display/intel_fb_pin.c
> index 738d77a1468a..0b8b057647af 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -26,7 +26,6 @@ static struct i915_vma *
>  intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
>  		    const struct i915_gtt_view *view,
>  		    unsigned int alignment,
> -		    unsigned long *out_flags,
>  		    struct intel_dpt *dpt)
>  {
>  	struct drm_device *dev =3D fb->dev;
> @@ -115,8 +114,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
>  		     unsigned int alignment,
>  		     unsigned int phys_alignment,
>  		     unsigned int vtd_guard,
> -		     bool uses_fence,
> -		     unsigned long *out_flags)
> +		     int *out_fence_id)
>  {
>  	struct drm_device *dev =3D fb->dev;
>  	struct intel_display *display =3D to_intel_display(dev);
> @@ -177,7 +175,10 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *f=
b,
>  		goto err_unpin;
>  	}
>=20=20
> -	if (uses_fence && i915_vma_is_map_and_fenceable(vma)) {
> +	if (out_fence_id)
> +		*out_fence_id =3D -1;
> +
> +	if (out_fence_id && i915_vma_is_map_and_fenceable(vma)) {
>  		/*
>  		 * Install a fence for tiled scan-out. Pre-i965 always needs a
>  		 * fence, whereas 965+ only requires a fence if using
> @@ -203,7 +204,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
>  		ret =3D 0;
>=20=20
>  		if (vma->fence)
> -			*out_flags |=3D PLANE_HAS_FENCE;
> +			*out_fence_id |=3D vma->fence->id;
>  	}
>=20=20
>  	i915_vma_get(vma);
> @@ -225,9 +226,9 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
>  	return vma;
>  }
>=20=20
> -void intel_fb_unpin_vma(struct i915_vma *vma, unsigned long flags)
> +void intel_fb_unpin_vma(struct i915_vma *vma, int fence_id)
>  {
> -	if (flags & PLANE_HAS_FENCE)
> +	if (fence_id >=3D 0)
>  		i915_vma_unpin_fence(vma);
>  	i915_vma_unpin(vma);
>  	i915_vma_put(vma);
> @@ -271,17 +272,18 @@ int intel_plane_pin_fb(struct intel_plane_state *pl=
ane_state,
>  	struct i915_vma *vma;
>=20=20
>  	if (!intel_fb_uses_dpt(&fb->base)) {
> +		int fence_id =3D -1;
> +
>  		vma =3D intel_fb_pin_to_ggtt(&fb->base, &plane_state->view.gtt,
>  					   intel_plane_fb_min_alignment(plane_state),
>  					   intel_plane_fb_min_phys_alignment(plane_state),
>  					   intel_plane_fb_vtd_guard(plane_state),
> -					   intel_plane_uses_fence(plane_state),
> -					   &plane_state->flags);
> +					   intel_plane_uses_fence(plane_state) ? &fence_id : NULL);

E.g. here you could pass &plane_state->fence_id direcly if it was an int
and ditch the local variable.

>  		if (IS_ERR(vma))
>  			return PTR_ERR(vma);
>=20=20
>  		plane_state->ggtt_vma =3D vma;
> -
> +		plane_state->fence_id =3D fence_id;
>  	} else {
>  		unsigned int alignment =3D intel_plane_fb_min_alignment(plane_state);
>=20=20
> @@ -292,8 +294,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plan=
e_state,
>  		plane_state->ggtt_vma =3D vma;
>=20=20
>  		vma =3D intel_fb_pin_to_dpt(&fb->base, &plane_state->view.gtt,
> -					  alignment, &plane_state->flags,
> -					  fb->dpt);
> +					  alignment, fb->dpt);
>  		if (IS_ERR(vma)) {
>  			i915_dpt_unpin_from_ggtt(fb->dpt);
>  			plane_state->ggtt_vma =3D NULL;
> @@ -338,12 +339,14 @@ void intel_plane_unpin_fb(struct intel_plane_state =
*old_plane_state)
>=20=20
>  	if (!intel_fb_uses_dpt(&fb->base)) {
>  		vma =3D fetch_and_zero(&old_plane_state->ggtt_vma);
> -		if (vma)
> -			intel_fb_unpin_vma(vma, old_plane_state->flags);
> +		if (vma) {
> +			intel_fb_unpin_vma(vma, old_plane_state->fence_id);
> +			old_plane_state->fence_id =3D -1;
> +		}
>  	} else {
>  		vma =3D fetch_and_zero(&old_plane_state->dpt_vma);
>  		if (vma)
> -			intel_fb_unpin_vma(vma, old_plane_state->flags);
> +			intel_fb_unpin_vma(vma, -1);
>=20=20
>  		vma =3D fetch_and_zero(&old_plane_state->ggtt_vma);
>  		if (vma)
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/dr=
m/i915/display/intel_fb_pin.h
> index 81ab79da1af7..2eca42b74c4a 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
> @@ -20,10 +20,9 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
>  		     unsigned int alignment,
>  		     unsigned int phys_alignment,
>  		     unsigned int vtd_guard,
> -		     bool uses_fence,
> -		     unsigned long *out_flags);
> +		     int *out_fence_id);
>=20=20
> -void intel_fb_unpin_vma(struct i915_vma *vma, unsigned long flags);
> +void intel_fb_unpin_vma(struct i915_vma *vma, int fence_id);
>=20=20
>  int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
>  		       const struct intel_plane_state *old_plane_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index ea0ce00c8474..677ac5be749b 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1458,13 +1458,10 @@ static void intel_fbc_update_state(struct intel_a=
tomic_state *state,
>=20=20
>  	fbc_state->fence_y_offset =3D intel_plane_fence_y_offset(plane_state);
>=20=20
> -	drm_WARN_ON(display->drm, plane_state->flags & PLANE_HAS_FENCE &&
> +	drm_WARN_ON(display->drm, plane_state->fence_id >=3D 0 &&
>  		    !intel_fbc_has_fences(display));
>=20=20
> -	if (plane_state->flags & PLANE_HAS_FENCE)
> -		fbc_state->fence_id =3D intel_parent_vma_fence_id(display, plane_state=
->ggtt_vma);
> -	else
> -		fbc_state->fence_id =3D -1;
> +	fbc_state->fence_id =3D plane_state->fence_id;
>=20=20
>  	fbc_state->cfb_stride =3D intel_fbc_cfb_stride(plane_state);
>  	fbc_state->cfb_size =3D intel_fbc_cfb_size(plane_state);
> @@ -1487,9 +1484,7 @@ static bool intel_fbc_is_fence_ok(const struct inte=
l_plane_state *plane_state)
>  	 * so have no fence associated with it) due to aperture constraints
>  	 * at the time of pinning.
>  	 */
> -	return DISPLAY_VER(display) >=3D 9 ||
> -		(plane_state->flags & PLANE_HAS_FENCE &&
> -		 intel_parent_vma_fence_id(display, plane_state->ggtt_vma) !=3D -1);
> +	return DISPLAY_VER(display) >=3D 9 || plane_state->fence_id >=3D 0;
>  }
>=20=20
>  static bool intel_fbc_is_cfb_ok(const struct intel_plane_state *plane_st=
ate)
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm=
/i915/display/intel_fbdev.c
> index bdaaf3edba0c..0d7be5186393 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -60,7 +60,7 @@
>  struct intel_fbdev {
>  	struct intel_framebuffer *fb;
>  	struct i915_vma *vma;
> -	unsigned long vma_flags;
> +	s8 fence_id;

Ditto.

Regardless,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>  };
>=20=20
>  static struct intel_fbdev *to_intel_fbdev(struct drm_fb_helper *fb_helpe=
r)
> @@ -141,7 +141,7 @@ static void intel_fbdev_fb_destroy(struct fb_info *in=
fo)
>  	 * the info->screen_base mmaping. Leaking the VMA is simpler than
>  	 * trying to rectify all the possible error paths leading here.
>  	 */
> -	intel_fb_unpin_vma(ifbdev->vma, ifbdev->vma_flags);
> +	intel_fb_unpin_vma(ifbdev->vma, ifbdev->fence_id);
>  	drm_framebuffer_remove(fb_helper->fb);
>=20=20
>  	drm_client_release(&fb_helper->client);
> @@ -269,9 +269,9 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_help=
er *helper,
>  	struct fb_info *info =3D helper->info;
>  	struct ref_tracker *wakeref;
>  	struct i915_vma *vma;
> -	unsigned long flags =3D 0;
>  	bool prealloc =3D false;
>  	struct drm_gem_object *obj;
> +	int fence_id =3D -1;
>  	int ret;
>=20=20
>  	ifbdev->fb =3D NULL;
> @@ -314,7 +314,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_help=
er *helper,
>  				   fb->min_alignment, 0,
>  				   intel_fb_view_vtd_guard(&fb->base, &fb->normal_view,
>  							   DRM_MODE_ROTATE_0),
> -				   false, &flags);
> +				   &fence_id);
>  	if (IS_ERR(vma)) {
>  		ret =3D PTR_ERR(vma);
>  		goto out_unlock;
> @@ -345,14 +345,14 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_he=
lper *helper,
>  	drm_dbg_kms(display->drm, "allocated %dx%d fb\n", fb->base.width, fb->b=
ase.height);
>  	ifbdev->fb =3D fb;
>  	ifbdev->vma =3D vma;
> -	ifbdev->vma_flags =3D flags;
> +	ifbdev->fence_id =3D fence_id;
>=20=20
>  	intel_display_rpm_put(display, wakeref);
>=20=20
>  	return 0;
>=20=20
>  out_unpin:
> -	intel_fb_unpin_vma(vma, flags);
> +	intel_fb_unpin_vma(vma, fence_id);
>  out_unlock:
>  	intel_display_rpm_put(display, wakeref);
>=20=20
> @@ -539,6 +539,8 @@ void intel_fbdev_setup(struct intel_display *display)
>  	if (!ifbdev)
>  		return;
>=20=20
> +	ifbdev->fence_id =3D -1;
> +
>  	display->fbdev.fbdev =3D ifbdev;
>  	if (intel_fbdev_init_bios(display, ifbdev))
>  		preferred_bpp =3D intel_fbdev_color_mode(ifbdev->fb->base.format);
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm=
/i915/display/intel_plane.c
> index 5390ceb21ca4..f15dd9e91243 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
> @@ -70,6 +70,7 @@ static void intel_plane_state_reset(struct intel_plane_=
state *plane_state,
>  	__drm_atomic_helper_plane_state_reset(&plane_state->uapi, &plane->base);
>=20=20
>  	plane_state->scaler_id =3D -1;
> +	plane_state->fence_id =3D -1;
>  }
>=20=20
>  struct intel_plane *intel_plane_alloc(void)
> @@ -137,7 +138,7 @@ intel_plane_duplicate_state(struct drm_plane *plane)
>=20=20
>  	intel_state->ggtt_vma =3D NULL;
>  	intel_state->dpt_vma =3D NULL;
> -	intel_state->flags =3D 0;
> +	intel_state->fence_id =3D -1;
>  	intel_state->damage =3D DRM_RECT_INIT(0, 0, 0, 0);
>=20=20
>  	/* add reference to fb */
> diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/=
i915/i915_initial_plane.c
> index 390a9248d631..db51a468ddd4 100644
> --- a/drivers/gpu/drm/i915/i915_initial_plane.c
> +++ b/drivers/gpu/drm/i915/i915_initial_plane.c
> @@ -268,7 +268,7 @@ i915_initial_plane_setup(struct drm_plane_state *_pla=
ne_state,
>  	plane_state->ggtt_vma =3D i915_vma_get(vma);
>  	if (intel_plane_uses_fence(plane_state) &&
>  	    i915_vma_pin_fence(vma) =3D=3D 0 && vma->fence)
> -		plane_state->flags |=3D PLANE_HAS_FENCE;
> +		plane_state->fence_id =3D vma->fence->id;
>=20=20
>  	plane_state->surf =3D i915_ggtt_offset(plane_state->ggtt_vma);
>=20=20
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/=
display/xe_fb_pin.c
> index e45a1e7a4670..739d9c019094 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -418,15 +418,15 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *=
fb,
>  		     unsigned int alignment,
>  		     unsigned int phys_alignment,
>  		     unsigned int vtd_guard,
> -		     bool uses_fence,
> -		     unsigned long *out_flags)
> +		     int *out_fence_id)
>  {
> -	*out_flags =3D 0;
> +	if (out_fence_id)
> +		*out_fence_id =3D -1;
>=20=20
>  	return __xe_pin_fb_vma(to_intel_framebuffer(fb), view, alignment);
>  }
>=20=20
> -void intel_fb_unpin_vma(struct i915_vma *vma, unsigned long flags)
> +void intel_fb_unpin_vma(struct i915_vma *vma, int fence_id)
>  {
>  	__xe_unpin_fb_vma(vma);
>  }
> diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/=
drm/xe/display/xe_initial_plane.c
> index 8bcae552dddc..09ec8f94bf57 100644
> --- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
> +++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
> @@ -153,7 +153,7 @@ xe_initial_plane_setup(struct drm_plane_state *_plane=
_state,
>  	struct i915_vma *vma;
>=20=20
>  	vma =3D intel_fb_pin_to_ggtt(fb, &plane_state->view.gtt,
> -				   0, 0, 0, false, &plane_state->flags);
> +				   0, 0, 0, NULL);
>  	if (IS_ERR(vma))
>  		return PTR_ERR(vma);

--=20
Jani Nikula, Intel
