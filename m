Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6E81F320A
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jun 2020 03:39:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3634E6E0E3;
	Tue,  9 Jun 2020 01:39:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 251D46E0E3
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jun 2020 01:39:26 +0000 (UTC)
Received: from capuchin.riseup.net (capuchin-pn.riseup.net [10.0.1.176])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 49gt8F5l5kzFgRK;
 Mon,  8 Jun 2020 18:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1591666765; bh=38TrbxndNvlcKR8oChL4BMzP9NeImFdAbayuJ6NIXp4=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=GEVqhb/M7HrMXlqYtncnNHx+T7kQsjBjVqTaa7W2TG480WYaftZ2gugpKpwgdNIPo
 zpf9Ja3xB5uwVDzE0AJ0ugVN88tNFnGBqJk0YsUVOZjor/+8ixFDrXfbDGS80CAoYS
 dibO+2VF0D8IlAhv++W6UkM0kotikQhNCqEYhSJY=
X-Riseup-User-ID: 1E295B54A6769E85879B94C65E7AB376DB1437AFC3B3BB0D6D1B3CCAE11718B6
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by capuchin.riseup.net (Postfix) with ESMTPSA id 49gt8F29bQz8w9W;
 Mon,  8 Jun 2020 18:39:25 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Ayaz A Siddiqui <ayaz.siddiqui@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <159160967766.60481.16392357667625923690@jlahtine-desk.ger.corp.intel.com>
References: <20200604182658.878417-1-ayaz.siddiqui@intel.com>
 <87eequpla6.fsf@riseup.net>
 <159160967766.60481.16392357667625923690@jlahtine-desk.ger.corp.intel.com>
Date: Mon, 08 Jun 2020 18:39:17 -0700
Message-ID: <87blltow56.fsf@riseup.net>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Initialize reserved and
 unspecified MOCS indices
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
Cc: Kenneth Graunke <kenneth@whitecape.org>
Content-Type: multipart/mixed; boundary="===============1079282851=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1079282851==
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Joonas Lahtinen <joonas.lahtinen@linux.intel.com> writes:

> + Jason and Ken
>
> Quoting Francisco Jerez (2020-06-05 00:34:57)
>> Ayaz A Siddiqui <ayaz.siddiqui@intel.com> writes:
>>=20
>> > In order to avoid functional breakage of mis-programmed applications t=
hat
>> > have grown to depend on unused MOCS entries, we are programming
>> > those entries to be equal to fully cached ("L3 + LLC") entry as per the
>> > recommendation from architecture team.
>> >
>> > These reserved and unspecified entries should not be used as they may =
be
>> > changed to less performant variants with better coherency in the future
>> > if more entries are needed.
>
> This patch message needs reworking. It should just standalone describe
> the technical reasoning behind the patch completely, without referring
> to elsewhere or to some other decision.
>
> The patch should also Cc: relevant developers who have previously been
> working on the MOCS code and the userspace driver folks (Mesa, compute
> and media).
>
>> This change seems highly questionable to me...  If a future kernel
>> release introduces a new MOCS entry with more strict coherency
>> semantics, and an application starts relying on it, that application
>> won't work when run on an older kernel version with this patch is
>> applied.  IOW setting uninitialized entries to the most strict caching
>> setting available (UC) ensures forwards compatibility with future
>> userspace, which seems like a more important design principle than
>> giving full caching to broken userspace that accidentally makes use of
>> an undefined MOCS entry not part of the kernel ABI.
>
> Both choices were considered, and ultimately Ken and Jason were more in
> favor of 'worst coherency' if using reserved MOCS entry.
n>
> Your concern about newer software on older kernel is valid. But the
> starting point of the decision is the no-regression policy of Linux.
>
> If we have some application developed on an older kernel where the MOCS
> entry is unused and would be UC (best coherency), we would have no
> choice but to keep that entry unused indefinitely not to break the
> mis-programmed application.
>

That's a valid concern too, however it didn't seem like much an issue
with the original Gen9 workflow that gave i915 the freedom to assign
MOCS indices as it would see fit.  If some broken userspace starts
relying on the caching semantics of a random MOCS index not part of the
currently exposed kernel ABI, and that userspace isn't some proprietary
blob broken beyond repair, the kernel has the possibility (or the
obligation?) to give that application the semantics it expected for that
MOCS entry alone -- Which would likely improve the performance of the
application beyond the original behavior unless UC was what it was
actually expecting.

IOW it seems to me that this conflict between forwards and backwards ABI
compatibility is created by the rather artificial imperative to follow
the reference MOCS tables without modification, which could conceivably
tie our hands in the future and give us no choice but to break the
no-regression policy if the reference MOCS tables change in a
non-backwards-compatible way as has happened in the past (though luckily
before any software started relying on it AFAIA), and largely defeats
the point of having programmable MOCS tables IMO.  Not really thrilled
about that decision :P.

> Now we have the worst coherency by default if an application is using
> reserved entry, making it more likely to be noticed at develop time. And
> even if it would not be noticed, modifying the entry for better
> coherency should not functionally break the application.
>
> Regards, Joonas
>
>> > Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
>> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/gt/intel_mocs.c | 93 ++++++++++++++++++++++++++--
>> >  1 file changed, 89 insertions(+), 4 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i9=
15/gt/intel_mocs.c
>> > index 632e08a4592b..1089bd5fdba2 100644
>> > --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
>> > +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
>> > @@ -234,10 +234,6 @@ static const struct drm_i915_mocs_entry broxton_m=
ocs_table[] =3D {
>> >                  L3_1_UC)
>> >=20=20
>> >  static const struct drm_i915_mocs_entry tgl_mocs_table[] =3D {
>> > -     /* Base - Error (Reserved for Non-Use) */
>> > -     MOCS_ENTRY(0, 0x0, 0x0),
>> > -     /* Base - Reserved */
>> > -     MOCS_ENTRY(1, 0x0, 0x0),
>> >=20=20
>> >       GEN11_MOCS_ENTRIES,
>> >=20=20
>> > @@ -265,6 +261,95 @@ static const struct drm_i915_mocs_entry tgl_mocs_=
table[] =3D {
>> >       MOCS_ENTRY(61,
>> >                  LE_1_UC | LE_TC_1_LLC,
>> >                  L3_3_WB),
>> > +
>> > +     /* NOTE:
>> > +      * Reserved and unspecified MOCS indices have been set to (L3 + =
LCC).
>> > +      * These reserved entry should never be used, they may be chanag=
ed
>> > +      * to low performant variants with better coherency in the futur=
e if
>> > +      * more entries are needed.
>> > +      */
>> > +
>> > +     /* Reserved index 0 and 1 */
>> > +     MOCS_ENTRY(0, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(1, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +
>> > +     /* Reserved index 16 and 17 */
>> > +     MOCS_ENTRY(16, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(17, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +
>> > +     /* Reserved index 24 and 25 */
>> > +     MOCS_ENTRY(24, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(25, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +
>> > +     /* Unspecified indices 26 to 47 */
>> > +     MOCS_ENTRY(26, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(27, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(28, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(29, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(30, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(31, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(32, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(33, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(34, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(35, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(36, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(37, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(38, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(39, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(40, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(41, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(42, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(43, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(44, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(45, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(46, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(47, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +
>> > +     /* Unspecified indices 52 to 59 */
>> > +     MOCS_ENTRY(52, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(53, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(54, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(55, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(56, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(57, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(58, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB),
>> > +     MOCS_ENTRY(59, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>> > +                L3_3_WB)
>> >  };
>> >=20=20
>> >  static const struct drm_i915_mocs_entry icl_mocs_table[] =3D {
>> > --=20
>> > 2.26.2
>> >
>> > _______________________________________________
>> > Intel-gfx mailing list
>> > Intel-gfx@lists.freedesktop.org
>> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--=-=-=--

--==-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQST8OekYz69PM20/4aDmTidfVK/WwUCXt7oRQAKCRCDmTidfVK/
W8QhAP9nAk8qEXiQMzr9WBTkkt2jR4cEbebTPG/hz9Ph2kM3EAEAmHT+FHMGbgr4
hFbVtdUrhJtzmVszO4GimUHrSBFrOB0=
=Mw8a
-----END PGP SIGNATURE-----
--==-=-=--

--===============1079282851==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1079282851==--
