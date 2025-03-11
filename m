Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63443A5C2CE
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 14:34:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7A4310E1A1;
	Tue, 11 Mar 2025 13:34:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T7sZJo1T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0403910E1A1
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Mar 2025 13:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741700077; x=1773236077;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=gLPo2kcA/DmO9K9o0mfSe3ePqGp0uI/XVXh5KXpaBDc=;
 b=T7sZJo1TcoTFD69F/m+cBKkJJjdfhAL5n9UhscbhTnEUQMv2h0RXjJay
 y32H7h9vgZLPvVbEAzE0mkK89T0nRs5U1XXy5TcKR2Z6vTFRp5jYwKpm3
 U/f97o61IDtQJnGkD4s/Oh2auUlGm/urPpgf9529jXmlzPjtzKqiGE4D7
 O/YudmNOyHfWYJiNQWX4JgdZ0nacvpl2HjiEAw33eoFRzulbYtLsmKPbI
 A5lQKQAED9U2TcwrdiqgJO8CLDMCYkhSkFnWZdC1PgAdiHWMOoDfHq/G1
 u78jbOe9IDJK3XTmNHkxYVgoOvriN6Fu5W++0sJi/4wc7on+/ZI3WwLZE A==;
X-CSE-ConnectionGUID: Gb0j57tiTc6SsIHFg3vHLw==
X-CSE-MsgGUID: g2cUjbp5TkqqNRPHdBjgxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="46648940"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="46648940"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 06:34:36 -0700
X-CSE-ConnectionGUID: qHEXox4eRiSAZ1MstbO7gg==
X-CSE-MsgGUID: Dp8e6Kq6SQ6Jp04nBE3CLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="125365066"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 06:34:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915: Enable/disable shared dplls just the once
 for joined pipes
In-Reply-To: <20250310183528.3203-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250310183528.3203-1-ville.syrjala@linux.intel.com>
Date: Tue, 11 Mar 2025 15:34:32 +0200
Message-ID: <875xkfhes7.fsf@intel.com>
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

On Mon, 10 Mar 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Currently we loop over all joined pipes and enable/disable the
> shared dplls for each. We don't really have to do that since
> all joined pipes will be using the same dpll. So let's just do
> the enable/disable once for the whole set of joined pipes.
> We can still keep tracking the dpll active set as pipes as long
> as we remember to flip the bits for all the joined pipes on one go.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 16 +++-------------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  4 ++--
>  2 files changed, 5 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 3afb85fe8536..0e0e5285ad97 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1658,17 +1658,12 @@ static void hsw_crtc_enable(struct intel_atomic_s=
tate *state,
>  	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i)
>  		intel_dmc_enable_pipe(display, pipe_crtc->pipe);
>=20=20
>  	intel_encoders_pre_pll_enable(state, crtc);
>=20=20
> -	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i=
) {
> -		const struct intel_crtc_state *pipe_crtc_state =3D
> -			intel_atomic_get_new_crtc_state(state, pipe_crtc);
> -
> -		if (pipe_crtc_state->shared_dpll)
> -			intel_enable_shared_dpll(pipe_crtc_state);
> -	}
> +	if (new_crtc_state->shared_dpll)
> +		intel_enable_shared_dpll(new_crtc_state);

Seems like the check for new_crtc_state->shared_dpll could also be moved
inside intel_enable_shared_dpll(), in a separate patch.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>=20=20
>  	intel_encoders_pre_enable(state, crtc);
>=20=20
>  	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i=
) {
>  		const struct intel_crtc_state *pipe_crtc_state =3D
> @@ -1795,16 +1790,11 @@ static void hsw_crtc_disable(struct intel_atomic_=
state *state,
>  	 * Need care with mst->ddi interactions.
>  	 */
>  	intel_encoders_disable(state, crtc);
>  	intel_encoders_post_disable(state, crtc);
>=20=20
> -	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, =
i) {
> -		const struct intel_crtc_state *old_pipe_crtc_state =3D
> -			intel_atomic_get_old_crtc_state(state, pipe_crtc);
> -
> -		intel_disable_shared_dpll(old_pipe_crtc_state);
> -	}
> +	intel_disable_shared_dpll(old_crtc_state);
>=20=20
>  	intel_encoders_post_pll_disable(state, crtc);
>=20=20
>  	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, =
i)
>  		intel_dmc_disable_pipe(display, pipe_crtc->pipe);
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index c825a507b905..c7b73cd4bc67 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -255,11 +255,11 @@ static void _intel_disable_shared_dpll(struct intel=
_display *display,
>  void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> -	unsigned int pipe_mask =3D BIT(crtc->pipe);
> +	unsigned int pipe_mask =3D intel_crtc_joined_pipe_mask(crtc_state);
>  	unsigned int old_mask;
>=20=20
>  	if (drm_WARN_ON(display->drm, !pll))
>  		return;
>=20=20
> @@ -301,11 +301,11 @@ void intel_enable_shared_dpll(const struct intel_cr=
tc_state *crtc_state)
>  void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> -	unsigned int pipe_mask =3D BIT(crtc->pipe);
> +	unsigned int pipe_mask =3D intel_crtc_joined_pipe_mask(crtc_state);
>=20=20
>  	/* PCH only available on ILK+ */
>  	if (DISPLAY_VER(display) < 5)
>  		return;

--=20
Jani Nikula, Intel
