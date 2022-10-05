Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6085E5F5881
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 18:44:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2BB410E6E4;
	Wed,  5 Oct 2022 16:43:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E45B10E6E4
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 16:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664988234; x=1696524234;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9tnBqDOGojc9T0mErwU7RjfmqUt1XTBxXs8jjpsDDd0=;
 b=HYQq3Tk+LbHOPmrmb6LZ/m0x4aLAmNddguhlp7to8syTqnI4V6ojvkWx
 K58lS+sIy2QLfCZWeG9zmtozRhdcK/0YBNh5823HM7QHhryQgHciaKWvZ
 2ZRMqVNzIWBj8PG/mY1pk6o2AkyqsmURc1N/tvb7KkUkDQOkPkxcTdzdO
 X0/sdVK3f2987Y7PyRcQw769q6VxXnsYiu823Pu2t8bNOdUytNGhkgXmg
 iSemQ/nGbP/PkN7MLhdRghZgipQcc/h4tf5OeV0oxbx6sNW/SI5m6SfVI
 qcDicGzCC0JLvY5ysaRH7s0WG4ii1a3Ls/Ha/laCljm4vFFq+nE2x361f A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="301924265"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="301924265"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 09:43:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="687025826"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="687025826"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 05 Oct 2022 09:43:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Oct 2022 19:43:50 +0300
Date: Wed, 5 Oct 2022 19:43:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <Yz20RsvjTcavP7Ty@intel.com>
References: <20221005154159.18750-1-ville.syrjala@linux.intel.com>
 <20221005154159.18750-2-ville.syrjala@linux.intel.com>
 <CAM0jSHOZ9qLDneXRcgDnKqH0AN4i8LuY4uE8HRvh-StMYKTSGw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAM0jSHOZ9qLDneXRcgDnKqH0AN4i8LuY4uE8HRvh-StMYKTSGw@mail.gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Name our BARs based on the
 spec
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

On Wed, Oct 05, 2022 at 05:02:58PM +0100, Matthew Auld wrote:
> On Wed, 5 Oct 2022 at 16:42, Ville Syrjala
> <ville.syrjala@linux.intel.com> wrote:
> >
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > We use all kinds of weird names for our base address registers.
> > Take the names from the spec and stick to them to avoid confusing
> > everyone.
> >
> > The only exceptions are IOBAR and LMEMBAR since naming them
> > IOBAR_BAR and LMEMBAR_BAR looks too funny, and yet I think
> > that adding the _BAR to GTTMMADR & co. (which don't have one
> > in the spec name) does make it more clear what they are.
> > And IOBAR vs. GTTMMADR_BAR also looks a bit too inconsistent
> > for my taste.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_lpe_audio.c    |  4 ++--
> >  drivers/gpu/drm/i915/gt/intel_ggtt.c          | 12 +++++-----
> >  drivers/gpu/drm/i915/gvt/cfg_space.c          |  2 +-
> >  drivers/gpu/drm/i915/intel_pci_config.h       | 23 +++++++++++++------
> >  4 files changed, 25 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> > index dca6003ccac8..389ccdc46a1e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> > @@ -101,9 +101,9 @@ lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
> >         rsc[0].flags    = IORESOURCE_IRQ;
> >         rsc[0].name     = "hdmi-lpe-audio-irq";
> >
> > -       rsc[1].start    = pci_resource_start(pdev, GTTMMADR_BAR) +
> > +       rsc[1].start    = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) +
> >                 I915_HDMI_LPE_AUDIO_BASE;
> > -       rsc[1].end      = pci_resource_start(pdev, GTTMMADR_BAR) +
> > +       rsc[1].end      = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) +
> >                 I915_HDMI_LPE_AUDIO_BASE + I915_HDMI_LPE_AUDIO_SIZE - 1;
> >         rsc[1].flags    = IORESOURCE_MEM;
> >         rsc[1].name     = "hdmi-lpe-audio-mmio";
> > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > index b31fe0fb013f..668131c25da7 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > @@ -871,8 +871,8 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
> >         u32 pte_flags;
> >         int ret;
> >
> > -       GEM_WARN_ON(pci_resource_len(pdev, GTTMMADR_BAR) != gen6_gttmmadr_size(i915));
> > -       phys_addr = pci_resource_start(pdev, GTTMMADR_BAR) + gen6_gttadr_offset(i915);
> > +       GEM_WARN_ON(pci_resource_len(pdev, GEN4_GTTMMADR_BAR) != gen6_gttmmadr_size(i915));
> > +       phys_addr = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) + gen6_gttadr_offset(i915);
> >
> >         /*
> >          * On BXT+/ICL+ writes larger than 64 bit to the GTT pagetable range
> > @@ -932,10 +932,10 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
> >         u16 snb_gmch_ctl;
> >
> >         if (!HAS_LMEM(i915) && !HAS_BAR2_SMEM_STOLEN(i915)) {
> > -               if (!i915_pci_resource_valid(pdev, GTT_APERTURE_BAR))
> > +               if (!i915_pci_resource_valid(pdev, GEN4_GMADR_BAR))
> >                         return -ENXIO;
> >
> > -               ggtt->gmadr = pci_resource(pdev, GTT_APERTURE_BAR);
> > +               ggtt->gmadr = pci_resource(pdev, GEN4_GMADR_BAR);
> >                 ggtt->mappable_end = resource_size(&ggtt->gmadr);
> >         }
> >
> > @@ -1089,10 +1089,10 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt)
> >         unsigned int size;
> >         u16 snb_gmch_ctl;
> >
> > -       if (!i915_pci_resource_valid(pdev, GTT_APERTURE_BAR))
> > +       if (!i915_pci_resource_valid(pdev, GEN4_GMADR_BAR))
> >                 return -ENXIO;
> >
> > -       ggtt->gmadr = pci_resource(pdev, GTT_APERTURE_BAR);
> > +       ggtt->gmadr = pci_resource(pdev, GEN4_GMADR_BAR);
> >         ggtt->mappable_end = resource_size(&ggtt->gmadr);
> >
> >         /*
> > diff --git a/drivers/gpu/drm/i915/gvt/cfg_space.c b/drivers/gpu/drm/i915/gvt/cfg_space.c
> > index eef3bba8a41b..19a663f6504f 100644
> > --- a/drivers/gpu/drm/i915/gvt/cfg_space.c
> > +++ b/drivers/gpu/drm/i915/gvt/cfg_space.c
> > @@ -356,7 +356,7 @@ void intel_vgpu_init_cfg_space(struct intel_vgpu *vgpu,
> >         vgpu->cfg_space.bar[INTEL_GVT_PCI_BAR_GTTMMIO].size =
> >                 pci_resource_len(pdev, GTTMMADR_BAR);
> >         vgpu->cfg_space.bar[INTEL_GVT_PCI_BAR_APERTURE].size =
> > -               pci_resource_len(pdev, GTT_APERTURE_BAR);
> > +               pci_resource_len(pdev, GMADR_BAR);
> 
> Hmm, where is that defined? Typo?

Was supposed to be GEN4_GMADR_BAR. Apparently I have lost gvt
from my .config once again...

-- 
Ville Syrjälä
Intel
