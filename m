Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFD7431FD
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 02:22:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA9ED8928D;
	Thu, 13 Jun 2019 00:22:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com
 [IPv6:2607:f8b0:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBA0289204
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 21:28:03 +0000 (UTC)
Received: by mail-pg1-x544.google.com with SMTP id d30so7662940pgm.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 14:28:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=kHOmEXm44ofEStTL89clw86zKCfMK7pxZweKkVj60zc=;
 b=MVBjSqiAuORPh9u98fTlqVK7Q+GNfJClV1NJeuZIulGSqxKhJJZqf2Ir6PVKyPr0kt
 1tsKYC9rAGeEvXBl1dF+fMCJ7vhWlfErzmq4dc1fPpASUXSFf9MuEjKcqtVCBqe2kIQp
 E2XwAzNqS0kUFsOY9oDqq+0VtdETwhPvpSk+hw4+8A/Yk1hDgjYUt3WvhAlyifba3n/o
 kKE/jijMKmwY0empWhp3gxxWUDflMO8GXPVyBJFjKONuucUdpGREMrdJkzDyZJKUfkkK
 DM+de/rphtHkC/R/MUerc6IPQzcfAlJ0MboZzgiWIn6j5GdaThYImLM3w9n7RFizdNJF
 9pfg==
X-Gm-Message-State: APjAAAVn5UMyYW5nakXoZlGN/dKtUEq0Iikfis22Jzc/zS+jhC+Vvgdk
 b4cvqhVPaaKnSpdxbSW+yWS4cQ==
X-Google-Smtp-Source: APXvYqx8fSWzb0HB5KPULCR4fAdvphiu+yCLRaPJ3mwALDMWZWEo99vzBDgf+T6A9kZ8B2J2ELLLxQ==
X-Received: by 2002:a17:90a:a505:: with SMTP id
 a5mr29364827pjq.27.1560288483342; 
 Tue, 11 Jun 2019 14:28:03 -0700 (PDT)
Received: from cabot.adilger.ext (S0106a84e3fe4b223.cg.shawcable.net.
 [70.77.216.213])
 by smtp.gmail.com with ESMTPSA id a192sm6068716pfa.84.2019.06.11.14.28.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 14:28:02 -0700 (PDT)
From: Andreas Dilger <adilger@dilger.ca>
Message-Id: <315FEA4D-41B1-4C5B-89AA-7ABA93D66E0A@dilger.ca>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Tue, 11 Jun 2019 15:28:00 -0600
In-Reply-To: <20190611140907.899bebb12a3d731da24a9ad1@linux-foundation.org>
To: Andrew Morton <akpm@linux-foundation.org>
References: <20190611193836.2772-1-shyam.saini@amarulasolutions.com>
 <20190611134831.a60c11f4b691d14d04a87e29@linux-foundation.org>
 <6DCAE4F8-3BEC-45F2-A733-F4D15850B7F3@dilger.ca>
 <20190611140907.899bebb12a3d731da24a9ad1@linux-foundation.org>
X-Mailer: Apple Mail (2.3273)
X-Mailman-Approved-At: Thu, 13 Jun 2019 00:21:49 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dilger-ca.20150623.gappssmtp.com; s=20150623;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references;
 bh=kHOmEXm44ofEStTL89clw86zKCfMK7pxZweKkVj60zc=;
 b=BNyH/I0aTFapdWvAUe1tA6vh4V7SGGnKW9i2iryYsCgfyNFoPcnfrRh6ENitI8pQJy
 ceJmUE14+hVNBM9WC+xAjbbK0ncjBtDNhZsREXS8wFJSFtJTAC+2kp/Gx/2pDb6cUMf8
 JpUjBxKEfOQvrL9m9kMePR3M4fWdfHCrRVaSTbbHZtX1SELIRUg9HXb/1sKatJNSwuF+
 QO1DomLI907tfm1bq218gSHTCncrOyxsRkBkmStrHKSsQYkjWyIsW3ZSK9J+lpNXxDiR
 oojDQ9O14TWNGl2rGOpuLibgYG5bNECymjz1Ygn5Bb6fBc1ArnndD5ref2xpl4j3WuJU
 Jxfw==
Subject: Re: [Intel-gfx] [PATCH V2] include: linux: Regularise the use of
 FIELD_SIZEOF macro
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
Cc: keescook@chromium.org, kvm@vger.kernel.org,
 kernel-hardening@lists.openwall.com, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, devel@lists.orangefs.org,
 linux-mips@vger.kernel.org, Shyam Saini <shyam.saini@amarulasolutions.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, linux-sctp@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bpf@vger.kernel.org,
 linux-ext4 <linux-ext4@vger.kernel.org>, intel-gvt-dev@lists.freedesktop.org,
 Alexey Dobriyan <adobriyan@gmail.com>, linux-arm-kernel@lists.infradead.org,
 mayhs11saini@gmail.com
Content-Type: multipart/mixed; boundary="===============0554781961=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0554781961==
Content-Type: multipart/signed;
 boundary="Apple-Mail=_5B427BF6-3A60-46C7-A8F9-EE572E3F0487";
 protocol="application/pgp-signature"; micalg=pgp-sha256


--Apple-Mail=_5B427BF6-3A60-46C7-A8F9-EE572E3F0487
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

On Jun 11, 2019, at 3:09 PM, Andrew Morton <akpm@linux-foundation.org> =
wrote:
>=20
> On Tue, 11 Jun 2019 15:00:10 -0600 Andreas Dilger <adilger@dilger.ca> =
wrote:
>=20
>>>> to FIELD_SIZEOF
>>>=20
>>> As Alexey has pointed out, C structs and unions don't have fields -
>>> they have members.  So this is an opportunity to switch everything =
to
>>> a new member_sizeof().
>>>=20
>>> What do people think of that and how does this impact the patch =
footprint?
>>=20
>> I did a check, and FIELD_SIZEOF() is used about 350x, while =
sizeof_field()
>> is about 30x, and SIZEOF_FIELD() is only about 5x.
>=20
> Erk.  Sorry, I should have grepped.
>=20
>> That said, I'm much more in favour of "sizeof_field()" or =
"sizeof_member()"
>> than FIELD_SIZEOF().  Not only does that better match "offsetof()", =
with
>> which it is closely related, but is also closer to the original =
"sizeof()".
>>=20
>> Since this is a rather trivial change, it can be split into a number =
of
>> patches to get approval/landing via subsystem maintainers, and there =
is no
>> huge urgency to remove the original macros until the users are gone.  =
It
>> would make sense to remove SIZEOF_FIELD() and sizeof_field() quickly =
so
>> they don't gain more users, and the remaining FIELD_SIZEOF() users =
can be
>> whittled away as the patches come through the maintainer trees.
>=20
> In that case I'd say let's live with FIELD_SIZEOF() and remove
> sizeof_field() and SIZEOF_FIELD().

The real question is whether we want to live with a sub-standard macro =
for
the next 20 years rather than taking the opportunity to clean it up now?

> I'm a bit surprised that the FIELD_SIZEOF() definition ends up in
> stddef.h rather than in kernel.h where such things are normally
> defined.  Why is that?

Cheers, Andreas






--Apple-Mail=_5B427BF6-3A60-46C7-A8F9-EE572E3F0487
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iQIzBAEBCAAdFiEEDb73u6ZejP5ZMprvcqXauRfMH+AFAl0AHOAACgkQcqXauRfM
H+BPvRAAvxlKWQUZz2tRSIBu/vtfIKMWVyY8fctru8Y1oH+Slx4hWvJ/xxYWjMIa
LJJgybj3MjwTd30FmSWmmQmKDyjo5oWGelOeLzVfueI8blZIaDcUYT1rrM9h7F4G
RD22ST6XCWjj5oAmVBW/XHxRIFD6uHtwOnby9a4LgkFOehdkDBhopfAMduEZrW7P
qNa2T0M660SXtmt8dy89Ynb+sge7iinnRyPKkxNaweIXYGVtZzoScRFNK0vSZjbm
TgVIKwFyLDbdX1bJFQHZDWnfchCRqQrrmHyIl+wAGTccpfen4bGhDqW0wU1+rQpv
G2RL1z+N2WiWwKx/TmdPatglD2Hqr73jKfvi7X+DzkJ0nJdYMKnNRpe3S2rZwFjf
MHpmP35Ql2/96bDulYuirHOVvSrrXF/RXZLUp6MuTu2rGankXETXgiP0lkKcmOZW
gvA0pFTKFD8YaGf0NU9jS/OUOjYpqhMkBSK2C3d0UdRMCQzRWAudLzM9quRH7vCm
SfRD6QWHQfOELlKMenRptxYEi8IM3+3R4G1g3VmR7YCegpayslXiSKpgnBAqw4W0
Z4q6nJ/YOwNTjwzs9ndgCZfGpW6JxKYY0DuQe7ld+ngnXNdVrH1X5pZz9ASV9Wli
CowwSgwFlqOSkmcy52L7pRGDGSI/yWwzl6QHtjT8o0e30S27eCs=
=UFIV
-----END PGP SIGNATURE-----

--Apple-Mail=_5B427BF6-3A60-46C7-A8F9-EE572E3F0487--

--===============0554781961==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0554781961==--
