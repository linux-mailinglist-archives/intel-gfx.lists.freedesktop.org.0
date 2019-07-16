Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B556A4E8
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2019 11:28:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 094B46E0E5;
	Tue, 16 Jul 2019 09:28:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82BDF6E0E5
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2019 09:28:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 02:28:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,497,1557212400"; 
 d="asc'?scan'208";a="194828365"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.13.116])
 by fmsmga002.fm.intel.com with ESMTP; 16 Jul 2019 02:28:28 -0700
Date: Tue, 16 Jul 2019 17:25:23 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190716092523.GQ16681@zhen-hp.sh.intel.com>
References: <20190709091233.8573-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
In-Reply-To: <20190709091233.8573-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.0 (2018-05-17)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Disable preemption
 under GVT
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
Content-Type: multipart/mixed; boundary="===============1221382301=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1221382301==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="aYrjF+tKt+ApYAdb"
Content-Disposition: inline


--aYrjF+tKt+ApYAdb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019.07.09 10:12:33 +0100, Chris Wilson wrote:
> Preempt-to-busy uses a GPU semaphore to enforce an idle-barrier across
> preemption, but mediated gvt does not fully support semaphores.
>=20
> v2: Fiddle around with the flags and settle on using has-semaphores for
> the core bits so that we retain the ability to preempt our own
> semaphores.
>=20
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> Cc: Xiaolin Zhang <xiaolin.zhang@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---

I've tried to run guest with this one for several benchmarks on SKL
and didn't observe hang. I think the hang met by Xiaolin might be caused
by other things that can be double checked later.

So for semaphore disable in vGPU case,

Acked-by: Zhenyu Wang <zhenyuw@linux.intel.com>

thanks!

>  drivers/gpu/drm/i915/gt/intel_engine_cs.c |  4 ++--
>  drivers/gpu/drm/i915/gt/intel_lrc.c       | 24 +++++++++++++++++------
>  drivers/gpu/drm/i915/gt/selftest_lrc.c    |  6 ++++++
>  3 files changed, 26 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/=
i915/gt/intel_engine_cs.c
> index 56310812da21..614ed8c488ef 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -825,6 +825,8 @@ int intel_engine_init_common(struct intel_engine_cs *=
engine)
>  	struct drm_i915_private *i915 =3D engine->i915;
>  	int ret;
> =20
> +	engine->set_default_submission(engine);
> +
>  	/* We may need to do things with the shrinker which
>  	 * require us to immediately switch back to the default
>  	 * context. This can cause a problem as pinning the
> @@ -852,8 +854,6 @@ int intel_engine_init_common(struct intel_engine_cs *=
engine)
> =20
>  	engine->emit_fini_breadcrumb_dw =3D ret;
> =20
> -	engine->set_default_submission(engine);
> -
>  	return 0;
> =20
>  err_unpin:
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/g=
t/intel_lrc.c
> index 558a5850de3c..ef36f4b5e212 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -295,6 +295,9 @@ static inline bool need_preempt(const struct intel_en=
gine_cs *engine,
>  {
>  	int last_prio;
> =20
> +	if (!intel_engine_has_semaphores(engine))
> +		return false;
> +
>  	/*
>  	 * Check if the current priority hint merits a preemption attempt.
>  	 *
> @@ -893,6 +896,9 @@ need_timeslice(struct intel_engine_cs *engine, const =
struct i915_request *rq)
>  {
>  	int hint;
> =20
> +	if (!intel_engine_has_semaphores(engine))
> +		return false;
> +
>  	if (list_is_last(&rq->sched.link, &engine->active.requests))
>  		return false;
> =20
> @@ -2634,7 +2640,8 @@ static u32 *gen8_emit_fini_breadcrumb(struct i915_r=
equest *request, u32 *cs)
>  	*cs++ =3D MI_USER_INTERRUPT;
> =20
>  	*cs++ =3D MI_ARB_ON_OFF | MI_ARB_ENABLE;
> -	cs =3D emit_preempt_busywait(request, cs);
> +	if (intel_engine_has_semaphores(request->engine))
> +		cs =3D emit_preempt_busywait(request, cs);
> =20
>  	request->tail =3D intel_ring_offset(request, cs);
>  	assert_ring_tail_valid(request->ring, request->tail);
> @@ -2658,7 +2665,8 @@ static u32 *gen8_emit_fini_breadcrumb_rcs(struct i9=
15_request *request, u32 *cs)
>  	*cs++ =3D MI_USER_INTERRUPT;
> =20
>  	*cs++ =3D MI_ARB_ON_OFF | MI_ARB_ENABLE;
> -	cs =3D emit_preempt_busywait(request, cs);
> +	if (intel_engine_has_semaphores(request->engine))
> +		cs =3D emit_preempt_busywait(request, cs);
> =20
>  	request->tail =3D intel_ring_offset(request, cs);
>  	assert_ring_tail_valid(request->ring, request->tail);
> @@ -2706,10 +2714,11 @@ void intel_execlists_set_default_submission(struc=
t intel_engine_cs *engine)
>  	engine->unpark =3D NULL;
> =20
>  	engine->flags |=3D I915_ENGINE_SUPPORTS_STATS;
> -	if (!intel_vgpu_active(engine->i915))
> +	if (!intel_vgpu_active(engine->i915)) {
>  		engine->flags |=3D I915_ENGINE_HAS_SEMAPHORES;
> -	if (HAS_LOGICAL_RING_PREEMPTION(engine->i915))
> -		engine->flags |=3D I915_ENGINE_HAS_PREEMPTION;
> +		if (HAS_LOGICAL_RING_PREEMPTION(engine->i915))
> +			engine->flags |=3D I915_ENGINE_HAS_PREEMPTION;
> +	}
>  }
> =20
>  static void execlists_destroy(struct intel_engine_cs *engine)
> @@ -3399,7 +3408,6 @@ intel_execlists_create_virtual(struct i915_gem_cont=
ext *ctx,
>  	ve->base.class =3D OTHER_CLASS;
>  	ve->base.uabi_class =3D I915_ENGINE_CLASS_INVALID;
>  	ve->base.instance =3D I915_ENGINE_CLASS_INVALID_VIRTUAL;
> -	ve->base.flags =3D I915_ENGINE_IS_VIRTUAL;
> =20
>  	/*
>  	 * The decision on whether to submit a request using semaphores
> @@ -3496,8 +3504,12 @@ intel_execlists_create_virtual(struct i915_gem_con=
text *ctx,
>  		ve->base.emit_fini_breadcrumb =3D sibling->emit_fini_breadcrumb;
>  		ve->base.emit_fini_breadcrumb_dw =3D
>  			sibling->emit_fini_breadcrumb_dw;
> +
> +		ve->base.flags =3D sibling->flags;
>  	}
> =20
> +	ve->base.flags |=3D I915_ENGINE_IS_VIRTUAL;
> +
>  	return &ve->context;
> =20
>  err_put:
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i91=
5/gt/selftest_lrc.c
> index fe4e15f9ba9d..a13f06ba984b 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -269,6 +269,9 @@ static int live_timeslice_preempt(void *arg)
>  		enum intel_engine_id id;
> =20
>  		for_each_engine(engine, i915, id) {
> +			if (!intel_engine_has_preemption(engine))
> +				continue;
> +
>  			memset(vaddr, 0, PAGE_SIZE);
> =20
>  			err =3D slice_semaphore_queue(engine, vma, count);
> @@ -354,6 +357,9 @@ static int live_busywait_preempt(void *arg)
>  		struct igt_live_test t;
>  		u32 *cs;
> =20
> +		if (!intel_engine_has_preemption(engine))
> +			continue;
> +
>  		if (!intel_engine_can_store_dword(engine))
>  			continue;
> =20
> --=20
> 2.22.0
>=20

--=20
Open Source Technology Center, Intel ltd.

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--aYrjF+tKt+ApYAdb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXS2YAgAKCRCxBBozTXgY
J5ZqAKCZAS/Gh5aNhM7Dwp7pwCcSQLwrZwCfXgZ0OB2arGJAOG6GIr0MQtd+1aM=
=YtCl
-----END PGP SIGNATURE-----

--aYrjF+tKt+ApYAdb--

--===============1221382301==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1221382301==--
