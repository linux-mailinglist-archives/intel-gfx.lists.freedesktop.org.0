Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67548310608
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 08:46:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B973B6F3F5;
	Fri,  5 Feb 2021 07:46:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0BA66F3F5;
 Fri,  5 Feb 2021 07:46:19 +0000 (UTC)
IronPort-SDR: I0qhXyG7zy4XFcs07CO6qrgxC/Wr6wDteVcQmRpEpxwOO6gXb/fj3dkwhXg1/yObNTW3KqavfC
 MnxoRL7pUhHg==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="178835318"
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; 
 d="asc'?scan'208";a="178835318"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 23:46:17 -0800
IronPort-SDR: OBKu+uYwQTXEqTJCl9d2oVlGngcsGJ2+XbVqdiqVnhOwhCtRZ330o1ggoB0xUSC7Af7xmWovuE
 rMOBHNQxymhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; 
 d="asc'?scan'208";a="434317673"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
 by orsmga001.jf.intel.com with ESMTP; 04 Feb 2021 23:46:14 -0800
Date: Fri, 5 Feb 2021 15:30:57 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Message-ID: <20210205073057.GR2043@zhen-hp.sh.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PULL] gvt-gt-next
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
Content-Type: multipart/mixed; boundary="===============1132736968=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1132736968==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="sXc4Kmr5FA7axrvy"
Content-Disposition: inline


--sXc4Kmr5FA7axrvy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


Hi,

Here's more gvt next changes including ww locking fix from Zhi, and
replace to use i915 engine default state for GVT cmd parser init.
Those have all been verified without regression. Details below.

Thanks.
--
The following changes since commit 69b4b99842201bc24c98ba66b922d8879e190483:

  drm/i915/gvt: Add missing forward decl of intel_vgpu for HDRTEST (2021-01-21 15:51:21 +0200)

are available in the Git repository at:

  https://github.com/intel/gvt-linux tags/gvt-gt-next-2020-02-05

for you to fetch changes up to e156285b120feaac6207e6bd3fa31d9ae8ffd80d:

  drm/i915/gvt: Purge dev_priv->gt (2021-02-05 15:28:36 +0800)

----------------------------------------------------------------
gvt-gt-next-2020-02-05

- GVT object ww locking fix (Zhi)
- One smatch fix for uninitialized return value (Dan)
- Use i915 engine's default state for GVT cmd parser init (Chris)
- Purge dev_priv->gt (Chris)

----------------------------------------------------------------
Chris Wilson (2):
      drm/i915/gvt: Parse default state to update reg whitelist
      drm/i915/gvt: Purge dev_priv->gt

Dan Carpenter (1):
      drm/i915/gvt: fix uninitialized return in intel_gvt_update_reg_whitelist()

Zhenyu Wang (1):
      Merge tag 'drm-intel-gt-next-2021-01-21-1' into gvt-gt-next

Zhi Wang (1):
      drm/i915/gvt: Introduce per object locking in GVT scheduler.

 drivers/gpu/drm/i915/gvt/cmd_parser.c | 92 ++++++++---------------------------
 drivers/gpu/drm/i915/gvt/execlist.c   |  8 ++-
 drivers/gpu/drm/i915/gvt/scheduler.c  | 52 +++++++++++++++-----
 3 files changed, 64 insertions(+), 88 deletions(-)

--sXc4Kmr5FA7axrvy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCYBz0LAAKCRCxBBozTXgY
J+QIAJ4scfM9tGtCzYbNW0yeIkdhBs31qQCfSB98/hB0s8OAAxZIwc1ZyX3VX84=
=YBxy
-----END PGP SIGNATURE-----

--sXc4Kmr5FA7axrvy--

--===============1132736968==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1132736968==--
