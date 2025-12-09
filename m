Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4F2CAFF9E
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 13:53:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0371E10E53E;
	Tue,  9 Dec 2025 12:52:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF04910E53E;
 Tue,  9 Dec 2025 12:52:55 +0000 (UTC)
Received: from mobile-access-5d6aa7-235.dhcp.inet.fi ([93.106.167.235]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vSxD2-00000000grJ-2iv7; Tue, 09 Dec 2025 14:52:54 +0200
Message-ID: <1762f08b448d9af3ed40a9d2698457ac70efe794.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Tue, 09 Dec 2025 14:52:51 +0200
In-Reply-To: <20251127175023.1522538-7-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-7-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-7 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH 06/50] drm/i915/dp: Factor out intel_dp_link_bw_overhead()
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

On Thu, 2025-11-27 at 19:49 +0200, Imre Deak wrote:
> Factor out intel_dp_link_bw_overhead(), used later for BW calculation
> during DP SST mode validation and state computation.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 26 +++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 22 +++++------------
>  3 files changed, 34 insertions(+), 16 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index d70cb35cf68bc..4722ee26b1181 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -424,6 +424,32 @@ static int intel_dp_min_lane_count(struct intel_dp *=
intel_dp)
>  	return 1;
>  }
> =20
> +int intel_dp_link_bw_overhead(int link_clock, int lane_count, int hdispl=
ay,
> +			      int dsc_slice_count, int bpp_x16, unsigned long flags)
> +{
> +	int overhead;
> +
> +	WARN_ON(flags & ~(DRM_DP_BW_OVERHEAD_MST | DRM_DP_BW_OVERHEAD_SSC_REF_C=
LK |
> +			  DRM_DP_BW_OVERHEAD_FEC));
> +
> +	if (drm_dp_is_uhbr_rate(link_clock))
> +		flags |=3D DRM_DP_BW_OVERHEAD_UHBR;
> +
> +	if (dsc_slice_count)
> +		flags |=3D DRM_DP_BW_OVERHEAD_DSC;
> +
> +	overhead =3D drm_dp_bw_overhead(lane_count, hdisplay,
> +				      dsc_slice_count,
> +				      bpp_x16,
> +				      flags);
> +
> +	/*
> +	 * TODO: clarify whether a minimum required by the fixed FEC overhead
> +	 * in the bspec audio programming sequence is required here.
> +	 */
> +	return max(overhead, intel_dp_bw_fec_overhead(flags & DRM_DP_BW_OVERHEA=
D_FEC));
> +}
> +
>  /*
>   * The required data bandwidth for a mode with given pixel clock and bpp=
. This
>   * is the required net bandwidth independent of the data bandwidth effic=
iency.
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index 97e361458f760..d7f9410129f49 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -117,6 +117,8 @@ void intel_dp_compute_rate(struct intel_dp *intel_dp,=
 int port_clock,
>  bool intel_dp_source_supports_tps3(struct intel_display *display);
>  bool intel_dp_source_supports_tps4(struct intel_display *display);
> =20
> +int intel_dp_link_bw_overhead(int link_clock, int lane_count, int hdispl=
ay,
> +			      int dsc_slice_count, int bpp_x16, unsigned long flags);
>  int intel_dp_link_required(int pixel_clock, int bpp);
>  int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
>  				 int bw_overhead);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 1a4784f0cd6bd..c1058b4a85d02 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -180,26 +180,16 @@ static int intel_dp_mst_bw_overhead(const struct in=
tel_crtc_state *crtc_state,
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
>  	unsigned long flags =3D DRM_DP_BW_OVERHEAD_MST;
> -	int overhead;
> =20
> -	flags |=3D intel_dp_is_uhbr(crtc_state) ? DRM_DP_BW_OVERHEAD_UHBR : 0;
>  	flags |=3D ssc ? DRM_DP_BW_OVERHEAD_SSC_REF_CLK : 0;
>  	flags |=3D crtc_state->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
> =20
> -	if (dsc_slice_count)
> -		flags |=3D DRM_DP_BW_OVERHEAD_DSC;
> -
> -	overhead =3D drm_dp_bw_overhead(crtc_state->lane_count,
> -				      adjusted_mode->hdisplay,
> -				      dsc_slice_count,
> -				      bpp_x16,
> -				      flags);
> -
> -	/*
> -	 * TODO: clarify whether a minimum required by the fixed FEC overhead
> -	 * in the bspec audio programming sequence is required here.
> -	 */
> -	return max(overhead, intel_dp_bw_fec_overhead(crtc_state->fec_enable));
> +	return intel_dp_link_bw_overhead(crtc_state->port_clock,
> +					 crtc_state->lane_count,
> +					 adjusted_mode->hdisplay,
> +					 dsc_slice_count,
> +					 bpp_x16,
> +					 flags);
>  }
> =20
>  static void intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc=
_state,

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
