Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 577B810E541
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 06:18:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B0A489EF7;
	Mon,  2 Dec 2019 05:18:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23BDF89EEB;
 Mon,  2 Dec 2019 05:18:29 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Dec 2019 21:18:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; 
 d="asc'?scan'208";a="207959345"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.13.116])
 by fmsmga008.fm.intel.com with ESMTP; 01 Dec 2019 21:18:25 -0800
Date: Mon, 2 Dec 2019 13:17:11 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191202051711.GZ4196@zhen-hp.sh.intel.com>
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
Content-Type: multipart/mixed; boundary="===============0494176943=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0494176943==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="azIKtn7V5gBmWzzR"
Content-Disposition: inline


--azIKtn7V5gBmWzzR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


Hi,

More gvt fixes for 5.5-rc. One is MI_ATOMIC cmd parser fix which
missed 5.4 and another two for CFL non-priv reg access fixes.

Thanks
--
The following changes since commit 83faaf074e6d1ca4d1441aded0d3f01bce413479:

  drm/i915/gvt: Stop initializing pvinfo through reading mmio (2019-11-08 1=
1:08:07 +0800)

are available in the Git repository at:

  https://github.com/intel/gvt-linux tags/gvt-next-fixes-2019-12-02

for you to fetch changes up to 92b1aa773fadb4e2a90ed5d3beecb422d568ad9a:

  drm/i915/gvt: Fix cmd length check for MI_ATOMIC (2019-12-02 11:06:49 +08=
00)

----------------------------------------------------------------
gvt-next-fixes-2019-12-02

- Fix cmd parser for MI_ATOMIC (Zhenyu)
- Fix non-priv register access warning on CFL (Fred)

----------------------------------------------------------------
Gao, Fred (2):
      drm/i915/gvt: Refine non privilege register address calucation
      drm/i915/gvt: Update force-to-nonpriv register whitelist

Zhenyu Wang (1):
      drm/i915/gvt: Fix cmd length check for MI_ATOMIC

 drivers/gpu/drm/i915/gvt/cmd_parser.c | 6 +++---
 drivers/gpu/drm/i915/gvt/handlers.c   | 5 +++--
 2 files changed, 6 insertions(+), 5 deletions(-)


--=20
Open Source Technology Center, Intel ltd.

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--azIKtn7V5gBmWzzR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXeSeVgAKCRCxBBozTXgY
JzhFAKCCmgQx5Ztogl3pEiRJPKPIbbkUXgCeLICICqbjCn/m81rXK5WU7G2xIbY=
=ST0n
-----END PGP SIGNATURE-----

--azIKtn7V5gBmWzzR--

--===============0494176943==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0494176943==--
