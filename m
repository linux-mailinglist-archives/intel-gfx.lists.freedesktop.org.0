Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF85242408
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Aug 2020 04:24:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFE606E899;
	Wed, 12 Aug 2020 02:24:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 841DF6E899
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Aug 2020 02:24:43 +0000 (UTC)
IronPort-SDR: kyx08K2fBmnVr150hYjPwMQDO+476guyik8bavbTqW0FdyLNWH46tBx058K1aq9U1H0zNG8Guj
 vLFJLTcg2+Qg==
X-IronPort-AV: E=McAfee;i="6000,8403,9710"; a="215388861"
X-IronPort-AV: E=Sophos;i="5.76,302,1592895600"; 
 d="asc'?scan'208";a="215388861"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2020 19:24:42 -0700
IronPort-SDR: sDn2iAOnX9mhI9Nv3GF7T+7Pf0twoyaXkCz6MMAiGWJyHRMtediD+kzI43g87lDV9Yy0F2Czma
 O8HvftZ9ZcjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,302,1592895600"; 
 d="asc'?scan'208";a="294911761"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
 by orsmga006.jf.intel.com with ESMTP; 11 Aug 2020 19:24:41 -0700
Date: Wed, 12 Aug 2020 10:06:31 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200812020631.GP27035@zhen-hp.sh.intel.com>
References: <20200811030209.21058-1-yan.y.zhao@intel.com>
 <20200811092532.13753-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
In-Reply-To: <20200811092532.13753-1-chris@chris-wilson.co.uk>
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
Content-Type: multipart/mixed; boundary="===============1256614729=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1256614729==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="JlQgkxKsF3TswZob"
Content-Disposition: inline


--JlQgkxKsF3TswZob
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2020.08.11 10:25:32 +0100, Chris Wilson wrote:
> The "mmio" writes into vgpu registers are simple memory traps from the
> guest into the host. We do not need to assert in the guest that the
> device is awake for the io as we do not write to the device itself.
>=20
> However, over time we have refactored all the mmio accessors with the
> result that the vgpu reuses the gen2 accessors and so inherits the
> assert for runtime-pm of the native device. The assert though has
> actually been there since commit 3be0bf5acca6 ("drm/i915: Create vGPU
> specific MMIO operations to reduce traps").
>=20
> References: 3be0bf5acca6 ("drm/i915: Create vGPU specific MMIO operations=
 to reduce traps")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Yan Zhao <yan.y.zhao@intel.com>
> Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> ---

Reviewed-by: Zhenyu Wang <zhenyuw@linux.intel.com>

Thanks!

>  drivers/gpu/drm/i915/intel_uncore.c | 27 ++++++++++++++++++++++++++-
>  1 file changed, 26 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/i=
ntel_uncore.c
> index f5edee17902a..6d3310794d0f 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1209,6 +1209,18 @@ unclaimed_reg_debug(struct intel_uncore *uncore,
>  		spin_unlock(&uncore->debug->lock);
>  }
> =20
> +#define __vgpu_read(x) \
> +static u##x \
> +vgpu_read##x(struct intel_uncore *uncore, i915_reg_t reg, bool trace) { \
> +	u##x val =3D __raw_uncore_read##x(uncore, reg); \
> +	trace_i915_reg_rw(false, reg, val, sizeof(val), trace); \
> +	return val; \
> +}
> +__vgpu_read(8)
> +__vgpu_read(16)
> +__vgpu_read(32)
> +__vgpu_read(64)
> +
>  #define GEN2_READ_HEADER(x) \
>  	u##x val =3D 0; \
>  	assert_rpm_wakelock_held(uncore->rpm);
> @@ -1414,6 +1426,16 @@ __gen_reg_write_funcs(gen8);
>  #undef GEN6_WRITE_FOOTER
>  #undef GEN6_WRITE_HEADER
> =20
> +#define __vgpu_write(x) \
> +static void \
> +vgpu_write##x(struct intel_uncore *uncore, i915_reg_t reg, u##x val, boo=
l trace) { \
> +	trace_i915_reg_rw(true, reg, val, sizeof(val), trace); \
> +	__raw_uncore_write##x(uncore, reg, val); \
> +}
> +__vgpu_write(8)
> +__vgpu_write(16)
> +__vgpu_write(32)
> +
>  #define ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, x) \
>  do { \
>  	(uncore)->funcs.mmio_writeb =3D x##_write8; \
> @@ -1735,7 +1757,10 @@ static void uncore_raw_init(struct intel_uncore *u=
ncore)
>  {
>  	GEM_BUG_ON(intel_uncore_has_forcewake(uncore));
> =20
> -	if (IS_GEN(uncore->i915, 5)) {
> +	if (intel_vgpu_active(uncore->i915)) {
> +		ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, vgpu);
> +		ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, vgpu);
> +	} else if (IS_GEN(uncore->i915, 5)) {
>  		ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, gen5);
>  		ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, gen5);
>  	} else {
> --=20
> 2.20.1
>=20

--=20

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--JlQgkxKsF3TswZob
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXzNOpwAKCRCxBBozTXgY
J7BrAJ4nIxjGH1duKkUDAIoWMNmlnIMG4gCfT/gSO3c5fkYtDuoUDpZvnf2Gl3A=
=Ox/A
-----END PGP SIGNATURE-----

--JlQgkxKsF3TswZob--

--===============1256614729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1256614729==--
