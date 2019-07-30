Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1457A192
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 09:04:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57E156E417;
	Tue, 30 Jul 2019 07:04:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B79506E417;
 Tue, 30 Jul 2019 07:04:01 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 00:04:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,325,1559545200"; 
 d="asc'?scan'208";a="176688546"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.13.116])
 by orsmga006.jf.intel.com with ESMTP; 30 Jul 2019 00:03:58 -0700
Date: Tue, 30 Jul 2019 15:00:20 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190730070020.GX8319@zhen-hp.sh.intel.com>
References: <20190723092958.GD8319@zhen-hp.sh.intel.com>
 <20190729033347.GQ8319@zhen-hp.sh.intel.com>
 <87zhkxnlsu.fsf@intel.com>
MIME-Version: 1.0
In-Reply-To: <87zhkxnlsu.fsf@intel.com>
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, "Yuan,
 Hang" <hang.yuan@intel.com>, "Lv, Zhiyuan" <zhiyuan.lv@intel.com>,
 intel-gvt-dev <intel-gvt-dev@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0921262920=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0921262920==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cxMSjUqMQBJIqbX5"
Content-Disposition: inline


--cxMSjUqMQBJIqbX5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019.07.29 14:05:05 +0300, Jani Nikula wrote:
>=20
> Please fix, and make it a habit to run the checks before sending the
> pull requests.
>=20

Sorry for that! I've tried to refresh and regenerate the pull. This also
brings in two more fixes in queue, one for runtime pm warning fix and anoth=
er
one for windows guest TDR reset fix.

Thanks.
--
The following changes since commit 89f5752307cf53010d97503ac501b2ca1b089922:

  drm/i915: Fix the TBT AUX power well enabling (2019-07-29 15:54:37 +0300)

are available in the Git repository at:

  https://github.com/intel/gvt-linux.git tags/gvt-fixes-2019-07-30

for you to fetch changes up to 4187414808095f645ca0661f8dde77617e2e7cb3:

  drm/i915/gvt: Adding ppgtt to GVT GEM context after shadow pdps settled. =
(2019-07-30 14:30:56 +0800)

----------------------------------------------------------------
gvt-fixes-2019-07-30

- Guard against potential ggtt access error (Xiong)
- Fix includecheck (Zhenyu)
- Fix cache entry for guest page mapping found by 2M ppgtt guest (Xiaolin)
- Fix runtime pm warning (Xiaolin)
- Fix shadow mm settlement for Windows guest reset failure (Colin)

----------------------------------------------------------------
Colin Xu (1):
      drm/i915/gvt: Adding ppgtt to GVT GEM context after shadow pdps settl=
ed.

Xiaolin Zhang (2):
      drm/i915/gvt: fix incorrect cache entry for guest page mapping
      drm/i915/gvt: grab runtime pm first for forcewake use

Xiong Zhang (3):
      drm/i915/gvt: Warning for invalid ggtt access
      drm/i915/gvt: Don't use ggtt_validdate_range() with size=3D0
      drm/i915/gvt: Checking workload's gma earlier

Zhenyu Wang (1):
      drm/i915/gvt: remove duplicate include of trace.h

 drivers/gpu/drm/i915/gvt/cmd_parser.c   | 10 ------
 drivers/gpu/drm/i915/gvt/fb_decoder.c   |  6 ++--
 drivers/gpu/drm/i915/gvt/gtt.c          |  9 +++++
 drivers/gpu/drm/i915/gvt/kvmgt.c        | 12 +++++++
 drivers/gpu/drm/i915/gvt/scheduler.c    | 59 ++++++++++++++++++++++++-----=
----
 drivers/gpu/drm/i915/gvt/trace_points.c |  2 --
 6 files changed, 68 insertions(+), 30 deletions(-)

--=20
Open Source Technology Center, Intel ltd.

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--cxMSjUqMQBJIqbX5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXT/rBAAKCRCxBBozTXgY
J3eDAJ9IbcLyXfV77uIiu/xsYnriuczlmwCeIRaCDNB90b00poKfnfCX4wWUpoE=
=Caxx
-----END PGP SIGNATURE-----

--cxMSjUqMQBJIqbX5--

--===============0921262920==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0921262920==--
