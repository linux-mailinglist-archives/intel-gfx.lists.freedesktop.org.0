Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37619783AC
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 05:37:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE13089C89;
	Mon, 29 Jul 2019 03:37:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B46289A32;
 Mon, 29 Jul 2019 03:37:50 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jul 2019 20:37:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,321,1559545200"; 
 d="asc'?scan'208";a="190415506"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.13.116])
 by fmsmga001.fm.intel.com with ESMTP; 28 Jul 2019 20:37:22 -0700
Date: Mon, 29 Jul 2019 11:33:47 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <20190729033347.GQ8319@zhen-hp.sh.intel.com>
References: <20190723092958.GD8319@zhen-hp.sh.intel.com>
MIME-Version: 1.0
In-Reply-To: <20190723092958.GD8319@zhen-hp.sh.intel.com>
User-Agent: Mutt/1.10.0 (2018-05-17)
Subject: Re: [Intel-gfx] [PULL] gvt-fixes
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
Content-Type: multipart/mixed; boundary="===============1504456634=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1504456634==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="TdMwOTenGjBWB1uY"
Content-Disposition: inline


--TdMwOTenGjBWB1uY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


ping..

On 2019.07.23 17:29:58 +0800, Zhenyu Wang wrote:
>=20
> Hi,
>=20
> Here's recent gvt-fixes for 5.3-rc. It includes safety guard
> for possible ggtt access error with related checks, includecheck
> fix and one cache entry size fix for 2MB ppgtt guest.
>=20
> Thanks.
> --
> The following changes since commit d7e8a19b38c8ac1a32b6b03af049e2c88d4155=
db:
>=20
>   drm/i915: Don't dereference request if it may have been retired when pr=
inting (2019-07-09 16:16:18 +0300)
>=20
> are available in the Git repository at:
>=20
>   https://github.com/intel/gvt-linux.git tags/gvt-fixes-2019-07-23
>=20
> for you to fetch changes up to 8642656299cf86cfeceb1a48b0e1874de6874a2b:
>=20
>   drm/i915/gvt: fix incorrect cache entry for guest page mapping (2019-07=
-18 11:06:41 +0800)
>=20
> ----------------------------------------------------------------
> gvt-fixes-2019-07-23
>=20
> - Guard against potential ggtt access error (Xiong)
> - Fix includecheck (Zhenyu)
> - Fix cache entry for guest page mapping found by 2M ppgtt guest (Xiaolin)
>=20
> ----------------------------------------------------------------
> Xiaolin Zhang (1):
>       drm/i915/gvt: fix incorrect cache entry for guest page mapping
>=20
> Xiong Zhang (3):
>       drm/i915/gvt: Warning for invalid ggtt access
>       drm/i915/gvt: Don't use ggtt_validdate_range() with size=3D0
>       drm/i915/gvt: Checking workload's gma earlier
>=20
> Zhenyu Wang (1):
>       drm/i915/gvt: remove duplicate include of trace.h
>=20
>  drivers/gpu/drm/i915/gvt/cmd_parser.c   | 10 ----------
>  drivers/gpu/drm/i915/gvt/fb_decoder.c   |  6 +++---
>  drivers/gpu/drm/i915/gvt/gtt.c          |  9 +++++++++
>  drivers/gpu/drm/i915/gvt/kvmgt.c        | 12 ++++++++++++
>  drivers/gpu/drm/i915/gvt/scheduler.c    | 28 ++++++++++++++++++++++++++++
>  drivers/gpu/drm/i915/gvt/trace_points.c |  2 --
>  6 files changed, 52 insertions(+), 15 deletions(-)
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

--TdMwOTenGjBWB1uY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXT5pGwAKCRCxBBozTXgY
J1upAJ4loGeJQUdxWBbmRrd+4LQtcqPOhwCfSKnHGcPODbdbl6ySnJ8bqlDWrfk=
=+E6Y
-----END PGP SIGNATURE-----

--TdMwOTenGjBWB1uY--

--===============1504456634==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1504456634==--
