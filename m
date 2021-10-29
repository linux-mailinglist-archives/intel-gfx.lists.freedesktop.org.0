Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9179644023B
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 20:44:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06C116EA34;
	Fri, 29 Oct 2021 18:44:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 452A06EA34
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 18:44:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="210779488"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="210779488"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 11:44:35 -0700
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="499018579"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 11:44:33 -0700
Date: Fri, 29 Oct 2021 21:44:30 +0300
From: Imre Deak <imre.deak@intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20211029184430.GB3313089@ideak-desk.fi.intel.com>
References: <20211026225105.2783797-1-imre.deak@intel.com>
 <20211026225105.2783797-5-imre.deak@intel.com>
 <CAM0jSHMJutLab04876We-B6JxYaSxqC66o+dwr0mkSTLSQK_hw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAM0jSHMJutLab04876We-B6JxYaSxqC66o+dwr0mkSTLSQK_hw@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/adlp/fb: Fix remapping of
 linear CCS AUX surfaces
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

On Fri, Oct 29, 2021 at 05:54:41PM +0100, Matthew Auld wrote:
> On Tue, 26 Oct 2021 at 23:51, Imre Deak <imre.deak@intel.com> wrote:
> >
> > During remapping CCS FBs the CCS AUX surface mapped size and offset->x,y
> > coordinate calculations assumed a tiled layout. This works as long as
> > the CCS surface height is aligned to 64 lines (ensuring a 4k bytes CCS
> > surface tile layout).  However this alignment is not required by the HW
> > (and the driver doesn't enforces it either).
> >
> > Add the remapping logic required to remap the pages of CCS surfaces
> > without the above alignment, assuming the natural linear layout of the
> > CCS surface (vs. tiled main surface layout).
> >
> > Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Fixes: 3d1adc3d64cf ("drm/i915/adlp: Add support for remapping CCS FBs")
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> 
> <snip>
> 
> > diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
> > index 80e93bf00f2e5..4ee6e54799f48 100644
> > --- a/drivers/gpu/drm/i915/i915_vma_types.h
> > +++ b/drivers/gpu/drm/i915/i915_vma_types.h
> > @@ -97,11 +97,20 @@ enum i915_cache_level;
> >
> >  struct intel_remapped_plane_info {
> >         /* in gtt pages */
> > -       u32 offset;
> > -       u16 width;
> > -       u16 height;
> > -       u16 src_stride;
> > -       u16 dst_stride;
> > +       u32 offset:31;
> > +       u32 linear:1;
> > +       union {
> > +               /* in gtt pages for !linear */
> > +               struct {
> > +                       u16 width;
> > +                       u16 height;
> > +                       u16 src_stride;
> > +                       u16 dst_stride;
> > +               };
> > +
> > +               /* in gtt pages for linear */
> > +               u32 size;
> > +       };
> 
> Looks OK to me. Only concern is whether packed bitfields might give
> different results, depending on the compiler or something.

Granted, the C99 spec says:
"An implementation may allocate any addressable storage unit large
enough to hold a bit-field."

and

"The order of allocation of bit-fields within a unit (high-order to
low-order or low-order to high-order) is implementation-defined."

GCC and Clang at least behave the same (and most logical) way. The
packed attribute is also only a compiler extension, so I think we need
to rely anyway on what main stream compilers do.

The kernel has a few instances of packed bitfields used for some HW
interface and we also use this in IGT for GPU commands.

I could instead use macros to unpack the fields manually, but we could
do that only if bitfields prove to be a real concern (that BUILD_BUG()
in assert_i915_gem_gtt_types() would also indicate).

> If you look at the craziness in assert_i915_gem_gtt_types for example,
> it's very particular about the size/layout.

Yes, looks to be an optimization based on comments in
i915_vma_compare(), but I think the checks there ensure that the struct
layout is as expected.

> >  } __packed;
> >
> >  struct intel_remapped_info {
> > --
> > 2.27.0
> >
