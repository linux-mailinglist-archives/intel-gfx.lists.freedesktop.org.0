Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E4D46EFED
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:02:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B359710F28B;
	Thu,  9 Dec 2021 16:55:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 648BF89F47
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 13:25:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="236832214"
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="236832214"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 05:25:41 -0800
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="516294338"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.19.112])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 05:25:39 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, Pallavi Mishra <pallavi.mishra@intel.com>
In-Reply-To: <38d8d4458215227dcf2983f1cdc920c7771c9108.camel@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211203063257.52053-1-pallavi.mishra@intel.com>
 <Yan5RE4+T7hTHDI/@intel.com>
 <38d8d4458215227dcf2983f1cdc920c7771c9108.camel@linux.intel.com>
Date: Thu, 09 Dec 2021 15:25:35 +0200
Message-ID: <87wnkd3o6o.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix possible null ptr dereferences
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 03 Dec 2021, Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.co=
m> wrote:
> On Fri, 2021-12-03 at 13:02 +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Fri, Dec 03, 2021 at 12:02:57PM +0530, Pallavi Mishra wrote:
>> > add null ptr checks to prevent crash/exceptions.
>>=20
>> BUG_ON()s aren't going to fix anything.
>>=20
>> > Signed-off-by: Pallavi Mishra <pallavi.mishra@intel.com>
>
> Pallavi,=20
>
> The NULL pointer dereferences here are probably all false positives
> from a static analyzer. However the GEM_BUG_ONs are fine to assert that
> the assumption really holds and to clearly point out what's going wrong
> if they are hit in CI tests.

I think we're massively overusing GEM_BUG_ON() all over the place.

BR,
Jani.



>
> But the commit message must reflect that.
>
> /Thomas.
>
>
>> > ---
>> > =C2=A0drivers/gpu/drm/i915/gem/i915_gem_ttm.c=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 | 3 +++
>> > =C2=A0drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 3 ++-
>> > =C2=A02 files changed, 5 insertions(+), 1 deletion(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>> > b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>> > index 218a9b3037c7..997fe73c205b 100644
>> > --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>> > @@ -906,6 +906,8 @@ vm_access_ttm(struct vm_area_struct *area,
>> > unsigned long addr,
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct drm_i915_gem_ob=
ject *obj =3D
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0i915_ttm_to_gem(area->vm_private_data);
>> > =C2=A0
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0GEM_BUG_ON(!obj);
>> > +
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (i915_gem_object_is=
_readonly(obj) && write)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0return -EACCES;
>> > =C2=A0
>> > @@ -966,6 +968,7 @@ static const struct drm_i915_gem_object_ops
>> > i915_gem_ttm_obj_ops =3D {
>> > =C2=A0void i915_ttm_bo_destroy(struct ttm_buffer_object *bo)
>> > =C2=A0{
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct drm_i915_gem_ob=
ject *obj =3D i915_ttm_to_gem(bo);
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0GEM_BUG_ON(!obj);
>> > =C2=A0
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0i915_gem_object_releas=
e_memory_region(obj);
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mutex_destroy(&obj->tt=
m.get_io_page.lock);
>> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
>> > b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
>> > index 80df9f592407..2b684903a9f5 100644
>> > --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
>> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
>> > @@ -371,6 +371,7 @@ int i915_ttm_move_notify(struct
>> > ttm_buffer_object *bo)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct drm_i915_gem_ob=
ject *obj =3D i915_ttm_to_gem(bo);
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int ret;
>> > =C2=A0
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0GEM_BUG_ON(!obj);
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D i915_gem_objec=
t_unbind(obj,
>> > I915_GEM_OBJECT_UNBIND_ACTIVE);
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ret)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
>> > @@ -506,7 +507,7 @@ static void i915_ttm_memcpy_init(struct
>> > i915_ttm_memcpy_arg *arg,
>> > =C2=A0
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dst_reg =3D i915_ttm_r=
egion(bo->bdev, dst_mem->mem_type);
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0src_reg =3D i915_ttm_r=
egion(bo->bdev, bo->resource-
>> > >mem_type);
>> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0GEM_BUG_ON(!dst_reg || !src=
_reg);
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0GEM_BUG_ON(!dst_reg || !src=
_reg || !obj);
>> > =C2=A0
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0arg->dst_iter =3D !i91=
5_ttm_cpu_maps_iomem(dst_mem) ?
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0ttm_kmap_iter_tt_init(&arg->_dst_iter.tt, dst_tt=
m)
>> > :
>> > --=20
>> > 2.25.1
>>=20
>
>

--=20
Jani Nikula, Intel Open Source Graphics Center
