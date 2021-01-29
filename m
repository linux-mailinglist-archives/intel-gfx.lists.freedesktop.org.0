Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C023084FD
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 06:20:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A6756E433;
	Fri, 29 Jan 2021 05:20:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3B746E433
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 05:20:33 +0000 (UTC)
IronPort-SDR: U7u5p2Zhmoif6yReMJvSzjkRxHQL7gxO5N3rp+xU5bcgApCd2uOwS5trFddxxBy1BRuTpGo+Xz
 GA1oLqnN6Sjg==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="160140237"
X-IronPort-AV: E=Sophos;i="5.79,384,1602572400"; 
 d="asc'?scan'208";a="160140237"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 21:20:33 -0800
IronPort-SDR: 3MnvKwQa7E+K8yZxTt6R+hpPWF9LVOn8ryjjRVwFr5sDx1+NMTNEfLlhnpsXATWMa2PPGqzFPO
 DKuo0MsDbqMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,384,1602572400"; 
 d="asc'?scan'208";a="409433696"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
 by fmsmga002.fm.intel.com with ESMTP; 28 Jan 2021 21:20:31 -0800
Date: Fri, 29 Jan 2021 13:05:31 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20210129050531.GQ1538@zhen-hp.sh.intel.com>
References: <20210129004933.29755-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
In-Reply-To: <20210129004933.29755-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gvt: Parse default state to
 update reg whitelist
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
Cc: Yan Zhao <yan.y.zhao@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============2060981509=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============2060981509==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="XWOWbaMNXpFDWE00"
Content-Disposition: inline


--XWOWbaMNXpFDWE00
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2021.01.29 00:49:32 +0000, Chris Wilson wrote:
> Rather than break existing context objects by incorrectly forcing them
> to rogue cache coherency and trying to assert a new mapping, read the
> reg whitelist from the default context image.
>

So this work actually lived within internal for some time, previously
we found that i915 didn't guarantee each engine's default_state would
be always valid, e.g for media engines if I remember correctly...so we
tried to get init hw state then. Currently looks i915 always ensure
default state for each engine, otherwise it would claim gt wedged, so
it's fine that we switch to i915 default state now.

Acked-by: Zhenyu Wang <zhenyuw@linux.intel.com>

I'd like to queue this through gvt tree, so we could get regression test
with VM before merging.

Thanks!

> And use gvt->gt, never &dev_priv->gt.
>=20
> Fixes: 493f30cd086e ("drm/i915/gvt: parse init context to update cmd acce=
ssible reg whitelist")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Kevin Tian <kevin.tian@intel.com>
> Cc: Wang Zhi <zhi.a.wang@intel.com>
> Cc: Yan Zhao <yan.y.zhao@intel.com>
> Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> Cc: Zhi Wang <zhi.a.wang@intel.com>
> ---
>  drivers/gpu/drm/i915/gvt/cmd_parser.c | 93 ++++++---------------------
>  1 file changed, 20 insertions(+), 73 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915=
/gvt/cmd_parser.c
> index 9a7087830cc2..ec6ea11d747f 100644
> --- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
> +++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
> @@ -41,6 +41,7 @@
>  #include "gt/intel_lrc.h"
>  #include "gt/intel_ring.h"
>  #include "gt/intel_gt_requests.h"
> +#include "gt/shmem_utils.h"
>  #include "gvt.h"
>  #include "i915_pvinfo.h"
>  #include "trace.h"
> @@ -3087,71 +3088,28 @@ int intel_gvt_scan_and_shadow_wa_ctx(struct intel=
_shadow_wa_ctx *wa_ctx)
>   */
>  void intel_gvt_update_reg_whitelist(struct intel_vgpu *vgpu)
>  {
> +	const unsigned long start =3D LRC_STATE_PN * PAGE_SIZE;
>  	struct intel_gvt *gvt =3D vgpu->gvt;
> -	struct drm_i915_private *dev_priv =3D gvt->gt->i915;
>  	struct intel_engine_cs *engine;
>  	enum intel_engine_id id;
> -	const unsigned long start =3D LRC_STATE_PN * PAGE_SIZE;
> -	struct i915_request *rq;
> -	struct intel_vgpu_submission *s =3D &vgpu->submission;
> -	struct i915_request *requests[I915_NUM_ENGINES] =3D {};
> -	bool is_ctx_pinned[I915_NUM_ENGINES] =3D {};
> -	int ret =3D 0;
> =20
>  	if (gvt->is_reg_whitelist_updated)
>  		return;
> =20
> -	for_each_engine(engine, &dev_priv->gt, id) {
> -		ret =3D intel_context_pin(s->shadow[id]);
> -		if (ret) {
> -			gvt_vgpu_err("fail to pin shadow ctx\n");
> -			goto out;
> -		}
> -		is_ctx_pinned[id] =3D true;
> -
> -		rq =3D i915_request_create(s->shadow[id]);
> -		if (IS_ERR(rq)) {
> -			gvt_vgpu_err("fail to alloc default request\n");
> -			ret =3D -EIO;
> -			goto out;
> -		}
> -		requests[id] =3D i915_request_get(rq);
> -		i915_request_add(rq);
> -	}
> -
> -	if (intel_gt_wait_for_idle(&dev_priv->gt,
> -				I915_GEM_IDLE_TIMEOUT) =3D=3D -ETIME) {
> -		ret =3D -EIO;
> -		goto out;
> -	}
> -
>  	/* scan init ctx to update cmd accessible list */
> -	for_each_engine(engine, &dev_priv->gt, id) {
> -		int size =3D engine->context_size - PAGE_SIZE;
> -		void *vaddr;
> +	for_each_engine(engine, gvt->gt, id) {
>  		struct parser_exec_state s;
> -		struct drm_i915_gem_object *obj;
> -		struct i915_request *rq;
> +		void *vaddr;
> +		int ret;
> =20
> -		rq =3D requests[id];
> -		GEM_BUG_ON(!i915_request_completed(rq));
> -		GEM_BUG_ON(!intel_context_is_pinned(rq->context));
> -		obj =3D rq->context->state->obj;
> +		if (!engine->default_state)
> +			continue;
> =20
> -		if (!obj) {
> -			ret =3D -EIO;
> -			goto out;
> -		}
> -
> -		i915_gem_object_set_cache_coherency(obj,
> -						    I915_CACHE_LLC);
> -
> -		vaddr =3D i915_gem_object_pin_map(obj, I915_MAP_WB);
> +		vaddr =3D shmem_pin_map(engine->default_state);
>  		if (IS_ERR(vaddr)) {
> -			gvt_err("failed to pin init ctx obj, ring=3D%d, err=3D%lx\n",
> -				id, PTR_ERR(vaddr));
> -			ret =3D PTR_ERR(vaddr);
> -			goto out;
> +			gvt_err("failed to map %s->default state, err:%zd\n",
> +				engine->name, PTR_ERR(vaddr));
> +			return;
>  		}
> =20
>  		s.buf_type =3D RING_BUFFER_CTX;
> @@ -3159,9 +3117,9 @@ void intel_gvt_update_reg_whitelist(struct intel_vg=
pu *vgpu)
>  		s.vgpu =3D vgpu;
>  		s.engine =3D engine;
>  		s.ring_start =3D 0;
> -		s.ring_size =3D size;
> +		s.ring_size =3D engine->context_size - start;
>  		s.ring_head =3D 0;
> -		s.ring_tail =3D size;
> +		s.ring_tail =3D s.ring_size;
>  		s.rb_va =3D vaddr + start;
>  		s.workload =3D NULL;
>  		s.is_ctx_wa =3D false;
> @@ -3169,29 +3127,18 @@ void intel_gvt_update_reg_whitelist(struct intel_=
vgpu *vgpu)
> =20
>  		/* skipping the first RING_CTX_SIZE(0x50) dwords */
>  		ret =3D ip_gma_set(&s, RING_CTX_SIZE);
> -		if (ret) {
> -			i915_gem_object_unpin_map(obj);
> -			goto out;
> +		if (ret =3D=3D 0) {
> +			ret =3D command_scan(&s, 0, s.ring_size, 0, s.ring_size);
> +			if (ret)
> +				gvt_err("Scan init ctx error\n");
>  		}
> =20
> -		ret =3D command_scan(&s, 0, size, 0, size);
> +		shmem_unpin_map(engine->default_state, vaddr);
>  		if (ret)
> -			gvt_err("Scan init ctx error\n");
> -
> -		i915_gem_object_unpin_map(obj);
> +			return;
>  	}
> =20
> -out:
> -	if (!ret)
> -		gvt->is_reg_whitelist_updated =3D true;
> -
> -	for (id =3D 0; id < I915_NUM_ENGINES ; id++) {
> -		if (requests[id])
> -			i915_request_put(requests[id]);
> -
> -		if (is_ctx_pinned[id])
> -			intel_context_unpin(s->shadow[id]);
> -	}
> +	gvt->is_reg_whitelist_updated =3D true;
>  }
> =20
>  int intel_gvt_scan_engine_context(struct intel_vgpu_workload *workload)
> --=20
> 2.20.1
>=20

--XWOWbaMNXpFDWE00
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCYBOXlgAKCRCxBBozTXgY
J0fYAKCRmgDAqEO1ZRgcvKrHl8Qqe1VUhQCfaoIKi+AGaupHvZjklW0/PTyXssc=
=Kfsv
-----END PGP SIGNATURE-----

--XWOWbaMNXpFDWE00--

--===============2060981509==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2060981509==--
