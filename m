Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 976E619D34D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 11:14:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BE5C6EB39;
	Fri,  3 Apr 2020 09:14:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6A1F6EB39
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 09:14:33 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 4F9301C3297; Fri,  3 Apr 2020 11:14:31 +0200 (CEST)
Date: Fri, 3 Apr 2020 11:14:30 +0200
From: Pavel Machek <pavel@ucw.cz>
To: kernel list <linux-kernel@vger.kernel.org>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 intel-gfx@lists.freedesktop.org
Message-ID: <20200403091430.GA3845@duo.ucw.cz>
References: <20200402213253.GA2691@duo.ucw.cz>
 <20200402213506.GA2767@duo.ucw.cz>
 <20200403073720.GA23229@duo.ucw.cz>
MIME-Version: 1.0
In-Reply-To: <20200403073720.GA23229@duo.ucw.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] 5.7-rc0: hangs while attempting to run X
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
Content-Type: multipart/mixed; boundary="===============0882762954=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0882762954==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="5vNYLRcllDrimb99"
Content-Disposition: inline


--5vNYLRcllDrimb99
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > > Hardware is thinkpad x220. I had this crash few days ago. And today I
> > > have similar-looking one, with slightly newer kernel. (Will post
> > > as a follow-up).
>=20
> As part of quest for working system, I tried 5.7-rc0, based on
>=20
> Merge: 50a5de895dbe b4d8ddf8356d
> Author: Linus Torvalds <torvalds@linux-foundation.org>
> Date:   Wed Apr 1 18:18:18 2020 -0700
>=20
> It hangs in userspace, at a time when X should be starting, and I'm
> looking at blinking cursor.
>=20
> 5.6-rcs worked, I'll test 5.6-final.

5.6-final works.

Hmm...

commit f365ab31efacb70bed1e821f7435626e0b2528a6
Merge: 4646de87d325 59e7a8cc2dcf
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Wed Apr 1 15:24:20 2020 -0700

    Merge tag 'drm-next-2020-04-01' of git://anongit.freedesktop.org/drm/drm

Let me test 4646de87d32526ee87b46c2e0130413367fb5362...that one works.

Ok, so obviously... I should
test... f365ab31efacb70bed1e821f7435626e0b2528a6

Now, this is anti-social:

Busywait for request completion limit (ns)
(DRM_I915_MAX_REQUEST_BUSYWAIT) [8000] (NEW)

How should I know what to answer here (or the others)

Interval between heartbeat pulses (ms) (DRM_I915_HEARTBEAT_INTERVAL) [2500]=
 2500
Preempt timeout (ms, jiffy granularity) (DRM_I915_PREEMPT_TIMEOUT) [640] 640

I just took the defaults.. but...=20

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--5vNYLRcllDrimb99
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXob+dgAKCRAw5/Bqldv6
8oIcAJ9FR43pTa8IQWed9VsoTGof0bNbvgCfdDrEabp6lae0rSwI6E3Nc/CaGyQ=
=tPNa
-----END PGP SIGNATURE-----

--5vNYLRcllDrimb99--

--===============0882762954==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0882762954==--
