Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F375914851D
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 13:24:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 566106FA4F;
	Fri, 24 Jan 2020 12:24:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90AFF6FA4F
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 12:24:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 04:24:48 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="216576421"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 04:24:46 -0800
Date: Fri, 24 Jan 2020 14:24:40 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200124122440.GA32347@ideak-desk.fi.intel.com>
References: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
 <20200120174728.21095-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120174728.21095-7-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 06/17] drm/i915:
 s/need_cd2x_updare/can_cd2x_update/
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

On Mon, Jan 20, 2020 at 07:47:16PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> intel_cdclk_needs_cd2x_update() is named rather confusingly.
> We don't have to do a cd2x update, rather we are allowed to
> do one (as opposed to a full PLL reprogramming with its heavy
> handed modeset). So let's rename the function to
> intel_cdclk_can_cd2x_update().
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index f7f886dcd6ae..9d4cf412b65d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1767,7 +1767,7 @@ bool intel_cdclk_needs_modeset(const struct intel_c=
dclk_state *a,
>  }
>  =

>  /**
> - * intel_cdclk_needs_cd2x_update - Determine if two CDCLK states require=
 a cd2x divider update
> + * intel_cdclk_can_cd2x_update - Determine if two CDCLK states need a cd=
2x divider update
>   * @dev_priv: Not a CDCLK state, it's the drm_i915_private!
>   * @a: first CDCLK state
>   * @b: second CDCLK state
> @@ -1775,9 +1775,9 @@ bool intel_cdclk_needs_modeset(const struct intel_c=
dclk_state *a,
>   * Returns:
>   * True if the CDCLK states require just a cd2x divider update, false if=
 not.
>   */
> -static bool intel_cdclk_needs_cd2x_update(struct drm_i915_private *dev_p=
riv,
> -					  const struct intel_cdclk_state *a,
> -					  const struct intel_cdclk_state *b)
> +static bool intel_cdclk_can_cd2x_update(struct drm_i915_private *dev_pri=
v,
> +					const struct intel_cdclk_state *a,
> +					const struct intel_cdclk_state *b)
>  {
>  	/* Older hw doesn't have the capability */
>  	if (INTEL_GEN(dev_priv) < 10 && !IS_GEN9_LP(dev_priv))
> @@ -2393,9 +2393,9 @@ int intel_modeset_calc_cdclk(struct intel_atomic_st=
ate *state)
>  	}
>  =

>  	if (is_power_of_2(state->active_pipes) &&
> -	    intel_cdclk_needs_cd2x_update(dev_priv,
> -					  &dev_priv->cdclk.actual,
> -					  &state->cdclk.actual)) {
> +	    intel_cdclk_can_cd2x_update(dev_priv,
> +					&dev_priv->cdclk.actual,
> +					&state->cdclk.actual)) {
>  		struct intel_crtc *crtc;
>  		struct intel_crtc_state *crtc_state;
>  =

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
