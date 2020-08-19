Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E4E24A7A3
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 22:19:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E869F6E81A;
	Wed, 19 Aug 2020 20:19:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 397016E81A
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 20:19:27 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id C89E11C0BD2; Wed, 19 Aug 2020 22:19:22 +0200 (CEST)
Date: Wed, 19 Aug 2020 22:19:22 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20200819201922.GA4223@amd>
References: <20200817161132.GA4711@amd>
 <CAHk-=wh6_eWwvpL=AhOeY0btf_dkpu+0joNzPZWfbBWgAeAhMA@mail.gmail.com>
 <CAPM=9tw8LVWsuA6m_nkUDgm00iz2txYRNZY0b0WWZbyiUVzLEw@mail.gmail.com>
 <CAHk-=wg34bw1ude07nC_XCPOJHZ21-v6117p4574d5S7iP4gxw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHk-=wg34bw1ude07nC_XCPOJHZ21-v6117p4574d5S7iP4gxw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [Intel-gfx] 5.9-rc1: graphics regression moved from -next to
 mainline
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 kernel list <linux-kernel@vger.kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>
Content-Type: multipart/mixed; boundary="===============0018368802=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0018368802==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="fUYQa+Pmc3FrFX/N"
Content-Disposition: inline


--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue 2020-08-18 18:59:27, Linus Torvalds wrote:
> On Tue, Aug 18, 2020 at 6:13 PM Dave Airlie <airlied@gmail.com> wrote:
> >
> > I think there's been some discussion about reverting that change for
> > other reasons, but it's quite likely the culprit.
>=20
> Hmm. It reverts cleanly, but the end result doesn't work, because of
> other changes.
>=20
> Reverting all of
>=20
>    763fedd6a216 ("drm/i915: Remove i915_gem_object_get_dirty_page()")
>    7ac2d2536dfa ("drm/i915/gem: Delete unused code")
>    9e0f9464e2ab ("drm/i915/gem: Async GPU relocations only")
>=20
> seems to at least build.
>=20
> Pavel, does doing those three reverts make things work for you?

Ok, so Chris' patches resulted in (less severe?) crash, let me try this.

pavel@amd:/data/l/linux-next-32$ git reset --hard 8eb858df0a5f6bcd371b5d563=
7255c987278b8c9
HEAD is now at 8eb858df0a5f Add linux-next specific files for 20200819
pavel@amd:/data/l/linux-next-32$ git revert 763fedd6a216
Performing inexact rename detection: 100% (1212316/1212316), done.
hint: Waiting for your editor to close the file... Editing file: /data/fast=
/l/linux-next-32/.git/COMMIT_EDITMSG
/home/pavel/bin/emacsf: line 3: ed: command not found
[detached HEAD 261cbba627b7] Revert "drm/i915: Remove i915_gem_object_get_d=
irty_page()"
 2 files changed, 18 insertions(+)
pavel@amd:/data/l/linux-next-32$ git revert 7ac2d2536dfa
warning: inexact rename detection was skipped due to too many files.
warning: you may want to set your merge.renamelimit variable to at least 38=
77 and retry the command.
hint: Waiting for your editor to close the file... Editing file: /data/fast=
/l/linux-next-32/.git/COMMIT_EDITMSG
/home/pavel/bin/emacsf: line 3: ed: command not found
[detached HEAD 526af90ea811] Revert "drm/i915/gem: Delete unused code"
 1 file changed, 19 insertions(+)
pavel@amd:/data/l/linux-next-32$ git revert 9e0f9464e2ab
warning: inexact rename detection was skipped due to too many files.
warning: you may want to set your merge.renamelimit variable to at least 38=
77 and retry the command.
hint: Waiting for your editor to close the file... Editing file: /data/fast=
/l/linux-next-32/.git/COMMIT_EDITMSG
/home/pavel/bin/emacsf: line 3: ed: command not found
[detached HEAD 173e46213949] Revert "drm/i915/gem: Async GPU relocations on=
ly"
 2 files changed, 289 insertions(+), 27 deletions(-)
pavel@amd:/data/l/linux-next-32$=20

It is now running, it seems unison is the thing that usually triggers
this (due to memory pressure?). This time it survived unison (but
without chromium). I'll really know if it works in day or two.

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--fUYQa+Pmc3FrFX/N
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl89iUoACgkQMOfwapXb+vInZgCeJwrfwen+1LNTnJws2E90XF7F
m+cAn1LRDlcRif/9uXoDiuT51fOb++gA
=fqMj
-----END PGP SIGNATURE-----

--fUYQa+Pmc3FrFX/N--

--===============0018368802==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0018368802==--
