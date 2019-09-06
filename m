Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD46AB225
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 07:48:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3FCB89F33;
	Fri,  6 Sep 2019 05:48:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E95F289F33;
 Fri,  6 Sep 2019 05:48:01 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 22:48:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,472,1559545200"; 
 d="asc'?scan'208";a="213040135"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.13.116])
 by fmsmga002.fm.intel.com with ESMTP; 05 Sep 2019 22:47:59 -0700
Date: Fri, 6 Sep 2019 13:42:55 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Message-ID: <20190906054255.GC3458@zhen-hp.sh.intel.com>
MIME-Version: 1.0
User-Agent: Mutt/1.10.0 (2018-05-17)
Subject: [Intel-gfx] [PULL] gvt-next-fixes
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 intel-gvt-dev <intel-gvt-dev@lists.freedesktop.org>, "Lv,
 Zhiyuan" <zhiyuan.lv@intel.com>, "Yuan, Hang" <hang.yuan@intel.com>
Content-Type: multipart/mixed; boundary="===============1714353685=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1714353685==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="0OAP2g/MAC+5xKAE"
Content-Disposition: inline


--0OAP2g/MAC+5xKAE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


Hi,

Here's gvt-next-fixes with two recent fixes, one for recent
guest hang regression and another for guest reset fix.

Thanks.
--
The following changes since commit c36beba6b296b3c05a0f29753b04775e5ae23886:

  drm/i915: Seal races between async GPU cancellation, retirement and signa=
ling (2019-05-13 13:53:35 +0300)

are available in the Git repository at:

  https://github.com/intel/gvt-linux.git tags/gvt-next-fixes-2019-09-06

for you to fetch changes up to 4a5322560aa235efa84c0aa34c00e5749a0792fd:

  drm/i915/gvt: update RING_START reg of vGPU when the context is submitted=
 to i915 (2019-09-06 13:39:09 +0800)

----------------------------------------------------------------
gvt-next-fixes-2019-09-06

- Fix guest context head pointer update for hang (Xiaolin)
- Fix guest context ring state for reset (Weinan)

----------------------------------------------------------------
Weinan Li (1):
      drm/i915/gvt: update RING_START reg of vGPU when the context is submi=
tted to i915

Xiaolin Zhang (1):
      drm/i915/gvt: update vgpu workload head pointer correctly

 drivers/gpu/drm/i915/gvt/scheduler.c | 45 +++++++++++++++++++++++++-------=
----
 1 file changed, 32 insertions(+), 13 deletions(-)


--=20
Open Source Technology Center, Intel ltd.

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--0OAP2g/MAC+5xKAE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXXHx3wAKCRCxBBozTXgY
J93JAJ4rSS5tSPmOwQsCFD7/ozXr+nz5MQCffhVYZLo2ESxBNJ8OWH2hL4wzMmU=
=79KX
-----END PGP SIGNATURE-----

--0OAP2g/MAC+5xKAE--

--===============1714353685==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1714353685==--
