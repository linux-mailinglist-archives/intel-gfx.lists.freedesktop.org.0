Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F0D73E13A
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 15:56:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0C7110E207;
	Mon, 26 Jun 2023 13:56:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C75DF10E207
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 13:56:45 +0000 (UTC)
Received: from 91-155-254-218.elisa-laajakaista.fi ([91.155.254.218]
 helo=[192.168.100.137])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1qDmhr-009GX4-O9;
 Mon, 26 Jun 2023 16:56:41 +0300
Message-ID: <85bc887748d4058e8f2d8924db8ea73cf8c8e3be.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 26 Jun 2023 16:56:39 +0300
In-Reply-To: <20230626130555.2391750-1-suraj.kandpal@intel.com>
References: <20230626130555.2391750-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vdsc: Remove FIXME in
 intel_dsc_compute_config
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

On Mon, 2023-06-26 at 18:35 +0530, Suraj Kandpal wrote:
> Remove the FIXME and the code related to it as after verification
> it does seem the previous values were typos and no hardware spec
> mentions using these particular rc_params.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/=
i915/display/intel_vdsc.c
> index bd9116d2cd76..d27e84696f31 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -237,18 +237,6 @@ int intel_dsc_compute_params(struct intel_crtc_state=
 *pipe_config)
> =20
>  		if (ret)
>  			return ret;
> -
> -		/*
> -		 * FIXME: verify that the hardware actually needs these
> -		 * modifications rather than them being simple typos.
> -		 */
> -		if (compressed_bpp =3D=3D 6 &&
> -		    vdsc_cfg->bits_per_component =3D=3D 8)
> -			vdsc_cfg->rc_quant_incr_limit1 =3D 23;
> -
> -		if (compressed_bpp =3D=3D 8 &&
> -		    vdsc_cfg->bits_per_component =3D=3D 14)
> -			vdsc_cfg->rc_range_params[0].range_bpg_offset =3D 0;
>  	}
> =20
>  	/*

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
