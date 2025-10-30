Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FBDC1FF4B
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 13:15:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8110F10E963;
	Thu, 30 Oct 2025 12:15:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9380710E94E;
 Thu, 30 Oct 2025 12:15:40 +0000 (UTC)
Received: from 85-76-145-237-nat.elisa-mobile.fi ([85.76.145.237]
 helo=[10.198.114.10])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vERZ2-00000001w37-1vJh; Thu, 30 Oct 2025 14:15:38 +0200
Message-ID: <5f4a253cd371d420440ad6226888e642e6dbad84.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Thu, 30 Oct 2025 14:14:05 +0200
In-Reply-To: <b16635eefb68dfe22ba9c8550cde3f8d4e2ec575@intel.com>
References: <cover.1761146196.git.jani.nikula@intel.com>
 <469f9c41e0c3e3099314a3cf1a7671bf36ec8ffd.1761146196.git.jani.nikula@intel.com>
 <309c3611169c5362c132ee8496150c74faf22497.camel@coelho.fi>
 <b16635eefb68dfe22ba9c8550cde3f8d4e2ec575@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-5 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 3/6] drm/i915/display: add intel_display_run_as_guest()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2025-10-30 at 10:48 +0200, Jani Nikula wrote:
> On Thu, 30 Oct 2025, Luca Coelho <luca@coelho.fi> wrote:
> > On Wed, 2025-10-22 at 18:17 +0300, Jani Nikula wrote:
> > > Add intel_display_utils.c for display utilities that need more than a
> > > header.
> > >=20
> > > Start off with intel_display_run_as_guest(). The implementation is
> > > intentional duplication of the i915_utils.h i915_run_as_guest(), with
> > > the idea that it's small enough to not matter.
> > >=20
> > > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > > ---
> >=20
> >=20
> >=20
> > >  drivers/gpu/drm/i915/Makefile                  |  1 +
> > >  .../gpu/drm/i915/display/intel_display_utils.c | 18 ++++++++++++++++=
++
> > >  .../gpu/drm/i915/display/intel_display_utils.h |  6 ++++++
> > >  drivers/gpu/drm/i915/display/intel_pch.c       |  4 ++--
> > >  drivers/gpu/drm/xe/Makefile                    |  1 +
> > >  5 files changed, 28 insertions(+), 2 deletions(-)
> > >  create mode 100644 drivers/gpu/drm/i915/display/intel_display_utils.=
c
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Mak=
efile
> > > index 47bac9b2c611..046f9282fb65 100644
> > > --- a/drivers/gpu/drm/i915/Makefile
> > > +++ b/drivers/gpu/drm/i915/Makefile
> > > @@ -255,6 +255,7 @@ i915-y +=3D \
> > >  	display/intel_display_rpm.o \
> > >  	display/intel_display_rps.o \
> > >  	display/intel_display_snapshot.o \
> > > +	display/intel_display_utils.o \
> > >  	display/intel_display_wa.o \
> > >  	display/intel_dmc.o \
> > >  	display/intel_dmc_wl.o \
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_utils.c b/dri=
vers/gpu/drm/i915/display/intel_display_utils.c
> > > new file mode 100644
> > > index 000000000000..13d3999dd580
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_utils.c
> > > @@ -0,0 +1,18 @@
> > > +// SPDX-License-Identifier: MIT
> > > +/* Copyright =C2=A9 2025 Intel Corporation */
> > > +
> > > +#ifdef CONFIG_X86
> > > +#include <asm/hypervisor.h>
> > > +#endif
> > > +
> > > +#include "intel_display_utils.h"
> > > +
> > > +bool intel_display_run_as_guest(struct intel_display *display)
> > > +{
> > > +#if IS_ENABLED(CONFIG_X86)
> > > +	return !hypervisor_is_type(X86_HYPER_NATIVE);
> > > +#else
> > > +	/* Not supported yet */
> > > +	return false;
> > > +#endif
> > > +}
> >=20
> > Why can't this be an inline in the header file?
>=20
> I'll turn it around. I think there needs to be a rationale for inlining,
> not the other way around. A regular function should be the default.
>=20
> I think the primary reason for inlining would be performance, but I'll
> accept small "superfluous" static inlines that don't require pulling in
> other headers.
>=20
> I don't think either is true here.
>=20
> Additionally the static inline exposes all of that ifdef mess and the
> implementation details in the header too. A change in asm/hypervisor.h
> leads to a rebuild of everything that includes intel_display_utils.h,
> making the header dependencies worse. (Maybe a change in
> asm/hypervisor.h leads to a rebuild of everything anyway, but you get
> the general point.)

Arguable but fair points, thanks.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
