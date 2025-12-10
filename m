Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E197DCB2F2A
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 13:50:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6947F10E25F;
	Wed, 10 Dec 2025 12:50:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9785410E25F;
 Wed, 10 Dec 2025 12:50:06 +0000 (UTC)
Received: from mobile-access-5d6aa7-235.dhcp.inet.fi ([93.106.167.235]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vTJdr-00000000iU9-1Rdi; Wed, 10 Dec 2025 14:50:04 +0200
Message-ID: <4251640b7111c05535a03f15ccf21094f6b5abd8.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Wed, 10 Dec 2025 14:50:02 +0200
In-Reply-To: <20251127175023.1522538-10-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-10-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-7 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH 09/50] drm/i915/dp: Use the effective data rate for DP
 compressed BW calculation
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
> Use intel_dp_effective_data_rate() to calculate the required link BW for
> compressed streams on non-UHBR DP-SST links. This ensures that the BW is
> calculated the same way for all DP output types and DSC/non-DSC modes,
> during mode validation as well as during state computation.
>=20
> This approach also allows for accounting with BW overhead due to DSC,
> FEC being enabled on a link. Acounting for these will be added by
> follow-up changes.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 27 +++++++++++++++----------
>  1 file changed, 16 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index aa55a81a9a9bf..4044bdbceaef5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2025,15 +2025,19 @@ static bool intel_dp_dsc_supports_format(const st=
ruct intel_connector *connector
>  	return drm_dp_dsc_sink_supports_format(connector->dp.dsc_dpcd, sink_dsc=
_format);
>  }
> =20
> -static bool is_bw_sufficient_for_dsc_config(int dsc_bpp_x16, u32 link_cl=
ock,
> -					    u32 lane_count, u32 mode_clock,
> -					    enum intel_output_format output_format,
> -					    int timeslots)
> +static bool is_bw_sufficient_for_dsc_config(struct intel_dp *intel_dp,
> +					    int link_clock, int lane_count,
> +					    int mode_clock, int mode_hdisplay,
> +					    int dsc_slice_count, int link_bpp_x16,
> +					    unsigned long bw_overhead_flags)
>  {
> -	u32 available_bw, required_bw;
> +	int available_bw;
> +	int required_bw;
> =20
> -	available_bw =3D (link_clock * lane_count * timeslots * 16)  / 8;
> -	required_bw =3D dsc_bpp_x16 * (intel_dp_mode_to_fec_clock(mode_clock));
> +	available_bw =3D intel_dp_max_link_data_rate(intel_dp, link_clock, lane=
_count);
> +	required_bw =3D intel_dp_link_required(link_clock, lane_count,
> +					     mode_clock, mode_hdisplay,
> +					     link_bpp_x16, bw_overhead_flags);
> =20
>  	return available_bw >=3D required_bw;
>  }
> @@ -2081,11 +2085,12 @@ static int dsc_compute_link_config(struct intel_d=
p *intel_dp,
>  				if (ret)
>  					continue;
>  			} else {
> -				if (!is_bw_sufficient_for_dsc_config(dsc_bpp_x16, link_rate,
> -								     lane_count,
> +				if (!is_bw_sufficient_for_dsc_config(intel_dp,
> +								     link_rate, lane_count,
>  								     adjusted_mode->crtc_clock,
> -								     pipe_config->output_format,
> -								     timeslots))
> +								     adjusted_mode->hdisplay,
> +								     pipe_config->dsc.slice_count,
> +								     dsc_bpp_x16, 0))
>  					continue;
>  			}
> =20

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
