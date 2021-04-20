Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F69365B5C
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Apr 2021 16:40:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 025AF6E838;
	Tue, 20 Apr 2021 14:40:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63E916E838
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Apr 2021 14:40:18 +0000 (UTC)
IronPort-SDR: 0sXLbjfFbOEk8SQdARLe+OeNHp401OIx7sDPU8Qh+sZZsX+JtZLC/BIkEEcpCGlHefh167QIog
 yfC6rApPeiEQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="195544165"
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="195544165"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 07:40:17 -0700
IronPort-SDR: aiholcXv1AZeUSabDq9uO0i1BSTXlUA580agjKFrNJmfSoF+kvxve5/RVVSBhDPNQAroEclfps
 FcuplSTwb6FQ==
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="534519219"
Received: from jyick-mobl.amr.corp.intel.com (HELO intel.com) ([10.212.57.228])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 07:40:16 -0700
Date: Tue, 20 Apr 2021 10:40:15 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <YH7nzy4gBYWV0cDD@intel.com>
References: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
 <20210328225709.18541-14-daniele.ceraolospurio@intel.com>
 <a7392f80-039a-940f-5d06-11a4acf6a750@intel.com>
 <a0c3dd4a-38e7-7b13-fc56-828f8023d3f6@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a0c3dd4a-38e7-7b13-fc56-828f8023d3f6@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 13/16] drm/i915/pxp: User interface for
 Protected buffer
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
Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>,
 intel-gfx@lists.freedesktop.org, Huang Sean Z <sean.z.huang@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 01, 2021 at 01:45:20PM -0700, Daniele Ceraolo Spurio wrote:
> =

> =

> On 4/1/2021 5:05 AM, Lionel Landwerlin wrote:
> > On 29/03/2021 01:57, Daniele Ceraolo Spurio wrote:
> > > From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> > > =

> > > This api allow user mode to create Protected buffers. Only contexts
> > > marked as protected are allowed to operate on protected buffers.
> > > =

> > > We only allow setting the flags at creation time.
> > > =

> > > All protected objects that have backing storage will be considered
> > > invalid when the session is destroyed and they won't be usable anymor=
e.
> > > =

> > > This is a rework of the original code by Bommu Krishnaiah. I've
> > > authorship unchanged since significant chunks have not been modified.
> > > =

> > > v2: split context changes, fix defines and improve documentation
> > > (Chris),
> > > =A0=A0=A0=A0 add object invalidation logic
> > > v3: fix spinlock definition and usage, only validate objects when
> > > =A0=A0=A0=A0 they're first added to a context lut, only remove them o=
nce
> > > (Chris),
> > > =A0=A0=A0=A0 make protected context flag not mandatory in protected o=
bject
> > > execbuf
> > > =A0=A0=A0=A0 to avoid abuse (Lionel)
> > > =

> > > Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> > > Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.co=
m>
> > > Cc: Telukuntla Sreedhar <sreedhar.telukuntla@intel.com>
> > > Cc: Kondapally Kalyan <kalyan.kondapally@intel.com>
> > > Cc: Gupta Anshuman <Anshuman.Gupta@intel.com>
> > > Cc: Huang Sean Z <sean.z.huang@intel.com>
> > > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> > > ---
> > > =A0 drivers/gpu/drm/i915/gem/i915_gem_create.c=A0=A0=A0 | 27 ++++++++=
++--
> > > =A0 .../gpu/drm/i915/gem/i915_gem_execbuffer.c=A0=A0=A0 | 16 ++++++++
> > > =A0 drivers/gpu/drm/i915/gem/i915_gem_object.c=A0=A0=A0 |=A0 6 +++
> > > =A0 drivers/gpu/drm/i915/gem/i915_gem_object.h=A0=A0=A0 | 12 ++++++
> > > =A0 .../gpu/drm/i915/gem/i915_gem_object_types.h=A0 | 13 ++++++
> > > =A0 drivers/gpu/drm/i915/pxp/intel_pxp.c=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=
 41 +++++++++++++++++++
> > > =A0 drivers/gpu/drm/i915/pxp/intel_pxp.h=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=
 13 ++++++
> > > =A0 drivers/gpu/drm/i915/pxp/intel_pxp_types.h=A0=A0=A0 |=A0 5 +++
> > > =A0 include/uapi/drm/i915_drm.h=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 | 20 +++++++++
> > > =A0 9 files changed, 150 insertions(+), 3 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c
> > > b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> > > index 3ad3413c459f..d02e5938afbe 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> > > @@ -5,6 +5,7 @@
> > > =A0 =A0 #include "gem/i915_gem_ioctls.h"
> > > =A0 #include "gem/i915_gem_region.h"
> > > +#include "pxp/intel_pxp.h"
> > > =A0 =A0 #include "i915_drv.h"
> > > =A0 #include "i915_user_extensions.h"
> > > @@ -13,7 +14,8 @@ static int
> > > =A0 i915_gem_create(struct drm_file *file,
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 struct intel_memory_region *mr,
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 u64 *size_p,
> > > -=A0=A0=A0=A0=A0=A0=A0 u32 *handle_p)
> > > +=A0=A0=A0=A0=A0=A0=A0 u32 *handle_p,
> > > +=A0=A0=A0=A0=A0=A0=A0 u64 user_flags)
> > > =A0 {
> > > =A0=A0=A0=A0=A0 struct drm_i915_gem_object *obj;
> > > =A0=A0=A0=A0=A0 u32 handle;
> > > @@ -35,12 +37,17 @@ i915_gem_create(struct drm_file *file,
> > > =A0 =A0=A0=A0=A0=A0 GEM_BUG_ON(size !=3D obj->base.size);
> > > =A0 +=A0=A0=A0 obj->user_flags =3D user_flags;
> > > +
> > > =A0=A0=A0=A0=A0 ret =3D drm_gem_handle_create(file, &obj->base, &hand=
le);
> > > =A0=A0=A0=A0=A0 /* drop reference from allocate - handle holds it now=
 */
> > > =A0=A0=A0=A0=A0 i915_gem_object_put(obj);
> > > =A0=A0=A0=A0=A0 if (ret)
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 return ret;
> > > =A0 +=A0=A0=A0 if (user_flags & I915_GEM_OBJECT_PROTECTED)
> > > +=A0=A0=A0=A0=A0=A0=A0 intel_pxp_object_add(obj);
> > > +
> > > =A0=A0=A0=A0=A0 *handle_p =3D handle;
> > > =A0=A0=A0=A0=A0 *size_p =3D size;
> > > =A0=A0=A0=A0=A0 return 0;
> > > @@ -89,11 +96,12 @@ i915_gem_dumb_create(struct drm_file *file,
> > > =A0=A0=A0=A0=A0 return i915_gem_create(file,
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 intel_me=
mory_region_by_type(to_i915(dev),
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 mem_type),
> > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 &args->size, =
&args->handle);
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 &args->size, =
&args->handle, 0);
> > > =A0 }
> > > =A0 =A0 struct create_ext {
> > > =A0=A0=A0=A0=A0 struct drm_i915_private *i915;
> > > +=A0=A0=A0 unsigned long user_flags;
> > > =A0 };
> > > =A0 =A0 static int __create_setparam(struct drm_i915_gem_object_param=
 *args,
> > > @@ -104,6 +112,19 @@ static int __create_setparam(struct
> > > drm_i915_gem_object_param *args,
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 return -EINVAL;
> > > =A0=A0=A0=A0=A0 }
> > > =A0 +=A0=A0=A0 switch (lower_32_bits(args->param)) {
> > > +=A0=A0=A0 case I915_OBJECT_PARAM_PROTECTED_CONTENT:
> > > +=A0=A0=A0=A0=A0=A0=A0 if (!intel_pxp_is_enabled(&ext_data->i915->gt.=
pxp))
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return -ENODEV;
> > > +=A0=A0=A0=A0=A0=A0=A0 if (args->size) {
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return -EINVAL;
> > > +=A0=A0=A0=A0=A0=A0=A0 } else if (args->data) {
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ext_data->user_flags |=3D I915_GEM=
_OBJECT_PROTECTED;
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return 0;
> > > +=A0=A0=A0=A0=A0=A0=A0 }
> > > +=A0=A0=A0 break;
> > > +=A0=A0=A0 }
> > > +
> > > =A0=A0=A0=A0=A0 return -EINVAL;
> > > =A0 }
> > > =A0 @@ -148,5 +169,5 @@ i915_gem_create_ioctl(struct drm_device *dev,
> > > void *data,
> > > =A0=A0=A0=A0=A0 return i915_gem_create(file,
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 intel_me=
mory_region_by_type(i915,
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 INTEL_MEMORY_SYSTEM),
> > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 &args->size, =
&args->handle);
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 &args->size, =
&args->handle, ext_data.user_flags);
> > > =A0 }
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > index 72c2470fcfe6..2fb6579ad301 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > @@ -20,6 +20,7 @@
> > > =A0 #include "gt/intel_gt_buffer_pool.h"
> > > =A0 #include "gt/intel_gt_pm.h"
> > > =A0 #include "gt/intel_ring.h"
> > > +#include "pxp/intel_pxp.h"
> > > =A0 =A0 #include "pxp/intel_pxp.h"
> > > =A0 @@ -839,6 +840,21 @@ static struct i915_vma *eb_lookup_vma(struct
> > > i915_execbuffer *eb, u32 handle)
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 if (unlikely(!obj))
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return ERR_PTR(-ENOENT);
> > > =A0 +=A0=A0=A0=A0=A0=A0=A0 /*
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * If the user has opted-in for protected-ob=
ject tracking, make
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * sure the object encryption can be used.
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * We only need to do this when the object i=
s first used with
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * this context, because the context itself =
will be banned when
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * the protected objects become invalid.
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 */
> > > +=A0=A0=A0=A0=A0=A0=A0 if (i915_gem_context_uses_protected_content(eb=
->gem_context) &&
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 i915_gem_object_is_protected(obj))=
 {
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (!intel_pxp_is_active(&vm->gt->=
pxp))
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return ERR_PTR(-ENODEV=
);
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (!i915_gem_object_has_valid_pro=
tection(obj))
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return ERR_PTR(-EIO);
> > > +=A0=A0=A0=A0=A0=A0=A0 }
> > > +
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 vma =3D i915_vma_instance(obj, vm, NULL);
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 if (IS_ERR(vma)) {
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 i915_gem_object_put(obj);
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > > b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > > index ea74cbca95be..80ccefd641e8 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > > @@ -25,6 +25,7 @@
> > > =A0 #include <linux/sched/mm.h>
> > > =A0 =A0 #include "display/intel_frontbuffer.h"
> > > +#include "pxp/intel_pxp.h"
> > > =A0 #include "i915_drv.h"
> > > =A0 #include "i915_gem_clflush.h"
> > > =A0 #include "i915_gem_context.h"
> > > @@ -70,6 +71,8 @@ void i915_gem_object_init(struct
> > > drm_i915_gem_object *obj,
> > > =A0=A0=A0=A0=A0 INIT_LIST_HEAD(&obj->lut_list);
> > > =A0=A0=A0=A0=A0 spin_lock_init(&obj->lut_lock);
> > > =A0 +=A0=A0=A0 INIT_LIST_HEAD(&obj->pxp_link);
> > > +
> > > =A0=A0=A0=A0=A0 spin_lock_init(&obj->mmo.lock);
> > > =A0=A0=A0=A0=A0 obj->mmo.offsets =3D RB_ROOT;
> > > =A0 @@ -232,6 +235,9 @@ static void __i915_gem_free_objects(struct
> > > drm_i915_private *i915,
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 spin_unlock(&obj->vma.lock);
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 }
> > > =A0 +=A0=A0=A0=A0=A0=A0=A0 if (i915_gem_object_has_valid_protection(o=
bj))
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 intel_pxp_object_remove(obj);
> > > +
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 __i915_gem_object_free_mmaps(obj);
> > > =A0 =A0=A0=A0=A0=A0=A0=A0=A0=A0 GEM_BUG_ON(!list_empty(&obj->lut_list=
));
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > index 2ebd79537aea..61b101560352 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > @@ -288,6 +288,18 @@ i915_gem_object_never_mmap(const struct
> > > drm_i915_gem_object *obj)
> > > =A0=A0=A0=A0=A0 return i915_gem_object_type_has(obj, I915_GEM_OBJECT_=
NO_MMAP);
> > > =A0 }
> > > =A0 +static inline bool
> > > +i915_gem_object_is_protected(const struct drm_i915_gem_object *obj)
> > > +{
> > > +=A0=A0=A0 return obj->user_flags & I915_GEM_OBJECT_PROTECTED;
> > > +}
> > > +
> > > +static inline bool
> > > +i915_gem_object_has_valid_protection(const struct
> > > drm_i915_gem_object *obj)
> > > +{
> > > +=A0=A0=A0 return i915_gem_object_is_protected(obj) &&
> > > !list_empty(&obj->pxp_link);
> > > +}
> > > +
> > > =A0 static inline bool
> > > =A0 i915_gem_object_is_framebuffer(const struct drm_i915_gem_object *=
obj)
> > > =A0 {
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> > > b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> > > index 8e485cb3343c..0d4bd2747375 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> > > @@ -167,6 +167,11 @@ struct drm_i915_gem_object {
> > > =A0=A0=A0=A0=A0 } mmo;
> > > =A0 =A0=A0=A0=A0=A0 I915_SELFTEST_DECLARE(struct list_head st_link);
> > > +=A0=A0=A0 /**
> > > +=A0=A0=A0=A0 * @user_flags: small set of booleans set by the user
> > > +=A0=A0=A0=A0 */
> > > +=A0=A0=A0 unsigned long user_flags;
> > > +#define I915_GEM_OBJECT_PROTECTED BIT(0)
> > > =A0 =A0=A0=A0=A0=A0 unsigned long flags;
> > > =A0 #define I915_BO_ALLOC_CONTIGUOUS BIT(0)
> > > @@ -286,6 +291,14 @@ struct drm_i915_gem_object {
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 bool dirty:1;
> > > =A0=A0=A0=A0=A0 } mm;
> > > =A0 +=A0=A0=A0 /*
> > > +=A0=A0=A0=A0 * When the PXP session is invalidated, we need to mark =
all
> > > protected
> > > +=A0=A0=A0=A0 * objects as invalid. To easily do so we add them all t=
o a
> > > list. The
> > > +=A0=A0=A0=A0 * presence on the list is used to check if the encrypti=
on is
> > > valid or
> > > +=A0=A0=A0=A0 * not.
> > > +=A0=A0=A0=A0 */
> > > +=A0=A0=A0 struct list_head pxp_link;
> > > +
> > > =A0=A0=A0=A0=A0 /** Record of address bit 17 of each page at last unb=
ind. */
> > > =A0=A0=A0=A0=A0 unsigned long *bit_17;
> > > =A0 diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> > > b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> > > index cbc5249a1bf9..7f9902eac7ec 100644
> > > --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> > > +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> > > @@ -69,6 +69,9 @@ void intel_pxp_init(struct intel_pxp *pxp)
> > > =A0=A0=A0=A0=A0 if (!HAS_PXP(gt->i915))
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 return;
> > > =A0 +=A0=A0=A0 spin_lock_init(&pxp->lock);
> > > +=A0=A0=A0 INIT_LIST_HEAD(&pxp->protected_objects);
> > > +
> > > =A0=A0=A0=A0=A0 /*
> > > =A0=A0=A0=A0=A0=A0 * we'll use the completion to check if there is a =
termination
> > > pending,
> > > =A0=A0=A0=A0=A0=A0 * so we start it as completed and we reinit it whe=
n a termination
> > > @@ -173,11 +176,49 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp)
> > > =A0=A0=A0=A0=A0 intel_pxp_irq_disable(pxp);
> > > =A0 }
> > > =A0 +int intel_pxp_object_add(struct drm_i915_gem_object *obj)
> > > +{
> > > +=A0=A0=A0 struct intel_pxp *pxp =3D &to_i915(obj->base.dev)->gt.pxp;
> > > +
> > > +=A0=A0=A0 if (!intel_pxp_is_enabled(pxp))
> > > +=A0=A0=A0=A0=A0=A0=A0 return -ENODEV;
> > > +
> > > +=A0=A0=A0 if (!list_empty(&obj->pxp_link))
> > > +=A0=A0=A0=A0=A0=A0=A0 return -EEXIST;
> > > +
> > > +=A0=A0=A0 spin_lock_irq(&pxp->lock);
> > > +=A0=A0=A0 list_add(&obj->pxp_link, &pxp->protected_objects);
> > > +=A0=A0=A0 spin_unlock_irq(&pxp->lock);
> > > +
> > > +=A0=A0=A0 return 0;
> > > +}
> > > +
> > > +void intel_pxp_object_remove(struct drm_i915_gem_object *obj)
> > > +{
> > > +=A0=A0=A0 struct intel_pxp *pxp =3D &to_i915(obj->base.dev)->gt.pxp;
> > > +
> > > +=A0=A0=A0 if (!intel_pxp_is_enabled(pxp))
> > > +=A0=A0=A0=A0=A0=A0=A0 return;
> > > +
> > > +=A0=A0=A0 spin_lock_irq(&pxp->lock);
> > > +=A0=A0=A0 list_del_init(&obj->pxp_link);
> > > +=A0=A0=A0 spin_unlock_irq(&pxp->lock);
> > > +}
> > > +
> > > =A0 void intel_pxp_invalidate(struct intel_pxp *pxp)
> > > =A0 {
> > > =A0=A0=A0=A0=A0 struct drm_i915_private *i915 =3D pxp_to_gt(pxp)->i91=
5;
> > > +=A0=A0=A0 struct drm_i915_gem_object *obj, *tmp;
> > > =A0=A0=A0=A0=A0 struct i915_gem_context *ctx, *cn;
> > > =A0 +=A0=A0=A0 /* delete objects that have been used with the invalid=
ated
> > > session */
> > > +=A0=A0=A0 spin_lock_irq(&pxp->lock);
> > > +=A0=A0=A0 list_for_each_entry_safe(obj, tmp, &pxp->protected_objects,
> > > pxp_link) {
> > > +=A0=A0=A0=A0=A0=A0=A0 if (i915_gem_object_has_pages(obj))
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 list_del_init(&obj->pxp_link);
> > > +=A0=A0=A0 }
> > > +=A0=A0=A0 spin_unlock_irq(&pxp->lock);
> > > +
> > > =A0=A0=A0=A0=A0 /* ban all contexts marked as protected */
> > > =A0=A0=A0=A0=A0 spin_lock_irq(&i915->gem.contexts.lock);
> > > =A0=A0=A0=A0=A0 list_for_each_entry_safe(ctx, cn, &i915->gem.contexts=
.list,
> > > link) {
> > > diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> > > b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> > > index 91c1a2056309..194b00149247 100644
> > > --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> > > +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> > > @@ -9,6 +9,8 @@
> > > =A0 #include "gt/intel_gt_types.h"
> > > =A0 #include "intel_pxp_types.h"
> > > =A0 +struct drm_i915_gem_object;
> > > +
> > > =A0 static inline struct intel_gt *pxp_to_gt(const struct intel_pxp *=
pxp)
> > > =A0 {
> > > =A0=A0=A0=A0=A0 return container_of(pxp, struct intel_gt, pxp);
> > > @@ -33,6 +35,9 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp);
> > > =A0 =A0 void intel_pxp_mark_termination_in_progress(struct intel_pxp =
*pxp);
> > > =A0 int intel_pxp_wait_for_arb_start(struct intel_pxp *pxp);
> > > +
> > > +int intel_pxp_object_add(struct drm_i915_gem_object *obj);
> > > +void intel_pxp_object_remove(struct drm_i915_gem_object *obj);
> > > =A0 void intel_pxp_invalidate(struct intel_pxp *pxp);
> > > =A0 #else
> > > =A0 static inline void intel_pxp_init(struct intel_pxp *pxp)
> > > @@ -47,6 +52,14 @@ static inline int
> > > intel_pxp_wait_for_arb_start(struct intel_pxp *pxp)
> > > =A0 {
> > > =A0=A0=A0=A0=A0 return 0;
> > > =A0 }
> > > +
> > > +static inline int intel_pxp_object_add(struct drm_i915_gem_object *o=
bj)
> > > +{
> > > +=A0=A0=A0 return 0;
> > > +}
> > > +static inline void intel_pxp_object_remove(struct
> > > drm_i915_gem_object *obj)
> > > +{
> > > +}
> > > =A0 #endif
> > > =A0 =A0 #endif /* __INTEL_PXP_H__ */
> > > diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> > > b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> > > index 6c9265fb8e4b..665704d7793e 100644
> > > --- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> > > +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> > > @@ -7,8 +7,10 @@
> > > =A0 #define __INTEL_PXP_TYPES_H__
> > > =A0 =A0 #include <linux/completion.h>
> > > +#include <linux/list.h>
> > > =A0 #include <linux/types.h>
> > > =A0 #include <linux/mutex.h>
> > > +#include <linux/spinlock.h>
> > > =A0 #include <linux/workqueue.h>
> > > =A0 =A0 struct intel_context;
> > > @@ -33,6 +35,9 @@ struct intel_pxp {
> > > =A0=A0=A0=A0=A0 u32 session_events; /* protected with gt->irq_lock */
> > > =A0 #define PXP_TERMINATION_REQUEST=A0 BIT(0)
> > > =A0 #define PXP_TERMINATION_COMPLETE BIT(1)
> > > +
> > > +=A0=A0=A0 spinlock_t lock; /* protects the objects list */
> > > +=A0=A0=A0 struct list_head protected_objects;
> > > =A0 };
> > > =A0 =A0 #endif /* __INTEL_PXP_TYPES_H__ */
> > > diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> > > index d5e502269a55..420412c08745 100644
> > > --- a/include/uapi/drm/i915_drm.h
> > > +++ b/include/uapi/drm/i915_drm.h
> > > @@ -1756,6 +1756,26 @@ struct drm_i915_gem_object_param {
> > > =A0=A0 */
> > > =A0 #define I915_OBJECT_PARAM=A0 (1ull << 32)
> > > =A0 +/*
> > > + * I915_OBJECT_PARAM_PROTECTED_CONTENT:
> > > + *
> > > + * If set to true, buffer contents is expected to be protected by PXP
> > > + * encryption and requires decryption for scan out and processing.
> > > This is
> > > + * only possible on platforms that have PXP enabled, on all other
> > > scenarios
> > > + * setting this flag will cause the ioctl to fail and return -ENODEV.
> > > + *
> > > + * The buffer contents are considered invalid after a PXP session
> > > teardown.
> > > + * It is recommended to use protected buffers only with contexts
> > > created
> > > + * using the I915_CONTEXT_PARAM_PROTECTED_CONTENT flag, as that
> > > will enable
> > > + * extra checks at submission time on the validity of the objects
> > > involved,
> > > + * which can lead to the following errors:
> > > + *
> > > + * -ENODEV: PXP session not currently active
> > > + * -EIO: buffer has become invalid after a teardown event
> > =

> > =

> > I was a bit confused on reading those comments. Maybe we should specify
> > when they apply.
> > =

> > My understanding is that you can get -ENODEV on object creation, while
> > -EIO happens at execbuffer time.
> > =

> > Did I get this right?
> > =

> =

> Both of them apply to execbuf. -ENODEV covers the case where the session =
has
> been invalidated (i.e. PXP not considered currently active) but we are st=
ill
> processing the event, so the object hasn't been marked as invalid yet.
> It is true however that -ENODEV can come from object creation as well if =
the
> platform does not support PXP, so I'll make the distinction clear.

other than that I believe the patch is good for dri-devel.
It aligns with what we had agreed.

> =

> Daniele
> =

> > =

> > -Lionel
> > =

> > =

> > > + */
> > > +#define I915_OBJECT_PARAM_PROTECTED_CONTENT=A0 0x0
> > > +/* Must be kept compact -- no holes and well documented */
> > > +
> > > =A0=A0=A0=A0=A0 __u64 param;
> > > =A0 =A0=A0=A0=A0=A0 /* Data value or pointer */
> > =

> > =

> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
