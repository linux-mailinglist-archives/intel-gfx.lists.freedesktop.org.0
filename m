Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A37D7334A7F
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 23:04:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 399056EA76;
	Wed, 10 Mar 2021 22:04:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from elaine.keithp.com (home.keithp.com [63.227.221.253])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2484D6E3B2;
 Wed, 10 Mar 2021 22:04:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by elaine.keithp.com (Postfix) with ESMTP id 7931E3F2EE8D;
 Wed, 10 Mar 2021 14:04:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=keithp.com; s=mail;
 t=1615413861; bh=JuUok/+EMWRf44ITmMrAqkocuVKX7wC2w85qHIzHazs=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=OxptyeJ2MwGU1fgxs7oD7Bpg9RX5t8Cn3gj8sxXZGLW0BQM+GqplW7s48bIrsWYVQ
 jU8OHxHfCyvrLhopt0xpwhopvTlzMSd1pnBNaQysgpLCd9R1YFGAHlcbmVrJesfrks
 SexZtqsSB1dAGvKzOajR16Mn+BC1SNQvk+C89phS5OU60xV9ahX8eP6ynggG6MyHl5
 Vv7DjnLtBJ6IJcabRT2F6BoVT0kK6wOiX+9ljVRQlhPsHAwmth2N44VNv+mm91qEAX
 556sHhLvtNJJhtKabJfpE7Nl/AvqOEEwTqj3A6anwuFkg9br+rRhsUUDtK9+agiAV6
 ptnE0PeUGnfPA==
X-Virus-Scanned: Debian amavisd-new at keithp.com
Received: from elaine.keithp.com ([127.0.0.1])
 by localhost (elaine.keithp.com [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id vNtvN1Nmf66R; Wed, 10 Mar 2021 14:04:21 -0800 (PST)
Received: from keithp.com (koto.keithp.com [10.0.0.2])
 by elaine.keithp.com (Postfix) with ESMTPSA id 2137F3F2D948;
 Wed, 10 Mar 2021 14:04:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=keithp.com; s=mail;
 t=1615413861; bh=JuUok/+EMWRf44ITmMrAqkocuVKX7wC2w85qHIzHazs=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=OxptyeJ2MwGU1fgxs7oD7Bpg9RX5t8Cn3gj8sxXZGLW0BQM+GqplW7s48bIrsWYVQ
 jU8OHxHfCyvrLhopt0xpwhopvTlzMSd1pnBNaQysgpLCd9R1YFGAHlcbmVrJesfrks
 SexZtqsSB1dAGvKzOajR16Mn+BC1SNQvk+C89phS5OU60xV9ahX8eP6ynggG6MyHl5
 Vv7DjnLtBJ6IJcabRT2F6BoVT0kK6wOiX+9ljVRQlhPsHAwmth2N44VNv+mm91qEAX
 556sHhLvtNJJhtKabJfpE7Nl/AvqOEEwTqj3A6anwuFkg9br+rRhsUUDtK9+agiAV6
 ptnE0PeUGnfPA==
Received: by keithp.com (Postfix, from userid 1000)
 id 0786315821A3; Wed, 10 Mar 2021 14:04:21 -0800 (PST)
From: Keith Packard <keithp@keithp.com>
To: Jason Ekstrand <jason@jlekstrand.net>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, airlied@redhat.com
In-Reply-To: <20210310210049.723206-1-jason@jlekstrand.net>
References: <20210310210049.723206-1-jason@jlekstrand.net>
Date: Wed, 10 Mar 2021 14:04:20 -0800
Message-ID: <87a6raekd7.fsf@keithp.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] i915: Drop legacy execbuffer support
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
Content-Type: multipart/mixed; boundary="===============1317629869=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1317629869==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Jason Ekstrand <jason@jlekstrand.net> writes:

> libdrm has supported the newer execbuffer2 ioctl and using it by default
> when it exists since libdrm commit b50964027bef249a0cc3d511de05c2464e0a1e=
22
> which landed Mar 2, 2010.  The i915 and i965 drivers in Mesa at the time
> both used libdrm and so did the Intel X11 back-end.  The SNA back-end
> for X11 has always used execbuffer2.

All execbuffer users in the past that I'm aware of used libdrm, which
now uses the execbuffer2 ioctl for this API. That means these
applications will remain ABI compatible through this change.

Acked-by: Keith Packard <keithp@keithp.com>

=2D-=20
=2Dkeith

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEw4O3eCVWE9/bQJ2R2yIaaQAAABEFAmBJQmQACgkQ2yIaaQAA
ABE7mQ/8DwZBfjWTpTHhXNH8rjk826CJWMLIM4cT6zJOAB1xdR0T49mtQKdAY3mO
ioIOg8fmxsSHeqto5rSe6MEm7YggRb6RPNVqkvnptRmGAyDc7ptsDFMiiljsc0xH
KSX+y0K/15qwT7jtV1rzeWWjFGdvweu6kA90gIyDkSw+MQrn6K3xIRDfGxKR4IKm
OehfJSTfeOQkFMO8CB1hwTOebzKmppo3ntm5514ZztSTS15atiE7JrNYEUThMIdl
dusuGbn/ysso6+cPhGpqL5zvDlPiGsU67kORkxFXO58J8+C3z1GwApkqrr/BgCPl
8p126PMtMbeEXj+uNY11EeEwOG5gaIC/bouJGtFKlYQF4daGgrWenFolBF25wtpd
wCQZBJB28u/OCN6YcFAl7K1rOHzhX0GTQl/XLS0f+0qyDAo7dT/KHsLDosHNNAZK
lSkeQjcqhpTCfiNBilPQ20/uyTemEfLSG72kFXH4i3yfvTCvKBeL7eruXpSMxxgE
M1vy8ABBzw82UI+QJI7iSfHOCaLA7xnAi4SstUg82350mIVSlJwQREyzzwbRW21W
Evr1wOWN/9ATF4GeRhTdt/zMf8qfUZywoIjKMC76Mu18usrc7P4UP2CfXSUjJU9f
jWsIa6POXecx77P7ApiYJgU5DkohaozH/RNfJDObl95fKOfLRTs=
=dQj7
-----END PGP SIGNATURE-----
--=-=-=--

--===============1317629869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1317629869==--
