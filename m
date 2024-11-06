Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB30E9BE5E2
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 12:48:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E560010E6BA;
	Wed,  6 Nov 2024 11:48:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE17610E1E8;
 Wed,  6 Nov 2024 11:48:42 +0000 (UTC)
Received: from 37-33-128-53.bb.dnainternet.fi ([37.33.128.53]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1t8eWe-00000001ULA-0hGR; Wed, 06 Nov 2024 13:48:41 +0200
Message-ID: <94f01bd839525f91706c848b8043ff981ca1c861.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, 	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Date: Wed, 06 Nov 2024 13:47:07 +0200
In-Reply-To: <173081160057.2525.7640155471183036003@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-8-gustavo.sousa@intel.com>
 <4964e35546545e41f904be73d7990b6bd23b46d3.camel@coelho.fi>
 <173081160057.2525.7640155471183036003@intel.com>
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

On Tue, 2024-11-05 at 10:00 -0300, Gustavo Sousa wrote:
> Quoting Luca Coelho (2024-11-01 09:51:48-03:00)
> > On Mon, 2024-10-21 at 19:27 -0300, Gustavo Sousa wrote:
> > > There are extra registers that require the DMC wakelock when specific
> > > dynamic DC states are in place. Add the table ranges for them and use
> > > the correct table depending on the allowed DC states.
> > >=20
> > > Bspec: 71583
> > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 112 ++++++++++++++++++=
+-
> > >  1 file changed, 108 insertions(+), 4 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gp=
u/drm/i915/display/intel_dmc_wl.c
> > > index d597cc825f64..8bf2f32be859 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > > @@ -5,6 +5,7 @@
> > > =20
> > >  #include <linux/kernel.h>
> > > =20
> > > +#include "i915_reg.h"
> > >  #include "intel_de.h"
> > >  #include "intel_dmc.h"
> > >  #include "intel_dmc_regs.h"
> > > @@ -52,6 +53,87 @@ static struct intel_dmc_wl_range lnl_wl_range[] =
=3D {
> > >          {},
> > >  };
> >=20
> > Do we still need the lnl_wl_range[]? This was sort of a place-holder
> > with a very large range just for testing.  I can see that there are at
> > least some ranges in common between lnl_wl_range[] and the new range
> > tables defined below.
>=20
> Yes, although we could do some homework to get a more accurate set of
> ranges.
>=20
> Now, about the different tables:
>=20
>  - lnl_wl_range should be about ranges of registers that are powered
>    down during DC states and that the HW requires DC exit for proper
>    access.
>  - xe3lpd_{dc5_dc6,dc3co}_wl_ranges are registers that are touched by
>    the DMC and need the wakelock for properly restoring the correct
>    value before accessing them.
>=20
> Maybe a comment in the code explaining the above is warranted?

I think a better naming for the arrays is warranted. :) Wouldn't
changing lnl_wl_range to base_wl_range or so be better? My point is
that LNL is not related at all here (anymore).


> > > +static struct intel_dmc_wl_range xe3lpd_dc5_dc6_wl_ranges[] =3D {
> > > +        { .start =3D 0x45500, .end =3D 0x45500 }, /* DC_STATE_SEL */
> > > +        { .start =3D 0x457a0, .end =3D 0x457b0 }, /* DC*_RESIDENCY_C=
OUNTER */
> > > +        { .start =3D 0x45504, .end =3D 0x45504 }, /* DC_STATE_EN */
> > > +        { .start =3D 0x45400, .end =3D 0x4540c }, /* PWR_WELL_CTL_* =
*/
> > > +        { .start =3D 0x454f0, .end =3D 0x454f0 }, /* RETENTION_CTRL =
*/
> > > +
> > > +        /* DBUF_CTL_* */
> > > +        { .start =3D 0x44300, .end =3D 0x44300 },
> > > +        { .start =3D 0x44304, .end =3D 0x44304 },
> > > +        { .start =3D 0x44f00, .end =3D 0x44f00 },
> > > +        { .start =3D 0x44f04, .end =3D 0x44f04 },
> > > +        { .start =3D 0x44fe8, .end =3D 0x44fe8 },
> > > +        { .start =3D 0x45008, .end =3D 0x45008 },
> > > +
> > > +        { .start =3D 0x46070, .end =3D 0x46070 }, /* CDCLK_PLL_ENABL=
E */
> > > +        { .start =3D 0x46000, .end =3D 0x46000 }, /* CDCLK_CTL */
> > > +        { .start =3D 0x46008, .end =3D 0x46008 }, /* CDCLK_SQUASH_CT=
L */
> > > +
> > > +        /* TRANS_CMTG_CTL_* */
> > > +        { .start =3D 0x6fa88, .end =3D 0x6fa88 },
> > > +        { .start =3D 0x6fb88, .end =3D 0x6fb88 },
> >=20
> > These, for instance, are part of lnl_wl_range[].
>=20
> Given my clarification above about the different purposes of the ranges,
> I think we should stick to keeping the same values from the (soon to
> be?) documented tables, even if there is some small redundancy.
> Otherwise we would require the programmer to remember to check ranges in
> the "more general" table every time a DC state-specific one needs to be
> added or updated.

Makes sense, I guess it's okay that the base table and the specialized
tables are slightly redundant then.

--
Cheers,
Luca.
