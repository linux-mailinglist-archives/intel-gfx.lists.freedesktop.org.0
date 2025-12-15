Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0256CBCD9A
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 08:52:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7657510E171;
	Mon, 15 Dec 2025 07:52:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDFC410E171;
 Mon, 15 Dec 2025 07:52:20 +0000 (UTC)
Received: from mobile-access-5d6aa7-235.dhcp.inet.fi ([93.106.167.235]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vV3NR-00000000on4-2Zge; Mon, 15 Dec 2025 09:52:18 +0200
Message-ID: <835f476cbd3a3803864271d462ba916e0c197839.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Mon, 15 Dec 2025 09:52:16 +0200
In-Reply-To: <20251127175023.1522538-19-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-19-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-7 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH 18/50] drm/i915/dp: Fail state computation for invalid
 max sink compressed BPP value
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
> There is no reason to accept an invalid maximum sink compressed BPP
> value (i.e. 0), fail the state computation in this case.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index f97ee8265836a..db7e49c17ca8d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2631,8 +2631,7 @@ intel_dp_compute_config_link_bpp_limits(struct inte=
l_dp *intel_dp,
>  		dsc_sink_max_bpp =3D intel_dp_dsc_sink_max_compressed_bpp(connector,
>  									crtc_state,
>  									limits->pipe.max_bpp / 3);
> -		dsc_max_bpp =3D dsc_sink_max_bpp ?
> -			      min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
> +		dsc_max_bpp =3D min(dsc_sink_max_bpp, dsc_src_max_bpp);
>  		dsc_max_bpp =3D min(dsc_max_bpp, joiner_max_bpp);
> =20
>  		max_link_bpp_x16 =3D min(max_link_bpp_x16, fxp_q4_from_int(dsc_max_bpp=
));

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
