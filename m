Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1ACEA22A5E
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 10:33:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC14C10E908;
	Thu, 30 Jan 2025 09:33:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E840F10E90D;
 Thu, 30 Jan 2025 09:33:43 +0000 (UTC)
Received: from 91-155-255-183.elisa-laajakaista.fi ([91.155.255.183]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1tdQvc-00000004F6I-32bq; Thu, 30 Jan 2025 11:33:42 +0200
Message-ID: <a771937e530fe5b5852a0eebf1adf5ad61df0106.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, 	intel-xe@lists.freedesktop.org
Date: Thu, 30 Jan 2025 11:33:39 +0200
In-Reply-To: <173764327664.34727.14226347289032890419@intel.com>
References: <20250117220747.87927-1-gustavo.sousa@intel.com>
 <20250117220747.87927-3-gustavo.sousa@intel.com>
 <56e59e5c283bf749c8c047efc5f36d91459fae17.camel@coelho.fi>
 <173764327664.34727.14226347289032890419@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.3-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH 2/4] drm/i915/dmc_wl: Add debugfs for untracked offsets
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

On Thu, 2025-01-23 at 11:41 -0300, Gustavo Sousa wrote:
> Quoting Luca Coelho (2025-01-22 06:06:00-03:00)
> > On Fri, 2025-01-17 at 19:06 -0300, Gustavo Sousa wrote:
> > > The DMC wakelock code needs to keep track of register offsets that ne=
ed
> > > the wakelock for proper access. If one of the necessary offsets are
> > > missed, then the failure in asserting the wakelock is very likely to
> > > cause problems down the road.
> > >=20
> > > A miss could happen for at least two different reasons:
> > >=20
> > > - We might have forgotten to add the offset (or range) to the relevan=
t
> > >   tables tracked by the driver in the first place.
> > >=20
> > > - Or updates to either the DMC firmware or the display IP that requir=
e
> > >   new offsets to be tracked and we fail to realize that.
> > >=20
> > > To help capture these cases, let's introduce a debugfs interface for =
the
> > > DMC wakelock.
> > >=20
> > > In this part, we export a buffer containing offsets of registers that
> > > were considered not needing the wakelock by our driver. In an upcomin=
g
> > > change we will also allow defining an extra set of offset ranges to b=
e
> > > tracked by our driver.
> > >=20
> > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > ---
> >=20
> > This looks great overall!
> >=20
> > A couple of comments below.
> >=20
> >=20
> > [...]
> > > +static bool untracked_has_recent_offset(struct intel_display *displa=
y, u32 offset)
> > > +{
> > > +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
> > > +        int look_back =3D 32;
> > > +        size_t i;
> > > +
> > > +        if (look_back > dbg->untracked.len)
> > > +                look_back =3D dbg->untracked.len;
> > > +
> > > +        i =3D dbg->untracked.head;
> > > +
> > > +        while (look_back--) {
> > > +                if (i =3D=3D 0)
> > > +                        i =3D dbg->untracked.size;
> >=20
> > If size < 32, you would check some values twice, right? Probably not a
> > real case scenario, and it wouldn't matter much, but it took me a bit
> > to wrap my head around this.
>=20
> Nope. If look_back is greater than the current number of offsets, it
> will be just reset to that count (see the "if (look_back >
> dbg->untracked.len)" above).
>=20
> Note that the number of valid elements in the circular buffer is tracked
> with untracked.len, while untracked.size is actually the capacity. Maybe
> I should have used that name for the member instead?

Yeah, maybe untracked.len and untracked.max_len? Dunno, it's also fine
as it is.  I was blind focusing on the loop itself and didn't see the
if above it.


> > [...]
> > > +void intel_dmc_wl_debugfs_log_untracked(struct intel_display *displa=
y, u32 offset)
> > > +{
> > > +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
> > > +        unsigned long flags;
> > > +
> > > +        spin_lock_irqsave(&dbg->lock, flags);
> > > +
> > > +        if (!dbg->untracked.size)
> > > +                goto out_unlock;
> > > +
> > > +        /* Save some space by not repeating recent offsets. */
> > > +        if (untracked_has_recent_offset(display, offset))
> > > +                goto out_unlock;
> > > +
> > > +        dbg->untracked.offsets[dbg->untracked.head] =3D offset;
> > > +        dbg->untracked.head =3D (dbg->untracked.head + 1) % dbg->unt=
racked.size;
> > > +        if (dbg->untracked.len < dbg->untracked.size)
> > > +                dbg->untracked.len++;
> > > +
> > > +        if (dbg->untracked.len =3D=3D dbg->untracked.size && !dbg->u=
ntracked.overflow) {
> > > +                dbg->untracked.overflow =3D true;
> > > +                drm_warn(display->drm, "Overflow detected in DMC wak=
elock debugfs untracked offsets\n");
> > > +        }
> >=20
> > Couldn't it be useful to print overflows every time they occur? Maybe
> > convert overflow to a uint to track how many times it happened? (though
> > maybe this is a bit overkill).
>=20
> The warning is just to let the user know that the buffer doesn't have
> every untracked offset that has been seen since enabling the logging.
> The best thing to do in this case is to try a bigger size or try to
> reduce the execution to be tracked (maybe a smaller test case).
>=20
> I'm not sure how providing a count would be useful here.

It would at least make it easier to know how to size the buffer for the
next run. ;) But that's moot.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
