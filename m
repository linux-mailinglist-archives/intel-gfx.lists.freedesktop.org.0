Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9276219F57
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 13:53:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 466626EA4B;
	Thu,  9 Jul 2020 11:53:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5D1E6EA4B
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 11:53:04 +0000 (UTC)
IronPort-SDR: SPee5zBGF2Og8r58giUiCkW0a8N9tJA/lDlrilShzlfMYZEvUeCQszAkW4bRQ108AAdEDucY7+
 nL6ww5RDLaAQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="135434409"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="135434409"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 04:53:04 -0700
IronPort-SDR: senQqhlLGqSu8xnLXABWEibS9rOIf9JI4x4+R1vZZrVzqHthKnf3k5bFGW0SE3AsEFQw0nd/Iv
 T0kqoTrG+wsg==
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="268735670"
Received: from ideak-desk.fi.intel.com ([10.237.68.147])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 04:53:01 -0700
Date: Thu, 9 Jul 2020 14:52:57 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200709115257.GF16776@ideak-desk.fi.intel.com>
References: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
 <20200108181242.13650-9-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108181242.13650-9-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915/dvo: Make .get_modes() return
 the number of modes
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

On Wed, Jan 08, 2020 at 08:12:42PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> .get_modes() is supposed to return the number of modes added to the
> probed_modes list (not that anyone actually checks for anything
> except zero vs. not zero). Let's do that.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dvo.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i=
915/display/intel_dvo.c
> index a74dc5b915d1..3ce9f72d12e5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -322,6 +322,7 @@ static int intel_dvo_get_modes(struct drm_connector *=
connector)
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
>  	const struct drm_display_mode *fixed_mode =3D
>  		to_intel_connector(connector)->panel.fixed_mode;
> +	int num_modes;
>  =

>  	/*
>  	 * We should probably have an i2c driver get_modes function for those
> @@ -329,21 +330,22 @@ static int intel_dvo_get_modes(struct drm_connector=
 *connector)
>  	 * (TV-out, for example), but for now with just TMDS and LVDS,
>  	 * that's not the case.
>  	 */
> -	intel_ddc_get_modes(connector,
> -			    intel_gmbus_get_adapter(dev_priv, GMBUS_PIN_DPC));
> -	if (!list_empty(&connector->probed_modes))
> -		return 1;
> +	num_modes =3D intel_ddc_get_modes(connector,
> +					intel_gmbus_get_adapter(dev_priv, GMBUS_PIN_DPC));
> +	if (num_modes)
> +		return num_modes;
>  =

>  	if (fixed_mode) {
>  		struct drm_display_mode *mode;
> +
>  		mode =3D drm_mode_duplicate(connector->dev, fixed_mode);
>  		if (mode) {
>  			drm_mode_probed_add(connector, mode);
> -			return 1;
> +			num_modes++;
>  		}
>  	}
>  =

> -	return 0;
> +	return num_modes;
>  }
>  =

>  static const struct drm_connector_funcs intel_dvo_connector_funcs =3D {
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
