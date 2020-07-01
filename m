Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F248210A8E
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 13:52:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 784CD6E89D;
	Wed,  1 Jul 2020 11:52:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CEC16E89D
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 11:52:11 +0000 (UTC)
IronPort-SDR: 7trZT7tgRgQdvia6wNDqVojSiGO+K6CdskOl5ZbTz6gDl/260vWJ+ox9WZe56ZlwUw5X5bvXL/
 jSplfjl5xSfA==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="134818761"
X-IronPort-AV: E=Sophos;i="5.75,300,1589266800"; d="scan'208";a="134818761"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 04:52:10 -0700
IronPort-SDR: 5m42+ntptfo1f+eNIW1sbQcEXTe4FetOQxHk6I29N9hp1TRjJVxf0aTFpxHfMy9SK4Aq/Xqv14
 jUAo4Z+Vj7ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,300,1589266800"; d="scan'208";a="265390520"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 01 Jul 2020 04:52:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Jul 2020 14:52:07 +0300
Date: Wed, 1 Jul 2020 14:52:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <20200701115207.GX6112@intel.com>
References: <20200630233310.10191-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200630233310.10191-1-matthew.s.atwood@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dp: Correctly advertise HBR3
 for GEN11+
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

On Tue, Jun 30, 2020 at 04:33:10PM -0700, Matt Atwood wrote:
> intel_dp_set_source_rates() calls intel_dp_is_edp(), which is unsafe to
> use before encoder_type is set. This caused GEN11+ to incorrectly strip
> HBR3 from source rates for edp. Move intel_dp_set_source_rates() to
> after encoder_type is set. Add comment to intel_dp_is_edp() describing
> unsafe usages.
> =

> v2: Alter intel_dp_set_source_rates final position (Ville/Manasi).
>     Remove outdated comment (Ville).
>     Slight optimization of control flow in intel_dp_init_connector.
>     Slight rewording in commit message.
> =

> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>

lgtm
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 28 ++++++++++---------------
>  1 file changed, 11 insertions(+), 17 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 3df5d901dd9d..c9b93c5706af 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -137,6 +137,8 @@ static const u8 valid_dsc_slicecount[] =3D {1, 2, 4};
>   *
>   * If a CPU or PCH DP output is attached to an eDP panel, this function
>   * will return true, and false otherwise.
> + *
> + * This function is not safe to use prior to encoder type being set.
>   */
>  bool intel_dp_is_edp(struct intel_dp *intel_dp)
>  {
> @@ -8157,8 +8159,6 @@ intel_dp_init_connector(struct intel_digital_port *=
intel_dig_port,
>  		     intel_encoder->base.name))
>  		return false;
>  =

> -	intel_dp_set_source_rates(intel_dp);
> -
>  	intel_dp->reset_link_params =3D true;
>  	intel_dp->pps_pipe =3D INVALID_PIPE;
>  	intel_dp->active_pipe =3D INVALID_PIPE;
> @@ -8174,28 +8174,22 @@ intel_dp_init_connector(struct intel_digital_port=
 *intel_dig_port,
>  		 */
>  		drm_WARN_ON(dev, intel_phy_is_tc(dev_priv, phy));
>  		type =3D DRM_MODE_CONNECTOR_eDP;
> +		intel_encoder->type =3D INTEL_OUTPUT_EDP;
> +
> +		/* eDP only on port B and/or C on vlv/chv */
> +		if (drm_WARN_ON(dev, (IS_VALLEYVIEW(dev_priv) ||
> +				      IS_CHERRYVIEW(dev_priv)) &&
> +				port !=3D PORT_B && port !=3D PORT_C))
> +			return false;
>  	} else {
>  		type =3D DRM_MODE_CONNECTOR_DisplayPort;
>  	}
>  =

> +	intel_dp_set_source_rates(intel_dp);
> +
>  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>  		intel_dp->active_pipe =3D vlv_active_pipe(intel_dp);
>  =

> -	/*
> -	 * For eDP we always set the encoder type to INTEL_OUTPUT_EDP, but
> -	 * for DP the encoder type can be set by the caller to
> -	 * INTEL_OUTPUT_UNKNOWN for DDI, so don't rewrite it.
> -	 */
> -	if (type =3D=3D DRM_MODE_CONNECTOR_eDP)
> -		intel_encoder->type =3D INTEL_OUTPUT_EDP;
> -
> -	/* eDP only on port B and/or C on vlv/chv */
> -	if (drm_WARN_ON(dev, (IS_VALLEYVIEW(dev_priv) ||
> -			      IS_CHERRYVIEW(dev_priv)) &&
> -			intel_dp_is_edp(intel_dp) &&
> -			port !=3D PORT_B && port !=3D PORT_C))
> -		return false;
> -
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "Adding %s connector on [ENCODER:%d:%s]\n",
>  		    type =3D=3D DRM_MODE_CONNECTOR_eDP ? "eDP" : "DP",
> -- =

> 2.21.3
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
