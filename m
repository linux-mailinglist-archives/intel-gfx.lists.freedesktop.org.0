Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A235283E9
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 14:12:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2A7210E716;
	Mon, 16 May 2022 12:12:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 192D410E716
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 May 2022 12:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652703130; x=1684239130;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=OCJkqdKu/HsArMiOPsP18jzSyVN+NlqTGeJUVB1dvWQ=;
 b=CyVOwX/UK0BWJon82AotxhB3Y10S73Gp74hTjXQw5HT5PUwNPvrxeiBh
 RvZrtJzIzPU+ruj8vxOzqfMujgo21H9Jmg0GhQpKhaYv/qNwpsZD//SoQ
 7C8Ma5J3iNw1he8Nx4kF0YqwSUAhhyQWmJuG8CxarwfLZMc16Lihulzg5
 1WAs4P/xayk98FNOshxTkk/EMqqurOOcHx/X76X1uZ0NP78iGyclZrEre
 3aqX2l9dglgH9OrIYprx81/SAcP+ZRP/AHRRSUgknUEMPnhLZoy/awwau
 4OjmiDwMfV16WWG2efAA1FfuhO6zt6U3637L0CZXda3/KkVsPwwhIxLyW w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10348"; a="250707035"
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="250707035"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 05:12:09 -0700
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="741215375"
Received: from akuriata-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.145.127])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 05:12:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-3-ville.syrjala@linux.intel.com>
Date: Mon, 16 May 2022 15:12:05 +0300
Message-ID: <87a6bhhe22.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 02/26] drm/i915: Do .crtc_compute_clock()
 earlier
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

On Tue, 03 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Currently we calculate a lot of things (pixel rate, watermarks,
> cdclk) trusting that the DPLL can generate the exact frequency
> we ask it. In practice that is not true and there can be
> certain amount of rounding involved.
>
> To allow us to eventually get accurate numbers for all our
> DPLL clock derived state we need to move the DPLL calculation
> to hapen much earlier. To that end we hoist it up to the just
> after the fastset checks. For now we just do the easy code
> motion, and the actual back feeding of the final DPLL clock
> into the state will come later.
>
> A slight change here is that now .crtc_compute_clock()
> can get called while the shared_dpll is still assigned.
> But since .crtc_compute_clock() no longer assignes new
> shared_dplls this is perfectly fine.
>
> TODO: I'd actually like to do this before the fastset check
> so that if the DPLL state should change we actually do the
> modeset. Which I think is what the video aficionados want,
> but it might not be what the fans of fastboot want. Not yet
> sure how to reconcile those conflicting requirements...
>
> v2: s/return/goto/ in error handling
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 9 +++++----
>  drivers/gpu/drm/i915/display/intel_dpll.c    | 3 ---
>  2 files changed, 5 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 0decf3d24237..5e50e0d56088 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4905,10 +4905,6 @@ static int intel_crtc_atomic_check(struct intel_at=
omic_state *state,
>  		crtc_state->update_wm_post =3D true;
>=20=20
>  	if (mode_changed) {
> -		ret =3D intel_dpll_crtc_compute_clock(state, crtc);
> -		if (ret)
> -			return ret;
> -
>  		ret =3D intel_dpll_crtc_get_shared_dpll(state, crtc);
>  		if (ret)
>  			return ret;
> @@ -7801,6 +7797,11 @@ static int intel_atomic_check(struct drm_device *d=
ev,
>  					    new_crtc_state, i) {
>  		if (intel_crtc_needs_modeset(new_crtc_state)) {
>  			any_ms =3D true;
> +
> +			ret =3D intel_dpll_crtc_compute_clock(state, crtc);
> +			if (ret)
> +				goto fail;
> +
>  			continue;
>  		}
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index c19fb075ee6e..7f0538ee2b51 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1449,9 +1449,6 @@ int intel_dpll_crtc_compute_clock(struct intel_atom=
ic_state *state,
>=20=20
>  	drm_WARN_ON(&i915->drm, !intel_crtc_needs_modeset(crtc_state));
>=20=20
> -	if (drm_WARN_ON(&i915->drm, crtc_state->shared_dpll))
> -		return 0;
> -
>  	memset(&crtc_state->dpll_hw_state, 0,
>  	       sizeof(crtc_state->dpll_hw_state));

--=20
Jani Nikula, Intel Open Source Graphics Center
