Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3009BE86B
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 13:25:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57B2B10E6C7;
	Wed,  6 Nov 2024 12:25:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2CCA10E6C7;
 Wed,  6 Nov 2024 12:25:06 +0000 (UTC)
Received: from 37-33-128-53.bb.dnainternet.fi ([37.33.128.53]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1t8f5s-00000001UOL-2xGb; Wed, 06 Nov 2024 14:25:05 +0200
Message-ID: <fcfcdefef53bc333a8b7015fc603da21fd11a406.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, 	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Date: Wed, 06 Nov 2024 14:23:32 +0200
In-Reply-To: <173081414310.2525.7600840303352098383@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-9-gustavo.sousa@intel.com>
 <39ca0bca034ed369700b2ecc1b1a411c824bd3b0.camel@coelho.fi>
 <173081414310.2525.7600840303352098383@intel.com>
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
Subject: Re: [PATCH 08/13] drm/i915/dmc_wl: Allow simpler syntax for single
 reg in range tables
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

On Tue, 2024-11-05 at 10:42 -0300, Gustavo Sousa wrote:
> Quoting Luca Coelho (2024-11-01 09:58:33-03:00)
> > On Mon, 2024-10-21 at 19:27 -0300, Gustavo Sousa wrote:
> > > Allow simpler syntax for defining entries for single registers in ran=
ge
> > > tables. That makes them easier to type as well as to read, allowing o=
ne
> > > to quickly tell whether a range actually refers to a single register =
or
> > > a "true range".
> > >=20
> > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 118 ++++++++++--------=
--
> > >  1 file changed, 60 insertions(+), 58 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gp=
u/drm/i915/display/intel_dmc_wl.c
> > > index 8bf2f32be859..6992ce654e75 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > > @@ -54,82 +54,82 @@ static struct intel_dmc_wl_range lnl_wl_range[] =
=3D {
> > >  };
> > > =20
> > >  static struct intel_dmc_wl_range xe3lpd_dc5_dc6_wl_ranges[] =3D {
> > > -        { .start =3D 0x45500, .end =3D 0x45500 }, /* DC_STATE_SEL */
> > > +        { .start =3D 0x45500 }, /* DC_STATE_SEL */
> > >          { .start =3D 0x457a0, .end =3D 0x457b0 }, /* DC*_RESIDENCY_C=
OUNTER */
> > > -        { .start =3D 0x45504, .end =3D 0x45504 }, /* DC_STATE_EN */
> > > +        { .start =3D 0x45504 }, /* DC_STATE_EN */
> > >          { .start =3D 0x45400, .end =3D 0x4540c }, /* PWR_WELL_CTL_* =
*/
> > > -        { .start =3D 0x454f0, .end =3D 0x454f0 }, /* RETENTION_CTRL =
*/
> > > +        { .start =3D 0x454f0 }, /* RETENTION_CTRL */
> > > =20
> > >          /* DBUF_CTL_* */
> > > -        { .start =3D 0x44300, .end =3D 0x44300 },
> > > -        { .start =3D 0x44304, .end =3D 0x44304 },
> > > -        { .start =3D 0x44f00, .end =3D 0x44f00 },
> > > -        { .start =3D 0x44f04, .end =3D 0x44f04 },
> > > -        { .start =3D 0x44fe8, .end =3D 0x44fe8 },
> > > -        { .start =3D 0x45008, .end =3D 0x45008 },
> > > +        { .start =3D 0x44300 },
> > > +        { .start =3D 0x44304 },
> > > +        { .start =3D 0x44f00 },
> > > +        { .start =3D 0x44f04 },
> > > +        { .start =3D 0x44fe8 },
> > > +        { .start =3D 0x45008 },
> > > =20
> > > -        { .start =3D 0x46070, .end =3D 0x46070 }, /* CDCLK_PLL_ENABL=
E */
> > > -        { .start =3D 0x46000, .end =3D 0x46000 }, /* CDCLK_CTL */
> > > -        { .start =3D 0x46008, .end =3D 0x46008 }, /* CDCLK_SQUASH_CT=
L */
> > > +        { .start =3D 0x46070 }, /* CDCLK_PLL_ENABLE */
> > > +        { .start =3D 0x46000 }, /* CDCLK_CTL */
> > > +        { .start =3D 0x46008 }, /* CDCLK_SQUASH_CTL */
> >=20
> > Many of these are probably actually ranges.  I'm not a HW guy, but
> > these are probably blocks that need the wakelock and it just happens
> > that many of those addresses are actually not used, but would need a
> > wakelock if they were used?
> >=20
> > IOW, e.g. all these DBUF_CTL registers are probably in the same range
> > that needs wakelocks (i.e. 0x44300-0x46fff)? Do we really need to
> > define many of these individually?
> >=20
> > This is related to the previous patch as well, but I decided to comment
> > it here because it becomes clearer.
>=20
> Maybe my reply on the previous patch clarifies this? I.e., these
> offset or offset ranges represent offsets that the DMC touches when on
> specific DC states.

Yeah, but I think this idea of blocks is still valid.  I think it's
very unlikely that only certain _addresses_ and not full blocks of
addresses are affected in the HW.

For instance:

         /* DBUF_CTL_* */
-        { .start =3D 0x44300, .end =3D 0x44300 },
-        { .start =3D 0x44304, .end =3D 0x44304 },
-        { .start =3D 0x44f00, .end =3D 0x44f00 },
-        { .start =3D 0x44f04, .end =3D 0x44f04 },
-        { .start =3D 0x44fe8, .end =3D 0x44fe8 },

This probably means that _all_ the block, from at least 0x44300 till
0x44fff, needs to be protected.  What I'm trying to say is that even
though we don't access e.g. 0x44400, if we did, it would most likely
also have to be protected, because it's in the same block of addresses.

I guess this doesn't matter _that_ much, but it would be just cleaner
to know the actual ranges where the wakelocks are _potentially_ needed.

--
Cheers,
Luca.
