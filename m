Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FC4148DA6
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 19:15:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89BDE6E429;
	Fri, 24 Jan 2020 18:15:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3B1C6E429
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 18:15:34 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 10:15:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,358,1574150400"; d="scan'208";a="276384615"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 24 Jan 2020 10:15:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2020 20:15:30 +0200
Date: Fri, 24 Jan 2020 20:15:30 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200124181530.GA13686@intel.com>
References: <20200124172301.16484-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200124172301.16484-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Fix inconsistance between
 pfit.enable and scaler freeing
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 24, 2020 at 07:23:01PM +0200, Stanislav Lisovskiy wrote:
> Despite that during hw readout we seem to have scalers assigned
> to pipes, then call atomic_setup_scalers, at the commit stage in
> skl_update_scaler there is a check, that if we have fb src and
> dest of same size, we stage freeing of that scaler.
> =

> However we don't update pfit.enabled flag then, which makes
> the state inconsistent, which in turn triggers a WARN_ON
> in skl_pfit_enable, because we have pfit enabled,
> but no assigned scaler.

And the reason for not having updates pfit.enabled is that the
the modeset was forced by a cdclk change and thus the full state
recomputation never happened and we're left with the inherited
pfit.enabled.

> =

> To me this looks weird that we kind of do the decision
> to use or not use the scaler at skl_update_scaler stage
> but not in intel_atomic_setup_scalers, moreover
> not updating the whole state consistently.
> =

> This fix is to not free the scaler if we have pfit.enabled
> flag set, so that the state is now consistent
> and the warnings are gone.
> =

> v2: - Put pfit.enable check into crtc specific place
>       (Ville Syrj=E4l=E4)
> =

> Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/577

Closes: ...


> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 5768cfcf71c4..cd242d91a924 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6037,7 +6037,8 @@ int skl_update_scaler_crtc(struct intel_crtc_state =
*state)
>  	const struct drm_display_mode *adjusted_mode =3D &state->hw.adjusted_mo=
de;
>  	bool need_scaler =3D false;
>  =

> -	if (state->output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420)
> +	if (state->output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420 ||
> +	    state->pch_pfit.enabled)

Hmm, no hw.enable check here for the existing case either. Shouldn't
matter now that I made the crtc disable clear the entire state as well.
Oh, it was handled via that odd force_detach stuff it seems. Whatever.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  		need_scaler =3D true;
>  =

>  	return skl_update_scaler(state, !state->hw.active, SKL_CRTC_INDEX,
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
