Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BFA46C8F
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Jun 2019 00:53:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2FFE89385;
	Fri, 14 Jun 2019 22:53:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from anholt.net (anholt.net [50.246.234.109])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0AC07892EA;
 Fri, 14 Jun 2019 22:53:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id 7FE0410A2E39;
 Fri, 14 Jun 2019 15:53:37 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at anholt.net
Received: from anholt.net ([127.0.0.1])
 by localhost (kingsolver.anholt.net [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id yWfoaDiy7qeq; Fri, 14 Jun 2019 15:53:36 -0700 (PDT)
Received: from eliezer.anholt.net (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id E7FD910A2D57;
 Fri, 14 Jun 2019 15:53:35 -0700 (PDT)
Received: by eliezer.anholt.net (Postfix, from userid 1000)
 id 5A5382FE21B9; Fri, 14 Jun 2019 15:53:33 -0700 (PDT)
From: Eric Anholt <eric@anholt.net>
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
In-Reply-To: <20190614203615.12639-2-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
 <20190614203615.12639-2-daniel.vetter@ffwll.ch>
User-Agent: Notmuch/0.22.2+1~gb0bcfaa (http://notmuchmail.org) Emacs/26.1
 (x86_64-pc-linux-gnu)
Date: Fri, 14 Jun 2019 15:53:31 -0700
Message-ID: <87lfy3hj84.fsf@anholt.net>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/59] drm/todo: Improve drm_gem_object
 funcs todo
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: multipart/mixed; boundary="===============1929920263=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1929920263==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Daniel Vetter <daniel.vetter@ffwll.ch> writes:

> We're kinda going in the wrong direction. Spotted while typing better
> gem/prime docs.
>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Noralf Tr=C3=B8nnes <noralf@tronnes.org>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>

That's a big series, but a great cleanup.  I took a look at a lot of it.
Patch 1-2, 4-10, 41-47, 49-50, and all the gem_prime_import/export drop
patches are:

Reviewed-by: Eric Anholt <eric@anholt.net>

I don't currently have a plan for reading the shuffle in patch 3.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/JuuFDWp9/ZkuCBXtdYpNtH8nugFAl0EJWsACgkQtdYpNtH8
nuipEhAAulcn2u2IETucvEH88bZYpczkNrOnWrUxNl/jhOOF7B0hpVVdux79Ej4z
+7UPo6AqMPhmmM2Y0mHRFmol4Oei9NwB6I9cG11ZHklyQ9Lp2YjQOu4Ke7x78Kwu
RCYu8WDkO6nE0NwOpgy7dyyXGhv24uyjOH44s6hM0FTCZYIRFd/r1KzU84s5Llu3
BM/hpUM4HbkmZdAoKIfXqKEdUflmARsie4yqH7x+SSbxOETt8wOmbiKQAi6FuCyD
GInWuJmR2ibYT9aRM8x2ryksWUy5vNyvxMO7SuxUAR3OOjut4X3lmisdW3ZvZ7lp
H7aB7gGUlwAkdBTKIn8xOkIcwV+KIiHGnQrODOhQ5jpQ8EH6+8HbseR0uf1IRE27
qFZtSwSCHik2wb7DWEjSNEbPWwHMVKmd6jsMtPG5FAtZlGEKAwOY6imgCST4Si21
E4oxx6hqZ4aFV3AHqJpKQVXto2B4lujCAv7St6PehDzstU3uYR+RHhJj8uf1aBP0
AQv+0ZL82+zSW2chYYyrMG4bSApfKmFVW6T7EGqlXzo3p4hvZU83YjC3jDFdLZg8
zx7Sy4pxxwOs/KaHmeQ0VPoH8ylMRzPBQVzAZi1HXn1XU2Jx8Yv18RIzkgtS9T8L
QJaBkUwBW78JUW/vsp/4ud+UaPAFB69m+TxbtxR0qjomozN5ZmQ=
=CspF
-----END PGP SIGNATURE-----
--=-=-=--

--===============1929920263==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1929920263==--
