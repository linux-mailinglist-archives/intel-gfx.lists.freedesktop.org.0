Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CB48124E5
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 03:03:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DB8110E166;
	Thu, 14 Dec 2023 02:03:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69F7B10E166
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 02:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702519406; x=1734055406;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EoaaOwbN5sz+pSsXA81TD/ug2L/7mhF+e4lGBShD9z8=;
 b=a6gDGdGVqKVySlqRRgIdz3QiDzbF/SoKRYl2i4uJCWK63KSskV9ZVAR1
 1knHq38Y/gdG7Mr56RKSXb+Ke2aCtndbVJzo2gYy8Ydld2X8IRQb9YUQg
 u1ly18O0mpYI0WfS6i/GN5Y7Cp6aOZJ0nBVGYWcPnwwWKQFXn0G8POGfQ
 PAKQuDAfIM2AgkwEH26wNeh7vT3vzlmMzarRwhKjq+BQ1VkU3gfuZwTJj
 aS17yTx3xwxTkXxiRgcjjLnw6pf2jul6WU0l6HSOYWJFnwRFjdHhLcf+f
 5X1nUWIpG+HiX1YBNAGcsut+qCD7AjbqEukXvBh5o1Uu+easyNnPUt7+9 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="426188792"
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; d="scan'208";a="426188792"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 18:03:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="767447519"
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; d="scan'208";a="767447519"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 13 Dec 2023 18:03:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Dec 2023 04:03:21 +0200
Date: Thu, 14 Dec 2023 04:03:21 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
Subject: Re: [PATCH 04/12] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen
 memory access
Message-ID: <ZXpiaUnPkpYkySd-@intel.com>
References: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
 <20231213004237.20375-5-ville.syrjala@linux.intel.com>
 <170245857881.24445.6579832987498048224@jlahtine-mobl.ger.corp.intel.com>
 <ZXl5pclbJJRWL68T@intel.com>
 <DM4PR11MB5971E509F696DC0883F3D904878DA@DM4PR11MB5971.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB5971E509F696DC0883F3D904878DA@DM4PR11MB5971.namprd11.prod.outlook.com>
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Das,
 Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 13, 2023 at 08:18:15PM +0000, Sripada, Radhakrishna wrote:
> Hi Ville,
> 
> +Nirmoy
> 
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Wednesday, December 13, 2023 1:30 AM
> > To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Sripada, Radhakrishna
> > <radhakrishna.sripada@intel.com>
> > Subject: Re: [PATCH 04/12] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL
> > stolen memory access
> > 
> > On Wed, Dec 13, 2023 at 11:09:38AM +0200, Joonas Lahtinen wrote:
> > > Quoting Ville Syrjala (2023-12-13 02:42:29)
> > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > >
> > > > On MTL accessing stolen memory via the BARs is somehow borked,
> > > > and it can hang the machine. As a workaround let's bypass the
> > > > BARs and just go straight to DSMBASE/GSMBASE instead.
> > > >
> > > > Note that on every other platform this itself would hang the
> > > > machine, but on MTL the system firmware is expected to relax
> > > > the access permission guarding stolen memory to enable this
> > > > workaround, and thus direct CPU accesses should be fine.
> > >
> > > Shouldn't this have a proper workaround number assigned?
> > 
> > I think there are various numbers, half of which I couldn't even
> > find in any database, and the other half I couldn't access for
> > whatever reason. So dunno what situation really is apart from
> > the firmware clearly implemening its part (since I can poke
> > DSM/GSM directly without killing the machine).
> > 
> > RK do you know what we should call this?
> Nirmoy previously used Wa_22018444074 in [1].
> 
> There were some associated issues Wa_13010847436 and Wa_14019519902
> which Nirmoy quoted in [2].
> 
> Wa_22018529850 is derived from Wa_22018444074, is targeting the latest Gop
> driver change which is installed in bat-mtlp-8 hopefully it should help debug the issue further.
> 
> 
> Regarding the patch itself,
> Do we need to carve out the range from e820 the area around DSM if we can directly access the range from CPU
> without the bar?

IIRC we dropped the early quirks on new platforms under the
assumption that the BIOS no longer forgets to mark the DSM
as not-RAM/whatever. I don't think anything should change
there even when we are allowed direct CPU access.

But I don't recall if I double checked the e820 listing on
the MTL I was using. I was able to direct access to both DSM
and GSM for sure, and the address the GOP handed over to efifb
also pointed directly to DSM.

> 
> 
> Thanks,
> Radhakrishna(RK) Sripada
> 1. https://patchwork.freedesktop.org/series/120683/
> 2. https://patchwork.freedesktop.org/series/123329/
> 
> > 
> > >
> > > Regards, Joonas
> > >
> > > >
> > > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 11 ++++++++++-
> > > >  drivers/gpu/drm/i915/gt/intel_ggtt.c       | 13 ++++++++++++-
> > > >  2 files changed, 22 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > > > index ee237043c302..252fe5cd6ede 100644
> > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > > > @@ -941,7 +941,16 @@ i915_gem_stolen_lmem_setup(struct
> > drm_i915_private *i915, u16 type,
> > > >                 dsm_size = ALIGN_DOWN(lmem_size - dsm_base, SZ_1M);
> > > >         }
> > > >
> > > > -       if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
> > > > +       if (IS_METEORLAKE(i915)) {
> > > > +               /*
> > > > +                * Workaround: access via BAR can hang MTL, go directly to DSM.
> > > > +                *
> > > > +                * Normally this would not work but on MTL the system firmware
> > > > +                * should have relaxed the access permissions sufficiently.
> > > > +                */
> > > > +               io_start = intel_uncore_read64(uncore, GEN12_DSMBASE) &
> > GEN12_BDSM_MASK;
> > > > +               io_size = dsm_size;
> > > > +       } else if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
> > > >                 io_start = 0;
> > > >                 io_size = 0;
> > > >         } else {
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > > index 21a7e3191c18..ab71d74ec426 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > > @@ -24,6 +24,7 @@
> > > >  #include "intel_ring.h"
> > > >  #include "i915_drv.h"
> > > >  #include "i915_pci.h"
> > > > +#include "i915_reg.h"
> > > >  #include "i915_request.h"
> > > >  #include "i915_scatterlist.h"
> > > >  #include "i915_utils.h"
> > > > @@ -1152,13 +1153,23 @@ static unsigned int gen6_gttadr_offset(struct
> > drm_i915_private *i915)
> > > >  static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
> > > >  {
> > > >         struct drm_i915_private *i915 = ggtt->vm.i915;
> > > > +       struct intel_uncore *uncore = ggtt->vm.gt->uncore;
> > > >         struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> > > >         phys_addr_t phys_addr;
> > > >         u32 pte_flags;
> > > >         int ret;
> > > >
> > > >         GEM_WARN_ON(pci_resource_len(pdev, GEN4_GTTMMADR_BAR) !=
> > gen6_gttmmadr_size(i915));
> > > > -       phys_addr = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) +
> > gen6_gttadr_offset(i915);
> > > > +       /*
> > > > +        * Workaround: access via BAR can hang MTL, go directly to GSM.
> > > > +        *
> > > > +        * Normally this would not work but on MTL the system firmware
> > > > +        * should have relaxed the access permissions sufficiently.
> > > > +        */
> > > > +       if (IS_METEORLAKE(i915))
> > > > +               phys_addr = intel_uncore_read64(uncore, GEN12_GSMBASE) &
> > GEN12_BDSM_MASK;
> > > > +       else
> > > > +               phys_addr = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) +
> > gen6_gttadr_offset(i915);
> > > >
> > > >         if (needs_wc_ggtt_mapping(i915))
> > > >                 ggtt->gsm = ioremap_wc(phys_addr, size);
> > > > --
> > > > 2.41.0
> > > >
> > 
> > --
> > Ville Syrjälä
> > Intel

-- 
Ville Syrjälä
Intel
