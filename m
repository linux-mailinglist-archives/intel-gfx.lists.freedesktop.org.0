Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A8F148AFF
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 16:10:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 578986E3E1;
	Fri, 24 Jan 2020 15:10:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9E3B6E3DF
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 15:10:33 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 07:06:22 -0800
X-IronPort-AV: E=Sophos;i="5.70,358,1574150400"; d="scan'208";a="216614164"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 07:06:21 -0800
Date: Fri, 24 Jan 2020 17:06:15 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200124150615.GC32347@ideak-desk.fi.intel.com>
References: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
 <20200120174728.21095-11-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120174728.21095-11-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 10/17] drm/i915: swap() the entire cdclk
 state
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 20, 2020 at 07:47:20PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> To make life less confusing let's swap() the entire cdclk state
> rather than swapping some parts, copying other parts, and leaving
> the rest just as is.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 18 +++---------------
>  1 file changed, 3 insertions(+), 15 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index f8e70a668b74..002044e80868 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1835,19 +1835,7 @@ void intel_cdclk_swap_state(struct intel_atomic_st=
ate *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  =

> -	/* FIXME maybe swap() these too */
> -	memcpy(dev_priv->cdclk_state.min_cdclk,
> -	       state->cdclk_state.min_cdclk,
> -	       sizeof(state->cdclk_state.min_cdclk));
> -	memcpy(dev_priv->cdclk_state.min_voltage_level,
> -	       state->cdclk_state.min_voltage_level,
> -	       sizeof(state->cdclk_state.min_voltage_level));
> -
> -	dev_priv->cdclk_state.force_min_cdclk =3D
> -		state->cdclk_state.force_min_cdclk;
> -
> -	swap(state->cdclk_state.logical, dev_priv->cdclk_state.logical);
> -	swap(state->cdclk_state.actual, dev_priv->cdclk_state.actual);
> +	swap(state->cdclk_state, dev_priv->cdclk_state);
>  }
>  =

>  void intel_dump_cdclk_config(const struct intel_cdclk_config *cdclk_conf=
ig,
> @@ -1903,7 +1891,7 @@ intel_set_cdclk_pre_plane_update(struct intel_atomi=
c_state *state)
>  	/* called after intel_cdclk_swap_state()! */
>  	const struct intel_cdclk_state *old_cdclk_state =3D &state->cdclk_state;
>  	const struct intel_cdclk_state *new_cdclk_state =3D &dev_priv->cdclk_st=
ate;
> -	enum pipe pipe =3D old_cdclk_state->pipe; /* not swapped */
> +	enum pipe pipe =3D new_cdclk_state->pipe;
>  =

>  	if (pipe =3D=3D INVALID_PIPE ||
>  	    old_cdclk_state->actual.cdclk <=3D new_cdclk_state->actual.cdclk)
> @@ -1924,7 +1912,7 @@ intel_set_cdclk_post_plane_update(struct intel_atom=
ic_state *state)
>  	/* called after intel_cdclk_swap_state()! */
>  	const struct intel_cdclk_state *old_cdclk_state =3D &state->cdclk_state;
>  	const struct intel_cdclk_state *new_cdclk_state =3D &dev_priv->cdclk_st=
ate;
> -	enum pipe pipe =3D old_cdclk_state->pipe; /* not swapped */
> +	enum pipe pipe =3D new_cdclk_state->pipe;
>  =

>  	if (pipe !=3D INVALID_PIPE &&
>  	    old_cdclk_state->actual.cdclk > new_cdclk_state->actual.cdclk)
> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
