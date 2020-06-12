Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7A61F7B06
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 17:38:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 982056E8E5;
	Fri, 12 Jun 2020 15:38:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF2A489444
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 15:37:59 +0000 (UTC)
IronPort-SDR: OeN95/htpxgFTEJYTIOAcc8GNHe1dILevbp1EW/J050f0tZzLuBNVEAYhO0A7NUMIUTCO35Ctm
 JqUT37vJWMQA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 08:37:59 -0700
IronPort-SDR: DGwnuVDktoi5d+trgW5SgIxzOohx2vWMEyVxIsxgiZ4PCtRDTG3gUKtP4w5tf0liqnHqRrpRHW
 Ny7KhbIiVxcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,503,1583222400"; d="scan'208";a="289902634"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 12 Jun 2020 08:37:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Jun 2020 18:37:56 +0300
Date: Fri, 12 Jun 2020 18:37:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200612153756.GJ6112@intel.com>
References: <20200526221447.64110-1-jose.souza@intel.com>
 <20200526221447.64110-2-jose.souza@intel.com>
 <20200612152531.GI6112@intel.com>
 <023ae7594ee3fa1e94d51686b778b55c12e99c96.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <023ae7594ee3fa1e94d51686b778b55c12e99c96.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Add plane damage clips
 property
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 12, 2020 at 03:30:59PM +0000, Souza, Jose wrote:
> On Fri, 2020-06-12 at 18:25 +0300, Ville Syrj=E4l=E4 wrote:
> > On Tue, May 26, 2020 at 03:14:43PM -0700, Jos=E9 Roberto de Souza wrote:
> > > This property will be used by PSR2 software tracking, adding it to
> > > GEN12+.
> > =

> > Is there actual userspace that uses this?
> =

> Only Weston for now:
> =

> https://gitlab.freedesktop.org/wayland/weston/-/merge_requests/17

And what happens when userspace doesn't do this stuff?

> =

> > =

> > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 4 ++++
> > >  drivers/gpu/drm/i915/display/intel_sprite.c  | 4 ++++
> > >  2 files changed, 8 insertions(+)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index f40b909952cc..b69878334040 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -35,6 +35,7 @@
> > >  #include <drm/drm_atomic.h>
> > >  #include <drm/drm_atomic_helper.h>
> > >  #include <drm/drm_atomic_uapi.h>
> > > +#include <drm/drm_damage_helper.h>
> > >  #include <drm/drm_dp_helper.h>
> > >  #include <drm/drm_edid.h>
> > >  #include <drm/drm_fourcc.h>
> > > @@ -16476,6 +16477,9 @@ intel_cursor_plane_create(struct drm_i915_pri=
vate *dev_priv,
> > >  	zpos =3D RUNTIME_INFO(dev_priv)->num_sprites[pipe] + 1;
> > >  	drm_plane_create_zpos_immutable_property(&cursor->base, zpos);
> > >  =

> > > +	if (INTEL_GEN(dev_priv) >=3D 12)
> > > +		drm_plane_enable_fb_damage_clips(&cursor->base);
> > > +
> > >  	drm_plane_helper_add(&cursor->base, &intel_plane_helper_funcs);
> > >  =

> > >  	return cursor;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gp=
u/drm/i915/display/intel_sprite.c
> > > index 571c36f929bd..8be06cb25999 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > > @@ -34,6 +34,7 @@
> > >  #include <drm/drm_atomic_helper.h>
> > >  #include <drm/drm_color_mgmt.h>
> > >  #include <drm/drm_crtc.h>
> > > +#include <drm/drm_damage_helper.h>
> > >  #include <drm/drm_fourcc.h>
> > >  #include <drm/drm_plane_helper.h>
> > >  #include <drm/drm_rect.h>
> > > @@ -3151,6 +3152,9 @@ skl_universal_plane_create(struct drm_i915_priv=
ate *dev_priv,
> > >  =

> > >  	drm_plane_create_zpos_immutable_property(&plane->base, plane_id);
> > >  =

> > > +	if (INTEL_GEN(dev_priv) >=3D 12)
> > > +		drm_plane_enable_fb_damage_clips(&plane->base);
> > > +
> > >  	drm_plane_helper_add(&plane->base, &intel_plane_helper_funcs);
> > >  =

> > >  	return plane;
> > > -- =

> > > 2.26.2
> > > =

> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
