Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A54974EDAF5
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 15:57:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03ABA10E1A6;
	Thu, 31 Mar 2022 13:57:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3C1C10E1A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 13:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648735034; x=1680271034;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=wCRhXM4jgZ8upU5D9t7L/QW94ePdXieaFP32QqDCev8=;
 b=XluvU5BtATiBJfG6O/FTDY+pjpd1r7xePwDEfATL+VZI2s7e93+KDzD5
 rHB1mi/7C67sIOkT6zlaIAH10lBPW4T6AXm80cd6oC3+838+ueZugTyCs
 oaRW8F/w2wxzxnr7IthI3W/S1dojt0kyYjX2oakfa3xH5DEaY6VqHa2T+
 whONVUe1jL/fWlMNJFXcGj+u6ZZsek/R285/v1B7j2XVuWZfV0XgrQgUn
 mjNal7pO2j1XRmIj3S+UJAyW9r9L5yHmsMfN3VOYIoAF1ASRkWKhBnUcU
 HkMe1Rae3GYX7k0qdYc5bGfWuvaGCe9EXcxJnh4WmSyurNAqpgzwkb96k A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="258674291"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="258674291"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:57:14 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="522355367"
Received: from gluca-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.194])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:57:12 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220331112822.11462-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
 <20220331112822.11462-11-ville.syrjala@linux.intel.com>
Date: Thu, 31 Mar 2022 16:57:10 +0300
Message-ID: <87sfqy8bt5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 10/11] drm/i915: Allow static DRRS on all
 eDP ports
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

On Thu, 31 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Only seamless DRRS has specific hardware requirements so
> we can allow static DRRS on any eDP port.
>
> And we can replace these port checks and whatnot with
> a simple check to make sure the transcoder(s) we're
> about to use are capable of seamless DRRS.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I don't know why it's so hard for me to map the conditions. It all looks
legit, but...

Let's say,

Acked-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 54 +++++++++----------------
>  1 file changed, 20 insertions(+), 34 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index da1fd626c3fb..b0b4bdaf3b9d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1769,10 +1769,22 @@ intel_dp_compute_hdr_metadata_infoframe_sdp(struc=
t intel_dp *intel_dp,
>  		intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
>  }
>=20=20
> +static bool cpu_transcoder_has_drrs(struct drm_i915_private *i915,
> +				    enum transcoder cpu_transcoder)
> +{
> +	/* M1/N1 is double buffered */
> +	if (DISPLAY_VER(i915) >=3D 9 || IS_BROADWELL(i915))
> +		return true;
> +
> +	return intel_cpu_transcoder_has_m2_n2(i915, cpu_transcoder);
> +}
> +
>  static bool can_enable_drrs(struct intel_connector *connector,
>  			    const struct intel_crtc_state *pipe_config,
>  			    const struct drm_display_mode *downclock_mode)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +
>  	if (pipe_config->vrr.enable)
>  		return false;
>=20=20
> @@ -1785,6 +1797,13 @@ static bool can_enable_drrs(struct intel_connector=
 *connector,
>  	if (pipe_config->has_psr)
>  		return false;
>=20=20
> +	/* FIXME missing FDI M2/N2 etc. */
> +	if (pipe_config->has_pch_encoder)
> +		return false;
> +
> +	if (!cpu_transcoder_has_drrs(i915, pipe_config->cpu_transcoder))
> +		return false;
> +
>  	return downclock_mode &&
>  		intel_panel_drrs_type(connector) =3D=3D DRRS_TYPE_SEAMLESS;
>  }
> @@ -5029,39 +5048,6 @@ intel_edp_add_properties(struct intel_dp *intel_dp)
>  						       fixed_mode->vdisplay);
>  }
>=20=20
> -static bool
> -intel_edp_has_drrs(struct intel_dp *intel_dp)
> -{
> -	struct intel_connector *connector =3D intel_dp->attached_connector;
> -	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -
> -	if (DISPLAY_VER(i915) < 5) {
> -		drm_dbg_kms(&i915->drm,
> -			    "[CONNECTOR:%d:%s] DRRS not supported on platform\n",
> -			    connector->base.base.id, connector->base.name);
> -		return false;
> -	}
> -
> -	if ((DISPLAY_VER(i915) < 8 && !HAS_GMCH(i915)) &&
> -	    encoder->port !=3D PORT_A) {
> -		drm_dbg_kms(&i915->drm,
> -			    "[CONNECTOR:%d:%s] DRRS not supported on [ENCODER:%d:%s]\n",
> -			    connector->base.base.id, connector->base.name,
> -			    encoder->base.base.id, encoder->base.name);
> -		return false;
> -	}
> -
> -	if (i915->vbt.drrs_type =3D=3D DRRS_TYPE_NONE) {
> -		drm_dbg_kms(&i915->drm,
> -			    "[CONNECTOR:%d:%s] DRRS not supported according to VBT\n",
> -			    connector->base.base.id, connector->base.name);
> -		return false;
> -	}
> -
> -	return true;
> -}
> -
>  static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  				     struct intel_connector *intel_connector)
>  {
> @@ -5126,7 +5112,7 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>  	intel_connector->edid =3D edid;
>=20=20
>  	intel_panel_add_edid_fixed_modes(intel_connector,
> -					 intel_edp_has_drrs(intel_dp));
> +					 dev_priv->vbt.drrs_type !=3D DRRS_TYPE_NONE);
>=20=20
>  	/* MSO requires information from the EDID */
>  	intel_edp_mso_init(intel_dp);

--=20
Jani Nikula, Intel Open Source Graphics Center
