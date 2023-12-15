Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D01C7814381
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 09:23:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 202D810E169;
	Fri, 15 Dec 2023 08:23:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73F9710E169
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 08:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702628623; x=1734164623;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Rp6KbGlOS5FMfroI3fLerz0KLgGBdvZGX1ccYQL85Kc=;
 b=PmSaJjRMOZMN+ZRULuU3jwSIdWatI9xNiLL+2vESdY0zrQi+VJfgPEe5
 CG3ta1pSxdkdYoGXbwIcRZHj9mhq8d+EGnJzbb7SDHQsjzkdWVGxw/LWl
 nfabAIK4PlladkoYN39Y84lWnmZX99qE1Mkb1k+CtISrwgYcIee5baRE3
 EwOf9+Bhcobjh2R8fjz4mAAk0mb9OoAZrA4s33S5a/JEpSnckAbOZt5/Q
 UbE/GIuKLePA0mAxO0CwaDU1RVvHOdim7bvCeqkKdFNU1UZrTYPSdRKBf
 d3KcJ6qFTh6qwm6VUVCMg3BSMrYbx48Uu7Kt0ayCaxf/XpZnnsDvomsiH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="16797237"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="16797237"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 00:23:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="767895495"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="767895495"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2023 00:23:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Dec 2023 10:23:39 +0200
Date: Fri, 15 Dec 2023 10:23:39 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Subject: Re: =?iso-8859-1?B?w6IgRmkuQ0kuQkFUOiBm?= =?iso-8859-1?Q?ailure?=
 for drm/i915: (stolen) memory region related fixes
Message-ID: <ZXwNC-fly7u3EZ8n@intel.com>
References: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
 <170243147264.10260.8557231803342985702@emeril.freedesktop.org>
 <8be9ac53-0945-4371-91f2-40deed57fd11@intel.com>
 <3221c8ce-46e7-447b-a143-da94f2881b02@intel.com>
 <ZXuJU2NOYy-p24Zt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZXuJU2NOYy-p24Zt@intel.com>
X-Patchwork-Hint: comment
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 15, 2023 at 01:01:39AM +0200, Ville Syrjälä wrote:
> On Thu, Dec 14, 2023 at 12:06:58PM +0100, Andrzej Hajda wrote:
> > 
> > 
> > On 13.12.2023 17:13, Andrzej Hajda wrote:
> > > On 13.12.2023 02:37, Patchwork wrote:
> > >> *Patch Details*
> > >> *Series:*    drm/i915: (stolen) memory region related fixes
> > >> *URL:*    https://patchwork.freedesktop.org/series/127721/ 
> > >> <https://patchwork.freedesktop.org/series/127721/>
> > >> *State:*    failure
> > >> *Details:* 
> > >> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/index.html 
> > >> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/index.html>
> > >>
> > >>
> > >>   CI Bug Log - changes from CI_DRM_14010 -> Patchwork_127721v1
> > >>
> > >>
> > >>     Summary
> > >>
> > >> *FAILURE*
> > >>
> > >> Serious unknown changes coming with Patchwork_127721v1 absolutely need 
> > >> to be
> > >> verified manually.
> > >>
> > >> If you think the reported changes have nothing to do with the changes
> > >> introduced in Patchwork_127721v1, please notify your bug team 
> > >> (I915-ci-infra@lists.freedesktop.org) to allow them
> > >> to document this new failure mode, which will reduce false positives 
> > >> in CI.
> > >>
> > >> External URL: 
> > >> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/index.html
> > >>
> > >>
> > >>     Participating hosts (31 -> 33)
> > >>
> > >> Additional (4): bat-dg2-8 bat-dg2-9 bat-mtlp-8 fi-pnv-d510
> > >> Missing (2): bat-adlp-11 fi-snb-2520m
> > >>
> > >>
> > >>     Possible new issues
> > >>
> > >> Here are the unknown changes that may have been introduced in 
> > >> Patchwork_127721v1:
> > >>
> > >>
> > >>       IGT changes
> > >>
> > >>
> > >>         Possible regressions
> > >>
> > >>   *
> > >>
> > >>     igt@i915_module_load@load:
> > >>
> > >>       o bat-mtlp-8: NOTRUN -> INCOMPLETE
> > >>         
> > >> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-mtlp-8/igt@i915_module_load@load.html>
> > > 
> > > 
> > > This is due to overlapping initial fb's vma with GuC reserved area on 
> > > MTL, see ggtt_reserve_guc_top.
> > > 
> > > My dirty quick_fix proposed:
> > > @@ -143,6 +143,9 @@ initial_plane_vma(struct drm_i915_private *i915,
> > >          if (IS_ERR(vma))
> > >                  goto err_obj;
> > > 
> > > +       if (base + size > GUC_GGTT_TOP)
> > > +               base = min(base, GUC_GGTT_TOP) - size;
> > > +
> > >          pinctl = PIN_GLOBAL | PIN_OFFSET_FIXED | base;
> > >          if (HAS_GMCH(i915))
> > >                  pinctl |= PIN_MAPPABLE;
> > 
> > 
> > Copy/Paste Ville response for this proposition from another thread:
> > 
> > On 13.12.2023 17:03, Ville Syrjälä wrote:
> >  >
> >  > This is not a solution. The correct fix is either:
> >  > 1. fix the guc code to not insist on a fixed chunk of the ggtt
> >  >    and instead allocate it normally like a good boy. It could
> >  >    still try to allocate as high as possible to ideally
> >  >    land in the GUC_GGTT_TOP range
> > 
> > This would be the best solution from initial plane PoV for sure, I am 
> > not sure about GuC PoV.
> 
> I was going to submit a patch to simply change this to insert(PIN_HIGH)
> as that is all that is needed from the GuC FW POV. And whether the
> GOP framebuffer or the GuC FW lives there doesn't matter one bit,
> both fit the bill of not needing to be accessed by the GuC.
> 
> But I suspect this function might be serving a double duty, despite
> not saying so anywhere. Basically I think it's perhaps used as
> a quick and dirty way to restrict everything below GUC_GGTT_TOP,
> presumably because we don't otherwise restrict allocations
> below that even if the GuC needs to access them.
> 
> So the insert(PIN_HIGH) approach could result in some troubles
> iff the GOP framebuffer is preventing the uc_fw to be placed at
> GUC_GGTT_TOP and we later free the GOP framebuffer (happens if
> we find it unsuitable due to one reason or another). This opens
> up a hole above GUC_GGTT_TOP again and something else could
> get bound there.
> 
> Is my assumption about ggtt_reserve_guc_top() correct? And
> if so do we know what are all the things the GuC needs to access
> so that we could properly restrict those below GUC_GGTT_TOP
> and get rid of this weird way of achieving that same result?
> 
> > 
> >  >
> >  > 2. relocate the display vma to a different part of the ggtt
> > 
> > I think this point is what I have proposed.
> > 
> >  >
> >  >
> >  > 1. should be far simpler by the looks of it, as 2. would involve:
> >  > a) pinning the same object into two places in the ggtt simultanously
> >  >    I don't think we have support for that except for special ggtt views,
> >  >    and xe doesn't have even that (should we need this trick there as 
> > well)
> > 
> > AFAIU the fb is not yet pinned in terms of kernel structures, so it 
> > doesn't seems to be an issue.
> 
> Hmm. Yeah, I suppose we don't really care where in the ggtt the thing
> is bound as we rewrite the PTEs anyway when we bind the vma. So
> whether we bind it into its current place or not doesn't really
> matter. Well, assuming we move the thing to a non-overlapping section
> of the ggtt. Any overlap with the current positon would clobber the
> currently used PTEs and cause display corruption.
> 
> If we did try this we'd also have to think where to move it. Due
> the requirement of no overlaps I suppose offset 0 might be the most
> obvious choice. That would also avoid permanently fragmentating
> the ggtt.

OK, so I've gone and implemnted this, and what I did was to just
pin it low. That part is sort of OK, but then I noticed that
something had already allocated two pages at offset 0. And to my
surprise that was some hdcp stuff. So I then changed the hdcp code
to pin high instead (since there's no point in stuffing what is a
normal shmem object into the precious mappable portion of ggtt).
But then I realized that would now interfere with the guc thing
again. I then proceeded to move the guc thing into the pre-display
ggtt_init_hw() call, but then that's going to interfere with my
BIOS framebuffer takeover again since I temporarily reserve the
original range of the framebuffer so that we don't accidentally
bind the the new range over the original range.

So now I need to either get rid of that guc thing for real,
or I need to keep ggtt_reserve_guc_top() where is is right
now and figure out how to defer that hdcp stuff to a much
later point in the driver init.

Additonally ggtt->error_capture would prefer to get pinned to
offet 0 on platforms with mappable. I don't think that's going
to happen because the BIOS framebuffer is likely there. I guess
one option would be to attempt to move the BIOS fb to the end
of mappable. But currenlty PIN_MAPPABLE implies DRM_MM_INSERT_LOW
so I'd need to redesign the pin flags. So what likely happens
now is the BIOS of gets offset 0, and error_capture gets pinned
right after it. But that's also quite terrible in cases where
we later get rid of the BIOS fb (likely to happen when booting
with multiple different sized displays), as then we've managed
to permanently fragment the mappable region into two chunks.
So I think the easiest solution for that is to move error_capture
to the end of mappable, assuming we failed to bind it to offset 0.

Who knew changing one lightbulb could be this complicated...

> 
> Though I suppose one has to wonder why the GOP doesn't just use
> offset 0 anyway. Is there perhaps some other weird requirement
> that needs the bottom end of ggtt to be available for something
> else?
> 
> > Of course there is problem with PLANE_SURF still pointing to old VA, it 
> > should be replaced with new VA before ggtt will be populated with new stuff.
> > 
> >  >
> >  > b) flip the plane(s) over to the relocated vma
> >  > c) wait for vblank(s)
> >  > d) discard the original vma
> >  > e) all of that would need to happen pretty early so we may not have
> >  >    a lot of the required normal machinery fully up and running yet
> > 
> > Async update to PLANE_SURF shouldn't be enough?
> 
> Async flips:
> - Can't be assume to be universally available
> - Don't really help anyway as they don't happen instaneously.
>   Ie. you still need to wait for them to have happened
>   before clobbering old the PTEs.
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
