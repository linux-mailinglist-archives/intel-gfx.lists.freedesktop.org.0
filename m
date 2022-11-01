Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7148A61477D
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 11:08:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FF6910E36A;
	Tue,  1 Nov 2022 10:08:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1763F10E36A
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667297313; x=1698833313;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=vUU34THWNz9rHf936TTzVnW+ukdXWcCqOWSmyn3b3Ic=;
 b=hr0QA13h1oCI4y/GbuHMApfqKXOYhV+rd4Tt2kaH3On6NcLdd/uXBHYB
 AHKYW0Jcbwf2wTr9cdoO5HDv9i/jNhBxqNHymIdjQMvJTbcsiamjsA1Pp
 rRjkIIVQp9wESVNoh0Xubfd/1rnnGocoztmR3r92Aqih3pPDn/+MZPSll
 gTx/atNcajXBqHsAzMZyO6lUjI/lZgqCYVnXPjWqSzVUKjZKUygLlxCQC
 0NnnQg9v7HwDoez39V/NXAbgolGtr7rQT9/1G+1iqL4dVDaUrUGvbwejU
 AQiK8oapSJCNsl7R7okjVXiQVRhd9ajYDTdTGFFg1qtkEru4DKm6OhQNu g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="371187229"
X-IronPort-AV: E=Sophos;i="5.95,230,1661842800"; d="scan'208";a="371187229"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 03:08:32 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="665103508"
X-IronPort-AV: E=Sophos;i="5.95,230,1661842800"; d="scan'208";a="665103508"
Received: from rsimofi-mobl.ger.corp.intel.com (HELO localhost) ([10.252.30.2])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 03:08:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221031214037.1636-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221031214037.1636-1-ville.syrjala@linux.intel.com>
Date: Tue, 01 Nov 2022 12:08:28 +0200
Message-ID: <87o7tr7zs3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Use
 intel_crtc_needs_modeset() more
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

On Mon, 31 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Prefer our own intel_crtc_needs_modeset() wrapper to
> drm_atomic_crtc_needs_modeset() whenever we are dealing
> with the intel_ types instead of drm_ types. Makes things
> a bit neater in general.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_color.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c     |  2 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c |  2 +-
>  drivers/gpu/drm/i915/intel_pm.c              | 11 +++++------
>  6 files changed, 10 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index eada931cb1c8..8a9031012d74 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2755,7 +2755,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_st=
ate *state)
>  		if (IS_ERR(crtc_state))
>  			return PTR_ERR(crtc_state);
>=20=20
> -		if (drm_atomic_crtc_needs_modeset(&crtc_state->uapi))
> +		if (intel_crtc_needs_modeset(crtc_state))
>  			pipe =3D INVALID_PIPE;
>  	}
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm=
/i915/display/intel_color.c
> index 4bb113c39f4b..1bd074431d89 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1240,7 +1240,7 @@ intel_color_add_affected_planes(struct intel_crtc_s=
tate *new_crtc_state)
>  	struct intel_plane *plane;
>=20=20
>  	if (!new_crtc_state->hw.active ||
> -	    drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi))
> +	    intel_crtc_needs_modeset(new_crtc_state))
>  		return 0;
>=20=20
>  	if (new_crtc_state->gamma_enable =3D=3D old_crtc_state->gamma_enable &&
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index b9393f9fc764..2d91c59a827d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5930,7 +5930,7 @@ int intel_modeset_all_pipes(struct intel_atomic_sta=
te *state,
>  			return PTR_ERR(crtc_state);
>=20=20
>  		if (!crtc_state->hw.active ||
> -		    drm_atomic_crtc_needs_modeset(&crtc_state->uapi))
> +		    intel_crtc_needs_modeset(crtc_state))
>  			continue;
>=20=20
>  		drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] Full modeset due to %s\n",
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 3f24f326b989..b5ee5ea0d010 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1183,7 +1183,7 @@ static bool intel_fbc_can_flip_nuke(struct intel_at=
omic_state *state,
>  	const struct drm_framebuffer *old_fb =3D old_plane_state->hw.fb;
>  	const struct drm_framebuffer *new_fb =3D new_plane_state->hw.fb;
>=20=20
> -	if (drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi))
> +	if (intel_crtc_needs_modeset(new_crtc_state))
>  		return false;
>=20=20
>  	if (!intel_fbc_is_ok(old_plane_state) ||
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index d58e667016e4..e0766d1be966 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2744,7 +2744,7 @@ static int skl_wm_add_affected_planes(struct intel_=
atomic_state *state,
>  		 * power well the hardware state will go out of sync
>  		 * with the software state.
>  		 */
> -		if (!drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi) &&
> +		if (!intel_crtc_needs_modeset(new_crtc_state) &&
>  		    skl_plane_selected_wm_equals(plane,
>  						 &old_crtc_state->wm.skl.optimal,
>  						 &new_crtc_state->wm.skl.optimal))
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index ee34e2785636..73c88b1c9545 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -1426,7 +1426,7 @@ static int g4x_compute_intermediate_wm(struct intel=
_atomic_state *state,
>  	enum plane_id plane_id;
>=20=20
>  	if (!new_crtc_state->hw.active ||
> -	    drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi)) {
> +	    intel_crtc_needs_modeset(new_crtc_state)) {
>  		*intermediate =3D *optimal;
>=20=20
>  		intermediate->cxsr =3D false;
> @@ -1914,7 +1914,6 @@ static int vlv_compute_pipe_wm(struct intel_atomic_=
state *state,
>  {
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> -	bool needs_modeset =3D drm_atomic_crtc_needs_modeset(&crtc_state->uapi);
>  	const struct intel_plane_state *old_plane_state;
>  	const struct intel_plane_state *new_plane_state;
>  	struct intel_plane *plane;
> @@ -1941,7 +1940,7 @@ static int vlv_compute_pipe_wm(struct intel_atomic_=
state *state,
>  	 * FIFO setting we took over from the BIOS even if there
>  	 * are no active planes on the crtc.
>  	 */
> -	if (needs_modeset)
> +	if (intel_crtc_needs_modeset(crtc_state))
>  		dirty =3D ~0;
>=20=20
>  	if (!dirty)
> @@ -1961,7 +1960,7 @@ static int vlv_compute_pipe_wm(struct intel_atomic_=
state *state,
>  		if (ret)
>  			return ret;
>=20=20
> -		if (needs_modeset ||
> +		if (intel_crtc_needs_modeset(crtc_state) ||
>  		    memcmp(old_fifo_state, new_fifo_state,
>  			   sizeof(*new_fifo_state)) !=3D 0)
>  			crtc_state->fifo_changed =3D true;
> @@ -2084,7 +2083,7 @@ static int vlv_compute_intermediate_wm(struct intel=
_atomic_state *state,
>  	int level;
>=20=20
>  	if (!new_crtc_state->hw.active ||
> -	    drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi)) {
> +	    intel_crtc_needs_modeset(new_crtc_state)) {
>  		*intermediate =3D *optimal;
>=20=20
>  		intermediate->cxsr =3D false;
> @@ -3142,7 +3141,7 @@ static int ilk_compute_intermediate_wm(struct intel=
_atomic_state *state,
>  	 */
>  	*a =3D new_crtc_state->wm.ilk.optimal;
>  	if (!new_crtc_state->hw.active ||
> -	    drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi) ||
> +	    intel_crtc_needs_modeset(new_crtc_state) ||
>  	    state->skip_intermediate_wm)
>  		return 0;

--=20
Jani Nikula, Intel Open Source Graphics Center
