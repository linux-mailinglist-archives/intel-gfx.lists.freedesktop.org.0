Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CF3CEB4D
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 19:58:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5F4C89E41;
	Mon,  7 Oct 2019 17:58:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB3866E632
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 17:44:48 +0000 (UTC)
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([109.90.233.87]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M2wGs-1iGQb91nx6-003OMt; Mon, 07
 Oct 2019 19:44:43 +0200
Date: Mon, 7 Oct 2019 19:44:41 +0200
From: Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20191007174441.GF19803@latitude>
References: <20191003172823.8955-1-j.neuschaefer@gmx.net>
 <20191003184556.3225.20950@emeril.freedesktop.org>
 <20191004132620.GB19803@latitude> <87v9t0hjnl.fsf@intel.com>
MIME-Version: 1.0
In-Reply-To: <87v9t0hjnl.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:5ikx6qq+6G12VZ4xtwRLGmGNRCU4w6bGI70LCcXP7e25ome2IB/
 lt2BtKOnCZw1jGOA8LN83v6atxllUZOanGxs3CTDL1RPw9NT0g7rW7P7mdgmwLGIuzMSfPM
 Kmn8fTjJthBj1Z5vgjxYJF9hSd3TJPW76jBE3v5M4FVOLK9idQsPBdqkwSDMOzCOUIYV5CA
 fyfJaC9Mnolmr4nqML6iQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:55/c4z3iUko=:xGZOb5ljHBYHDq1hPxrKkg
 67oqoqZOn9m8iEKlUhfIlkjKp0AD/rgE1yW945PLXoigZK1CM/xjCzhYKmpDV6K1B+7ETetSo
 JraTsxOUEPv67V+JswqrjIEZ4m9FYUTV8ea0a6e0Z2jHRfZkYT3s7I/78Dvl9fFM+3qYJiebe
 ggSZeIwkiWG8pfoXnhMXwDP7bsgJXjaZbeU0D5aFiO//QAONBFN7WF38wySQAhEI5jbHx39N8
 haPVfKzpb1zGokn8RgWhFwiUK5fu4BAbLhZL5TFFD4f4lI14/fO/Qvjhy2o73TnLV5DlCM+Q9
 vDe/672g7WWyCNVZoHa4XdGOLMDgohFJMer0gIUjpnfn1wiqO+3LgY9d0YzXsdXdGt+B004tE
 EcZtQFFCtCyYXiOBPNYAPWCq7Ty64PUrXc7+diDu3RTkIDte/GC4iamsS2OyNKiJITiYzqKhU
 P6hbREjRQA/38k9V6Q1sgSeKvSIlf7paUA4pZQSAoIMiS0QBnp+VcRpJmNOEOnK6xKvB+Tx0+
 tBC6l2wmGSqAm3NSfnnI+Mi2STHvWmf79LBCLSOMMYsalNBhyPQXRGhXJ8Phr8oYHqKyTfsGQ
 m7Emtfk3bKii9TcpGsc+vZvh4IFqL15zuiO54RGKOXu+hqx4qXWCdU3NErbupEv2AWb8h0P8G
 bMsG6rO8OQFcE6wAL/jbCW7TZNa3nRnTM+UjmmLSg8C2z1UzKhkVffQ3IKxjqWkX0Nx7Xez9/
 n7EgTaf4NXsk4b8j8nQ/0arLkIuTMSXNFb4UE0817YioIIZ3PlPhxInWA63X+uLvTIS4IrvQj
 Bs7XybIeLvItT8AFnujyWyNYWGFZgrng17C9g1WF6ACAURLhPRccQjdK8z1ho3sqvuek0RofN
 7I2s37YeZjAneRj5mWvuOJG5ZIOmJhx29CbVTtF53/vdr3fGYLoT2Kmw3YREGo+RqEnG7I/Jb
 vfq6qqNcv6hQ3rbkGEHp6t+E4NlSVrGuO5pdO9CJSSAi2gw785sg7yfIrwsd/xQ+2MrH+bmCK
 b2MlCBQNR10zzWjWsFSgOsl8KD0f2ND2u4lidMeY30CDHYJVE8cfVNKopGuBUUubYx7mcocF5
 5CaeuHHbUGZzI0WknVVhPDgKUPDRIBbCEOgtBB0NeAUetZP0ZVN/q1Ox8h0vJBujjPi5BbWVH
 8TJDYdRquNoz2B/CCYbvBOD7cU+osqEss4Ac8xzNkmxsWzoCwQEleP4SWeuI1ZfHQc4bHZbPb
 shBwL7JhIOIGAKkeBX4Xx4OCQOKkPrw3i5rM+ouhEBmjbu3378yOHGZT2cLg=
X-Mailman-Approved-At: Mon, 07 Oct 2019 17:58:46 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=gmx.net; s=badeba3b8450; t=1570470283;
 bh=k/OMXC6hpbCr00yh0GJgA06LzrRzLyap6PCD+SuDwCQ=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=TLoiEJ5AszPIMJHtQ/GilYsymUTZYa31HX3kUsS0voZKdSNUMx6G2G2Sl3teDUHKt
 M7zASFg0APnS/DM70O8nUCx5kacdCOs4Tgh83Up84pFKSCEKmksc4EwvsD3hD3Ne0j
 MLF5pCtOE0YSM8D269c8DNE7dW0UnRfn/ElkPxus=
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Add_Sphinx-compatible_references_to_struct_fields?=
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
Cc: intel-gfx@lists.freedesktop.org,
 Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
Content-Type: multipart/mixed; boundary="===============1363559515=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1363559515==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ExXT7PjY8AI4Hyfa"
Content-Disposition: inline


--ExXT7PjY8AI4Hyfa
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 07, 2019 at 02:36:30PM +0300, Jani Nikula wrote:
> On Fri, 04 Oct 2019, Jonathan Neusch=C3=A4fer <j.neuschaefer@gmx.net> wro=
te:
[...]
> > I'm not sure what's wrong here. The patch applies cleanly to v5.4-rc1
> > and linux-next. Maybe patchwork is applying it to an older base?
>=20
> On the contrary, to a much newer base. Try drm-tip branch of [1].
>=20
> BR,
> Jani.
>=20
> [1] https://cgit.freedesktop.org/drm/drm-tip

Thanks for the hint!

Turns out someone already sent a similar fix, commit 56316cbc9c98
("drm/i915/perf: Fix use of kernel-doc format in structure members").



Jonathan Neusch=C3=A4fer

--ExXT7PjY8AI4Hyfa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEvHAHGBBjQPVy+qvDCDBEmo7zX9sFAl2beXUACgkQCDBEmo7z
X9snURAA0npfT0gJRrdvK61bTS+fO/KcgKQrCqq9RE4tCsZtE4QUck+65KJ2VyYE
QKoGNkNl7qrFUF2wCnVRN0uN9rLMGc1X24fLcalFpiJcYoNY2jaZmjN0szQECrBz
oHQ5OCPVAMptQlpX7SquOAu4Cva5ijDgrfsskkKjJRzF+iF6PDIhzEzrzSTzx9u5
YfdvOgr9lBukyq6N9CrM8FOQPc+lrut9hhhJXzLnVnW/AJTKcZYCw+J6JKrmESAm
y+mQO3+b1C5A+3fO54F8oDT2CgMdazoMrFNyq1PkqYxiioZH3NDrdP7EvmiUuoDK
wq2h5PJTIS9uSw8ijbKTfBeCwslzIpwKjN5yOBXtqC7WEveUx0sGvbHrZInsuwiw
vp4rdyScOSDJmyX9LbGrbPoKdTUxHiqGNIX0XKeIdafdJmVQREBmxLF2Go/pdU4n
rHUuD14WHf0LjXurXWxjRLrvtp8+Y6eL6+X5FH8Rqv8wrE1qsqt1faICO3SESNMM
StodvjDUdcY+Cy6Lpio1qHXE/SVO+/kYyczFCsWDm4FRxJ5y618WY8FXiD4lBfut
WWVXvpKlr2WdvOgDEO0bBWpFZF0WnvA/Eviajji9a/FWrYPYBQxKLgR9abGqn/YV
2LjsiKMcELHOwm7ks0Ww/+eBW19XN9a5jQs3L0H1qEY7M2JLczI=
=VW3o
-----END PGP SIGNATURE-----

--ExXT7PjY8AI4Hyfa--

--===============1363559515==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1363559515==--
