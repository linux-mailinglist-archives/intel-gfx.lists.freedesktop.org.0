Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 797E8AAC086
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 11:56:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 112C710E339;
	Tue,  6 May 2025 09:56:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BB2210E339;
 Tue,  6 May 2025 09:56:48 +0000 (UTC)
Received: from 91-155-254-19.elisa-laajakaista.fi ([91.155.254.19]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uCEm4-000000076Ty-0ejH; Tue, 06 May 2025 12:39:40 +0300
Message-ID: <1400a72ab87251cd5ffd081d92a895eb38a1b47d.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Date: Tue, 06 May 2025 12:39:38 +0300
In-Reply-To: <20250428133135.3396080-2-imre.deak@intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-2-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH v2 01/12] drm/i915/dp_mst: Use the correct connector
 while computing the link BPP limit on MST
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

On Mon, 2025-04-28 at 16:31 +0300, Imre Deak wrote:
> Atm, on an MST link in DSC mode
> intel_dp_compute_config_link_bpp_limits() calculates the maximum link
> bpp limit using the MST root connector's DSC capabilities. That's not
> correct in general: the decompression could be performed by a branch
> device downstream of the root branch device or the sink itself.
>=20
> Fix the above by passing to intel_dp_compute_config_link_bpp_limits()
> the actual connector being modeset, containing the correct DSC
> capabilities.
>=20
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Fixes: 1c5b72daff46 ("drm/i915/dp: Set the DSC link limits in intel_dp_co=
mpute_config_link_bpp_limits")
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 7 ++++---
>  drivers/gpu/drm/i915/display/intel_dp.h     | 1 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 +++--
>  3 files changed, 8 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 607aea1bf6fa2..d63aea7ee9c80 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2523,6 +2523,7 @@ intel_dp_dsc_compute_pipe_bpp_limits(struct intel_d=
p *intel_dp,
> =20
>  bool
>  intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> +			       struct intel_connector *connector,
>  			       struct intel_crtc_state *crtc_state,
>  			       bool respect_downstream_limits,
>  			       bool dsc,
> @@ -2576,7 +2577,7 @@ intel_dp_compute_config_limits(struct intel_dp *int=
el_dp,
>  	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
> =20
>  	return intel_dp_compute_config_link_bpp_limits(intel_dp,
> -						       intel_dp->attached_connector,
> +						       connector,
>  						       crtc_state,
>  						       dsc,
>  						       limits);
> @@ -2637,7 +2638,7 @@ intel_dp_compute_link_config(struct intel_encoder *=
encoder,
>  	joiner_needs_dsc =3D intel_dp_joiner_needs_dsc(display, num_joined_pipe=
s);
> =20
>  	dsc_needed =3D joiner_needs_dsc || intel_dp->force_dsc_en ||
> -		     !intel_dp_compute_config_limits(intel_dp, pipe_config,
> +		     !intel_dp_compute_config_limits(intel_dp, connector, pipe_config,
>  						     respect_downstream_limits,
>  						     false,
>  						     &limits);
> @@ -2671,7 +2672,7 @@ intel_dp_compute_link_config(struct intel_encoder *=
encoder,
>  			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
>  			    str_yes_no(intel_dp->force_dsc_en));
> =20
> -		if (!intel_dp_compute_config_limits(intel_dp, pipe_config,
> +		if (!intel_dp_compute_config_limits(intel_dp, connector, pipe_config,
>  						    respect_downstream_limits,
>  						    true,
>  						    &limits))
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index 9189db4c25946..98f90955fdb1d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -194,6 +194,7 @@ void intel_dp_wait_source_oui(struct intel_dp *intel_=
dp);
>  int intel_dp_output_bpp(enum intel_output_format output_format, int bpp)=
;
> =20
>  bool intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> +				    struct intel_connector *connector,
>  				    struct intel_crtc_state *crtc_state,
>  				    bool respect_downstream_limits,
>  				    bool dsc,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index d19ef1fef452b..49b836cd8816c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -621,12 +621,13 @@ adjust_limits_for_dsc_hblank_expansion_quirk(struct=
 intel_dp *intel_dp,
> =20
>  static bool
>  mst_stream_compute_config_limits(struct intel_dp *intel_dp,
> -				 const struct intel_connector *connector,
> +				 struct intel_connector *connector,
>  				 struct intel_crtc_state *crtc_state,
>  				 bool dsc,
>  				 struct link_config_limits *limits)
>  {
> -	if (!intel_dp_compute_config_limits(intel_dp, crtc_state, false, dsc,
> +	if (!intel_dp_compute_config_limits(intel_dp, connector,
> +					    crtc_state, false, dsc,
>  					    limits))
>  		return false;
> =20

Makes sense.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
