Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCEE1B8B7F
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Apr 2020 05:00:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B5956E4A2;
	Sun, 26 Apr 2020 03:00:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10F6E6E49B;
 Sun, 26 Apr 2020 03:00:30 +0000 (UTC)
IronPort-SDR: SfXCOVzZatMSYEFmvH0WTv4JUo3kFafmUeZD669HRwSd6UAlzkfrowGcmUNlIJbUVQC+Saz3pa
 E5tgHWXgssuQ==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2020 20:00:29 -0700
IronPort-SDR: uVczTe9vkbD5GFoaEurhN0lY449nFoP7kB7NSfIq6tZMc0kNxmL5FMZFlompOS7aIkrJDxLyrp
 NhOfzKNdtnag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,318,1583222400"; 
 d="asc'?scan'208";a="431283528"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
 by orsmga005.jf.intel.com with ESMTP; 25 Apr 2020 20:00:27 -0700
Date: Sun, 26 Apr 2020 10:46:19 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Message-ID: <20200426024619.GA18545@zhen-hp.sh.intel.com>
References: <20200422051230.GH11247@zhen-hp.sh.intel.com>
MIME-Version: 1.0
In-Reply-To: <20200422051230.GH11247@zhen-hp.sh.intel.com>
User-Agent: Mutt/1.10.0 (2018-05-17)
Subject: Re: [Intel-gfx] [PULL] gvt-next
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
Reply-To: Zhenyu Wang <zhenyuw@linux.intel.com>
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 intel-gvt-dev <intel-gvt-dev@lists.freedesktop.org>, "Lv,
 Zhiyuan" <zhiyuan.lv@intel.com>, "Yuan, Hang" <hang.yuan@intel.com>
Content-Type: multipart/mixed; boundary="===============1515416510=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1515416510==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="+QahgC5+KEYLbs62"
Content-Disposition: inline


--+QahgC5+KEYLbs62
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2020.04.22 13:12:30 +0800, Zhenyu Wang wrote:
>=20
> Hi,
>=20
> Here's current gvt-next. This removes left non-upstream xen support bits
> which will be kept out of tree instead. And several guest context shadow
> optimizations from Yan.
>=20
> Thanks
> --

Ping for merge..

>=20
> The following changes since commit a61ac1e75105a077ec1efd6923ae3c619f8623=
04:
>=20
>   drm/i915/gvt: Wean gvt off using dev_priv (2020-03-06 10:08:10 +0800)
>=20
> are available in the Git repository at:
>=20
>   https://github.com/intel/gvt-linux tags/gvt-next-2020-04-22
>=20
> for you to fetch changes up to fb55c735522352704c35d899d0b253453cf0e799:
>=20
>   drm/i915/gvt: skip populate shadow context if guest context not changed=
 (2020-04-17 17:31:22 +0800)
>=20
> ----------------------------------------------------------------
> gvt-next-2020-04-22
>=20
> - remove non-upstream xen support bits (Christoph)
> - guest context shadow copy optimization (Yan)
> - guest context tracking for shadow skip optimization (Yan)
>=20
> ----------------------------------------------------------------
> Christoph Hellwig (1):
>       i915/gvt: remove unused xen bits
>=20
> Yan Zhao (3):
>       drm/i915/gvt: access shadow ctx via its virtual address directly
>       drm/i915/gvt: combine access to consecutive guest context pages
>       drm/i915/gvt: skip populate shadow context if guest context not cha=
nged
>=20
>  drivers/gpu/drm/i915/gvt/gtt.c       |  15 +++++
>  drivers/gpu/drm/i915/gvt/gvt.c       |   1 -
>  drivers/gpu/drm/i915/gvt/gvt.h       |   5 ++
>  drivers/gpu/drm/i915/gvt/hypercall.h |   2 -
>  drivers/gpu/drm/i915/gvt/scheduler.c | 127 ++++++++++++++++++++++++++---=
------
>  5 files changed, 114 insertions(+), 36 deletions(-)
>=20
> --=20
> Open Source Technology Center, Intel ltd.
>=20
> $gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827



> _______________________________________________
> intel-gvt-dev mailing list
> intel-gvt-dev@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gvt-dev


--=20
Open Source Technology Center, Intel ltd.

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--+QahgC5+KEYLbs62
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXqT1+wAKCRCxBBozTXgY
J6UIAKCftmkjt1M87WK1AFEDkVhq1cbYEQCgnuxWoZUqM+wGmx79u2stAyfeSEU=
=/YZb
-----END PGP SIGNATURE-----

--+QahgC5+KEYLbs62--

--===============1515416510==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1515416510==--
