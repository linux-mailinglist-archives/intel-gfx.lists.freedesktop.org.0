Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DD3113D5B
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 09:51:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72B7E6F5F3;
	Thu,  5 Dec 2019 08:51:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB1406E987;
 Thu,  5 Dec 2019 08:51:20 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 00:51:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,280,1571727600"; 
 d="asc'?scan'208";a="243174332"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.13.116])
 by fmsmga002.fm.intel.com with ESMTP; 05 Dec 2019 00:51:18 -0800
Date: Thu, 5 Dec 2019 16:49:57 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <20191205084956.GK4196@zhen-hp.sh.intel.com>
References: <20191202051711.GZ4196@zhen-hp.sh.intel.com>
 <20191205061141.GF4196@zhen-hp.sh.intel.com>
 <157553367554.5691.10845588295413119546@alackerm-mobl1.ger.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <157553367554.5691.10845588295413119546@alackerm-mobl1.ger.corp.intel.com>
User-Agent: Mutt/1.10.0 (2018-05-17)
Subject: Re: [Intel-gfx] [PULL] gvt-next-fixes
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
Reply-To: Zhenyu Wang <zhenyuw@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, "Yuan,
 Hang" <hang.yuan@intel.com>, "Lv, Zhiyuan" <zhiyuan.lv@intel.com>,
 intel-gvt-dev <intel-gvt-dev@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1684154099=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1684154099==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="DCVUsB8wYFFoocrD"
Content-Disposition: inline


--DCVUsB8wYFFoocrD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019.12.05 10:14:35 +0200, Joonas Lahtinen wrote:
> Quoting Zhenyu Wang (2019-12-05 08:11:41)
> >=20
> > ping..
>=20
> This was pulled, but my dim push was interrupted so I had to re-push and
> wait for CI results. Looks all good. Thanks for the PR.
>=20
> Do you have a plan to start adding Fixes: and Link: tags to the GVT
> commits?
>=20

For Fixes: we've already been caution to add when needed, I'll try to
handle Link: tag later.

Thanks

--=20
Open Source Technology Center, Intel ltd.

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--DCVUsB8wYFFoocrD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXejEtAAKCRCxBBozTXgY
J8jkAJ9w7tMN3j6QgHrMQtsbUul7sCTq8QCfXwYfRDK0r9CHEVSJQAOTAZEgXgM=
=YBi+
-----END PGP SIGNATURE-----

--DCVUsB8wYFFoocrD--

--===============1684154099==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1684154099==--
