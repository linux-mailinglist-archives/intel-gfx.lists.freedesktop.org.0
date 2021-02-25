Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E285324D30
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Feb 2021 10:53:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C2006EC76;
	Thu, 25 Feb 2021 09:53:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 784FB6EC74;
 Thu, 25 Feb 2021 09:53:24 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 2708A1C0B8B; Thu, 25 Feb 2021 10:53:23 +0100 (CET)
Date: Thu, 25 Feb 2021 10:53:22 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20210225095322.GA5089@amd>
References: <20210224200912.GA27905@duo.ucw.cz>
 <452585d5-9d18-f5a8-9d6b-6d39aa037480@suse.de>
MIME-Version: 1.0
In-Reply-To: <452585d5-9d18-f5a8-9d6b-6d39aa037480@suse.de>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [Intel-gfx] udldrm does not recover from powersave? Re: udldrmfb:
 causes WARN in i915 on X60 (x86-32)
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
Cc: intel-gfx@lists.freedesktop.org, kernel list <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, airlied@redhat.com
Content-Type: multipart/mixed; boundary="===============1799370747=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1799370747==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="tKW2IUtsqtDRztdT"
Content-Disposition: inline


--tKW2IUtsqtDRztdT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> >This is in -next, but I get same behaviour on 5.11; and no, udl does
>=20
> Thanks for reporting. We are in the process of fixing the issue. The late=
st
> patch is at [1].
>

Thank you, that fixes the DMA issue, and I can use the udl.

=2E..for a while. Then screensaver blanks laptop screen, udl screen
blanks too. Upon hitting a key, internal screen shows up, udl does
not.

I try rerunning xrandr ... --auto, but could not recover it.

Any ideas?

Best regards,
								Pavel
--=20
http://www.livejournal.com/~pavelmachek

--tKW2IUtsqtDRztdT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAmA3c5IACgkQMOfwapXb+vIK+wCfcBgCyVwqlwT9BhlQBINozkZu
6EMAn2cKNi7+6HsERfcaiq/3RwULgi5f
=/Y0f
-----END PGP SIGNATURE-----

--tKW2IUtsqtDRztdT--

--===============1799370747==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1799370747==--
