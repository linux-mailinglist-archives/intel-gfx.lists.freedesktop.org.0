Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7344A26D8C
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 09:46:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7678810E5BE;
	Tue,  4 Feb 2025 08:46:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D720110E5BF;
 Tue,  4 Feb 2025 08:46:43 +0000 (UTC)
Received: from 91-155-255-192.elisa-laajakaista.fi ([91.155.255.192]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1tfEZr-00000004V0L-3vs3; Tue, 04 Feb 2025 10:46:41 +0200
Message-ID: <1b46838458692079e07251286f0b6ff388e2070d.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>
Date: Tue, 04 Feb 2025 10:46:38 +0200
In-Reply-To: <20250203205941.251754-1-gustavo.sousa@intel.com>
References: <20250203205941.251754-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.3-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH] drm/i915/dmc_wl: Track INITIATE_PM_DMD_REQ for DC5
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

On Mon, 2025-02-03 at 17:58 -0300, Gustavo Sousa wrote:
> The Bspec has been updated to include INITIATE_PM_DMD_REQ in the set of
> register offsets that require the DMC wakelock for access during DC5.
> Update our table accordingly.
>=20
> Bspec: 71583
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/dr=
m/i915/display/intel_dmc_wl.c
> index 43884740f8ea..86ba159b683c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -102,6 +102,7 @@ static const struct intel_dmc_wl_range xe3lpd_dc5_dc6=
_dmc_ranges[] =3D {
>  	{ .start =3D 0x42088 }, /* CHICKEN_MISC_3 */
>  	{ .start =3D 0x46160 }, /* CMTG_CLK_SEL */
>  	{ .start =3D 0x8f000, .end =3D 0x8ffff }, /* Main DMC registers */
> +	{ .start =3D 0x45230 }, /* INITIATE_PM_DMD_REQ */
> =20
>  	{},
>  };

Matches the bspec.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
