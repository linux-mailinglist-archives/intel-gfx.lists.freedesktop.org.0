Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4872B3086CD
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 09:08:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 977316EA83;
	Fri, 29 Jan 2021 08:08:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E51996EA83
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 08:08:01 +0000 (UTC)
IronPort-SDR: uH9RgZ1t8Ky8XiqEIRDHd0NuZz4eijP2ZFNx9llcZ2KUsJBy8RJxvzu2YSa8P/CP7daTRDcvw1
 Yemsxs+G46qg==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="179603761"
X-IronPort-AV: E=Sophos;i="5.79,384,1602572400"; 
 d="asc'?scan'208";a="179603761"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 00:08:01 -0800
IronPort-SDR: yVTKzakdP97TDC0lm3l3VagqduesIIijqlFNTOIES9sQY4dSWzK/lQ/08HNCwC/Drgax0YU/ue
 T5fN6cRvySjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,384,1602572400"; 
 d="asc'?scan'208";a="409521674"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
 by fmsmga002.fm.intel.com with ESMTP; 29 Jan 2021 00:08:00 -0800
Date: Fri, 29 Jan 2021 15:52:59 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20210129075259.GU1538@zhen-hp.sh.intel.com>
References: <20210129004933.29755-1-chris@chris-wilson.co.uk>
 <20210129004933.29755-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
In-Reply-To: <20210129004933.29755-2-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gvt: Purge dev_priv->gt
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0678343222=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0678343222==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="W5WqUoFLvi1M7tJE"
Content-Disposition: inline


--W5WqUoFLvi1M7tJE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2021.01.29 00:49:33 +0000, Chris Wilson wrote:
> Use the right intel_gt stored as a backpointer in intel_vgpu.
>=20
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---

Reviewed-by: Zhenyu Wang <zhenyuw@linux.intel.com>

I'll queue these two. Thanks!

>  drivers/gpu/drm/i915/gvt/execlist.c  | 8 +++-----
>  drivers/gpu/drm/i915/gvt/scheduler.c | 3 +--
>  2 files changed, 4 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gvt/execlist.c b/drivers/gpu/drm/i915/g=
vt/execlist.c
> index 158873f269b1..c8dcda6d4f0d 100644
> --- a/drivers/gpu/drm/i915/gvt/execlist.c
> +++ b/drivers/gpu/drm/i915/gvt/execlist.c
> @@ -522,12 +522,11 @@ static void init_vgpu_execlist(struct intel_vgpu *v=
gpu,
>  static void clean_execlist(struct intel_vgpu *vgpu,
>  			   intel_engine_mask_t engine_mask)
>  {
> -	struct drm_i915_private *dev_priv =3D vgpu->gvt->gt->i915;
> -	struct intel_engine_cs *engine;
>  	struct intel_vgpu_submission *s =3D &vgpu->submission;
> +	struct intel_engine_cs *engine;
>  	intel_engine_mask_t tmp;
> =20
> -	for_each_engine_masked(engine, &dev_priv->gt, engine_mask, tmp) {
> +	for_each_engine_masked(engine, vgpu->gvt->gt, engine_mask, tmp) {
>  		kfree(s->ring_scan_buffer[engine->id]);
>  		s->ring_scan_buffer[engine->id] =3D NULL;
>  		s->ring_scan_buffer_size[engine->id] =3D 0;
> @@ -537,11 +536,10 @@ static void clean_execlist(struct intel_vgpu *vgpu,
>  static void reset_execlist(struct intel_vgpu *vgpu,
>  			   intel_engine_mask_t engine_mask)
>  {
> -	struct drm_i915_private *dev_priv =3D vgpu->gvt->gt->i915;
>  	struct intel_engine_cs *engine;
>  	intel_engine_mask_t tmp;
> =20
> -	for_each_engine_masked(engine, &dev_priv->gt, engine_mask, tmp)
> +	for_each_engine_masked(engine, vgpu->gvt->gt, engine_mask, tmp)
>  		init_vgpu_execlist(vgpu, engine);
>  }
> =20
> diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/=
gvt/scheduler.c
> index 43f31c2eab14..a55ae50dbbe1 100644
> --- a/drivers/gpu/drm/i915/gvt/scheduler.c
> +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
> @@ -1015,13 +1015,12 @@ void intel_vgpu_clean_workloads(struct intel_vgpu=
 *vgpu,
>  				intel_engine_mask_t engine_mask)
>  {
>  	struct intel_vgpu_submission *s =3D &vgpu->submission;
> -	struct drm_i915_private *dev_priv =3D vgpu->gvt->gt->i915;
>  	struct intel_engine_cs *engine;
>  	struct intel_vgpu_workload *pos, *n;
>  	intel_engine_mask_t tmp;
> =20
>  	/* free the unsubmited workloads in the queues. */
> -	for_each_engine_masked(engine, &dev_priv->gt, engine_mask, tmp) {
> +	for_each_engine_masked(engine, vgpu->gvt->gt, engine_mask, tmp) {
>  		list_for_each_entry_safe(pos, n,
>  			&s->workload_q_head[engine->id], list) {
>  			list_del_init(&pos->list);
> --=20
> 2.20.1
>=20
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--W5WqUoFLvi1M7tJE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCYBO+1QAKCRCxBBozTXgY
J6PPAKCKciKxt47uq2uIFy8oFW1AOIzHiACeMBMAc6nlFrxeChzBDYJAyTfdgUo=
=LOp5
-----END PGP SIGNATURE-----

--W5WqUoFLvi1M7tJE--

--===============0678343222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0678343222==--
