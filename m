Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 710989E1596
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 09:25:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1129B10E951;
	Tue,  3 Dec 2024 08:25:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hbg80RAl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B1FC10E951
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 08:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733214339; x=1764750339;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nRG2X3Jp2eIzC5qy56HK6teAJf5o9XgQG2kun1lt9dI=;
 b=hbg80RAlUg2fSigeFXMYSirSJney3jpm5Imxs8oMKqOr6IQIRSplkkTK
 JDhHzFOcIJcKW040CU/lpS7eaiPSTzr4SnSuiupdSVuf7Q4p91Rgexs/9
 +elCPFCpFA2C+x84vpifyAc7FliETAE+SGX7sdwnZ/vo0goJEjx4RAQ5U
 Olw3s8NScXNZIYKhC8mz4k5xRwrEHVLl/25qbcK/ku7L8JCaoxaBMLr/3
 6nbxBTIDxU9zgmAPC7CKDvMcSwKezAfL1NbBcLUNQyk8ozBBnli0u1dIl
 di2NBrIxe6j6qWCa+108aC1+Te85lEQqMnj8qX7HegRuKlsTWATo6eG/F w==;
X-CSE-ConnectionGUID: BQZA/d4JQvmXxWKGjBANew==
X-CSE-MsgGUID: FAnybAEwSCCICQyZCGW+8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="33290043"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="33290043"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 00:25:39 -0800
X-CSE-ConnectionGUID: PzptXcI6SO2hLx7kersCuA==
X-CSE-MsgGUID: uopS5emnRny0G5jQJpAKAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="93560103"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 Dec 2024 00:25:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Dec 2024 10:25:36 +0200
Date: Tue, 3 Dec 2024 10:25:36 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Brian Geffon <bgeffon@google.com>
Cc: intel-gfx@lists.freedesktop.org, Vidya Srinivas <vidya.srinivas@intel.com>
Subject: Re: [PATCH 3/4] drm/i915/dpt: Evict all DPT VMAs on suspend
Message-ID: <Z07AgMjJUpIZtKPj@intel.com>
References: <20241127061117.25622-1-ville.syrjala@linux.intel.com>
 <20241127061117.25622-4-ville.syrjala@linux.intel.com>
 <CADyq12zaBCxJ_dZVadew+JMp1=uNVAJWYX-k45m76-G925UuTg@mail.gmail.com>
 <Z06_R3Rj78B81ULM@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z06_R3Rj78B81ULM@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 03, 2024 at 10:20:23AM +0200, Ville Syrjälä wrote:
> On Mon, Dec 02, 2024 at 10:40:36AM -0500, Brian Geffon wrote:
> > On Wed, Nov 27, 2024 at 1:11 AM Ville Syrjala
> > <ville.syrjala@linux.intel.com> wrote:
> > >
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >
> > > Currently intel_dpt_resume() tries to blindly rewrite all the
> > > PTEs for currently bound DPT VMAs. That is problematic because
> > > the CPU mapping for the DPT is only really guaranteed to exist
> > > while the DPT object has been pinned. In the past we worked
> > > around this issue by making DPT objects unshrinkable, but that
> > > is undesirable as it'll waste physical RAM.
> > >
> > > Let's instead forcefully evict all the DPT VMAs on suspend,
> > > thus guaranteeing that intel_dpt_resume() has nothing to do.
> > > To guarantee that all the DPT VMAs are evictable by
> > > intel_dpt_suspend() we need to flush the cleanup workqueue
> > > after the display output has been shut down.
> > >
> > > And for good measure throw in a few extra WARNs to catch
> > > any mistakes.
> > >
> > > Cc: Brian Geffon <bgeffon@google.com>
> > > Cc: Vidya Srinivas <vidya.srinivas@intel.com>
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > ---
> > >  .../drm/i915/display/intel_display_driver.c   |  3 +++
> > >  drivers/gpu/drm/i915/display/intel_dpt.c      |  4 ++--
> > >  drivers/gpu/drm/i915/gt/intel_ggtt.c          | 19 ++++++++++++++-----
> > >  drivers/gpu/drm/i915/gt/intel_gtt.h           |  4 ++--
> > >  4 files changed, 21 insertions(+), 9 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > > index 286d6f893afa..973bee43b554 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > > @@ -680,6 +680,9 @@ int intel_display_driver_suspend(struct drm_i915_private *i915)
> > >         else
> > >                 i915->display.restore.modeset_state = state;
> > >
> > > +       /* ensure all DPT VMAs have been unpinned for intel_dpt_suspend() */
> > > +       flush_workqueue(i915->display.wq.cleanup);
> > > +
> > >         intel_dp_mst_suspend(i915);
> > >
> > >         return ret;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
> > > index ce8c76e44e6a..8b1f0e92a11c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> > > @@ -205,7 +205,7 @@ void intel_dpt_resume(struct drm_i915_private *i915)
> > >                 struct intel_framebuffer *fb = to_intel_framebuffer(drm_fb);
> > >
> > >                 if (fb->dpt_vm)
> > > -                       i915_ggtt_resume_vm(fb->dpt_vm);
> > > +                       i915_ggtt_resume_vm(fb->dpt_vm, true);
> > >         }
> > >         mutex_unlock(&i915->drm.mode_config.fb_lock);
> > >  }
> > > @@ -233,7 +233,7 @@ void intel_dpt_suspend(struct drm_i915_private *i915)
> > >                 struct intel_framebuffer *fb = to_intel_framebuffer(drm_fb);
> > >
> > >                 if (fb->dpt_vm)
> > > -                       i915_ggtt_suspend_vm(fb->dpt_vm);
> > > +                       i915_ggtt_suspend_vm(fb->dpt_vm, true);
> > >         }
> > >
> > >         mutex_unlock(&i915->drm.mode_config.fb_lock);
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > index d60a6ca0cae5..f6c59f20832f 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > @@ -107,11 +107,12 @@ int i915_ggtt_init_hw(struct drm_i915_private *i915)
> > >  /**
> > >   * i915_ggtt_suspend_vm - Suspend the memory mappings for a GGTT or DPT VM
> > >   * @vm: The VM to suspend the mappings for
> > > + * @evict_all: Evict all VMAs
> > >   *
> > >   * Suspend the memory mappings for all objects mapped to HW via the GGTT or a
> > >   * DPT page table.
> > >   */
> > > -void i915_ggtt_suspend_vm(struct i915_address_space *vm)
> > > +void i915_ggtt_suspend_vm(struct i915_address_space *vm, bool evict_all)
> > >  {
> > >         struct i915_vma *vma, *vn;
> > >         int save_skip_rewrite;
> > > @@ -157,7 +158,7 @@ void i915_ggtt_suspend_vm(struct i915_address_space *vm)
> > >                         goto retry;
> > >                 }
> > >
> > > -               if (!i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND)) {
> > > +               if (evict_all || !i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND)) {
> > 
> > I don't fully understand this part. Why can we safely assume we can do
> > __i915_vma_evict(), shouldn't we want to __i915_vma_unbind() in the
> > case where it was bound? Because of the unconditional evict_all we
> > might be unbinding a bound vma, no? Is that safe? Please forgive my
> > ignorance if this question doesn't make sense.
> 
> It looked to me like __i915_vma_unbind() pretty much just calls
> __i915_vma_evict() anyway, and the sync stuff shouldn't matter
> here.
> 
> Hmm, I suppose there is that vma->node handling that might screw
> us over somehow. I'll need to check what that actually does.

Ah, we do drm_mm_remove_node(&vma->node) manually anyway here.
That explains why it doesn't blow up later in vma_insert().
So yeah, this kinda just looks like a hand rolled vma_unbind()
more or less. Why it doesn't just call the whole thing I 
don't know.

-- 
Ville Syrjälä
Intel
