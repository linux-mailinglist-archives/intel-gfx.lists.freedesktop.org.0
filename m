Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8CF15322E
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 14:47:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6303D6E99B;
	Wed,  5 Feb 2020 13:47:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA44F6E99B
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 13:47:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 05:47:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,405,1574150400"; d="scan'208";a="231715565"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga003.jf.intel.com with ESMTP; 05 Feb 2020 05:46:59 -0800
Date: Wed, 5 Feb 2020 19:17:09 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200205134709.GA11696@intel.com>
References: <20200205114019.10900-1-ramalingam.c@intel.com>
 <158090301517.3271.5811178288757995505@skylake-alporthouse-com>
 <20200205120220.GA8775@intel.com>
 <158090431136.3271.388032583428389433@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158090431136.3271.388032583428389433@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: align dumb buffer stride to
 page_sz of the region
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-02-05 at 12:05:11 +0000, Chris Wilson wrote:
> Quoting Ramalingam C (2020-02-05 12:02:50)
> > On 2020-02-05 at 11:43:35 +0000, Chris Wilson wrote:
> > > Quoting Ramalingam C (2020-02-05 11:40:19)
> > > > If stride of the dumb buffer requested is greater than the primary
> > > > plane's max stride, then we align the stride to the page size. But the
> > > > page size was hard coded for 4096.
> > > > 
> > > > With the lmem addition, lets align the stride to the page size of the
> > > > memory region that will be used for dumb buffer.
> > > > 
> > > > Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> > > > cc: Chris Wilson <chris@chris-wilson.co.uk>
> > > > ---
> > > >  drivers/gpu/drm/i915/i915_gem.c | 20 +++++++++-----------
> > > >  1 file changed, 9 insertions(+), 11 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> > > > index a712e60b016a..0f01396ca24e 100644
> > > > --- a/drivers/gpu/drm/i915/i915_gem.c
> > > > +++ b/drivers/gpu/drm/i915/i915_gem.c
> > > > @@ -239,8 +239,9 @@ i915_gem_dumb_create(struct drm_file *file,
> > > >                      struct drm_device *dev,
> > > >                      struct drm_mode_create_dumb *args)
> > > >  {
> > > > -       enum intel_memory_type mem_type;
> > > >         int cpp = DIV_ROUND_UP(args->bpp, 8);
> > > > +       enum intel_memory_type mem_type;
> > > > +       struct intel_memory_region *mr;
> > > >         u32 format;
> > > >  
> > > >         switch (cpp) {
> > > > @@ -260,24 +261,21 @@ i915_gem_dumb_create(struct drm_file *file,
> > > >         /* have to work out size/pitch and return them */
> > > >         args->pitch = ALIGN(args->width * cpp, 64);
> > > >  
> > > > +       mem_type = INTEL_MEMORY_SYSTEM;
> > > > +       if (HAS_LMEM(to_i915(dev)))
> > > > +               mem_type = INTEL_MEMORY_LOCAL;
> > > > +       mr = intel_memory_region_by_type(to_i915(dev), mem_type);
> > > > +
> > > >         /* align stride to page size so that we can remap */
> > > >         if (args->pitch > intel_plane_fb_max_stride(to_i915(dev), format,
> > > >                                                     DRM_FORMAT_MOD_LINEAR))
> > > > -               args->pitch = ALIGN(args->pitch, 4096);
> > > > +               args->pitch = ALIGN(args->pitch, mr->min_page_size);
> > > 
> > > That should be ggtt-page size, different semantics, right?
> > Chris,
> > 
> > Sicne the purpose(remapping stride) is not clear, couldn't understand
> > which page size this is. I assumed this is of hw page size.
> > 
> > Btw, there is no issues found with 4096 on lmem too. May be this is
> > unwanted change, unless they meant hw page size here and luckily we are
> > not hitting the issue. I am not sure though.
> 
> It for doing tricks with I915_GGTT_VIEW_REMAPPED (intel_remap_pages) so
> that a large framebuffer can be cut into CRTC-sized chunks and not go
> over the HW limits.

Sure. I will discard this change. Thanks for explaining that to me.

-Ram.
> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
