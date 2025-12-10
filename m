Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6770BCB2F95
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 14:08:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B099910E26A;
	Wed, 10 Dec 2025 13:08:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 386B810E26A;
 Wed, 10 Dec 2025 13:08:29 +0000 (UTC)
Received: from mobile-access-5d6aa7-235.dhcp.inet.fi ([93.106.167.235]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vTJvd-00000000iVB-3jCe; Wed, 10 Dec 2025 15:08:26 +0200
Message-ID: <797ce3364090f6b2f66a0db55c5fac5d99ef8d20.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Wed, 10 Dec 2025 15:08:24 +0200
In-Reply-To: <20251127175023.1522538-11-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-11-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-7 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH 10/50] drm/i915/dp: Account with MST, SSC BW overhead
 for uncompressed DP-MST stream BW
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
> On MST links the symbol alignment and SSC have a BW overhead, which
> should be accounted for when calculating the required stream BW, do so
> during mode validation for an uncompressed stream.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index e4dd6b4ca0512..0db6ed2d9664c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1458,6 +1458,8 @@ mst_connector_mode_valid_ctx(struct drm_connector *=
_connector,
>  	const int min_bpp =3D 18;
>  	int max_dotclk =3D display->cdclk.max_dotclk_freq;
>  	int max_rate, mode_rate, max_lanes, max_link_clock;
> +	unsigned long bw_overhead_flags =3D
> +		DRM_DP_BW_OVERHEAD_MST | DRM_DP_BW_OVERHEAD_SSC_REF_CLK;
>  	int ret;
>  	bool dsc =3D false;
>  	u16 dsc_max_compressed_bpp =3D 0;
> @@ -1491,7 +1493,8 @@ mst_connector_mode_valid_ctx(struct drm_connector *=
_connector,
>  					       max_link_clock, max_lanes);
>  	mode_rate =3D intel_dp_link_required(max_link_clock, max_lanes,
>  					   mode->clock, mode->hdisplay,
> -					   fxp_q4_from_int(min_bpp), 0);
> +					   fxp_q4_from_int(min_bpp),
> +					   bw_overhead_flags);
> =20
>  	/*
>  	 * TODO:

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
