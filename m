Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B16776500
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Aug 2023 18:27:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5269C10E0C9;
	Wed,  9 Aug 2023 16:27:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D32B10E0C9
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Aug 2023 16:27:28 +0000 (UTC)
Received: from 91-156-7-180.elisa-laajakaista.fi ([91.156.7.180]
 helo=[192.168.100.137])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.96)
 (envelope-from <luca@coelho.fi>) id 1qTm1t-000UZA-1S;
 Wed, 09 Aug 2023 19:27:26 +0300
Message-ID: <9310faed7ab8ebd21e663f95e23c3a3457da5eae.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 09 Aug 2023 19:27:24 +0300
In-Reply-To: <20230804084600.1005818-2-jani.nikula@intel.com>
References: <20230804084600.1005818-1-jani.nikula@intel.com>
 <20230804084600.1005818-2-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: debug log when GMD ID
 indicates there's no display
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

On Fri, 2023-08-04 at 11:46 +0300, Jani Nikula wrote:
> Debug log similar to the device id based identification of no display.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/driver=
s/gpu/drm/i915/display/intel_display_device.c
> index 3d6a262e037f..e4837f6fc01f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -822,9 +822,10 @@ probe_gmdid_display(struct drm_i915_private *i915, u=
16 *ver, u16 *rel, u16 *step
>  	val =3D ioread32(addr);
>  	pci_iounmap(pdev, addr);
> =20
> -	if (val =3D=3D 0)
> -		/* Platform doesn't have display */
> +	if (val =3D=3D 0) {
> +		drm_dbg_kms(&i915->drm, "Device doesn't have display\n");
>  		return &no_display;
> +	}
> =20
>  	*ver =3D REG_FIELD_GET(GMD_ID_ARCH_MASK, val);
>  	*rel =3D REG_FIELD_GET(GMD_ID_RELEASE_MASK, val);

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
