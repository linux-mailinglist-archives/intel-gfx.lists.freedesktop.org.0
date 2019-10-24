Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C21E3623
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 17:05:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E801D6E438;
	Thu, 24 Oct 2019 15:05:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
 [195.113.26.193])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CFC289F5F;
 Thu, 24 Oct 2019 11:06:50 +0000 (UTC)
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id A11C58022A; Thu, 24 Oct 2019 13:06:30 +0200 (CEST)
Date: Thu, 24 Oct 2019 13:06:46 +0200
From: Pavel Machek <pavel@denx.de>
To: Rajat Jain <rajatja@google.com>
Message-ID: <20191024110646.GA3419@amd>
References: <20191023001206.15741-1-rajatja@google.com>
MIME-Version: 1.0
In-Reply-To: <20191023001206.15741-1-rajatja@google.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Mailman-Approved-At: Thu, 24 Oct 2019 15:05:24 +0000
Subject: Re: [Intel-gfx] [PATCH] drm: Add support for integrated privacy
 screens
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
Cc: seanpaul@google.com, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Daniel Thompson <daniel.thompson@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>, jsbarnes@google.com, rajatxjain@gmail.com,
 intel-gfx@lists.freedesktop.org, mathewk@google.com,
 Maxime Ripard <mripard@kernel.org>, Duncan Laurie <dlaurie@google.com>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 Pavel Machek <pavel@denx.de>
Content-Type: multipart/mixed; boundary="===============1203381404=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1203381404==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cNdxnHkX5QqsyA0e"
Content-Disposition: inline


--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue 2019-10-22 17:12:06, Rajat Jain wrote:
> Certain laptops now come with panels that have integrated privacy
> screens on them. This patch adds support for such panels by adding
> a privacy-screen property to the drm_connector for the panel, that
> the userspace can then use to control and check the status. The idea
> was discussed here:

Much better than separate /sys interface, thanks!
								Pavel
							=09
--=20
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany

--cNdxnHkX5QqsyA0e
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl2xhcYACgkQMOfwapXb+vIjEwCfZNt9uNWn1cpGqm52zi2jnmLS
FSgAn2E8jnEY2ASQyMChHIEUwyWX5mIJ
=yjtg
-----END PGP SIGNATURE-----

--cNdxnHkX5QqsyA0e--

--===============1203381404==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1203381404==--
