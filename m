Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 488992034B1
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 12:21:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE63F6E250;
	Mon, 22 Jun 2020 10:21:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E10E6E250
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 10:21:07 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 6FBE81C0C0C; Mon, 22 Jun 2020 12:21:05 +0200 (CEST)
Date: Mon, 22 Jun 2020 12:21:05 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200622102105.GA6353@duo.ucw.cz>
References: <20200622085258.GA22686@duo.ucw.cz>
 <159281719363.11575.10607533427539631904@build.alporthouse.com>
MIME-Version: 1.0
In-Reply-To: <159281719363.11575.10607533427539631904@build.alporthouse.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] v5.8-rc1 on thinkpad x220,
 intel graphics: interface frozen, can still switch to text console
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
Cc: intel-gfx@lists.freedesktop.org, kernel list <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============2068378076=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============2068378076==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="2oS5YaxWCcQjTEyO"
Content-Disposition: inline


--2oS5YaxWCcQjTEyO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon 2020-06-22 10:13:13, Chris Wilson wrote:
> Quoting Pavel Machek (2020-06-22 09:52:59)
> > Hi!
> >=20
> > Linux duo 5.8.0-rc1+ #117 SMP PREEMPT Mon Jun 15 16:13:54 CEST 2020 x86=
_64 GNU/Linux
> >=20
> > [133747.719711] [  17456]     0 17456     4166      271    65536       =
 0             0 sshd
> > [133747.719718] [  17466]  1000 17466     4166      289    65536       =
 0             0 sshd
> > [133747.719724] [  17468]  1000 17468   433587   303033  2588672       =
 0             0 unison
> > [133747.719730] [  18023]  1000 18023     1316       16    40960       =
 0             0 sleep
> > [133747.719737] oom-kill:constraint=3DCONSTRAINT_NONE,nodemask=3D(null)=
,task=3Dchromium,pid=3D27368,uid=3D1000
> > [133747.719795] Out of memory: Killed process 27368 (chromium) total-vm=
:6686908kB, anon-rss:647056kB, file-rss:0kB, shmem-rss:7452kB, UID:1000 pgt=
ables:5304kB oom_score_adj:300
> > [133747.799893] oom_reaper: reaped process 27368 (chromium), now anon-r=
ss:0kB, file-rss:0kB, shmem-rss:6836kB
> > [136841.820558] i915 0000:00:02.0: [drm] Resetting chip for stopped hea=
rtbeat on rcs0
> > [136841.924333] i915 0000:00:02.0: [drm] Xorg[3016] context reset due
> > to GPU hang
>=20
> If that was the first occurrence it would have pointed to the error
> state containing more information on the cause of the hang.
> Attach /sys/class/drm/card0/error

I rebooted in the meantime (I need this machine). I updated to
5.8-rc2, let me see if it appears again.

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--2oS5YaxWCcQjTEyO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXvCGEQAKCRAw5/Bqldv6
8ra8AJ9a5MeyxXQMGOQpt14HyRy7iDoIyQCfdW8mVBpcIGK647Sn7FRe/TFKx+Y=
=6Vyy
-----END PGP SIGNATURE-----

--2oS5YaxWCcQjTEyO--

--===============2068378076==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2068378076==--
