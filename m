Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD042433E47
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 20:16:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD54D6E7D3;
	Tue, 19 Oct 2021 18:16:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A66EA6E7D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 18:16:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="226054534"
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="226054534"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 11:16:39 -0700
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="494226717"
Received: from jsanz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.211.239])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 11:16:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211015133921.4609-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
 <20211015133921.4609-4-ville.syrjala@linux.intel.com>
Date: Tue, 19 Oct 2021 21:16:33 +0300
Message-ID: <87lf2oq3r2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 03/20] drm/i915/hdmi: Introduce
 intel_hdmi_tmds_clock()
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

On Fri, 15 Oct 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Rename intel_hdmi_port_clock() into intel_hdmi_tmds_clock(), and
> move the 4:2:0 TMDS clock halving into intel_hdmi_tmds_clock() so
> the callers don't have to worry about such details.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 25 +++++++++++------------
>  1 file changed, 12 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 37ce8a621973..e97c83535965 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1868,8 +1868,12 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
>  	return MODE_OK;
>  }
>=20=20
> -static int intel_hdmi_port_clock(int clock, int bpc)
> +static int intel_hdmi_tmds_clock(int clock, int bpc, bool ycbcr420_outpu=
t)
>  {
> +	/* YCBCR420 TMDS rate requirement is half the pixel clock */
> +	if (ycbcr420_output)
> +		clock /=3D 2;
> +
>  	/*
>  	 * Need to adjust the port link by:
>  	 *  1.5x for 12bpc
> @@ -1932,25 +1936,22 @@ intel_hdmi_mode_clock_valid(struct drm_connector =
*connector, int clock,
>  	struct intel_hdmi *hdmi =3D intel_attached_hdmi(to_intel_connector(conn=
ector));
>  	enum drm_mode_status status;
>=20=20
> -	if (ycbcr420_output)
> -		clock /=3D 2;
> -
>  	/* check if we can do 8bpc */
> -	status =3D hdmi_port_clock_valid(hdmi, intel_hdmi_port_clock(clock, 8),
> +	status =3D hdmi_port_clock_valid(hdmi, intel_hdmi_tmds_clock(clock, 8, =
ycbcr420_output),
>  				       true, has_hdmi_sink);
>=20=20
>  	/* if we can't do 8bpc we may still be able to do 12bpc */
>  	if (status !=3D MODE_OK &&
>  	    intel_hdmi_source_bpc_possible(i915, 12) &&
>  	    intel_hdmi_sink_bpc_possible(connector, 12, has_hdmi_sink, ycbcr420=
_output))
> -		status =3D hdmi_port_clock_valid(hdmi, intel_hdmi_port_clock(clock, 12=
),
> +		status =3D hdmi_port_clock_valid(hdmi, intel_hdmi_tmds_clock(clock, 12=
, ycbcr420_output),
>  					       true, has_hdmi_sink);
>=20=20
>  	/* if we can't do 8,12bpc we may still be able to do 10bpc */
>  	if (status !=3D MODE_OK &&
>  	    intel_hdmi_source_bpc_possible(i915, 10) &&
>  	    intel_hdmi_sink_bpc_possible(connector, 10, has_hdmi_sink, ycbcr420=
_output))
> -		status =3D hdmi_port_clock_valid(hdmi, intel_hdmi_port_clock(clock, 10=
),
> +		status =3D hdmi_port_clock_valid(hdmi, intel_hdmi_tmds_clock(clock, 10=
, ycbcr420_output),
>  					       true, has_hdmi_sink);
>=20=20
>  	return status;
> @@ -2057,12 +2058,13 @@ static int intel_hdmi_compute_bpc(struct intel_en=
coder *encoder,
>  				  int clock)
>  {
>  	struct intel_hdmi *intel_hdmi =3D enc_to_intel_hdmi(encoder);
> +	bool ycbcr420_output =3D intel_hdmi_is_ycbcr420(crtc_state);
>  	int bpc;
>=20=20
>  	for (bpc =3D 12; bpc >=3D 10; bpc -=3D 2) {
>  		if (hdmi_deep_color_possible(crtc_state, bpc) &&
>  		    hdmi_port_clock_valid(intel_hdmi,
> -					  intel_hdmi_port_clock(clock, bpc),
> +					  intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output),

Does not having the clock /=3D 2 here mean the check was bogus before this
patch?

BR,
Jani.


>  					  true, crtc_state->has_hdmi_sink) =3D=3D MODE_OK)
>  			return bpc;
>  	}
> @@ -2082,13 +2084,10 @@ static int intel_hdmi_compute_clock(struct intel_=
encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
>  		clock *=3D 2;
>=20=20
> -	/* YCBCR420 TMDS rate requirement is half the pixel clock */
> -	if (intel_hdmi_is_ycbcr420(crtc_state))
> -		clock /=3D 2;
> -
>  	bpc =3D intel_hdmi_compute_bpc(encoder, crtc_state, clock);
>=20=20
> -	crtc_state->port_clock =3D intel_hdmi_port_clock(clock, bpc);
> +	crtc_state->port_clock =3D intel_hdmi_tmds_clock(clock, bpc,
> +						       intel_hdmi_is_ycbcr420(crtc_state));
>=20=20
>  	/*
>  	 * pipe_bpp could already be below 8bpc due to

--=20
Jani Nikula, Intel Open Source Graphics Center
