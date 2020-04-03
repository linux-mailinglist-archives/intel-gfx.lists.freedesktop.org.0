Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C736B19D70D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:00:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF3636EAC5;
	Fri,  3 Apr 2020 13:00:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B0206EAC5
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:00:34 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 4F5681C34EE; Fri,  3 Apr 2020 15:00:32 +0200 (CEST)
Date: Fri, 3 Apr 2020 15:00:31 +0200
From: Pavel Machek <pavel@ucw.cz>
To: kernel list <linux-kernel@vger.kernel.org>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 intel-gfx@lists.freedesktop.org, airlied@redhat.com,
 chris@chris-wilson.co.uk, matthew.auld@intel.com,
 Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20200403130031.GA4107@duo.ucw.cz>
References: <20200402213253.GA2691@duo.ucw.cz>
 <20200402213506.GA2767@duo.ucw.cz>
 <20200403073720.GA23229@duo.ucw.cz>
 <20200403091430.GA3845@duo.ucw.cz>
 <20200403092634.GA3610@duo.ucw.cz>
 <20200403102928.GA3539@duo.ucw.cz>
 <20200403123019.GA3539@duo.ucw.cz>
MIME-Version: 1.0
In-Reply-To: <20200403123019.GA3539@duo.ucw.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [bisected] Re: 7dc8f11437: regression in 5.7-rc0,
 hangs while attempting to run X
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
Cc: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de, hpa@zytor.com
Content-Type: multipart/mixed; boundary="===============1270128000=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1270128000==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="EVF5PPMfhYS0aIcm"
Content-Disposition: inline


--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

7dc8f1143778a35b190f9413f228b3cf28f67f8d

    drm/i915/gem: Drop relocation slowpath
   =20
    Since the relocations are no longer performed under a global
    struct_mutex, or any other lock, that is also held by pagefault handler=
s,
    we can relax and allow our fast path to take a fault. As we no longer
    need to abort the fast path for lock avoidance, we no longer need the
    slow path handling at all.

causes regression on thinkpad x220: instead of starting X, I'm looking
at blinking cursor.

Reverting the patch on too of 919dce24701f7b3 fixes things for me.

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--EVF5PPMfhYS0aIcm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXoczbwAKCRAw5/Bqldv6
8voOAKC+nffCKsp3tuEJO6YBpCDUgEm5HgCfVKA9a4C3kgEKPmWSzcx3BX9q57Q=
=pty5
-----END PGP SIGNATURE-----

--EVF5PPMfhYS0aIcm--

--===============1270128000==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1270128000==--
