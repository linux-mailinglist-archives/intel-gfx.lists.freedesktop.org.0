Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D757D8EEC
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 08:49:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26A9510E92F;
	Fri, 27 Oct 2023 06:49:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB77910E92F
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 06:49:29 +0000 (UTC)
Received: from 91-155-254-243.elisa-laajakaista.fi ([91.155.254.243]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1qwGeq-00000000DJ3-2Ufk; Fri, 27 Oct 2023 09:49:27 +0300
Message-ID: <f5aefd3094251e53143e2857f2caa7764ae42584.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: "Manna, Animesh" <animesh.manna@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Date: Fri, 27 Oct 2023 09:49:23 +0300
In-Reply-To: <DS7PR11MB5990F5E060115401E8A4C941F9DDA@DS7PR11MB5990.namprd11.prod.outlook.com>
References: <20231008101206.1665236-1-animesh.manna@intel.com>
 <9a437097e2fcaabf42b8ba784f31f4e54bbab68c.camel@coelho.fi>
 <DS7PR11MB5990F5E060115401E8A4C941F9DDA@DS7PR11MB5990.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dsb: DSB code refactoring
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2023-10-26 at 14:23 +0000, Manna, Animesh wrote:
>=20
> > -----Original Message-----
> > From: Luca Coelho <luca@coelho.fi>
> > Sent: Thursday, October 26, 2023 1:08 PM
> > To: Manna, Animesh <animesh.manna@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Cc: Nikula, Jani <jani.nikula@intel.com>
> > Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dsb: DSB code refactoring
> >=20
> > On Sun, 2023-10-08 at 15:42 +0530, Animesh Manna wrote:
> > > Refactor DSB implementation to be compatible with Xe driver.
> > >=20
> > > v1: RFC version.
> > > v2: Make intel_dsb structure opaque from external usage. [Jani]
> > > v3: Rebased on latest.
> > >=20
> > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > > ---
> >=20
> > Looks great overall! Just a couple of small comments below.
>=20
> Thanks for review.
>=20
> >=20
> >=20
> > [...]
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > index 3e32aa49b8eb..ec89d968a873 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > @@ -13,12 +13,13 @@
> > >  #include "intel_de.h"
> > >  #include "intel_display_types.h"
> > >  #include "intel_dsb.h"
> > > +#include "intel_dsb_buffer.h"
> > >  #include "intel_dsb_regs.h"
> > >  #include "intel_vblank.h"
> > >  #include "intel_vrr.h"
> > >  #include "skl_watermark.h"
> > >=20
> > > -struct i915_vma;
> > > +#define CACHELINE_BYTES 64
> >=20
> > I see that this macro is defined in GT and you want to avoid depending =
on
> > the definition from GT, but you don't make any other changes related to=
 the
> > cacheline size here, so maybe this change should be a separate patch? A=
lso,
> > it looks a bit magic without an explanation on where the number is comi=
ng
> > from.
>=20
> For Xe driver macro definition in GT may not accessible, so have redefine=
d in Intel_dsb.c itself. It's related to dsb so kept in the same patch.
> DSB command buffer is cacheline aligned. DSB support added from gen12 and=
 size of cacheline size will be 64 bytes. As per bspec each cacheline can h=
ave 8 dsb-instructions and 64 bits per instruction.

Okay, even though this is clearly related to DSB only, I still don't
think it should be in the same patch.  In any case, I'm not going to
block on this.


> > [...]
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> > > b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> > > new file mode 100644
> > > index 000000000000..723937591831
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> > > @@ -0,0 +1,64 @@
> > > +// SPDX-License-Identifier: MIT
> > > +/*
> > > + * Copyright 2023, Intel Corporation.
> > > + */
> > > +
> > > +#include "gem/i915_gem_internal.h"
> > > +#include "i915_drv.h"
> > > +#include "i915_vma.h"
> > > +#include "intel_display_types.h"
> > > +#include "intel_dsb_buffer.h"
> > > +
> > > +u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf) {
> > > +	return i915_ggtt_offset(dsb_buf->vma); }
> > > +
> > > +void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32
> > > +idx, u32 val) {
> > > +	dsb_buf->cmd_buf[idx] =3D val;
> > > +}
> > > +
> > > +u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx)
> > > +{
> > > +	return dsb_buf->cmd_buf[idx];
> > > +}
> > > +
> > > +void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32
> > > +idx, u32 val, u32 sz) {
> > > +	memset(&dsb_buf->cmd_buf[idx], val, sz);
> >=20
> > I think you should check the array boundaries here, to be sure.
> > Probably a good idea to do with the other functions as well, but I thin=
k this is
> > the most critical and easiest to make mistakes with.
>=20
> assert_dsb_has_room() function is taking care for not crossing the bounda=
ries. Here will check from the allocated buffer-size versus used/unused buf=
fer.
> Specifically intel_dsb_buffer_memset() is called from intel_dsb_align_tai=
l() where zero get set for unused cacheline space. No chance to cross the b=
oundaries in this case.
> Please let me know for any further info.

I mean, if someone accidentally calls intel_dsb_buffer_memset() with a
wrong index or too large size, the memset here will write out-of-
bounds, no matter what you do in assert_dsb_has_room().  This shouldn't
happen, but if it does, it will be hard to find and can lead to
security issues.

I don't know how time critical the calls to intel_dsb_buffer_memset()
will be, but I think it's worth adding a splat if someone does
something wrong.

As an additional comment, instead of "u32 sz" you should use size_t for
the size.  And I would use the full word "size", as you do in
intel_dsb_buffer_create() (where it should also be size_t), for
consistency.

--
Cheers,
Luca.
