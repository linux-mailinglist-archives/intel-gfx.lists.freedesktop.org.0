Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F18F6D0CAA
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 19:23:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65F3010EF42;
	Thu, 30 Mar 2023 17:22:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDD8810EF3A
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 17:22:52 +0000 (UTC)
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211]
 helo=diego.localnet) by gloria.sntech.de with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <heiko@sntech.de>)
 id 1phvIa-0005Oh-Ar; Thu, 30 Mar 2023 18:38:52 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>
Date: Thu, 30 Mar 2023 18:38:51 +0200
Message-ID: <4495300.cEBGB3zze1@diego>
In-Reply-To: <e7c6d561ab086e2348611c374cb590eaa7b27dce.1680190534.git.jani.nikula@intel.com>
References: <cover.1680190534.git.jani.nikula@intel.com>
 <e7c6d561ab086e2348611c374cb590eaa7b27dce.1680190534.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Subject: Re: [Intel-gfx] [PATCH 10/12] drm/rockchip: cdn-dp: call
 drm_connector_update_edid_property() unconditionally
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 Sandy Huang <hjc@rock-chips.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Am Donnerstag, 30. M=E4rz 2023, 17:39:47 CEST schrieb Jani Nikula:
> Calling drm_connector_update_edid_property() should be done
> unconditionally instead of depending on the number of modes added. Also
> match the call order in inno_hdmi and rk3066_hdmi.
>=20
> Cc: Sandy Huang <hjc@rock-chips.com>
> Cc: Heiko St=FCbner <heiko@sntech.de>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Acked-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/gpu/drm/rockchip/cdn-dp-core.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/roc=
kchip/cdn-dp-core.c
> index 8526dda91931..b6afe3786b74 100644
> --- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
> +++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> @@ -273,10 +273,9 @@ static int cdn_dp_connector_get_modes(struct drm_con=
nector *connector)
>  				  edid->width_cm, edid->height_cm);
> =20
>  		dp->sink_has_audio =3D drm_detect_monitor_audio(edid);
> +
> +		drm_connector_update_edid_property(connector, edid);
>  		ret =3D drm_add_edid_modes(connector, edid);
> -		if (ret)
> -			drm_connector_update_edid_property(connector,
> -								edid);
>  	}
>  	mutex_unlock(&dp->lock);
> =20
>=20




