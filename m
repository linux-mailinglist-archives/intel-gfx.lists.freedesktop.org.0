Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9BF50519
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 11:04:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4FEB899C4;
	Mon, 24 Jun 2019 09:04:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40ECC899C4
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 09:04:50 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jun 2019 02:04:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,411,1557212400"; 
 d="asc'?scan'208";a="155104078"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.13.116])
 by orsmga008.jf.intel.com with ESMTP; 24 Jun 2019 02:04:48 -0700
Date: Mon, 24 Jun 2019 17:02:31 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190624090231.GP9684@zhen-hp.sh.intel.com>
References: <20190621191313.27709-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
In-Reply-To: <20190621191313.27709-1-chris@chris-wilson.co.uk>
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
Content-Type: multipart/mixed; boundary="===============0106291154=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0106291154==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="82sSsPTX2JCK/L1V"
Content-Disposition: inline


--82sSsPTX2JCK/L1V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019.06.21 20:13:13 +0100, Chris Wilson wrote:
> Preempt-to-busy uses a GPU semaphore to enforce an idle-barrier across
> preemption, but mediated gvt does not fully support semaphores.
>

Current looks semaphore is still used from emit_fini_breadcrumb which
caused gvt error, gvt may support memory based semaphore but not for
reg based.

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/g=
t/intel_lrc.c
> index c8a0c9b32764..d8649e759ce8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -294,6 +294,9 @@ static inline bool need_preempt(const struct intel_en=
gine_cs *engine,
>  {
>  	int last_prio;
> =20
> +	if (!intel_engine_has_preemption(engine))
> +		return false;
> +
>  	/*
>  	 * Check if the current priority hint merits a preemption attempt.
>  	 *
> @@ -890,6 +893,9 @@ need_timeslice(struct intel_engine_cs *engine, const =
struct i915_request *rq)
>  {
>  	int hint;
> =20
> +	if (!intel_engine_has_preemption(engine))
> +		return false;
> +
>  	if (list_is_last(&rq->sched.link, &engine->active.requests))
>  		return false;
> =20
> @@ -2672,10 +2678,11 @@ void intel_execlists_set_default_submission(struc=
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
> --=20
> 2.20.1
>=20
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--=20
Open Source Technology Center, Intel ltd.

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--82sSsPTX2JCK/L1V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXRCRpwAKCRCxBBozTXgY
JyEmAJ9nYmdLaVp+ugghVtOPkqt04xKSqQCfUxB8oYqEB0YomULAwLzZ7xYG2cw=
=ACp3
-----END PGP SIGNATURE-----

--82sSsPTX2JCK/L1V--

--===============0106291154==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0106291154==--
