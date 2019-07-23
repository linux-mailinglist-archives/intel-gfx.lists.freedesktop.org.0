Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4317225F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 00:28:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20A7C6E37F;
	Tue, 23 Jul 2019 22:28:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 552 seconds by postgrey-1.36 at gabe;
 Tue, 23 Jul 2019 22:28:23 UTC
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3667C6E37F
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 22:28:23 +0000 (UTC)
Received: from bell.riseup.net (bell-pn.riseup.net [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (verified OK))
 by mx1.riseup.net (Postfix) with ESMTPS id 889041A052E;
 Tue, 23 Jul 2019 15:19:11 -0700 (PDT)
X-Riseup-User-ID: 4B50138C9438CEC0218C9D64761A63AA996846B9C5D7F45BA9D447FEA939FFD0
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id 110822229DD;
 Tue, 23 Jul 2019 15:19:11 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <156388293186.31349.1576327527372090940@skylake-alporthouse-com>
References: <20190720143132.17522-1-chris@chris-wilson.co.uk>
 <65da19be-2696-8d60-e055-63a37101cf6b@linux.intel.com>
 <156388293186.31349.1576327527372090940@skylake-alporthouse-com>
Date: Tue, 23 Jul 2019 15:19:13 -0700
Message-ID: <87pnm0qtr2.fsf@riseup.net>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=riseup.net; s=squak; 
 t=1563920351; bh=c04w8AfxWx/WBRgVPpljuTBU/A+2zoX7vErvWjr4Ltk=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=pktNzikHp9pBhx+GXIugPQiFjozQ8aDlsWzlIHvIj+E4/DLmBZH34BNyRsYMZAISX
 YO8wce1gYO/rsvUfSdqHH/3xeScsTy7HQvoMJ2xnQcmDAVg6aVgPyvdbbb7pYjFB5F
 mx3sSNMvGd235v9qNGETjdoCSkXoRc0RxU02wiY4=
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable atomics in L3 for gen9
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
Content-Type: multipart/mixed; boundary="===============0710260241=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0710260241==
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Quoting Tvrtko Ursulin (2019-07-22 12:41:36)
>>=20
>> On 20/07/2019 15:31, Chris Wilson wrote:
>> > Enabling atomic operations in L3 leads to unrecoverable GPU hangs, as
>> > the machine stops responding milliseconds after receipt of the reset
>> > request [GDRT]. By disabling the cached atomics, the hang do not occur
>> > and we presume the GPU would reset normally for similar hangs.
>> >=20
>> > Reported-by: Jason Ekstrand <jason@jlekstrand.net>
>> > Bugzilla: https://bugs.freedesktop.org/show_bug.cgi?id=3D110998
>> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> > Cc: Jason Ekstrand <jason@jlekstrand.net>
>> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>> > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> > ---
>> > Jason reports that Windows is not clearing L3SQCREG4:22 and does not
>> > suffer the same GPU hang so it is likely some other w/a that interacts
>> > badly. Fwiw, these 3 are the only registers I could find that mention
>> > atomic ops (and appear to be part of the same chain for memory access).
>>=20
>> Bit-toggling itself looks fine to me and matches what I could find in=20
>> the docs. (All three bits across three registers should be equal.)
>>=20
>> What I am curious about is what are the other consequences of disabling=
=20
>> L3 atomics? Performance drop somewhere?
>
> The test I have where it goes from dead to passing, that's a considerable
> performance improvement ;)
>
> I imagine not being able to use L3 for atomics is pretty dire, whether th=
at
> has any impact, I have no clue.
>
> It is still very likely that we see this because we are doing something
> wrong elsewhere.

This reminds me of f3fc4884ebe6ae649d3723be14b219230d3b7fd2 followed by
d351f6d94893f3ba98b1b20c5ef44c35fc1da124 due to the massive impact (of
the order of 20x IIRC) using the L3 turned out to have on the
performance of HDC atomics, on at least that platform.  It seems
unfortunate that we're going to lose L3 atomics on Gen9 now, even though
it's only buffer atomics which are broken IIUC, and even though the
Windows driver is somehow getting away without disabling them.  Some of
our setup must be wrong either in the kernel or in userspace...  Are
these registers at least whitelisted so userspace can re-enable L3
atomics once the problem is addressed?  Wouldn't it be a more specific
workaround for userspace to simply use a non-L3-cacheable MOCS for
(rarely used) buffer surfaces, so it could benefit from L3 atomics
elsewhere?


> -Chris
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--=-=-=--

--==-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQST8OekYz69PM20/4aDmTidfVK/WwUCXTeH4QAKCRCDmTidfVK/
WwbHAP9c4hzIqz9H4W8ip44Redvx9uRQxd8HEJm82AxoyGiZEgEAiLlxJ+jzkL3P
xXuKcRSMTx4sWNhe9RxgOYFRwMJhczY=
=tMMc
-----END PGP SIGNATURE-----
--==-=-=--

--===============0710260241==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0710260241==--
