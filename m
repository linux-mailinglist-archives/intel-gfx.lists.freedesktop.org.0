Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B7989861
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 10:03:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48FE988503;
	Mon, 12 Aug 2019 08:03:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 330CD88503
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 08:03:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 01:02:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,376,1559545200"; 
 d="asc'?scan'208";a="259706922"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.13.116])
 by orsmga001.jf.intel.com with ESMTP; 12 Aug 2019 01:02:03 -0700
Date: Mon, 12 Aug 2019 15:57:56 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190812075756.GD14790@zhen-hp.sh.intel.com>
References: <20190809154146.16397-1-chris@chris-wilson.co.uk>
 <874l2q8gij.fsf@gaia.fi.intel.com>
 <156536737864.32306.8520357726207994926@skylake-alporthouse-com>
MIME-Version: 1.0
In-Reply-To: <156536737864.32306.8520357726207994926@skylake-alporthouse-com>
User-Agent: Mutt/1.10.0 (2018-05-17)
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Remove
 i915_gem_context_create_gvt()
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
Content-Type: multipart/mixed; boundary="===============0340921777=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0340921777==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="XvKFcGCOAo53UbWW"
Content-Disposition: inline


--XvKFcGCOAo53UbWW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019.08.09 17:16:18 +0100, Chris Wilson wrote:
> Quoting Mika Kuoppala (2019-08-09 17:12:20)
> > Chris Wilson <chris@chris-wilson.co.uk> writes:
> >=20
> > > As we are phasing out using the GEM context for internal clients that
> > > need to manipulate logical context state directly, remove the
> > > constructor for the GVT context. We are not using it for anything oth=
er
> > > than default setup and allocation of an i915_ppgtt.
> > >
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> >=20
> > Not familiar with gvt but seems to create similar enough
> > context.=20
> >=20
> > Higher priority, not closed and using more strict
> > lock.
>=20
> I thought they would appreciate the higher priority ;)
>=20
> gvt currently doesn't have anyway for it to determine the relative
> priority of its guest vs the host, so if we set it too low we impact the
> qos of the guest, too high and its affects the qos of the host. Keeping
> it at max user though still gives the kernel some leeway to usurp it.
> And who knows one day we may get a scheduler.

yep, appreciate that. ;)

Acked-by: Zhenyu Wang <zhenyuw@linux.intel.com>

--=20
Open Source Technology Center, Intel ltd.

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--XvKFcGCOAo53UbWW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXVEcAwAKCRCxBBozTXgY
JxTCAJ9lwqOfVtvzettshXd4QrLzWALoZQCfd8DDPOfqD0GOTSH2vegBbnqSBYs=
=qUnv
-----END PGP SIGNATURE-----

--XvKFcGCOAo53UbWW--

--===============0340921777==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0340921777==--
