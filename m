Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FECC1FF79
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 13:17:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4A0910E94E;
	Thu, 30 Oct 2025 12:17:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF78F10E94E;
 Thu, 30 Oct 2025 12:17:55 +0000 (UTC)
Received: from 85-76-145-237-nat.elisa-mobile.fi ([85.76.145.237]
 helo=[10.198.114.10])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vERbB-00000001w3f-1UOZ; Thu, 30 Oct 2025 14:17:53 +0200
Message-ID: <8b9fabf6fd0cca02f4bd86d806bb639356aa98a8.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Thu, 30 Oct 2025 14:16:18 +0200
In-Reply-To: <a453394c50138e2c5a06c924af006d36bab83239@intel.com>
References: <cover.1761146196.git.jani.nikula@intel.com>
 <e022166af7c67f43904e2d0fc87bc5c13e0f1204.1761146196.git.jani.nikula@intel.com>
 <ae26093b5ee79d456afaaae0d4040e91d45eb2c2.camel@coelho.fi>
 <a453394c50138e2c5a06c924af006d36bab83239@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-5 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 4/6] drm/i915/display: add intel_display_vtd_active()
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

On Thu, 2025-10-30 at 10:50 +0200, Jani Nikula wrote:
> On Thu, 30 Oct 2025, Luca Coelho <luca@coelho.fi> wrote:
> > On Wed, 2025-10-22 at 18:17 +0300, Jani Nikula wrote:
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_utils.c b/dri=
vers/gpu/drm/i915/display/intel_display_utils.c
> > > index 13d3999dd580..04d010f7c23e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_utils.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_utils.c
> > > @@ -1,10 +1,15 @@
> > >  // SPDX-License-Identifier: MIT
> > >  /* Copyright =C2=A9 2025 Intel Corporation */
> > > =20
> > > +#include <linux/device.h>
> > > +
> > > +#include <drm/drm_device.h>
> > > +
> > >  #ifdef CONFIG_X86
> > >  #include <asm/hypervisor.h>
> > >  #endif
> > > =20
> > > +#include "intel_display_core.h"
> > >  #include "intel_display_utils.h"
> > > =20
> > >  bool intel_display_run_as_guest(struct intel_display *display)
> > > @@ -16,3 +21,12 @@ bool intel_display_run_as_guest(struct intel_displ=
ay *display)
> > >  	return false;
> > >  #endif
> > >  }
> > > +
> > > +bool intel_display_vtd_active(struct intel_display *display)
> > > +{
> > > +	if (device_iommu_mapped(display->drm->dev))
> > > +		return true;
> > > +
> > > +	/* Running as a guest, we assume the host is enforcing VT'd */
> > > +	return intel_display_run_as_guest(display);
> > > +}
> >=20
> > This also looks quite much like an "inlineable" function, no?
>=20
> Same reason as before, and that display->drm->dev dereference would
> require pulling in both intel_display_core.h and drm/drm_device.h in the
> header.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
