Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7175A397038
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 11:21:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 588956E9B9;
	Tue,  1 Jun 2021 09:21:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pokefinder.org (sauhun.de [88.99.104.3])
 by gabe.freedesktop.org (Postfix) with ESMTP id 496516E9AE;
 Tue,  1 Jun 2021 09:21:09 +0000 (UTC)
Received: from localhost (i577BC03F.versanet.de [87.123.192.63])
 by pokefinder.org (Postfix) with ESMTPSA id 879B02C00E6;
 Tue,  1 Jun 2021 11:21:08 +0200 (CEST)
Date: Tue, 1 Jun 2021 11:21:08 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Message-ID: <YLX8BAqtGH86wo59@ninjato>
Mail-Followup-To: Wolfram Sang <wsa@the-dreams.de>,
 Hsin-Yi Wang <hsinyi@chromium.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Dave Airlie <airlied@linux.ie>
References: <20210601103250.07301254@canb.auug.org.au>
 <YLX176D9oD7ZTSkT@ninjato>
 <CAJMQK-j1YKfquvY55HgTQ6zfDkE5btmRZKdjjOQ3rcq04QgKKQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJMQK-j1YKfquvY55HgTQ6zfDkE5btmRZKdjjOQ3rcq04QgKKQ@mail.gmail.com>
Subject: Re: [Intel-gfx] linux-next: build failure after merge of the i2c
 tree
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Dave Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: multipart/mixed; boundary="===============1653723282=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1653723282==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ewTzpoiBJA7/Fyar"
Content-Disposition: inline


--ewTzpoiBJA7/Fyar
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> Hi, this issue is fixed in
> https://cgit.freedesktop.org/drm-intel/commit/?h=3Ddrm-intel-gt-next&id=
=3D5b11705608898c31a1cae5340555ee60d5a4fa45
>=20
> And I think the pull request is in
> https://lists.freedesktop.org/archives/intel-gfx/2021-May/267588.html

Thanks for the heads up. So, I'll wait with my pull request for the next
merge window until drm has landed first.


--ewTzpoiBJA7/Fyar
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmC1/AQACgkQFA3kzBSg
KbY8qw/6AuH2q7KckQ6atO4TJ1UmKER/QLjQ6SEZE5xSWR5iufO5INA0wTAADrmh
mfsR6eCMz+NcPKmhq+AE7wOclUmfWoBSkqtakXpQTI3ytH68clTn5tJq4tPqj2C9
dlnVMs7608lBQrRQSHZ91AHjyvtXCNtQmTP4Ectpe57eO0bW0terIeC3U7vFMmYS
kmMGNlk2QnLYEB6MJlUA2wrGyBP+3Fcsx0gVz91M5vCuABBAbp/97JQnELGinaZj
N9dpdgZpL08KJ38FT5wj0UnTSZpIwtv5m/1+K+jqO8Iy+7Jg/e9ifvJupgiPIggP
WtMIO+2WA4ZXp00w5vwPV4AtXCn+NtQ9Y5fi1vpVDpCwLw4w2TeqNhteTqpfuV52
h18jSON59iHZYyn5z84lUsDdvFD/iz/T0cKOe0VWo/bO2aCp4ghsJzQ444xB25N0
XUUexTpxqxOOY8T8VTSOdWYVr+IthN+htmqmo07wjl5AF9dhFvb0USWh2Gx2QaxH
eWieLz94ANAPw5vyW4AeybEQbHW/3u1HiVQ89i/M42qe6G6txjceA7ganuzQxc+Y
0Ck+uQ3qOB/wviIo1XiKzIwDULVCzTkKmPqFt2qF0ncu7ASDskgMWy0dAK0KKKva
nX7eHcqZQO97npQ8tQus1CrYKAW1B1Nl3F3COWESbOkw7R0sIXo=
=n251
-----END PGP SIGNATURE-----

--ewTzpoiBJA7/Fyar--

--===============1653723282==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1653723282==--
