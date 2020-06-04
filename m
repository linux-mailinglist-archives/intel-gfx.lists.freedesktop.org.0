Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFA51EED5C
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 23:35:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 465B56E5CC;
	Thu,  4 Jun 2020 21:35:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58DDC6E5CC
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 21:35:01 +0000 (UTC)
Received: from bell.riseup.net (bell-pn.riseup.net [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 49dJw50p69zFgk1;
 Thu,  4 Jun 2020 14:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1591306501; bh=7FGJtCto7hIQ26vzj80Du8HkmFfqsGbfPbPE9B4IiJM=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=rXXb481PBVIGCyufa4j49ScGZhN8p7XEVd/vpUi+Tt6toBtLHzl1FBch3pSwHHRBD
 qfLw5+hEk8qecX0UaNOHXM/i468KYqiJzx7Okgys3u2j5ayDKfmEVq3RebQMhLrDQs
 oJ3UAP9BT6KjCgKCWPYcrqVBdu67AF818eyc90ck=
X-Riseup-User-ID: 0EE8310E3B42FAD231C9FB03EE7C27677F7EC702E5A110B7E09EB3208884564A
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id 49dJw46TlzzJmhc;
 Thu,  4 Jun 2020 14:35:00 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200604182658.878417-1-ayaz.siddiqui@intel.com>
References: <20200604182658.878417-1-ayaz.siddiqui@intel.com>
Date: Thu, 04 Jun 2020 14:34:57 -0700
Message-ID: <87eequpla6.fsf@riseup.net>
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
Content-Type: multipart/mixed; boundary="===============1321833672=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1321833672==
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Ayaz A Siddiqui <ayaz.siddiqui@intel.com> writes:

> In order to avoid functional breakage of mis-programmed applications that
> have grown to depend on unused MOCS entries, we are programming
> those entries to be equal to fully cached ("L3 + LLC") entry as per the
> recommendation from architecture team.
>
> These reserved and unspecified entries should not be used as they may be
> changed to less performant variants with better coherency in the future
> if more entries are needed.
>

This change seems highly questionable to me...  If a future kernel
release introduces a new MOCS entry with more strict coherency
semantics, and an application starts relying on it, that application
won't work when run on an older kernel version with this patch is
applied.  IOW setting uninitialized entries to the most strict caching
setting available (UC) ensures forwards compatibility with future
userspace, which seems like a more important design principle than
giving full caching to broken userspace that accidentally makes use of
an undefined MOCS entry not part of the kernel ABI.

> Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_mocs.c | 93 ++++++++++++++++++++++++++--
>  1 file changed, 89 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/=
gt/intel_mocs.c
> index 632e08a4592b..1089bd5fdba2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -234,10 +234,6 @@ static const struct drm_i915_mocs_entry broxton_mocs=
_table[] =3D {
>  		   L3_1_UC)
>=20=20
>  static const struct drm_i915_mocs_entry tgl_mocs_table[] =3D {
> -	/* Base - Error (Reserved for Non-Use) */
> -	MOCS_ENTRY(0, 0x0, 0x0),
> -	/* Base - Reserved */
> -	MOCS_ENTRY(1, 0x0, 0x0),
>=20=20
>  	GEN11_MOCS_ENTRIES,
>=20=20
> @@ -265,6 +261,95 @@ static const struct drm_i915_mocs_entry tgl_mocs_tab=
le[] =3D {
>  	MOCS_ENTRY(61,
>  		   LE_1_UC | LE_TC_1_LLC,
>  		   L3_3_WB),
> +
> +	/* NOTE:
> +	 * Reserved and unspecified MOCS indices have been set to (L3 + LCC).
> +	 * These reserved entry should never be used, they may be chanaged
> +	 * to low performant variants with better coherency in the future if
> +	 * more entries are needed.
> +	 */
> +
> +	/* Reserved index 0 and 1 */
> +	MOCS_ENTRY(0, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(1, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +
> +	/* Reserved index 16 and 17 */
> +	MOCS_ENTRY(16, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(17, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +
> +	/* Reserved index 24 and 25 */
> +	MOCS_ENTRY(24, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(25, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +
> +	/* Unspecified indices 26 to 47 */
> +	MOCS_ENTRY(26, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(27, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(28, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(29, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(30, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(31, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(32, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(33, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(34, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(35, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(36, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(37, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(38, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(39, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(40, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(41, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(42, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(43, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(44, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(45, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(46, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(47, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +
> +	/* Unspecified indices 52 to 59 */
> +	MOCS_ENTRY(52, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(53, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(54, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(55, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(56, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(57, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(58, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	MOCS_ENTRY(59, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB)
>  };
>=20=20
>  static const struct drm_i915_mocs_entry icl_mocs_table[] =3D {
> --=20
> 2.26.2
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--=-=-=--

--==-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQST8OekYz69PM20/4aDmTidfVK/WwUCXtlpAQAKCRCDmTidfVK/
W7ebAP944SlRnvgLNDfRbE/HHJ/MtSOvr5Ft7G3OlM7XypJGQQD/VHo740ab1xA9
pI1hJbdyy58bDwXvbIZwr6oJWbALh6A=
=43av
-----END PGP SIGNATURE-----
--==-=-=--

--===============1321833672==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1321833672==--
