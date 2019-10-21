Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D09DE3C7
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 07:35:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F34C28916F;
	Mon, 21 Oct 2019 05:35:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60F828916F
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 05:35:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Oct 2019 22:35:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,322,1566889200"; 
 d="asc'?scan'208";a="209243480"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.13.116])
 by orsmga002.jf.intel.com with ESMTP; 20 Oct 2019 22:35:26 -0700
Date: Mon, 21 Oct 2019 13:28:41 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191021052841.GA8745@zhen-hp.sh.intel.com>
References: <20191016183902.13614-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
In-Reply-To: <20191016183902.13614-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.0 (2018-05-17)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gvt: Wean off struct_mutex
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
Content-Type: multipart/mixed; boundary="===============1538536921=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1538536921==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="yrj/dFKFPuw6o+aM"
Content-Disposition: inline


--yrj/dFKFPuw6o+aM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019.10.16 19:39:01 +0100, Chris Wilson wrote:
> Use the local vgpu_lock while preparing workloads to avoid taking the
> obsolete i915->drm.struct_mutex
>=20
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---

Looks good to me. Sorry for late reply as just be back from vacation.

Reviewed-by: Zhenyu Wang <zhenyuw@linux.intel.com>

>  drivers/gpu/drm/i915/gvt/scheduler.c | 16 +++-------------
>  1 file changed, 3 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/=
gvt/scheduler.c
> index 6850f1f40241..ae3e56247576 100644
> --- a/drivers/gpu/drm/i915/gvt/scheduler.c
> +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
> @@ -415,10 +415,9 @@ int intel_gvt_scan_and_shadow_workload(struct intel_=
vgpu_workload *workload)
>  {
>  	struct intel_vgpu *vgpu =3D workload->vgpu;
>  	struct intel_vgpu_submission *s =3D &vgpu->submission;
> -	struct drm_i915_private *dev_priv =3D vgpu->gvt->dev_priv;
>  	int ret;
> =20
> -	lockdep_assert_held(&dev_priv->drm.struct_mutex);
> +	lockdep_assert_held(&vgpu->vgpu_lock);
> =20
>  	if (workload->shadow)
>  		return 0;
> @@ -580,8 +579,6 @@ static void update_vreg_in_ctx(struct intel_vgpu_work=
load *workload)
> =20
>  static void release_shadow_batch_buffer(struct intel_vgpu_workload *work=
load)
>  {
> -	struct intel_vgpu *vgpu =3D workload->vgpu;
> -	struct drm_i915_private *dev_priv =3D vgpu->gvt->dev_priv;
>  	struct intel_vgpu_shadow_bb *bb, *pos;
> =20
>  	if (list_empty(&workload->shadow_bb))
> @@ -590,8 +587,6 @@ static void release_shadow_batch_buffer(struct intel_=
vgpu_workload *workload)
>  	bb =3D list_first_entry(&workload->shadow_bb,
>  			struct intel_vgpu_shadow_bb, list);
> =20
> -	mutex_lock(&dev_priv->drm.struct_mutex);
> -
>  	list_for_each_entry_safe(bb, pos, &workload->shadow_bb, list) {
>  		if (bb->obj) {
>  			if (bb->accessing)
> @@ -609,8 +604,6 @@ static void release_shadow_batch_buffer(struct intel_=
vgpu_workload *workload)
>  		list_del(&bb->list);
>  		kfree(bb);
>  	}
> -
> -	mutex_unlock(&dev_priv->drm.struct_mutex);
>  }
> =20
>  static int prepare_workload(struct intel_vgpu_workload *workload)
> @@ -685,7 +678,6 @@ static int prepare_workload(struct intel_vgpu_workloa=
d *workload)
>  static int dispatch_workload(struct intel_vgpu_workload *workload)
>  {
>  	struct intel_vgpu *vgpu =3D workload->vgpu;
> -	struct drm_i915_private *dev_priv =3D vgpu->gvt->dev_priv;
>  	struct i915_request *rq;
>  	int ring_id =3D workload->ring_id;
>  	int ret;
> @@ -694,7 +686,6 @@ static int dispatch_workload(struct intel_vgpu_worklo=
ad *workload)
>  		ring_id, workload);
> =20
>  	mutex_lock(&vgpu->vgpu_lock);
> -	mutex_lock(&dev_priv->drm.struct_mutex);
> =20
>  	ret =3D intel_gvt_workload_req_alloc(workload);
>  	if (ret)
> @@ -729,7 +720,6 @@ static int dispatch_workload(struct intel_vgpu_worklo=
ad *workload)
>  err_req:
>  	if (ret)
>  		workload->status =3D ret;
> -	mutex_unlock(&dev_priv->drm.struct_mutex);
>  	mutex_unlock(&vgpu->vgpu_lock);
>  	return ret;
>  }
> @@ -1594,9 +1584,9 @@ intel_vgpu_create_workload(struct intel_vgpu *vgpu,=
 int ring_id,
>  	 */
>  	if (list_empty(workload_q_head(vgpu, ring_id))) {
>  		intel_runtime_pm_get(&dev_priv->runtime_pm);
> -		mutex_lock(&dev_priv->drm.struct_mutex);
> +		mutex_lock(&vgpu->vgpu_lock);
>  		ret =3D intel_gvt_scan_and_shadow_workload(workload);
> -		mutex_unlock(&dev_priv->drm.struct_mutex);
> +		mutex_unlock(&vgpu->vgpu_lock);
>  		intel_runtime_pm_put_unchecked(&dev_priv->runtime_pm);
>  	}
> =20
> --=20
> 2.23.0
>=20

--=20
Open Source Technology Center, Intel ltd.

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--yrj/dFKFPuw6o+aM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXa1CCQAKCRCxBBozTXgY
J7H2AKCTAaXtalxjG/NAZFkGg9kV1AIZXACglI6cXAvTAVm0PX2XeRg6BnKH9ig=
=pmM4
-----END PGP SIGNATURE-----

--yrj/dFKFPuw6o+aM--

--===============1538536921==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1538536921==--
