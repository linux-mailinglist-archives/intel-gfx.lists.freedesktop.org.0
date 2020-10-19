Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F279292511
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 11:58:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C50EC6E902;
	Mon, 19 Oct 2020 09:58:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23ABB6E902
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 09:58:25 +0000 (UTC)
IronPort-SDR: bEjf1gN/eFT9DW3WO01ufmVVH9oYO6tSzO/9Rc2hhMy+6hv0oMgebZzclh95PXXK75m96DUf00
 Uhlg5cLGhOBQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9778"; a="166222502"
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; 
 d="asc'?scan'208";a="166222502"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 02:58:24 -0700
IronPort-SDR: PeKQ49Wa9AC+E0zLpYxptvh64WpjCbnxMF/XOgCpyHrwYkxFvg5cjF8XeaGSQTC0XL+9ADvsJh
 cquLR2adWh9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; 
 d="asc'?scan'208";a="347377470"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
 by fmsmga004.fm.intel.com with ESMTP; 19 Oct 2020 02:58:23 -0700
Date: Mon, 19 Oct 2020 17:37:38 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201019093738.GS27141@zhen-hp.sh.intel.com>
References: <20200811030209.21058-1-yan.y.zhao@intel.com>
 <20200811092532.13753-1-chris@chris-wilson.co.uk>
 <20200812020631.GP27035@zhen-hp.sh.intel.com>
 <20200819083259.GD32450@zhen-hp.sh.intel.com>
MIME-Version: 1.0
In-Reply-To: <20200819083259.GD32450@zhen-hp.sh.intel.com>
User-Agent: Mutt/1.10.0 (2018-05-17)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Drop runtime-pm assert from vgpu
 io accessors
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
Cc: intel-gfx@lists.freedesktop.org, Yan Zhao <yan.y.zhao@intel.com>
Content-Type: multipart/mixed; boundary="===============1152829852=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1152829852==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="yPSgZSQ6mfPWgZ9n"
Content-Disposition: inline


--yPSgZSQ6mfPWgZ9n
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


Hi, Chris

Looks this one is still missed to push? Could you help?

Thanks

On 2020.08.19 16:32:59 +0800, Zhenyu Wang wrote:
>=20
> ping for committing?
>=20
> On 2020.08.12 10:06:31 +0800, Zhenyu Wang wrote:
> > On 2020.08.11 10:25:32 +0100, Chris Wilson wrote:
> > > The "mmio" writes into vgpu registers are simple memory traps from the
> > > guest into the host. We do not need to assert in the guest that the
> > > device is awake for the io as we do not write to the device itself.
> > >=20
> > > However, over time we have refactored all the mmio accessors with the
> > > result that the vgpu reuses the gen2 accessors and so inherits the
> > > assert for runtime-pm of the native device. The assert though has
> > > actually been there since commit 3be0bf5acca6 ("drm/i915: Create vGPU
> > > specific MMIO operations to reduce traps").
> > >=20
> > > References: 3be0bf5acca6 ("drm/i915: Create vGPU specific MMIO operat=
ions to reduce traps")
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: Yan Zhao <yan.y.zhao@intel.com>
> > > Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> > > ---
> >=20
> > Reviewed-by: Zhenyu Wang <zhenyuw@linux.intel.com>
> >=20
> > Thanks!
> >=20
> > >  drivers/gpu/drm/i915/intel_uncore.c | 27 ++++++++++++++++++++++++++-
> > >  1 file changed, 26 insertions(+), 1 deletion(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i9=
15/intel_uncore.c
> > > index f5edee17902a..6d3310794d0f 100644
> > > --- a/drivers/gpu/drm/i915/intel_uncore.c
> > > +++ b/drivers/gpu/drm/i915/intel_uncore.c
> > > @@ -1209,6 +1209,18 @@ unclaimed_reg_debug(struct intel_uncore *uncor=
e,
> > >  		spin_unlock(&uncore->debug->lock);
> > >  }
> > > =20
> > > +#define __vgpu_read(x) \
> > > +static u##x \
> > > +vgpu_read##x(struct intel_uncore *uncore, i915_reg_t reg, bool trace=
) { \
> > > +	u##x val =3D __raw_uncore_read##x(uncore, reg); \
> > > +	trace_i915_reg_rw(false, reg, val, sizeof(val), trace); \
> > > +	return val; \
> > > +}
> > > +__vgpu_read(8)
> > > +__vgpu_read(16)
> > > +__vgpu_read(32)
> > > +__vgpu_read(64)
> > > +
> > >  #define GEN2_READ_HEADER(x) \
> > >  	u##x val =3D 0; \
> > >  	assert_rpm_wakelock_held(uncore->rpm);
> > > @@ -1414,6 +1426,16 @@ __gen_reg_write_funcs(gen8);
> > >  #undef GEN6_WRITE_FOOTER
> > >  #undef GEN6_WRITE_HEADER
> > > =20
> > > +#define __vgpu_write(x) \
> > > +static void \
> > > +vgpu_write##x(struct intel_uncore *uncore, i915_reg_t reg, u##x val,=
 bool trace) { \
> > > +	trace_i915_reg_rw(true, reg, val, sizeof(val), trace); \
> > > +	__raw_uncore_write##x(uncore, reg, val); \
> > > +}
> > > +__vgpu_write(8)
> > > +__vgpu_write(16)
> > > +__vgpu_write(32)
> > > +
> > >  #define ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, x) \
> > >  do { \
> > >  	(uncore)->funcs.mmio_writeb =3D x##_write8; \
> > > @@ -1735,7 +1757,10 @@ static void uncore_raw_init(struct intel_uncor=
e *uncore)
> > >  {
> > >  	GEM_BUG_ON(intel_uncore_has_forcewake(uncore));
> > > =20
> > > -	if (IS_GEN(uncore->i915, 5)) {
> > > +	if (intel_vgpu_active(uncore->i915)) {
> > > +		ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, vgpu);
> > > +		ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, vgpu);
> > > +	} else if (IS_GEN(uncore->i915, 5)) {
> > >  		ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, gen5);
> > >  		ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, gen5);
> > >  	} else {
> > > --=20
> > > 2.20.1
> > >=20
> >=20
> > --=20
> >=20
> > $gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827
>=20
>=20
>=20
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>=20
>=20
> --=20
>=20
> $gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827



--=20

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--yPSgZSQ6mfPWgZ9n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCX41eYgAKCRCxBBozTXgY
JxP8AJ0SQBHMq+h/nlyIbmuvTHIU9t6vvwCgjIILAAGxy6za44SQDjpLcXekPKE=
=vlkH
-----END PGP SIGNATURE-----

--yPSgZSQ6mfPWgZ9n--

--===============1152829852==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1152829852==--
