Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CDA7390520
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 17:20:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32CA96E07F;
	Tue, 25 May 2021 15:20:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 514F96E07F
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 May 2021 15:19:59 +0000 (UTC)
IronPort-SDR: ootNCbcv0Pc06uklj55xOb8KhObTxLI8cKpdENqVgk7JYrSweeCkNjw8balIbLHb18x6lK7q08
 EUAaIvD+rJGQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="189340142"
X-IronPort-AV: E=Sophos;i="5.82,328,1613462400"; d="scan'208";a="189340142"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 08:19:56 -0700
IronPort-SDR: 8x7ISc83zP5PXvRMrcYD/W1IRg4MxTStlSuuuRsDpuvktbdo4sTj9bdWSWeyyiLr+Wgi4jTZNG
 cpKmImisK7tA==
X-IronPort-AV: E=Sophos;i="5.82,328,1613462400"; d="scan'208";a="546816432"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 08:19:54 -0700
Date: Tue, 25 May 2021 18:19:50 +0300
From: Imre Deak <imre.deak@intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <20210525151950.GA2361902@ideak-desk.fi.intel.com>
References: <20210507091210.371132-1-matthew.auld@intel.com>
 <CAM0jSHMmgsj7=cwSEXjng_njA5aPC144-Hhq+gaKrE9Ha0nmMw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM0jSHMmgsj7=cwSEXjng_njA5aPC144-Hhq+gaKrE9Ha0nmMw@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: relax 2big checking
 around initial fb
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 25, 2021 at 02:25:15PM +0100, Matthew Auld wrote:
> On Fri, 7 May 2021 at 10:12, Matthew Auld <matthew.auld@intel.com> wrote:
> >
> > From: Chris Wilson <chris@chris-wilson.co.uk>
> >
> > The kernel prefers enabling fbc over the initial fb, since this leads to
> > actual runtime power savings, so if the initial fb is deemed too big
> > using some heuristic, then we simply skip allocating stolen for it.
> > However if the kernel is not configured with fbcon then it should be
> > possible to relax this, since unlike with fbcon the display server
> > shouldn't preserve it when later replacing it, and so we should be able
> > to re-use the stolen memory for fbc and friends. This patch is reported
> > to fix some flicker seen during boot splash on some devices.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > Cc: Lee Shawn C <shawn.c.lee@intel.com>
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Daniel Vetter <daniel.vetter@intel.com>
> =

> Ville, Imre, or somebody else with display experience, does this at
> least look somewhat reasonable?
> =

> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index ec2d3fa60003..0ee1f0213fd9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1455,7 +1455,7 @@ initial_plane_vma(struct drm_i915_private *i915,
> >          * important and we should probably use that space with FBC or =
other
> >          * features.
> >          */
> > -       if (size * 2 > i915->stolen_usable_size)
> > +       if (IS_ENABLED(FRAMEBUFFER_CONSOLE) && size * 2 > i915->stolen_=
usable_size)

Makes sense and aligns with how the FB object is allocated in intelfb_alloc=
():

Reviewed-by: Imre Deak <imre.deak@intel.com>


> >                 return NULL;
> >
> >         obj =3D i915_gem_object_create_stolen_for_preallocated(i915, ba=
se, size);
> > --
> > 2.26.3
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
