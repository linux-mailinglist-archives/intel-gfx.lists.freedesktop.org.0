Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 865E24EDAD2
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 15:46:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77F2910E023;
	Thu, 31 Mar 2022 13:46:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BB9C10E023
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 13:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648734384; x=1680270384;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=uQSddSXnydk4WzIT22e/ifBWxS6PCNmNbDfrQcDAZi0=;
 b=Ak7GC05PjkIU+5U+KnwkGb6uF3hhG3tgBY3+16kIlgvLfYX0yGxFjeS1
 k0l4RzqB7VRrmM23QzCP0TklJ6nVp4BT7rQHdIECd7KdJFMUb6RYyC5Sc
 Go/3PZ20/TDM2+QkUIW3w2YccMQp/8gyL2BBYA8h764mpSk/YCNXM2mpk
 OmsLFy0T3vIKtem+vfje77DUsisc+AxYsqREUdUzl+hnshYjHngKo/MOR
 yBWAlxUUUFbD24BEwZ3rI9RYHPw1MLIefPJ4dUYBVtpC+GePGHyifPg7Y
 QS3MRXK7uhZkSwSS2QQrMl3PDh5apLrNLdC8XMf2p+iaVOUo4YKdZNqT7 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="323018398"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="323018398"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:46:23 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="566495933"
Received: from gluca-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:46:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220331112822.11462-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
 <20220331112822.11462-10-ville.syrjala@linux.intel.com>
Date: Thu, 31 Mar 2022 16:46:19 +0300
Message-ID: <87v8vu8cb8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 09/11] drm/i915: Move
 intel_drrs_compute_config() into intel_dp.c
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
> intel_drrs_compute_config() is 100% DP specific. DRRS on other
> types of encoders wouldn't do any of these M2/N2 calculations
> etc. So let's move this into intel_dp.c so all the DP state
> calculation is more concentrated into one place.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Sad trombone on increasing intel_dp.c size.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c   | 59 +++++++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_drrs.c | 54 ---------------------
>  drivers/gpu/drm/i915/display/intel_drrs.h |  3 --
>  3 files changed, 56 insertions(+), 60 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index abfdaa0c7382..da1fd626c3fb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -60,7 +60,6 @@
>  #include "intel_dp_mst.h"
>  #include "intel_dpio_phy.h"
>  #include "intel_dpll.h"
> -#include "intel_drrs.h"
>  #include "intel_fifo_underrun.h"
>  #include "intel_hdcp.h"
>  #include "intel_hdmi.h"
> @@ -1770,6 +1769,60 @@ intel_dp_compute_hdr_metadata_infoframe_sdp(struct=
 intel_dp *intel_dp,
>  		intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
>  }
>=20=20
> +static bool can_enable_drrs(struct intel_connector *connector,
> +			    const struct intel_crtc_state *pipe_config,
> +			    const struct drm_display_mode *downclock_mode)
> +{
> +	if (pipe_config->vrr.enable)
> +		return false;
> +
> +	/*
> +	 * DRRS and PSR can't be enable together, so giving preference to PSR
> +	 * as it allows more power-savings by complete shutting down display,
> +	 * so to guarantee this, intel_drrs_compute_config() must be called
> +	 * after intel_psr_compute_config().
> +	 */
> +	if (pipe_config->has_psr)
> +		return false;
> +
> +	return downclock_mode &&
> +		intel_panel_drrs_type(connector) =3D=3D DRRS_TYPE_SEAMLESS;
> +}
> +
> +static void
> +intel_dp_drrs_compute_config(struct intel_connector *connector,
> +			     struct intel_crtc_state *pipe_config,
> +			     int output_bpp, bool constant_n)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	const struct drm_display_mode *downclock_mode =3D
> +		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
> +	int pixel_clock;
> +
> +	if (!can_enable_drrs(connector, pipe_config, downclock_mode)) {
> +		if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu_transcoder))
> +			intel_zero_m_n(&pipe_config->dp_m2_n2);
> +		return;
> +	}
> +
> +	if (IS_IRONLAKE(i915) || IS_SANDYBRIDGE(i915) || IS_IVYBRIDGE(i915))
> +		pipe_config->msa_timing_delay =3D i915->vbt.edp.drrs_msa_timing_delay;
> +
> +	pipe_config->has_drrs =3D true;
> +
> +	pixel_clock =3D downclock_mode->clock;
> +	if (pipe_config->splitter.enable)
> +		pixel_clock /=3D pipe_config->splitter.link_count;
> +
> +	intel_link_compute_m_n(output_bpp, pipe_config->lane_count, pixel_clock,
> +			       pipe_config->port_clock, &pipe_config->dp_m2_n2,
> +			       constant_n, pipe_config->fec_enable);
> +
> +	/* FIXME: abstract this better */
> +	if (pipe_config->splitter.enable)
> +		pipe_config->dp_m2_n2.data_m *=3D pipe_config->splitter.link_count;
> +}
> +
>  int
>  intel_dp_compute_config(struct intel_encoder *encoder,
>  			struct intel_crtc_state *pipe_config,
> @@ -1878,8 +1931,8 @@ intel_dp_compute_config(struct intel_encoder *encod=
er,
>=20=20
>  	intel_vrr_compute_config(pipe_config, conn_state);
>  	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
> -	intel_drrs_compute_config(intel_connector, pipe_config,
> -				  output_bpp, constant_n);
> +	intel_dp_drrs_compute_config(intel_connector, pipe_config,
> +				     output_bpp, constant_n);
>  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
>  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn=
_state);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index 3ebea697f77a..166caf293f7b 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -61,60 +61,6 @@ const char *intel_drrs_type_str(enum drrs_type drrs_ty=
pe)
>  	return str[drrs_type];
>  }
>=20=20
> -static bool can_enable_drrs(struct intel_connector *connector,
> -			    const struct intel_crtc_state *pipe_config,
> -			    const struct drm_display_mode *downclock_mode)
> -{
> -	if (pipe_config->vrr.enable)
> -		return false;
> -
> -	/*
> -	 * DRRS and PSR can't be enable together, so giving preference to PSR
> -	 * as it allows more power-savings by complete shutting down display,
> -	 * so to guarantee this, intel_drrs_compute_config() must be called
> -	 * after intel_psr_compute_config().
> -	 */
> -	if (pipe_config->has_psr)
> -		return false;
> -
> -	return downclock_mode &&
> -		intel_panel_drrs_type(connector) =3D=3D DRRS_TYPE_SEAMLESS;
> -}
> -
> -void
> -intel_drrs_compute_config(struct intel_connector *connector,
> -			  struct intel_crtc_state *pipe_config,
> -			  int output_bpp, bool constant_n)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	const struct drm_display_mode *downclock_mode =3D
> -		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
> -	int pixel_clock;
> -
> -	if (!can_enable_drrs(connector, pipe_config, downclock_mode)) {
> -		if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu_transcoder))
> -			intel_zero_m_n(&pipe_config->dp_m2_n2);
> -		return;
> -	}
> -
> -	if (IS_IRONLAKE(i915) || IS_SANDYBRIDGE(i915) || IS_IVYBRIDGE(i915))
> -		pipe_config->msa_timing_delay =3D i915->vbt.edp.drrs_msa_timing_delay;
> -
> -	pipe_config->has_drrs =3D true;
> -
> -	pixel_clock =3D downclock_mode->clock;
> -	if (pipe_config->splitter.enable)
> -		pixel_clock /=3D pipe_config->splitter.link_count;
> -
> -	intel_link_compute_m_n(output_bpp, pipe_config->lane_count, pixel_clock,
> -			       pipe_config->port_clock, &pipe_config->dp_m2_n2,
> -			       constant_n, pipe_config->fec_enable);
> -
> -	/* FIXME: abstract this better */
> -	if (pipe_config->splitter.enable)
> -		pipe_config->dp_m2_n2.data_m *=3D pipe_config->splitter.link_count;
> -}
> -
>  static void
>  intel_drrs_set_refresh_rate_pipeconf(struct intel_crtc *crtc,
>  				     enum drrs_refresh_rate refresh_rate)
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/=
i915/display/intel_drrs.h
> index 084c3f4f8403..3ad1be1ad9c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.h
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.h
> @@ -23,9 +23,6 @@ void intel_drrs_invalidate(struct drm_i915_private *dev=
_priv,
>  			   unsigned int frontbuffer_bits);
>  void intel_drrs_flush(struct drm_i915_private *dev_priv,
>  		      unsigned int frontbuffer_bits);
> -void intel_drrs_compute_config(struct intel_connector *connector,
> -			       struct intel_crtc_state *pipe_config,
> -			       int output_bpp, bool constant_n);
>  void intel_crtc_drrs_init(struct intel_crtc *crtc);
>=20=20
>  #endif /* __INTEL_DRRS_H__ */

--=20
Jani Nikula, Intel Open Source Graphics Center
