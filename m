Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F4275EC9D
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jul 2023 09:36:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C36610E194;
	Mon, 24 Jul 2023 07:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C799110E194
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jul 2023 07:36:51 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>) id 1qNq7e-0008An-2V
 for intel-gfx@lists.freedesktop.org; Mon, 24 Jul 2023 09:36:50 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>) id 1qNq7d-001hiR-Dx
 for intel-gfx@lists.freedesktop.org; Mon, 24 Jul 2023 09:36:49 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>) id 1qNq7c-007Lkh-J4
 for intel-gfx@lists.freedesktop.org; Mon, 24 Jul 2023 09:36:48 +0200
Date: Mon, 24 Jul 2023 09:36:48 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20230724073648.hjmu2ztfuau7zvdp@pengutronix.de>
References: <20230721212133.271118-1-u.kleine-koenig@pengutronix.de>
 <168999615592.17723.14317445519700559147@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="z2m5phgqnybldes2"
Content-Disposition: inline
In-Reply-To: <168999615592.17723.14317445519700559147@emeril.freedesktop.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Simplify_expression_=26to=5Fi915=28dev=29-=3Edrm?=
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


--z2m5phgqnybldes2
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Sat, Jul 22, 2023 at 03:22:35AM -0000, Patchwork wrote:
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_121164v1_full, please notify your bug team to a=
llow them
>   to document this new failure mode, which will reduce false positives in=
 CI.

I don't think my patch results in regressions. But I fail to understand
the indications reported by patchwork, so I might miss something.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--z2m5phgqnybldes2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmS+Kg8ACgkQj4D7WH0S
/k6MTggAtoSWlMOkdZR6GHSyyv4OLuEUBGHwgSxfwhxASKcadLlq9Xmt/9Is5ZGA
ngnq5rvQb3ELCBw4A13feYAvmUYwwP6wFfpoPZe6pY8sNGqXGZtvoAxrHFzofIoX
W5VGblDG5J5Vq27wudKwM6j+0FWO8cvhFbxarX89zvwh+HUQxspBgculv5Wqe59d
PoquuBOXw/uQkMXshhaXU12Nai7Wl8PXo0icS7y+RZvVRQrLH5VzsFDt7wuZ9CCU
tDucnZE6PnXVlGnMspWXhpL1L5LMruQKCGq1EK16UK85gEcVxKhL7UDI6gTnm/XC
c8BagH/P17CzHQw7x6793p0hVvfX2g==
=AcXo
-----END PGP SIGNATURE-----

--z2m5phgqnybldes2--
