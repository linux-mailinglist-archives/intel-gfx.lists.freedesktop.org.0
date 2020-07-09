Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E15219F50
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 13:51:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF7186EA49;
	Thu,  9 Jul 2020 11:51:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 232CE6EA49
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 11:51:46 +0000 (UTC)
IronPort-SDR: SrcLDiqbjsEdBoSPLmRpgURDVHS9mICuuVs+x8Ky8kQQn2c1YHWP6pbslV9v574ZFa6WoQzu5H
 BGcAClA0Y4iw==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="232853244"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="232853244"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 04:51:45 -0700
IronPort-SDR: abVZzWqpblERjSjD8Pcc5r9omLS0vXZ/haM9Ki21RpuXIy6e9L/lxV/gp4KVb99TO9a1ZQudti
 q+PLAaE7foRQ==
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="268735458"
Received: from ideak-desk.fi.intel.com ([10.237.68.147])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 04:51:42 -0700
Date: Thu, 9 Jul 2020 14:51:39 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200709115139.GE16776@ideak-desk.fi.intel.com>
References: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
 <20200108181242.13650-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108181242.13650-8-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/i915/sdvo: Make .get_modes() return
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

On Wed, Jan 08, 2020 at 08:12:41PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> .get_modes() is supposed to return the number of modes added to the
> probed_modes list (not that anyone actually checks for anything
> except zero vs. not zero). Let's do that. Also switch over to using
> intel_connector_update_modes() instead of hand rolling it.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 56 +++++++++++++----------
>  1 file changed, 33 insertions(+), 23 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 34d5bd750de8..69ff297156cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2120,8 +2120,9 @@ intel_sdvo_detect(struct drm_connector *connector, =
bool force)
>  	return ret;
>  }
>  =

> -static void intel_sdvo_get_ddc_modes(struct drm_connector *connector)
> +static int intel_sdvo_get_ddc_modes(struct drm_connector *connector)
>  {
> +	int num_modes =3D 0;
>  	struct edid *edid;
>  =

>  	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
> @@ -2136,18 +2137,19 @@ static void intel_sdvo_get_ddc_modes(struct drm_c=
onnector *connector)
>  	 * DDC fails, check to see if the analog output is disconnected, in
>  	 * which case we'll look there for the digital DDC data.
>  	 */
> -	if (edid =3D=3D NULL)
> +	if (!edid)
>  		edid =3D intel_sdvo_get_analog_edid(connector);
>  =

> -	if (edid !=3D NULL) {
> -		if (intel_sdvo_connector_matches_edid(to_intel_sdvo_connector(connecto=
r),
> -						      edid)) {
> -			drm_connector_update_edid_property(connector, edid);
> -			drm_add_edid_modes(connector, edid);
> -		}
> +	if (!edid)
> +		return 0;
>  =

> -		kfree(edid);
> -	}
> +	if (intel_sdvo_connector_matches_edid(to_intel_sdvo_connector(connector=
),
> +					      edid))
> +		num_modes +=3D intel_connector_update_modes(connector, edid);
> +
> +	kfree(edid);
> +
> +	return num_modes;
>  }
>  =

>  /*
> @@ -2215,12 +2217,13 @@ static const struct drm_display_mode sdvo_tv_mode=
s[] =3D {
>  		   DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
>  };
>  =

> -static void intel_sdvo_get_tv_modes(struct drm_connector *connector)
> +static int intel_sdvo_get_tv_modes(struct drm_connector *connector)
>  {
>  	struct intel_sdvo *intel_sdvo =3D intel_attached_sdvo(connector);
>  	const struct drm_connector_state *conn_state =3D connector->state;
>  	struct intel_sdvo_sdtv_resolution_request tv_res;
>  	u32 reply =3D 0, format_map =3D 0;
> +	int num_modes =3D 0;
>  	int i;
>  =

>  	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
> @@ -2235,31 +2238,37 @@ static void intel_sdvo_get_tv_modes(struct drm_co=
nnector *connector)
>  	       min(sizeof(format_map), sizeof(struct intel_sdvo_sdtv_resolution=
_request)));
>  =

>  	if (!intel_sdvo_set_target_output(intel_sdvo, intel_sdvo->attached_outp=
ut))
> -		return;
> +		return 0;
>  =

>  	BUILD_BUG_ON(sizeof(tv_res) !=3D 3);
>  	if (!intel_sdvo_write_cmd(intel_sdvo,
>  				  SDVO_CMD_GET_SDTV_RESOLUTION_SUPPORT,
>  				  &tv_res, sizeof(tv_res)))
> -		return;
> +		return 0;
>  	if (!intel_sdvo_read_response(intel_sdvo, &reply, 3))
> -		return;
> +		return 0;
>  =

> -	for (i =3D 0; i < ARRAY_SIZE(sdvo_tv_modes); i++)
> +	for (i =3D 0; i < ARRAY_SIZE(sdvo_tv_modes); i++) {
>  		if (reply & (1 << i)) {
>  			struct drm_display_mode *nmode;
>  			nmode =3D drm_mode_duplicate(connector->dev,
>  						   &sdvo_tv_modes[i]);
> -			if (nmode)
> +			if (nmode) {
>  				drm_mode_probed_add(connector, nmode);
> +				num_modes++;
> +			}
>  		}
> +	}
> +
> +	return num_modes;
>  }
>  =

> -static void intel_sdvo_get_lvds_modes(struct drm_connector *connector)
> +static int intel_sdvo_get_lvds_modes(struct drm_connector *connector)
>  {
>  	struct intel_sdvo *intel_sdvo =3D intel_attached_sdvo(connector);
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
>  	struct drm_display_mode *newmode;
> +	int num_modes =3D 0;
>  =

>  	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
>  		      connector->base.id, connector->name);
> @@ -2276,6 +2285,7 @@ static void intel_sdvo_get_lvds_modes(struct drm_co=
nnector *connector)
>  			newmode->type =3D (DRM_MODE_TYPE_PREFERRED |
>  					 DRM_MODE_TYPE_DRIVER);
>  			drm_mode_probed_add(connector, newmode);
> +			num_modes++;
>  		}
>  	}
>  =

> @@ -2284,7 +2294,9 @@ static void intel_sdvo_get_lvds_modes(struct drm_co=
nnector *connector)
>  	 * Assume that the preferred modes are
>  	 * arranged in priority order.
>  	 */
> -	intel_ddc_get_modes(connector, &intel_sdvo->ddc);
> +	num_modes +=3D intel_ddc_get_modes(connector, &intel_sdvo->ddc);
> +
> +	return num_modes;
>  }
>  =

>  static int intel_sdvo_get_modes(struct drm_connector *connector)
> @@ -2292,13 +2304,11 @@ static int intel_sdvo_get_modes(struct drm_connec=
tor *connector)
>  	struct intel_sdvo_connector *intel_sdvo_connector =3D to_intel_sdvo_con=
nector(connector);
>  =

>  	if (IS_TV(intel_sdvo_connector))
> -		intel_sdvo_get_tv_modes(connector);
> +		return intel_sdvo_get_tv_modes(connector);
>  	else if (IS_LVDS(intel_sdvo_connector))
> -		intel_sdvo_get_lvds_modes(connector);
> +		return intel_sdvo_get_lvds_modes(connector);
>  	else
> -		intel_sdvo_get_ddc_modes(connector);
> -
> -	return !list_empty(&connector->probed_modes);
> +		return intel_sdvo_get_ddc_modes(connector);
>  }
>  =

>  static int
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
