Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A96D23C7A5
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 10:20:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B26989FBC;
	Wed,  5 Aug 2020 08:20:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEF9E89F97;
 Wed,  5 Aug 2020 08:20:08 +0000 (UTC)
IronPort-SDR: GvGyDtxx40jyH1VkqbYtonPRBYOTnpOcgRjQ6M8w5iO4nHmL1k2HJRihBLViapfnGkhgoXHYIU
 Wg7FVLuOMBOQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9703"; a="152457857"
X-IronPort-AV: E=Sophos;i="5.75,436,1589266800"; 
 d="asc'?scan'208";a="152457857"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 01:20:07 -0700
IronPort-SDR: QONzq60Tiae7XlMP7uZShVEnOv0PTZBwTi+lJxJVVnwdUge3O21lOMfoJFt7dN+O+bkVQCOnLo
 W+otXhV0l7Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,436,1589266800"; 
 d="asc'?scan'208";a="437093478"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
 by orsmga004.jf.intel.com with ESMTP; 05 Aug 2020 01:20:02 -0700
Date: Wed, 5 Aug 2020 16:02:07 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Message-ID: <20200805080207.GY27035@zhen-hp.sh.intel.com>
MIME-Version: 1.0
User-Agent: Mutt/1.10.0 (2018-05-17)
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
Content-Type: multipart/mixed; boundary="===============0606553887=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0606553887==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="XZn3P0VKTizxZG2b"
Content-Disposition: inline


--XZn3P0VKTizxZG2b
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


Hi,

Here's to only include gvt fixes for 5.9-rc1. Two fixes to make
guest suspend/resume working gracefully are included.

Thanks
--=20
The following changes since commit e57bd05ec0d2d82d63725dedf9f5a063f879de25:

  drm/i915: Update DRIVER_DATE to 20200715 (2020-07-15 14:18:02 +0300)

are available in the Git repository at:

  https://github.com/intel/gvt-linux tags/gvt-next-fixes-2020-08-05

for you to fetch changes up to 9e7c0efadb86ddb58965561bbca638d44792d78f:

  drm/i915/gvt: Do not reset pv_notified when vGPU transit from D3->D0 (202=
0-07-29 14:18:32 +0800)

----------------------------------------------------------------
gvt-next-fixes-2020-08-05

- Fix guest suspend/resume low performance handling of shadow ppgtt (Colin)
- Fix PV notifier handling for guest suspend/resume (Colin)

----------------------------------------------------------------
Colin Xu (2):
      drm/i915/gvt: Do not destroy ppgtt_mm during vGPU D3->D0.
      drm/i915/gvt: Do not reset pv_notified when vGPU transit from D3->D0

 drivers/gpu/drm/i915/gvt/cfg_space.c | 24 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/gvt/gtt.c       |  2 +-
 drivers/gpu/drm/i915/gvt/gtt.h       |  2 ++
 drivers/gpu/drm/i915/gvt/gvt.h       |  3 +++
 drivers/gpu/drm/i915/gvt/vgpu.c      | 20 +++++++++++++++++---
 5 files changed, 47 insertions(+), 4 deletions(-)


--XZn3P0VKTizxZG2b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXypnfwAKCRCxBBozTXgY
J+9fAJ4/bf/u1d5LhJiPrdJTEc9svLQqiwCdFOOTrT+3u0TBAcU7Nxq96RaIy5M=
=IDcs
-----END PGP SIGNATURE-----

--XZn3P0VKTizxZG2b--

--===============0606553887==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0606553887==--
