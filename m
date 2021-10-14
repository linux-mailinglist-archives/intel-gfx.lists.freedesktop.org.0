Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC2D42D79B
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 13:01:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 282FA6EC6C;
	Thu, 14 Oct 2021 11:00:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 438 seconds by postgrey-1.36 at gabe;
 Thu, 14 Oct 2021 11:00:56 UTC
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 833326EC6C
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 11:00:56 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 90A861C0B79; Thu, 14 Oct 2021 12:53:34 +0200 (CEST)
Date: Thu, 14 Oct 2021 12:53:34 +0200
From: Pavel Machek <pavel@ucw.cz>
To: kernel list <linux-kernel@vger.kernel.org>, vitaly.lubart@intel.com,
 tomas.winkler@intel.com, daniele.ceraolospurio@intel.com,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, intel-gfx@lists.freedesktop.org
Message-ID: <20211014105334.GA19786@duo.ucw.cz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature"; boundary="/04w6evG8XlLl3ft"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-gfx] intel_mei_pxp: needs better help text
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


--/04w6evG8XlLl3ft
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


CONFIG_INTEL_MEI_PXP:

MEI Support for PXP Services on Intel platforms.

Enables the ME FW services required for PXP support through
I915 display driver of Intel.


That's ... very useless help text. According to
https://www.phoronix.com/scan.php?page=3Dnews_item&px=3DIntel-PXP-Protected=
-Xe-Path
this is some kind of DRM. Help text should probably say it has to do
with i915 video, and explain the acronyms, and probably its usecases.



--=20
http://www.livejournal.com/~pavelmachek

--/04w6evG8XlLl3ft
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCYWgMLgAKCRAw5/Bqldv6
8vXQAKCaZIbr9BzntFKSnAJ7J3QFZsMjMwCfXZUJ0s9UEqQacjevS3ERxAo+/e0=
=Otrh
-----END PGP SIGNATURE-----

--/04w6evG8XlLl3ft--
