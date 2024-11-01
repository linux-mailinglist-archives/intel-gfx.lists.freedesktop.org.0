Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B90569B914F
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 13:51:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D31C810E9B5;
	Fri,  1 Nov 2024 12:51:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 692A210E2C0;
 Fri,  1 Nov 2024 12:51:52 +0000 (UTC)
Received: from 91-155-254-188.elisa-laajakaista.fi ([91.155.254.188]
 helo=[192.168.100.133])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1t6r82-00000001FTo-1Mbk; Fri, 01 Nov 2024 14:51:50 +0200
Message-ID: <4964e35546545e41f904be73d7990b6bd23b46d3.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, 	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Date: Fri, 01 Nov 2024 14:51:48 +0200
In-Reply-To: <20241021222744.294371-8-gustavo.sousa@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-8-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH 07/13] drm/i915/dmc_wl: Check ranges specific to DC states
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

On Mon, 2024-10-21 at 19:27 -0300, Gustavo Sousa wrote:
> There are extra registers that require the DMC wakelock when specific
> dynamic DC states are in place. Add the table ranges for them and use
> the correct table depending on the allowed DC states.
>=20
> Bspec: 71583
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 112 +++++++++++++++++++-
>  1 file changed, 108 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/dr=
m/i915/display/intel_dmc_wl.c
> index d597cc825f64..8bf2f32be859 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -5,6 +5,7 @@
> =20
>  #include <linux/kernel.h>
> =20
> +#include "i915_reg.h"
>  #include "intel_de.h"
>  #include "intel_dmc.h"
>  #include "intel_dmc_regs.h"
> @@ -52,6 +53,87 @@ static struct intel_dmc_wl_range lnl_wl_range[] =3D {
>  	{},
>  };

Do we still need the lnl_wl_range[]? This was sort of a place-holder
with a very large range just for testing.  I can see that there are at
least some ranges in common between lnl_wl_range[] and the new range
tables defined below.


> +static struct intel_dmc_wl_range xe3lpd_dc5_dc6_wl_ranges[] =3D {
> +	{ .start =3D 0x45500, .end =3D 0x45500 }, /* DC_STATE_SEL */
> +	{ .start =3D 0x457a0, .end =3D 0x457b0 }, /* DC*_RESIDENCY_COUNTER */
> +	{ .start =3D 0x45504, .end =3D 0x45504 }, /* DC_STATE_EN */
> +	{ .start =3D 0x45400, .end =3D 0x4540c }, /* PWR_WELL_CTL_* */
> +	{ .start =3D 0x454f0, .end =3D 0x454f0 }, /* RETENTION_CTRL */
> +
> +	/* DBUF_CTL_* */
> +	{ .start =3D 0x44300, .end =3D 0x44300 },
> +	{ .start =3D 0x44304, .end =3D 0x44304 },
> +	{ .start =3D 0x44f00, .end =3D 0x44f00 },
> +	{ .start =3D 0x44f04, .end =3D 0x44f04 },
> +	{ .start =3D 0x44fe8, .end =3D 0x44fe8 },
> +	{ .start =3D 0x45008, .end =3D 0x45008 },
> +
> +	{ .start =3D 0x46070, .end =3D 0x46070 }, /* CDCLK_PLL_ENABLE */
> +	{ .start =3D 0x46000, .end =3D 0x46000 }, /* CDCLK_CTL */
> +	{ .start =3D 0x46008, .end =3D 0x46008 }, /* CDCLK_SQUASH_CTL */
> +
> +	/* TRANS_CMTG_CTL_* */
> +	{ .start =3D 0x6fa88, .end =3D 0x6fa88 },
> +	{ .start =3D 0x6fb88, .end =3D 0x6fb88 },

These, for instance, are part of lnl_wl_range[].


> +
> +	{ .start =3D 0x46430, .end =3D 0x46430 }, /* CHICKEN_DCPR_1 */
> +	{ .start =3D 0x46434, .end =3D 0x46434 }, /* CHICKEN_DCPR_2 */
> +	{ .start =3D 0x454a0, .end =3D 0x454a0 }, /* CHICKEN_DCPR_4 */
> +	{ .start =3D 0x42084, .end =3D 0x42084 }, /* CHICKEN_MISC_2 */
> +	{ .start =3D 0x42088, .end =3D 0x42088 }, /* CHICKEN_MISC_3 */
> +	{ .start =3D 0x46160, .end =3D 0x46160 }, /* CMTG_CLK_SEL */
> +	{ .start =3D 0x8f000, .end =3D 0x8ffff }, /* Main DMC registers */
> +
> +	{},
> +};
> +
> +static struct intel_dmc_wl_range xe3lpd_dc3co_wl_ranges[] =3D {
> +	{ .start =3D 0x454a0, .end =3D 0x454a0 }, /* CHICKEN_DCPR_4 */
> +
> +	{ .start =3D 0x45504, .end =3D 0x45504 }, /* DC_STATE_EN */
> +
> +	/* DBUF_CTL_* */
> +	{ .start =3D 0x44300, .end =3D 0x44300 },
> +	{ .start =3D 0x44304, .end =3D 0x44304 },
> +	{ .start =3D 0x44f00, .end =3D 0x44f00 },
> +	{ .start =3D 0x44f04, .end =3D 0x44f04 },
> +	{ .start =3D 0x44fe8, .end =3D 0x44fe8 },
> +	{ .start =3D 0x45008, .end =3D 0x45008 },
> +
> +	{ .start =3D 0x46070, .end =3D 0x46070 }, /* CDCLK_PLL_ENABLE */
> +	{ .start =3D 0x46000, .end =3D 0x46000 }, /* CDCLK_CTL */
> +	{ .start =3D 0x46008, .end =3D 0x46008 }, /* CDCLK_SQUASH_CTL */
> +	{ .start =3D 0x8f000, .end =3D 0x8ffff }, /* Main DMC registers */
> +
> +	/* Scanline registers */
> +	{ .start =3D 0x70000, .end =3D 0x70000 },
> +	{ .start =3D 0x70004, .end =3D 0x70004 },
> +	{ .start =3D 0x70014, .end =3D 0x70014 },
> +	{ .start =3D 0x70018, .end =3D 0x70018 },
> +	{ .start =3D 0x71000, .end =3D 0x71000 },
> +	{ .start =3D 0x71004, .end =3D 0x71004 },
> +	{ .start =3D 0x71014, .end =3D 0x71014 },
> +	{ .start =3D 0x71018, .end =3D 0x71018 },
> +	{ .start =3D 0x72000, .end =3D 0x72000 },
> +	{ .start =3D 0x72004, .end =3D 0x72004 },
> +	{ .start =3D 0x72014, .end =3D 0x72014 },
> +	{ .start =3D 0x72018, .end =3D 0x72018 },
> +	{ .start =3D 0x73000, .end =3D 0x73000 },
> +	{ .start =3D 0x73004, .end =3D 0x73004 },
> +	{ .start =3D 0x73014, .end =3D 0x73014 },
> +	{ .start =3D 0x73018, .end =3D 0x73018 },
> +	{ .start =3D 0x7b000, .end =3D 0x7b000 },
> +	{ .start =3D 0x7b004, .end =3D 0x7b004 },
> +	{ .start =3D 0x7b014, .end =3D 0x7b014 },
> +	{ .start =3D 0x7b018, .end =3D 0x7b018 },
> +	{ .start =3D 0x7c000, .end =3D 0x7c000 },
> +	{ .start =3D 0x7c004, .end =3D 0x7c004 },
> +	{ .start =3D 0x7c014, .end =3D 0x7c014 },
> +	{ .start =3D 0x7c018, .end =3D 0x7c018 },

And so are all these.


--
Cheers,
Luca.
