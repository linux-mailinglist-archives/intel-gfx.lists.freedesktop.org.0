Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F28D3318BC
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Mar 2021 21:40:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 952386E883;
	Mon,  8 Mar 2021 20:40:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FCBE6E883
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Mar 2021 20:40:27 +0000 (UTC)
IronPort-SDR: BHIs4NUNaUKzh0lJufXRb+Q676FQAsFn2dAZD4z+5iRGVex44uAUG2tg2b8okN7g7ehEORdT4M
 9wQuHk+9v4TA==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="175715446"
X-IronPort-AV: E=Sophos;i="5.81,233,1610438400"; d="scan'208";a="175715446"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 12:40:26 -0800
IronPort-SDR: oU0ooaxsDPeahvU1h87xBdYeZ7Jle63QpPmWDz7vUQlGDqXk8ZFlv5U64CTb+o52632gqP8atP
 2UEs9BR5uN7g==
X-IronPort-AV: E=Sophos;i="5.81,233,1610438400"; d="scan'208";a="437619666"
Received: from mkasukur-mobl2.amr.corp.intel.com (HELO intel.com)
 ([10.212.199.178])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 12:40:23 -0800
Date: Mon, 8 Mar 2021 15:40:21 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 joonas.lahtinen@intel.com,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <YEaLtVf/LK4cHf5H@intel.com>
References: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
 <20210301193200.1369-14-daniele.ceraolospurio@intel.com>
 <1eefc8d0-9e17-47db-a93a-c4beb225b57c@intel.com>
 <2e3cad79-b36d-7cd3-270c-d4e583ba22fe@intel.com>
 <21e2fe99-4db7-936b-b546-513b830b9351@intel.com>
 <44736cbf-b6f2-993f-4cba-8d0c3922fd30@intel.com>
 <4024146e-e108-e2ba-8ce1-14b101053864@intel.com>
 <c196dab2-8005-8650-9ed4-bc6490431c62@intel.com>
 <b6ed302a-e4bb-8c75-3419-aaca6d1a569e@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b6ed302a-e4bb-8c75-3419-aaca6d1a569e@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 13/16] drm/i915/pxp: User interface for
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
Cc: intel-gfx@lists.freedesktop.org, Huang Sean Z <sean.z.huang@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Kondapally Kalyan <kalyan.kondapally@intel.com>,
 Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 03, 2021 at 05:24:34PM -0800, Daniele Ceraolo Spurio wrote:
> =

> =

> On 3/3/2021 4:10 PM, Daniele Ceraolo Spurio wrote:
> > =

> > =

> > On 3/3/2021 3:42 PM, Lionel Landwerlin wrote:
> > > On 04/03/2021 01:25, Daniele Ceraolo Spurio wrote:
> > > > =

> > > > =

> > > > On 3/3/2021 3:16 PM, Lionel Landwerlin wrote:
> > > > > On 03/03/2021 23:59, Daniele Ceraolo Spurio wrote:
> > > > > > =

> > > > > > =

> > > > > > On 3/3/2021 12:39 PM, Lionel Landwerlin wrote:
> > > > > > > On 01/03/2021 21:31, Daniele Ceraolo Spurio wrote:
> > > > > > > > From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> > > > > > > > =

> > > > > > > > This api allow user mode to create Protected buffers. Only =
contexts
> > > > > > > > marked as protected are allowed to operate on protected buf=
fers.
> > > > > > > > =

> > > > > > > > We only allow setting the flags at creation time.
> > > > > > > > =

> > > > > > > > All protected objects that have backing storage will be con=
sidered
> > > > > > > > invalid when the session is destroyed and they
> > > > > > > > won't be usable anymore.
> > > > > > > > =

> > > > > > > > This is a rework of the original code by Bommu Krishnaiah. =
I've
> > > > > > > > authorship unchanged since significant chunks
> > > > > > > > have not been modified.
> > > > > > > > =

> > > > > > > > v2: split context changes, fix defines and
> > > > > > > > improve documentation (Chris),
> > > > > > > > =A0=A0=A0=A0 add object invalidation logic
> > > > > > > > =

> > > > > > > > Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> > > > > > > > Signed-off-by: Daniele Ceraolo Spurio
> > > > > > > > <daniele.ceraolospurio@intel.com>
> > > > > > > > Cc: Telukuntla Sreedhar <sreedhar.telukuntla@intel.com>
> > > > > > > > Cc: Kondapally Kalyan <kalyan.kondapally@intel.com>
> > > > > > > > Cc: Gupta Anshuman <Anshuman.Gupta@intel.com>
> > > > > > > > Cc: Huang Sean Z <sean.z.huang@intel.com>
> > > > > > > > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > > > > > > > ---
> > > > > > > > =A0 drivers/gpu/drm/i915/gem/i915_gem_create.c=A0=A0=A0 | 2=
7 +++++++++++--
> > > > > > > > =A0 .../gpu/drm/i915/gem/i915_gem_execbuffer.c=A0=A0=A0 | 1=
0 +++++
> > > > > > > > =A0 drivers/gpu/drm/i915/gem/i915_gem_object.c=A0=A0=A0 |=
=A0 6 +++
> > > > > > > > =A0 drivers/gpu/drm/i915/gem/i915_gem_object.h=A0=A0=A0 | 1=
2 ++++++
> > > > > > > > =A0 .../gpu/drm/i915/gem/i915_gem_object_types.h=A0 | 13 ++=
++++
> > > > > > > > =A0 drivers/gpu/drm/i915/pxp/intel_pxp.c=A0=A0=A0=A0=A0=A0=
=A0=A0=A0
> > > > > > > > | 40 +++++++++++++++++++
> > > > > > > > =A0 drivers/gpu/drm/i915/pxp/intel_pxp.h=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 | 13 ++++++
> > > > > > > > =A0 drivers/gpu/drm/i915/pxp/intel_pxp_types.h=A0=A0=A0 |=
=A0 5 +++
> > > > > > > > =A0 include/uapi/drm/i915_drm.h=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 | 22 ++++++++++
> > > > > > > > =A0 9 files changed, 145 insertions(+), 3 deletions(-)
> > > > > > > > =

> > > > > > > > diff --git
> > > > > > > > a/drivers/gpu/drm/i915/gem/i915_gem_create.c
> > > > > > > > b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> > > > > > > > index 3ad3413c459f..d02e5938afbe 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
> > > > > > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> > > > > > > > @@ -5,6 +5,7 @@
> > > > > > > > =A0 =A0 #include "gem/i915_gem_ioctls.h"
> > > > > > > > =A0 #include "gem/i915_gem_region.h"
> > > > > > > > +#include "pxp/intel_pxp.h"
> > > > > > > > =A0 =A0 #include "i915_drv.h"
> > > > > > > > =A0 #include "i915_user_extensions.h"
> > > > > > > > @@ -13,7 +14,8 @@ static int
> > > > > > > > =A0 i915_gem_create(struct drm_file *file,
> > > > > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 struct intel_memory_region *mr,
> > > > > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 u64 *size_p,
> > > > > > > > -=A0=A0=A0=A0=A0=A0=A0 u32 *handle_p)
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0 u32 *handle_p,
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0 u64 user_flags)
> > > > > > > > =A0 {
> > > > > > > > =A0=A0=A0=A0=A0 struct drm_i915_gem_object *obj;
> > > > > > > > =A0=A0=A0=A0=A0 u32 handle;
> > > > > > > > @@ -35,12 +37,17 @@ i915_gem_create(struct drm_file *file,
> > > > > > > > =A0 =A0=A0=A0=A0=A0 GEM_BUG_ON(size !=3D obj->base.size);
> > > > > > > > =A0 +=A0=A0=A0 obj->user_flags =3D user_flags;
> > > > > > > > +
> > > > > > > > =A0=A0=A0=A0=A0 ret =3D drm_gem_handle_create(file, &obj->b=
ase, &handle);
> > > > > > > > =A0=A0=A0=A0=A0 /* drop reference from allocate - handle ho=
lds it now */
> > > > > > > > =A0=A0=A0=A0=A0 i915_gem_object_put(obj);
> > > > > > > > =A0=A0=A0=A0=A0 if (ret)
> > > > > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 return ret;
> > > > > > > > =A0 +=A0=A0=A0 if (user_flags & I915_GEM_OBJECT_PROTECTED)
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0 intel_pxp_object_add(obj);
> > > > > > > > +
> > > > > > > > =A0=A0=A0=A0=A0 *handle_p =3D handle;
> > > > > > > > =A0=A0=A0=A0=A0 *size_p =3D size;
> > > > > > > > =A0=A0=A0=A0=A0 return 0;
> > > > > > > > @@ -89,11 +96,12 @@ i915_gem_dumb_create(struct drm_file *f=
ile,
> > > > > > > > =A0=A0=A0=A0=A0 return i915_gem_create(file,
> > > > > > > > intel_memory_region_by_type(to_i915(dev),
> > > > > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 mem_type),
> > > > > > > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 &ar=
gs->size, &args->handle);
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 &ar=
gs->size, &args->handle, 0);
> > > > > > > > =A0 }
> > > > > > > > =A0 =A0 struct create_ext {
> > > > > > > > =A0=A0=A0=A0=A0 struct drm_i915_private *i915;
> > > > > > > > +=A0=A0=A0 unsigned long user_flags;
> > > > > > > > =A0 };
> > > > > > > > =A0 =A0 static int __create_setparam(struct
> > > > > > > > drm_i915_gem_object_param *args,
> > > > > > > > @@ -104,6 +112,19 @@ static int
> > > > > > > > __create_setparam(struct
> > > > > > > > drm_i915_gem_object_param *args,
> > > > > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 return -EINVAL;
> > > > > > > > =A0=A0=A0=A0=A0 }
> > > > > > > > =A0 +=A0=A0=A0 switch (lower_32_bits(args->param)) {
> > > > > > > > +=A0=A0=A0 case I915_OBJECT_PARAM_PROTECTED_CONTENT:
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0 if (!intel_pxp_is_enabled(&ext_data-=
>i915->gt.pxp))
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return -ENODEV;
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0 if (args->size) {
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return -EINVAL;
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0 } else if (args->data) {
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ext_data->user_flags |=
=3D I915_GEM_OBJECT_PROTECTED;
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return 0;
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0 }
> > > > > > > > +=A0=A0=A0 break;
> > > > > > > > +=A0=A0=A0 }
> > > > > > > > +
> > > > > > > > =A0=A0=A0=A0=A0 return -EINVAL;
> > > > > > > > =A0 }
> > > > > > > > =A0 @@ -148,5 +169,5 @@
> > > > > > > > i915_gem_create_ioctl(struct drm_device *dev,
> > > > > > > > void *data,
> > > > > > > > =A0=A0=A0=A0=A0 return i915_gem_create(file,
> > > > > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 intel_memory_region_by_type(i915,
> > > > > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 INTEL_MEMORY_SYSTEM),
> > > > > > > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 &ar=
gs->size, &args->handle);
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 &ar=
gs->size, &args->handle,
> > > > > > > > ext_data.user_flags);
> > > > > > > > =A0 }
> > > > > > > > diff --git
> > > > > > > > a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > > > > > > b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > > > > > > index e503c9f789c0..d10c4fcb6aec 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > > > > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > > > > > > @@ -20,6 +20,7 @@
> > > > > > > > =A0 #include "gt/intel_gt_buffer_pool.h"
> > > > > > > > =A0 #include "gt/intel_gt_pm.h"
> > > > > > > > =A0 #include "gt/intel_ring.h"
> > > > > > > > +#include "pxp/intel_pxp.h"
> > > > > > > > =A0 =A0 #include "pxp/intel_pxp.h"
> > > > > > > > =A0 @@ -500,6 +501,15 @@ eb_validate_vma(struct i915_execbu=
ffer *eb,
> > > > > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 entry->offset !=
=3D
> > > > > > > > gen8_canonical_addr(entry->offset &
> > > > > > > > I915_GTT_PAGE_MASK)))
> > > > > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 return -EINVAL;
> > > > > > > > =A0 +=A0=A0=A0 if (i915_gem_object_is_protected(vma->obj)) {
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0 if (!intel_pxp_is_active(&vma->vm->g=
t->pxp))
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return -ENODEV;
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0 if (!i915_gem_object_has_valid_prote=
ction(vma->obj))
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return -EIO;
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0 if
> > > > > > > > (!i915_gem_context_can_use_protected_content(eb->gem_contex=
t))
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return -EPERM;
> > > > > > > =

> > > > > > > =

> > > > > > > I think I'm running into this error.
> > > > > > =

> > > > > > The currently agreed design is that protected objects
> > > > > > can only be used with explicitly marked contexts,
> > > > > > although it's not an HW requirement so we can revisit
> > > > > > it.
> > > > > > =

> > > > > > > =

> > > > > > > When running vkcube protected under wayland, it
> > > > > > > takes down the entire session (Xorg & gnome-shell
> > > > > > > depending on which one is going to use the protected
> > > > > > > buffer first).
> > > > > > =

> > > > > > Are you saying that a single submission failure takes
> > > > > > down the entire gnome session? that sounds like a larger
> > > > > > problem than just this failure. Or am I misunderstanding
> > > > > > your point?
> > > > > =

> > > > > =

> > > > > We just need to hand that buffer to any other app and have
> > > > > it use it in execbuf and that will make it fail the execbuf.
> > > > > =

> > > > > Now how does the driver in the gnome-shell/Xorg process know
> > > > > what went wrong and what buffer caused it?
> > > > > =

> > > > > Could be any imported buffer. It's pretty hard to recover
> > > > > from this and most apps will just crash if the driver starts
> > > > > to fail for some reason.
> > > > > =

> > > > > You can see how that could make a lot of people's live terrible :/
> > > > =

> > > > Don't other apps have to know that the buffer is encrypted to
> > > > use it properly? Or is there a case where we want to use the
> > > > object as if it wasn't encrypted?
> > > > =

> > > > Also, PXP submissions can become invalid at any point in time
> > > > due to a teardown event, which causes the contents of the
> > > > encrypted buffers to become garbage. If we can't fail the
> > > > execbuf which includes an invalidated buffer we'd have to
> > > > silently discard the submission.
> > > =

> > > =

> > > A malicious app could start sharing protected tagged buffer with no
> > > protected content in it, just to invalidate/crash others apps'
> > > context.
> > =

> > I see your point, although on the other side failing the execbuf when
> > malicious behavior is detected seems reasonable as well.
> > =

> > > =

> > > Can the failure be only reported to protected contexts?
> > =

> > That would allow a non-protected context to use protected objects, which
> > is something we wanted to avoid.
> > I see a few options here:
> > =

> > - live with the execbuf failure on incorrect or malicious behavior

could you please expand this option a bit further?
Based on the scenario that Lionel described I'm not feeling this is viable.=
..

> > - silently fail execbuf if protected objects are used with non-protected
> > contexts

I don't like to simply silent to ignore the execbuf with no indication.
How userspace will know it needs to resubmit the job?

> > - remove the restriction on protected objects being usable only by
> > protected contexts
> > =

> > Rodrigo, Joonas, any preference or other suggestion here?
> > =

> =

> BTW, whatever we decide has to also consider the other failure cases in t=
he
> check above:
> - pxp not active, i.e. termination in progress
> - invalid buffer (encrypted using old keys)

yeap. That's the case on the current design.

Is an option to save that "token" with buffers and contexts?

Joonas?

> =

> Both of those could currently cause an execbuf failure even if we ignore =
the
> protected context restriction, which IMO makes the third option above not
> viable.
> =

> Daniele
> =

> > Daniele
> > =

> > > =

> > > =

> > > -Lionel
> > > =

> > > =

> > > > =

> > > > Daniele
> > > > =

> > > > > =

> > > > > =

> > > > > -Lionel
> > > > > =

> > > > > =

> > > > > > =

> > > > > > > =

> > > > > > > That's a bit harsh.
> > > > > > > =

> > > > > > > =

> > > > > > > We probably don't want this. After all the point of
> > > > > > > encryption is that even if you can read the buffer
> > > > > > > you won't be able to make much of its content.
> > > > > > =

> > > > > > As mentioned above we can change this since there is no
> > > > > > HW requirement on contexts, but need some architectural
> > > > > > agreement. Joonas and Rodrigo can comment more here.
> > > > > > Also note that submitting an instruction using encrypted
> > > > > > data while the session is invalid can cause the HW to
> > > > > > hang, which is part of the reason why we require the
> > > > > > contexts using protected objects to be marked
> > > > > > appropriately, so we can ban them on PXP teardown to
> > > > > > avoid hangs.
> > > > > > =

> > > > > > Daniele
> > > > > > =

> > > > > > > =

> > > > > > > Also useful to know you're dealing for debugging ;)
> > > > > > > =

> > > > > > > =

> > > > > > > -Lionel
> > > > > > > =

> > > > > > > =

> > > > > > > > +=A0=A0=A0 }
> > > > > > > > +
> > > > > > > > =A0=A0=A0=A0=A0 /* pad_to_size was once a reserved field, s=
o sanitize it */
> > > > > > > > =A0=A0=A0=A0=A0 if (entry->flags & EXEC_OBJECT_PAD_TO_SIZE)=
 {
> > > > > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 if (unlikely(offset_in_page(ent=
ry->pad_to_size)))
> > > > > > > > diff --git
> > > > > > > > a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > > > > > > > b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > > > > > > > index 6cdff5fc5882..b321f5484ae6 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > > > > > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > > > > > > > @@ -25,6 +25,7 @@
> > > > > > > > =A0 #include <linux/sched/mm.h>
> > > > > > > > =A0 =A0 #include "display/intel_frontbuffer.h"
> > > > > > > > +#include "pxp/intel_pxp.h"
> > > > > > > > =A0 #include "i915_drv.h"
> > > > > > > > =A0 #include "i915_gem_clflush.h"
> > > > > > > > =A0 #include "i915_gem_context.h"
> > > > > > > > @@ -72,6 +73,8 @@ void
> > > > > > > > i915_gem_object_init(struct drm_i915_gem_object
> > > > > > > > *obj,
> > > > > > > > =A0=A0=A0=A0=A0 INIT_LIST_HEAD(&obj->lut_list);
> > > > > > > > =A0=A0=A0=A0=A0 spin_lock_init(&obj->lut_lock);
> > > > > > > > =A0 +=A0=A0=A0 INIT_LIST_HEAD(&obj->pxp_link);
> > > > > > > > +
> > > > > > > > =A0=A0=A0=A0=A0 spin_lock_init(&obj->mmo.lock);
> > > > > > > > =A0=A0=A0=A0=A0 obj->mmo.offsets =3D RB_ROOT;
> > > > > > > > =A0 @@ -120,6 +123,9 @@ static void
> > > > > > > > i915_gem_close_object(struct drm_gem_object
> > > > > > > > *gem, struct drm_file *f
> > > > > > > > =A0=A0=A0=A0=A0 struct i915_lut_handle *lut, *ln;
> > > > > > > > =A0=A0=A0=A0=A0 LIST_HEAD(close);
> > > > > > > > =A0 +=A0=A0=A0 if (i915_gem_object_has_valid_protection(obj=
))
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0 intel_pxp_object_remove(obj);
> > > > > > > > +
> > > > > > > > =A0=A0=A0=A0=A0 spin_lock(&obj->lut_lock);
> > > > > > > > =A0=A0=A0=A0=A0 list_for_each_entry_safe(lut, ln, &obj->lut=
_list, obj_link) {
> > > > > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 struct i915_gem_context *ctx =
=3D lut->ctx;
> > > > > > > > diff --git
> > > > > > > > a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > > > > > > b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > > > > > > index 366d23afbb1a..a1fa7539c0f7 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > > > > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > > > > > > @@ -274,6 +274,18 @@
> > > > > > > > i915_gem_object_needs_async_cancel(const struct
> > > > > > > > drm_i915_gem_object *obj)
> > > > > > > > =A0=A0=A0=A0=A0 return i915_gem_object_type_has(obj,
> > > > > > > > I915_GEM_OBJECT_ASYNC_CANCEL);
> > > > > > > > =A0 }
> > > > > > > > =A0 +static inline bool
> > > > > > > > +i915_gem_object_is_protected(const struct
> > > > > > > > drm_i915_gem_object *obj)
> > > > > > > > +{
> > > > > > > > +=A0=A0=A0 return obj->user_flags & I915_GEM_OBJECT_PROTECT=
ED;
> > > > > > > > +}
> > > > > > > > +
> > > > > > > > +static inline bool
> > > > > > > > +i915_gem_object_has_valid_protection(const
> > > > > > > > struct drm_i915_gem_object *obj)
> > > > > > > > +{
> > > > > > > > +=A0=A0=A0 return i915_gem_object_is_protected(obj) &&
> > > > > > > > !list_empty(&obj->pxp_link);
> > > > > > > > +}
> > > > > > > > +
> > > > > > > > =A0 static inline bool
> > > > > > > > =A0 i915_gem_object_is_framebuffer(const struct
> > > > > > > > drm_i915_gem_object *obj)
> > > > > > > > =A0 {
> > > > > > > > diff --git
> > > > > > > > a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> > > > > > > > b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> > > > > > > > index 0a1fdbac882e..6eee580c7aba 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> > > > > > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> > > > > > > > @@ -167,6 +167,11 @@ struct drm_i915_gem_object {
> > > > > > > > =A0=A0=A0=A0=A0 } mmo;
> > > > > > > > =A0 =A0=A0=A0=A0=A0 I915_SELFTEST_DECLARE(struct list_head =
st_link);
> > > > > > > > +=A0=A0=A0 /**
> > > > > > > > +=A0=A0=A0=A0 * @user_flags: small set of booleans set by t=
he user
> > > > > > > > +=A0=A0=A0=A0 */
> > > > > > > > +=A0=A0=A0 unsigned long user_flags;
> > > > > > > > +#define I915_GEM_OBJECT_PROTECTED BIT(0)
> > > > > > > > =A0 =A0=A0=A0=A0=A0 unsigned long flags;
> > > > > > > > =A0 #define I915_BO_ALLOC_CONTIGUOUS BIT(0)
> > > > > > > > @@ -290,6 +295,14 @@ struct drm_i915_gem_object {
> > > > > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 bool dirty:1;
> > > > > > > > =A0=A0=A0=A0=A0 } mm;
> > > > > > > > =A0 +=A0=A0=A0 /*
> > > > > > > > +=A0=A0=A0=A0 * When the PXP session is invalidated, we
> > > > > > > > need to mark all protected
> > > > > > > > +=A0=A0=A0=A0 * objects as invalid. To easily do so we
> > > > > > > > add them all to a list. The
> > > > > > > > +=A0=A0=A0=A0 * presence on the list is used to check if
> > > > > > > > the encryption is valid or
> > > > > > > > +=A0=A0=A0=A0 * not.
> > > > > > > > +=A0=A0=A0=A0 */
> > > > > > > > +=A0=A0=A0 struct list_head pxp_link;
> > > > > > > > +
> > > > > > > > =A0=A0=A0=A0=A0 /** Record of address bit 17 of each page a=
t last unbind. */
> > > > > > > > =A0=A0=A0=A0=A0 unsigned long *bit_17;
> > > > > > > > =A0 diff --git
> > > > > > > > a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> > > > > > > > b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> > > > > > > > index 5912e4a12d94..03151cd7f4b8 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> > > > > > > > +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> > > > > > > > @@ -69,6 +69,8 @@ void intel_pxp_init(struct intel_pxp *pxp)
> > > > > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 return;
> > > > > > > > =A0 =A0=A0=A0=A0=A0 mutex_init(&pxp->mutex);
> > > > > > > > +=A0=A0=A0 spin_lock_init(&pxp->lock);
> > > > > > > > +=A0=A0=A0 INIT_LIST_HEAD(&pxp->protected_objects);
> > > > > > > > =A0 =A0=A0=A0=A0=A0 /*
> > > > > > > > =A0=A0=A0=A0=A0=A0 * we'll use the completion to check if
> > > > > > > > there is a termination pending,
> > > > > > > > @@ -136,11 +138,49 @@ int
> > > > > > > > intel_pxp_wait_for_termination_completion(struct
> > > > > > > > intel_pxp *pxp)
> > > > > > > > =A0=A0=A0=A0=A0 return ret;
> > > > > > > > =A0 }
> > > > > > > > =A0 +int intel_pxp_object_add(struct drm_i915_gem_object *o=
bj)
> > > > > > > > +{
> > > > > > > > +=A0=A0=A0 struct intel_pxp *pxp =3D &to_i915(obj->base.dev=
)->gt.pxp;
> > > > > > > > +
> > > > > > > > +=A0=A0=A0 if (!intel_pxp_is_enabled(pxp))
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0 return -ENODEV;
> > > > > > > > +
> > > > > > > > +=A0=A0=A0 if (!list_empty(&obj->pxp_link))
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0 return -EEXIST;
> > > > > > > > +
> > > > > > > > +=A0=A0=A0 spin_lock_irq(&pxp->lock);
> > > > > > > > +=A0=A0=A0 list_add(&obj->pxp_link, &pxp->protected_objects=
);
> > > > > > > > +=A0=A0=A0 spin_unlock_irq(&pxp->lock);
> > > > > > > > +
> > > > > > > > +=A0=A0=A0 return 0;
> > > > > > > > +}
> > > > > > > > +
> > > > > > > > +void intel_pxp_object_remove(struct drm_i915_gem_object *o=
bj)
> > > > > > > > +{
> > > > > > > > +=A0=A0=A0 struct intel_pxp *pxp =3D &to_i915(obj->base.dev=
)->gt.pxp;
> > > > > > > > +
> > > > > > > > +=A0=A0=A0 if (!intel_pxp_is_enabled(pxp))
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0 return;
> > > > > > > > +
> > > > > > > > +=A0=A0=A0 spin_lock_irq(&pxp->lock);
> > > > > > > > +=A0=A0=A0 list_del_init(&obj->pxp_link);
> > > > > > > > +=A0=A0=A0 spin_unlock_irq(&pxp->lock);
> > > > > > > > +}
> > > > > > > > +
> > > > > > > > =A0 void intel_pxp_invalidate(struct intel_pxp *pxp)
> > > > > > > > =A0 {
> > > > > > > > =A0=A0=A0=A0=A0 struct drm_i915_private *i915 =3D pxp_to_gt=
(pxp)->i915;
> > > > > > > > +=A0=A0=A0 struct drm_i915_gem_object *obj, *tmp;
> > > > > > > > =A0=A0=A0=A0=A0 struct i915_gem_context *ctx, *cn;
> > > > > > > > =A0 +=A0=A0=A0 /* delete objects that have been used
> > > > > > > > with the invalidated session */
> > > > > > > > +=A0=A0=A0 spin_lock_irq(&pxp->lock);
> > > > > > > > +=A0=A0=A0 list_for_each_entry_safe(obj, tmp,
> > > > > > > > &pxp->protected_objects, pxp_link) {
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0 if (i915_gem_object_has_pages(obj))
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 list_del_init(&obj->pxp_=
link);
> > > > > > > > +=A0=A0=A0 }
> > > > > > > > +=A0=A0=A0 spin_unlock_irq(&pxp->lock);
> > > > > > > > +
> > > > > > > > =A0=A0=A0=A0=A0 /* ban all contexts marked as protected */
> > > > > > > > =A0=A0=A0=A0=A0 spin_lock_irq(&i915->gem.contexts.lock);
> > > > > > > > =A0=A0=A0=A0=A0 list_for_each_entry_safe(ctx, cn,
> > > > > > > > &i915->gem.contexts.list, link) {
> > > > > > > > diff --git
> > > > > > > > a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> > > > > > > > b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> > > > > > > > index e36200833095..3315b07d271b 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> > > > > > > > +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> > > > > > > > @@ -9,6 +9,8 @@
> > > > > > > > =A0 #include "gt/intel_gt_types.h"
> > > > > > > > =A0 #include "intel_pxp_types.h"
> > > > > > > > =A0 +struct drm_i915_gem_object;
> > > > > > > > +
> > > > > > > > =A0 #define GEN12_DISPLAY_PXP_STATE_TERMINATED_INTERRUPT BI=
T(1)
> > > > > > > > =A0 #define GEN12_DISPLAY_APP_TERMINATED_PER_FW_REQ_INTERRU=
PT BIT(2)
> > > > > > > > =A0 #define GEN12_DISPLAY_STATE_RESET_COMPLETE_INTERRUPT BI=
T(3)
> > > > > > > > @@ -38,6 +40,9 @@ void intel_pxp_init(struct intel_pxp *pxp=
);
> > > > > > > > =A0 void intel_pxp_fini(struct intel_pxp *pxp);
> > > > > > > > =A0 =A0 int
> > > > > > > > intel_pxp_wait_for_termination_completion(struct
> > > > > > > > intel_pxp *pxp);
> > > > > > > > +
> > > > > > > > +int intel_pxp_object_add(struct drm_i915_gem_object *obj);
> > > > > > > > +void intel_pxp_object_remove(struct drm_i915_gem_object *o=
bj);
> > > > > > > > =A0 void intel_pxp_invalidate(struct intel_pxp *pxp);
> > > > > > > > =A0 #else
> > > > > > > > =A0 static inline void intel_pxp_init(struct intel_pxp *pxp)
> > > > > > > > @@ -52,6 +57,14 @@ static inline int
> > > > > > > > intel_pxp_wait_for_termination_completion(struct
> > > > > > > > intel_pxp *px
> > > > > > > > =A0 {
> > > > > > > > =A0=A0=A0=A0=A0 return 0;
> > > > > > > > =A0 }
> > > > > > > > +
> > > > > > > > +static inline int intel_pxp_object_add(struct
> > > > > > > > drm_i915_gem_object *obj)
> > > > > > > > +{
> > > > > > > > +=A0=A0=A0 return 0;
> > > > > > > > +}
> > > > > > > > +static inline void
> > > > > > > > intel_pxp_object_remove(struct
> > > > > > > > drm_i915_gem_object *obj)
> > > > > > > > +{
> > > > > > > > +}
> > > > > > > > =A0 #endif
> > > > > > > > =A0 =A0 #endif /* __INTEL_PXP_H__ */
> > > > > > > > diff --git
> > > > > > > > a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> > > > > > > > b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> > > > > > > > index 6f659a6f8f1c..53a2a8acfe51 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> > > > > > > > +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> > > > > > > > @@ -7,8 +7,10 @@
> > > > > > > > =A0 #define __INTEL_PXP_TYPES_H__
> > > > > > > > =A0 =A0 #include <linux/completion.h>
> > > > > > > > +#include <linux/list.h>
> > > > > > > > =A0 #include <linux/types.h>
> > > > > > > > =A0 #include <linux/mutex.h>
> > > > > > > > +#include <linux/spinlock.h>
> > > > > > > > =A0 #include <linux/workqueue.h>
> > > > > > > > =A0 =A0 struct intel_context;
> > > > > > > > @@ -28,6 +30,9 @@ struct intel_pxp {
> > > > > > > > =A0=A0=A0=A0=A0 struct work_struct irq_work;
> > > > > > > > =A0=A0=A0=A0=A0 bool irq_enabled;
> > > > > > > > =A0=A0=A0=A0=A0 u32 current_events; /* protected with gt->i=
rq_lock */
> > > > > > > > +
> > > > > > > > +=A0=A0=A0 struct spinlock lock;
> > > > > > > > +=A0=A0=A0 struct list_head protected_objects;
> > > > > > > > =A0 };
> > > > > > > > =A0 =A0 #endif /* __INTEL_PXP_TYPES_H__ */
> > > > > > > > diff --git a/include/uapi/drm/i915_drm.h
> > > > > > > > b/include/uapi/drm/i915_drm.h
> > > > > > > > index 9ebe8523aa0c..0f8b771a6d53 100644
> > > > > > > > --- a/include/uapi/drm/i915_drm.h
> > > > > > > > +++ b/include/uapi/drm/i915_drm.h
> > > > > > > > @@ -1753,6 +1753,28 @@ struct drm_i915_gem_object_param {
> > > > > > > > =A0=A0 */
> > > > > > > > =A0 #define I915_OBJECT_PARAM=A0 (1ull << 32)
> > > > > > > > =A0 +/*
> > > > > > > > + * I915_OBJECT_PARAM_PROTECTED_CONTENT:
> > > > > > > > + *
> > > > > > > > + * If set to true, buffer contents is expected
> > > > > > > > to be protected by PXP
> > > > > > > > + * encryption and requires decryption for scan
> > > > > > > > out and processing. This is
> > > > > > > > + * only possible on platforms that have PXP
> > > > > > > > enabled, on all other scenarios
> > > > > > > > + * setting this flag will cause the ioctl to
> > > > > > > > fail and return -ENODEV.
> > > > > > > > + *
> > > > > > > > + * Protected buffers can only be used with
> > > > > > > > contexts created using the
> > > > > > > > + * I915_CONTEXT_PARAM_PROTECTED_CONTENT flag.
> > > > > > > > The buffer contents are
> > > > > > > > + * considered invalid after a PXP session teardown.
> > > > > > > > + *
> > > > > > > > + * Given the restriction above, the following
> > > > > > > > errors are possible when
> > > > > > > > + * submitting a protected object in an execbuf call:
> > > > > > > > + *
> > > > > > > > + * -ENODEV: PXP session not currently active
> > > > > > > > + * -EIO: buffer has become invalid after a teardown event
> > > > > > > > + * -EPERM: buffer submitted using a context not
> > > > > > > > marked as protected
> > > > > > > > + */
> > > > > > > > +#define I915_OBJECT_PARAM_PROTECTED_CONTENT=A0 0x0
> > > > > > > > +/* Must be kept compact -- no holes and well documented */
> > > > > > > > +
> > > > > > > > =A0=A0=A0=A0=A0 __u64 param;
> > > > > > > > =A0 =A0=A0=A0=A0=A0 /* Data value or pointer */
> > > > > > > =

> > > > > > > =

> > > > > > =

> > > > > =

> > > > =

> > > =

> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
