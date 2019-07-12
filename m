Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 859876692D
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 10:31:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8CD56E303;
	Fri, 12 Jul 2019 08:31:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C2BC6E303
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 08:31:51 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 01:31:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,481,1557212400"; 
 d="asc'?scan'208";a="168878644"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.13.116])
 by orsmga003.jf.intel.com with ESMTP; 12 Jul 2019 01:31:48 -0700
Date: Fri, 12 Jul 2019 16:28:51 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <20190712082851.GG9684@zhen-hp.sh.intel.com>
References: <20190702113149.21200-1-michal.winiarski@intel.com>
 <156206856424.2466.13005612349532861735@skylake-alporthouse-com>
 <156291876155.8011.12180387362444561726@jlahtine-mobl.fi.intel.com>
MIME-Version: 1.0
In-Reply-To: <156291876155.8011.12180387362444561726@jlahtine-mobl.fi.intel.com>
User-Agent: Mutt/1.10.0 (2018-05-17)
Subject: Re: [Intel-gfx] [PATCH 1/2] Revert "drm/i915: Introduce private PAT
 management"
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============1378951019=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1378951019==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="nthI8DG+iQKFvgNS"
Content-Disposition: inline


--nthI8DG+iQKFvgNS
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019.07.12 11:06:01 +0300, Joonas Lahtinen wrote:
> + Zhenyu as FYI
>
> Quoting Chris Wilson (2019-07-02 14:56:04)
> > Quoting Micha=C5=82 Winiarski (2019-07-02 12:31:48)
> > > This reverts commit 4395890a48551982549d222d1923e2833dac47cf.
> > >=20
> > > It's been over a year since this was merged, and the actual users of
> > > intel_ppat_get / intel_ppat_put never materialized.
> > >=20
> > > Time to remove it!
> > >=20
> > > v2: Unbreak suspend (Chris)
> > > v3: Rebase, drop fixes tag to avoid confusion
> > >=20
> > > Signed-off-by: Micha=C5=82 Winiarski <michal.winiarski@intel.com>
> > > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Cc: Zhi Wang <zhi.a.wang@intel.com>
> > Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> >=20
> > While I would appreciate an ack from Zhi (being the original author),
> > since we've already sent this a few times, there's no reason to delay
> > waiting for a response.

Well I also depend on Zhi for comment here, as previous idea was to
manage PPAT allocation between VM/host, but I'm not sure what's left
work status there..

--=20
Open Source Technology Center, Intel ltd.

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--nthI8DG+iQKFvgNS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXShEwwAKCRCxBBozTXgY
J89JAJ9bLBPbh4EnQ2xqpzGINsZ9YJGjcgCeJFu1OfCoBrrpZSZ2xJPjOU6m9+g=
=7kvd
-----END PGP SIGNATURE-----

--nthI8DG+iQKFvgNS--

--===============1378951019==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1378951019==--
