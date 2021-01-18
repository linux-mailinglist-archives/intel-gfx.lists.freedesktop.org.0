Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1A32F99CB
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 07:21:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E27CA6E0D6;
	Mon, 18 Jan 2021 06:20:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C7026E0D6
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 06:20:57 +0000 (UTC)
IronPort-SDR: YorI+b3qq/eMv1qlpGkTFBhj4Hmh0AkfjoZg9WOZXuayu7R102yhDnvo9k9xHN5wTlLsrgnazf
 ugLpXPjdD18A==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="166430910"
X-IronPort-AV: E=Sophos;i="5.79,355,1602572400"; 
 d="asc'?scan'208";a="166430910"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2021 22:20:55 -0800
IronPort-SDR: ydAn1tK5cZiUeFEX7uMlnmcII5nzeJmvnboBbfS0LNxnDKMjQ1J1WWsnALBioxmqEEzO5vggmM
 1NF2wgomNmpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,355,1602572400"; 
 d="asc'?scan'208";a="399019489"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
 by fmsmga004.fm.intel.com with ESMTP; 17 Jan 2021 22:20:54 -0800
Date: Mon, 18 Jan 2021 14:04:06 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <20210118060406.GA15982@zhen-hp.sh.intel.com>
References: <87im8soq2w.fsf@intel.com>
 <20210114005819.4290-1-xiong.y.zhang@intel.com>
 <20210114051410.GU15982@zhen-hp.sh.intel.com>
 <878s8upj75.fsf@intel.com>
 <161070850877.79726.12218329205250979912@jlahtine-mobl.ger.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <161070850877.79726.12218329205250979912@jlahtine-mobl.ger.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915: Try to guess PCH type even
 without ISA bridge
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
Cc: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk
Content-Type: multipart/mixed; boundary="===============1661299829=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1661299829==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="idY8LE8SD6/8DnRI"
Content-Disposition: inline


--idY8LE8SD6/8DnRI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2021.01.15 13:01:49 +0200, Joonas Lahtinen wrote:
> Quoting Jani Nikula (2021-01-15 12:50:54)
> > On Thu, 14 Jan 2021, Zhenyu Wang <zhenyuw@linux.intel.com> wrote:
> > > On 2021.01.14 08:58:19 +0800, Xiong Zhang wrote:
> > >> From: Zhenyu Wang <zhenyuw@linux.intel.com>
> > >>=20
> > >> Some vmm like hyperv and crosvm don't supply any ISA bridge to their=
 guest,
> > >> when igd passthrough is equipped on these vmm, guest i915 display may
> > >> couldn't work as guest i915 detects PCH_NONE pch type.
> > >>=20
> > >> When i915 runs as guest, this patch guess pch type through gpu type =
even
> > >> without ISA bridge.
> > >>=20
> > >> v2: Fix CI warning
> > >> v3: Add HAS_DISPLAY()=3D true condition beforce guessing virt pch, t=
hen
> > >>     refactori.
> > >> v4: Fix CI warning
> > >>=20
> > >> Signed-off-by: Zhenyu Wang <zhenyuw@linux.intel.com>
> > >> Signed-off-by: Xiong Zhang <xiong.y.zhang@intel.com>
> > >> ---
> > >>  drivers/gpu/drm/i915/i915_drv.h  |  7 +++++-
> > >>  drivers/gpu/drm/i915/intel_pch.c | 39 ++++++++++++++++++-----------=
---
> > >>  2 files changed, 28 insertions(+), 18 deletions(-)
> > >>
> > >
> > > Good to me, thanks! I think this should change author to you. :)
> > >
> > > Reviewed-by: Zhenyu Wang <zhenyuw@linux.intel.com>
> >=20
> > Pushed to drm-intel-next, thanks for the patch and review. I ended up
> > retaining Zhenyu's authorship, and added
> >=20
> > Co-developed-by: Xiong Zhang <xiong.y.zhang@intel.com>
>=20
> This only works for the majority of SKUs which happen to use the PCH
> that is most common. I NAKed very similar patch some years back asking
> for a reliable means to detect the PCH type instead.
>=20
> Has there been any attempt to introduce such mechanism?
>=20

I think the situation is that if just passing through GPU device, as
full device model depends on userspace VMM, we have no way to properly
detect PCH type from device, e.g in case of one GEN device which could
live with two or more different PCH types. It's better if either we
have properly defined way to detect through GPU device or display arch
always defines CPU/PCH display in pair.

Currently this tries to assume PCH with best effort that fixed bunch of
problems. On really mismatch case, how about adding i915 parameter to
override PCH type? As that won't add dependency on other components..

--idY8LE8SD6/8DnRI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCYAUk0QAKCRCxBBozTXgY
J1B8AKCJ9kjHI9E+4Tp0JZHnwgQVIIZAswCeLfp6zXoURxUEhvQdzKVEm12MhaQ=
=WSvN
-----END PGP SIGNATURE-----

--idY8LE8SD6/8DnRI--

--===============1661299829==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1661299829==--
