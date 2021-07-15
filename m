Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 657623C9606
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jul 2021 04:44:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64B816E4B0;
	Thu, 15 Jul 2021 02:44:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2B136E4B0;
 Thu, 15 Jul 2021 02:44:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="197646761"
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; 
 d="asc'?scan'208";a="197646761"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 19:44:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; 
 d="asc'?scan'208";a="494926735"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.143])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Jul 2021 19:43:59 -0700
Date: Thu, 15 Jul 2021 10:22:37 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <20210715022237.GX12150@zhen-hp.sh.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PULL] gvt-fixes
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
Content-Type: multipart/mixed; boundary="===============1366309965=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1366309965==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="rWhLK7VZz0iBluhq"
Content-Disposition: inline


--rWhLK7VZz0iBluhq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


Hi,

Here's one fix of shadow ppgtt invalidation with proper vGPU D3 state tracking.

Thanks
--
The following changes since commit 62fb9874f5da54fdb243003b386128037319b219:

  Linux 5.13 (2021-06-27 15:21:11 -0700)

are available in the Git repository at:

  https://github.com/intel/gvt-linux tags/gvt-fixes-2021-07-15

for you to fetch changes up to c90b4503ccf42d9d367e843c223df44aa550e82a:

  drm/i915/gvt: Clear d3_entered on elsp cmd submission. (2021-07-08 16:42:34 +0800)

----------------------------------------------------------------
gvt-fixes-2021-07-15

- Fix shadow ppgtt invalidation with proper D3 state tracking (Colin)

----------------------------------------------------------------
Colin Xu (1):
      drm/i915/gvt: Clear d3_entered on elsp cmd submission.

 drivers/gpu/drm/i915/gvt/handlers.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

--rWhLK7VZz0iBluhq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCYO+b4AAKCRCxBBozTXgY
J+wBAJ9hftziDl6VE5S5it1dFK/+fRDRggCfU52k3YhxUq8mqbJoQhr74DP2W+0=
=6BAM
-----END PGP SIGNATURE-----

--rWhLK7VZz0iBluhq--

--===============1366309965==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1366309965==--
