Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5EA321242
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 09:50:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B85EE6E90D;
	Mon, 22 Feb 2021 08:50:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC0766E90D;
 Mon, 22 Feb 2021 08:50:00 +0000 (UTC)
IronPort-SDR: PAVXewXeG+urEecljqmhQzpgdm0Fyso6vLgcx3jKqXCf7dPrvwJ+d3kIhKKR8+jO80Ea1+qV/v
 yM0kLdAQAiUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9902"; a="245804727"
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; 
 d="asc'?scan'208";a="245804727"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 00:49:59 -0800
IronPort-SDR: Gg6kJwXFfBdmKb9m8/N9IRw012Q6ji23HguZKYM72UM5xYB0oa3McLezwx6l2WkPifgxw9OIQ7
 CDWJyRXNmF0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; 
 d="asc'?scan'208";a="592519192"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
 by fmsmga006.fm.intel.com with ESMTP; 22 Feb 2021 00:49:57 -0800
Date: Mon, 22 Feb 2021 16:34:02 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210222083402.GD1551@zhen-hp.sh.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PULL] gvt-next-fixes
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
Content-Type: multipart/mixed; boundary="===============0667116131=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0667116131==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="gj572EiMnwbLXET9"
Content-Disposition: inline


--gj572EiMnwbLXET9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


Hi,

Looks last gvt pull missed -gt-next window before CNY holiday.
So here're left three changes for fixing ww locking, cmd parser
fix for i915 state use and one left cleanup fix.

Thanks!
--
The following changes since commit 81ce8f04aa96f7f6cae05770f68b5d15be91f5a2:

  drm/i915/gt: Correct surface base address for renderclear (2021-02-17 06:19:04 -0500)

are available in the Git repository at:

  https://github.com/intel/gvt-linux tags/gvt-next-fixes-2021-02-22

for you to fetch changes up to 67f1120381df022a7016f4acc8d4880da9a66c03:

  drm/i915/gvt: Introduce per object locking in GVT scheduler. (2021-02-22 16:42:14 +0800)

----------------------------------------------------------------
gvt-next-fixes-2021-02-22

- Fix to use i915 default state for cmd parser on all engines (Chris)
- Purge dev_priv->gt (Chris)
- Fix gvt object ww locking (Zhi)

----------------------------------------------------------------
Chris Wilson (2):
      drm/i915/gvt: Parse default state to update reg whitelist
      drm/i915/gvt: Purge dev_priv->gt

Zhi Wang (1):
      drm/i915/gvt: Introduce per object locking in GVT scheduler.

 drivers/gpu/drm/i915/gvt/cmd_parser.c | 93 ++++++++---------------------------
 drivers/gpu/drm/i915/gvt/execlist.c   |  8 ++-
 drivers/gpu/drm/i915/gvt/scheduler.c  | 52 +++++++++++++++-----
 3 files changed, 64 insertions(+), 89 deletions(-)

--gj572EiMnwbLXET9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCYDNsdQAKCRCxBBozTXgY
J53GAJ9ohRnr1LI1kA33vyUljoDp6T44fwCfUlRaa8Ltqo1KWZPxKqwW+KlIvik=
=tiz1
-----END PGP SIGNATURE-----

--gj572EiMnwbLXET9--

--===============0667116131==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0667116131==--
