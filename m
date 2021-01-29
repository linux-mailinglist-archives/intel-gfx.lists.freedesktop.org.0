Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C75B2308B56
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 18:23:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBE1A6EB93;
	Fri, 29 Jan 2021 17:22:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FD326EB93
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 17:22:57 +0000 (UTC)
IronPort-SDR: 8wpQ8x9uLgu5+Ga07OmkthsmH1ffkUtrC5Em4VO4I5R0wllCgGJzVIrYLHoS3NHAJqq7b6m91R
 xMYLVLaE5yLQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="177892388"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="177892388"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 09:22:56 -0800
IronPort-SDR: 3mbHJGLFsu5cBQODzyiHQvWJnz8CwdZLxOhctjJc7i1e4n4wRR2PiGXTtzAMWaXfuokKZkqkYp
 RLaGycIvE7Bw==
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="365339613"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 09:22:54 -0800
Date: Fri, 29 Jan 2021 19:22:49 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210129172249.GD183052@ideak-desk.fi.intel.com>
References: <20210128155948.13678-1-ville.syrjala@linux.intel.com>
 <20210128155948.13678-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128155948.13678-4-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Move HDMI vswing programming
 to the right place
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

On Thu, Jan 28, 2021 at 05:59:47PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> The documented programming sequence indicates the correct point
> for the vswing programming is just before we enable the DDI.
> Make it so.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 30 ++++++++++++------------
>  1 file changed, 15 insertions(+), 15 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 8fbeb8c24efb..efcdf5499903 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3893,7 +3893,6 @@ static void intel_ddi_pre_enable_hdmi(struct intel_=
atomic_state *state,
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	struct intel_hdmi *intel_hdmi =3D &dig_port->hdmi;
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	int level =3D intel_ddi_hdmi_level(encoder, crtc_state);
>  =

>  	intel_dp_dual_mode_set_tmds_output(intel_hdmi, true);
>  	intel_ddi_clk_select(encoder, crtc_state);
> @@ -3904,20 +3903,6 @@ static void intel_ddi_pre_enable_hdmi(struct intel=
_atomic_state *state,
>  =

>  	icl_program_mg_dp_mode(dig_port, crtc_state);
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 12)
> -		tgl_ddi_vswing_sequence(encoder, crtc_state, level);
> -	else if (INTEL_GEN(dev_priv) =3D=3D 11)
> -		icl_ddi_vswing_sequence(encoder, crtc_state, level);
> -	else if (IS_CANNONLAKE(dev_priv))
> -		cnl_ddi_vswing_sequence(encoder, crtc_state, level);
> -	else if (IS_GEN9_LP(dev_priv))
> -		bxt_ddi_vswing_sequence(encoder, crtc_state, level);
> -	else
> -		intel_prepare_hdmi_ddi_buffers(encoder, level);
> -
> -	if (IS_GEN9_BC(dev_priv))
> -		skl_ddi_set_iboost(encoder, crtc_state, level);
> -
>  	intel_ddi_enable_pipe_clock(encoder, crtc_state);
>  =

>  	dig_port->set_infoframes(encoder,
> @@ -4293,6 +4278,7 @@ static void intel_enable_ddi_hdmi(struct intel_atom=
ic_state *state,
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	struct drm_connector *connector =3D conn_state->connector;
> +	int level =3D intel_ddi_hdmi_level(encoder, crtc_state);
>  	enum port port =3D encoder->port;
>  =

>  	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
> @@ -4302,6 +4288,20 @@ static void intel_enable_ddi_hdmi(struct intel_ato=
mic_state *state,
>  			    "[CONNECTOR:%d:%s] Failed to configure sink scrambling/TMDS bit c=
lock ratio\n",
>  			    connector->base.id, connector->name);
>  =

> +	if (INTEL_GEN(dev_priv) >=3D 12)
> +		tgl_ddi_vswing_sequence(encoder, crtc_state, level);
> +	else if (INTEL_GEN(dev_priv) =3D=3D 11)
> +		icl_ddi_vswing_sequence(encoder, crtc_state, level);
> +	else if (IS_CANNONLAKE(dev_priv))
> +		cnl_ddi_vswing_sequence(encoder, crtc_state, level);
> +	else if (IS_GEN9_LP(dev_priv))
> +		bxt_ddi_vswing_sequence(encoder, crtc_state, level);
> +	else
> +		intel_prepare_hdmi_ddi_buffers(encoder, level);

It's not specified where to do this on HSW, but I assume it matches BDW:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> +
> +	if (IS_GEN9_BC(dev_priv))
> +		skl_ddi_set_iboost(encoder, crtc_state, level);
> +
>  	/* Display WA #1143: skl,kbl,cfl */
>  	if (IS_GEN9_BC(dev_priv)) {
>  		/*
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
