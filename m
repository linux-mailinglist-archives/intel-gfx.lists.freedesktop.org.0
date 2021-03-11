Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A35B0337964
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 17:31:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC0066EE68;
	Thu, 11 Mar 2021 16:31:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D2086EE68
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 16:31:34 +0000 (UTC)
IronPort-SDR: iaN/MbaFCwB9KMt0ZA6vHSOP4kNcGSymmYtuwzFeDqeHV4jxisgAj5ab1xkmYy3Rbxz/rpL6/h
 s2NXC5kbNTnA==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="273735200"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="273735200"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 08:31:32 -0800
IronPort-SDR: dY4ncyOX7RpwGbnTE3nKMgZL7fHIWBnfkMAwb9hAvkjyaKLNGKYNBQVjkdv1asfPnS1SDMbpkZ
 FPagoAstJmGg==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="404122275"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 08:31:31 -0800
Date: Thu, 11 Mar 2021 18:31:27 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20210311163127.GC2970909@ideak-desk.fi.intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-8-imre.deak@intel.com>
 <YEpCHqY2Mc9AEHK4@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YEpCHqY2Mc9AEHK4@intel.com>
Subject: Re: [Intel-gfx] [PATCH 07/23] drm/i915/intel_fb: Pull FB plane
 functions from intel_display_types.h
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 11, 2021 at 06:15:26PM +0200, Ville Syrj=E4l=E4 wrote:
> ...
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/=
i915/display/intel_fb.c
> > new file mode 100644
> > index 000000000000..29b8ec087f53
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > @@ -0,0 +1,28 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright =A9 2021 Intel Corporation
> > + */
> > +
> > +#include <drm/drm_framebuffer.h>
> > +
> > +#include "display/intel_display_types.h"
> > +#include "display/intel_fb.h"
> =

> I don't think we usually have the "display/" part in these.

Ah ok, took that idea from intel_display.c, but that was only
intentional before moving it under display/. Will fix this.

> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> > +
> > +bool is_ccs_plane(const struct drm_framebuffer *fb, int plane)
> > +{
> > +	if (!is_ccs_modifier(fb->modifier))
> > +		return false;
> > +
> > +	return plane >=3D fb->format->num_planes / 2;
> > +}
> > +
> > +bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane)
> > +{
> > +	return is_gen12_ccs_modifier(fb->modifier) && is_ccs_plane(fb, plane);
> > +}
> > +
> > +bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane)
> > +{
> > +	return fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC &&
> > +	       plane =3D=3D 2;
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/=
i915/display/intel_fb.h
> > new file mode 100644
> > index 000000000000..64e6a2521320
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> > @@ -0,0 +1,17 @@
> > +/* SPDX-License-Identifier: MIT */
> > +/*
> > + * Copyright =A9 2020-2021 Intel Corporation
> > + */
> > +
> > +#ifndef __INTEL_FB_H__
> > +#define __INTEL_FB_H__
> > +
> > +#include <linux/types.h>
> > +
> > +struct drm_framebuffer;
> > +
> > +bool is_ccs_plane(const struct drm_framebuffer *fb, int plane);
> > +bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane);
> > +bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane=
);
> > +
> > +#endif /* __INTEL_FB_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drive=
rs/gpu/drm/i915/display/skl_universal_plane.c
> > index 1f335cb09149..3ff1008b0b4a 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -11,6 +11,7 @@
> >  #include "i915_drv.h"
> >  #include "intel_atomic_plane.h"
> >  #include "intel_display_types.h"
> > +#include "intel_fb.h"
> >  #include "intel_pm.h"
> >  #include "intel_psr.h"
> >  #include "intel_sprite.h"
> > -- =

> > 2.25.1
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
