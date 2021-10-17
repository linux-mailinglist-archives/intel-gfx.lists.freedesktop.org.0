Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8CB430707
	for <lists+intel-gfx@lfdr.de>; Sun, 17 Oct 2021 09:24:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEFDC6E528;
	Sun, 17 Oct 2021 07:24:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FB946E528
 for <intel-gfx@lists.freedesktop.org>; Sun, 17 Oct 2021 07:24:00 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 284931C0B76; Sun, 17 Oct 2021 09:23:57 +0200 (CEST)
Date: Sun, 17 Oct 2021 09:23:56 +0200
From: Pavel Machek <pavel@ucw.cz>
To: kernel list <linux-kernel@vger.kernel.org>, vitaly.lubart@intel.com,
 tomas.winkler@intel.com, daniele.ceraolospurio@intel.com,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, intel-gfx@lists.freedesktop.org,
 linux-kbuild@vger.kernel.org, masahiroy@kernel.org
Message-ID: <20211017072356.GA4756@duo.ucw.cz>
References: <20211014105334.GA19786@duo.ucw.cz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature"; boundary="Nq2Wo0NMKNjxTN9z"
Content-Disposition: inline
In-Reply-To: <20211014105334.GA19786@duo.ucw.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] intel_mei_pxp: needs better help text
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


--Nq2Wo0NMKNjxTN9z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

Extended Cc list. Should I attempt to prepare a patch?

Best regards,
							Pavel

On Thu 2021-10-14 12:53:34, Pavel Machek wrote:
>=20
> CONFIG_INTEL_MEI_PXP:
>=20
> MEI Support for PXP Services on Intel platforms.
>=20
> Enables the ME FW services required for PXP support through
> I915 display driver of Intel.
>=20
>=20
> That's ... very useless help text. According to
> https://www.phoronix.com/scan.php?page=3Dnews_item&px=3DIntel-PXP-Protect=
ed-Xe-Path
> this is some kind of DRM. Help text should probably say it has to do
> with i915 video, and explain the acronyms, and probably its usecases.
>=20
>=20
>=20
> --=20
> http://www.livejournal.com/~pavelmachek



--=20
http://www.livejournal.com/~pavelmachek

--Nq2Wo0NMKNjxTN9z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCYWvPjAAKCRAw5/Bqldv6
8tHNAJ9QYSkmp7jyhFkIJg8sv/IS7PuVzQCfX4fQagMXQURLHXIhTgDjk9oOj5s=
=vhjq
-----END PGP SIGNATURE-----

--Nq2Wo0NMKNjxTN9z--
