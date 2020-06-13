Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D64A1F9723
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 14:54:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BC1189D73;
	Mon, 15 Jun 2020 12:54:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D47F6E448
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jun 2020 20:50:20 +0000 (UTC)
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jkD6S-0007ba-LW; Sat, 13 Jun 2020 22:50:12 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jkD6R-0001u5-Ib; Sat, 13 Jun 2020 22:50:11 +0200
Date: Sat, 13 Jun 2020 22:50:08 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <20200613205008.l2gxw6pm2ywmj3gz@taurus.defre.kleine-koenig.org>
References: <20200607181840.13536-1-hdegoede@redhat.com>
 <20200607181840.13536-4-hdegoede@redhat.com>
 <20200608035023.GZ2428291@smile.fi.intel.com>
 <90769dc0-3174-195b-34e0-ef4bb9d9b982@redhat.com>
 <20200611221242.3bjqvnhcwwxaocxy@taurus.defre.kleine-koenig.org>
 <20200612115732.GC2428291@smile.fi.intel.com>
MIME-Version: 1.0
In-Reply-To: <20200612115732.GC2428291@smile.fi.intel.com>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: intel-gfx@lists.freedesktop.org
X-Mailman-Approved-At: Mon, 15 Jun 2020 12:54:07 +0000
Subject: Re: [Intel-gfx] [PATCH v2 03/15] pwm: lpss: Add range limit check
 for the base_unit register value
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
Cc: linux-pwm@vger.kernel.org, linux-acpi@vger.kernel.org,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, dri-devel@lists.freedesktop.org,
 Mika Westerberg <mika.westerberg@linux.intel.com>, Len Brown <lenb@kernel.org>
Content-Type: multipart/mixed; boundary="===============0978255290=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0978255290==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d3zhknjlycgiygbu"
Content-Disposition: inline


--d3zhknjlycgiygbu
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Andy,

On Fri, Jun 12, 2020 at 02:57:32PM +0300, Andy Shevchenko wrote:
> On Fri, Jun 12, 2020 at 12:12:42AM +0200, Uwe Kleine-K=F6nig wrote:
> > I didn't follow the complete discussion but note that the general rule
> > is:
> >=20
> > 	round period down to the next possible implementable period
> > 	round duty_cycle down to the next possible implementable duty_cycle
> >=20
> > so if a small enough period (and so a small duty_cycle) is requested it
> > is expected that duty_cycle will be zero.
>=20
> ...which brings me an idea that PWM framework should expose API to get a
> capabilities, like DMA Engine has.
>=20
> In such capabilities, in particular, caller can get ranges of the correct
> frequencies of the underneath hardware.

my idea is to introduce a function pwm_round_state() that has a similar
semantic to clk_round_rate(). But this is only one of several thoughts I
have for the pwm framework. And as there is (AFAIK) no user who would
benefit from pwm_round_state() this is further down on my todo list.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--d3zhknjlycgiygbu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl7lO/0ACgkQwfwUeK3K
7AmcWAf+NJKiXM9OZNgwpiVJ90hrVSpaBnIzIyOD9JrkPpA//Wpzt6+DP3jIW4gh
awT8Pn1q+S/BywtKGkspRruxRPMB+/xhcbFixZkhwnVHtDrTsNBmWa6tmNgJn5ay
2kksDM69380g/qndu8N1BIkziJ0M04IThxt4Rem7qETymFUIttJP/urLfPEbCNz5
agQVK0L/G6AktL5F/I68w6dwUkfOnt7bN+sQ3B6H6F38YY3boQJICjKLcHnN7nq8
mgmaF/jnGuuv3uPrPhm9K9zGy8W+XBmGZjdHQH1aU94+TMhK8AFQOR7N42Aj2VwA
/pNKs5SAoPGvfcEAUPd6w4sE4pKgTA==
=dz1/
-----END PGP SIGNATURE-----

--d3zhknjlycgiygbu--

--===============0978255290==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0978255290==--
