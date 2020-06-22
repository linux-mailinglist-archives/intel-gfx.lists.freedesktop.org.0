Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA131203291
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 10:53:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DACD89B68;
	Mon, 22 Jun 2020 08:53:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 756F489D30
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 08:53:03 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 74C061C0C0A; Mon, 22 Jun 2020 10:52:59 +0200 (CEST)
Date: Mon, 22 Jun 2020 10:52:59 +0200
From: Pavel Machek <pavel@ucw.cz>
To: kernel list <linux-kernel@vger.kernel.org>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 intel-gfx@lists.freedesktop.org
Message-ID: <20200622085258.GA22686@duo.ucw.cz>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-gfx] v5.8-rc1 on thinkpad x220,
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
Content-Type: multipart/mixed; boundary="===============1250072187=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1250072187==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="2oS5YaxWCcQjTEyO"
Content-Disposition: inline


--2oS5YaxWCcQjTEyO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

Linux duo 5.8.0-rc1+ #117 SMP PREEMPT Mon Jun 15 16:13:54 CEST 2020 x86_64 =
GNU/Linux

[133747.719711] [  17456]     0 17456     4166      271    65536        0  =
           0 sshd
[133747.719718] [  17466]  1000 17466     4166      289    65536        0  =
           0 sshd
[133747.719724] [  17468]  1000 17468   433587   303033  2588672        0  =
           0 unison
[133747.719730] [  18023]  1000 18023     1316       16    40960        0  =
           0 sleep
[133747.719737] oom-kill:constraint=3DCONSTRAINT_NONE,nodemask=3D(null),tas=
k=3Dchromium,pid=3D27368,uid=3D1000
[133747.719795] Out of memory: Killed process 27368 (chromium) total-vm:668=
6908kB, anon-rss:647056kB, file-rss:0kB, shmem-rss:7452kB, UID:1000 pgtable=
s:5304kB oom_score_adj:300
[133747.799893] oom_reaper: reaped process 27368 (chromium), now anon-rss:0=
kB, file-rss:0kB, shmem-rss:6836kB
[136841.820558] i915 0000:00:02.0: [drm] Resetting chip for stopped heartbe=
at on rcs0
[136841.924333] i915 0000:00:02.0: [drm] Xorg[3016] context reset due
to GPU hang

Kernel is v5.8-rc1.

Any ideas?

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--2oS5YaxWCcQjTEyO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXvBxagAKCRAw5/Bqldv6
8v2DAJ92b8dghQBXzFffjNNLy6CEyC262ACfYxgoVq6bAVMZNICYquHEtA+jVrM=
=0WGl
-----END PGP SIGNATURE-----

--2oS5YaxWCcQjTEyO--

--===============1250072187==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1250072187==--
