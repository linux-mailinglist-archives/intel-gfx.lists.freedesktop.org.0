Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A951173B9E
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 22:02:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10B1F6E649;
	Wed, 24 Jul 2019 20:02:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EAD96E649
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 20:02:12 +0000 (UTC)
Received: from capuchin.riseup.net (capuchin-pn.riseup.net [10.0.1.176])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (verified OK))
 by mx1.riseup.net (Postfix) with ESMTPS id D0DEF1A3E72;
 Wed, 24 Jul 2019 13:02:11 -0700 (PDT)
X-Riseup-User-ID: BA6904DE8154E52BA0E96F6BD2EBF4809CFF8DB982ABC4A154E9342593BC3D3A
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by capuchin.riseup.net (Postfix) with ESMTPSA id 7C6FF120519;
 Wed, 24 Jul 2019 13:02:11 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <156397886241.31349.9195166642161638629@skylake-alporthouse-com>
References: <20190720143132.17522-1-chris@chris-wilson.co.uk>
 <65da19be-2696-8d60-e055-63a37101cf6b@linux.intel.com>
 <156388293186.31349.1576327527372090940@skylake-alporthouse-com>
 <87pnm0qtr2.fsf@riseup.net>
 <156397886241.31349.9195166642161638629@skylake-alporthouse-com>
Date: Wed, 24 Jul 2019 13:02:10 -0700
Message-ID: <87a7d3qjzx.fsf@riseup.net>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=riseup.net; s=squak; 
 t=1563998532; bh=dGCwMWM5PIhsRaGEK70qrrWCTxnsvouThFiAiadxg5s=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=XzPHJ136ZrtpfDGVr1pp8XLTM0NYdodS6rtWJ43PfbzP9HW9XSbpA6MAC5m6RCfIb
 KWwKqMC2WJmucVu2BuKTN54L+ajoVwht0C42wIN59ybGqWZc4gbbaovn+ih1SY4UkN
 PDbPa0IrSOlWLIRiIHfYnqpK1hFm4PzO/y6R1zlY=
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
Content-Type: multipart/mixed; boundary="===============1676402829=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1676402829==
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Quoting Francisco Jerez (2019-07-23 23:19:13)
>> Chris Wilson <chris@chris-wilson.co.uk> writes:
>>=20
>> > Quoting Tvrtko Ursulin (2019-07-22 12:41:36)
>> >>=20
>> >> On 20/07/2019 15:31, Chris Wilson wrote:
>> >> > Enabling atomic operations in L3 leads to unrecoverable GPU hangs, =
as
>> >> > the machine stops responding milliseconds after receipt of the reset
>> >> > request [GDRT]. By disabling the cached atomics, the hang do not oc=
cur
>> >> > and we presume the GPU would reset normally for similar hangs.
>> >> >=20
>> >> > Reported-by: Jason Ekstrand <jason@jlekstrand.net>
>> >> > Bugzilla: https://bugs.freedesktop.org/show_bug.cgi?id=3D110998
>> >> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> >> > Cc: Jason Ekstrand <jason@jlekstrand.net>
>> >> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>> >> > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> >> > ---
>> >> > Jason reports that Windows is not clearing L3SQCREG4:22 and does not
>> >> > suffer the same GPU hang so it is likely some other w/a that intera=
cts
>> >> > badly. Fwiw, these 3 are the only registers I could find that menti=
on
>> >> > atomic ops (and appear to be part of the same chain for memory acce=
ss).
>> >>=20
>> >> Bit-toggling itself looks fine to me and matches what I could find in=
=20
>> >> the docs. (All three bits across three registers should be equal.)
>> >>=20
>> >> What I am curious about is what are the other consequences of disabli=
ng=20
>> >> L3 atomics? Performance drop somewhere?
>> >
>> > The test I have where it goes from dead to passing, that's a considera=
ble
>> > performance improvement ;)
>> >
>> > I imagine not being able to use L3 for atomics is pretty dire, whether=
 that
>> > has any impact, I have no clue.
>> >
>> > It is still very likely that we see this because we are doing something
>> > wrong elsewhere.
>>=20
>> This reminds me of f3fc4884ebe6ae649d3723be14b219230d3b7fd2 followed by
>> d351f6d94893f3ba98b1b20c5ef44c35fc1da124 due to the massive impact (of
>> the order of 20x IIRC) using the L3 turned out to have on the
>> performance of HDC atomics, on at least that platform.  It seems
>> unfortunate that we're going to lose L3 atomics on Gen9 now, even though
>> it's only buffer atomics which are broken IIUC, and even though the
>> Windows driver is somehow getting away without disabling them.  Some of
>> our setup must be wrong either in the kernel or in userspace...  Are
>> these registers at least whitelisted so userspace can re-enable L3
>> atomics once the problem is addressed?  Wouldn't it be a more specific
>> workaround for userspace to simply use a non-L3-cacheable MOCS for
>> (rarely used) buffer surfaces, so it could benefit from L3 atomics
>> elsewhere?
>
> If it was the case that disabling L3 atomics was the only way to prevent
> the machine lockup under this scenario, then I think it is
> unquestionably the right thing to do, and we could not leave it to
> userspace to dtrt. We should never add non-context saved unsafe
> registers to the whitelist (if setting a register may cause data
> corruption or worse in another context/process, that is bad) despite our
> repeated transgressions. However, there's no evidence to say that it does
> prevent the machine lockup as it prevents the GPU hang that lead to the
> lockup on reset.
>
> Other than GPGPU requiring a flush around every sneeze, I did not see
> anything in the gen9 w/a list that seemed like a match. Nevertheless, I
> expect there is a more precise w/a than a blanket disable.
> -Chris

Supposedly there is a more precise one (setting the surface state MOCS
to UC for buffer images), but it relies on userspace doing the right
thing for the machine not to lock up.  There is a good chance that the
reason why L3 atomics hang on such buffers is ultimately under userspace
control, in which case we'll eventually have to undo the programming
done in this patch in order to re-enable L3 atomics once the problem is
addressed.  That means that userspace will have the freedom to hang the
machine hard once again, which sounds really bad, but it's no real news
for us (*cough* HSW *cough*), and it might be the only way to match the
performance of the Windows driver.

What can we do here?  Add an i915 option to enable performance features
that can lead to the system hanging hard under malicious (or
incompetent) userspace programming?  Probably only the user can tell
whether the trade-off between performance and security of the system is
acceptable...

--=-=-=--

--==-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQST8OekYz69PM20/4aDmTidfVK/WwUCXTi5QgAKCRCDmTidfVK/
W5xvAP91HLKrprBFegO6imcY8MwujwEJBB4w1O8h2f4boo5z2gD/duU8Fk4AcYzE
B6MXAGLkRwu57qzdFbuGbwW+04n9d5w=
=/dsr
-----END PGP SIGNATURE-----
--==-=-=--

--===============1676402829==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1676402829==--
