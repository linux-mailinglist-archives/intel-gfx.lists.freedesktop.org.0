Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 573E0814573
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 11:23:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E05D210E313;
	Fri, 15 Dec 2023 10:23:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7EFD10E313
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 10:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702635809; x=1734171809;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SuBynoDxSxpp2UoeRiJt1XIG9NG9kUFgFqug4gho3tQ=;
 b=HlzkhBpxVs5IDanEZEIq2kU7Cb9tg/bMZ6u/4vKItNuY8nNBZhlCIhEK
 UrlD5MdAxRcsUFL5nz61HJDgdPAWoiJDtxPQZo2DY6RKZ8XGKEmhAxrkC
 Mbs9bAiG8YTG/zv8PnPi/iHB59wzjDAvR/Y4zvwI4RAwxakNvwcO/T7SD
 wPFn5d9jPRb7s9vxh7gg/VKrgbwif1P/buaD4mksH+D+SuthtPYTpWWxN
 2Dn8LdaJMuIkOoMTjUP9e4UbiFlRQPqzHNRJQLQXpjlW1ejynmPaUmL91
 SbvfbkGQCEw1CTgSpjl73amVedx/Ae5NWk0PVIN571MEhLIrV8soyhrib Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="2428605"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; 
   d="scan'208";a="2428605"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 02:23:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="767924843"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="767924843"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2023 02:23:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Dec 2023 12:23:11 +0200
Date: Fri, 15 Dec 2023 12:23:11 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
Subject: Re: [PATCH 04/12] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen
 memory access
Message-ID: <ZXwpDzHcyQCSErU7@intel.com>
References: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
 <20231213004237.20375-5-ville.syrjala@linux.intel.com>
 <170245857881.24445.6579832987498048224@jlahtine-mobl.ger.corp.intel.com>
 <ZXl5pclbJJRWL68T@intel.com>
 <DM4PR11MB5971E509F696DC0883F3D904878DA@DM4PR11MB5971.namprd11.prod.outlook.com>
 <ZXpiaUnPkpYkySd-@intel.com>
 <DM4PR11MB5971511B62A161292A31689A878CA@DM4PR11MB5971.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB5971511B62A161292A31689A878CA@DM4PR11MB5971.namprd11.prod.outlook.com>
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

On Thu, Dec 14, 2023 at 09:06:03PM +0000, Sripada, Radhakrishna wrote:
> HI Ville,
> 
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Wednesday, December 13, 2023 6:03 PM
> > To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>; Das, Nirmoy
> > <nirmoy.das@intel.com>; intel-gfx@lists.freedesktop.org
> > Subject: Re: [PATCH 04/12] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL
> > stolen memory access
> > 
> > On Wed, Dec 13, 2023 at 08:18:15PM +0000, Sripada, Radhakrishna wrote:
> > > Hi Ville,
> > >
> > > +Nirmoy
> > >
> > > > -----Original Message-----
> > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > Sent: Wednesday, December 13, 2023 1:30 AM
> > > > To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > > > Cc: intel-gfx@lists.freedesktop.org; Sripada, Radhakrishna
> > > > <radhakrishna.sripada@intel.com>
> > > > Subject: Re: [PATCH 04/12] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL
> > > > stolen memory access
> > > >
> > > > On Wed, Dec 13, 2023 at 11:09:38AM +0200, Joonas Lahtinen wrote:
> > > > > Quoting Ville Syrjala (2023-12-13 02:42:29)
> > > > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > >
> > > > > > On MTL accessing stolen memory via the BARs is somehow borked,
> > > > > > and it can hang the machine. As a workaround let's bypass the
> > > > > > BARs and just go straight to DSMBASE/GSMBASE instead.
> > > > > >
> > > > > > Note that on every other platform this itself would hang the
> > > > > > machine, but on MTL the system firmware is expected to relax
> > > > > > the access permission guarding stolen memory to enable this
> > > > > > workaround, and thus direct CPU accesses should be fine.
> > > > >
> > > > > Shouldn't this have a proper workaround number assigned?
> > > >
> > > > I think there are various numbers, half of which I couldn't even
> > > > find in any database, and the other half I couldn't access for
> > > > whatever reason. So dunno what situation really is apart from
> > > > the firmware clearly implemening its part (since I can poke
> > > > DSM/GSM directly without killing the machine).
> > > >
> > > > RK do you know what we should call this?
> > > Nirmoy previously used Wa_22018444074 in [1].
> > >
> > > There were some associated issues Wa_13010847436 and Wa_14019519902
> > > which Nirmoy quoted in [2].
> > >
> > > Wa_22018529850 is derived from Wa_22018444074, is targeting the latest Gop
> > > driver change which is installed in bat-mtlp-8 hopefully it should help debug the
> > issue further.
> > >
> > >
> > > Regarding the patch itself,
> > > Do we need to carve out the range from e820 the area around DSM if we can
> > directly access the range from CPU
> > > without the bar?
> > 
> > IIRC we dropped the early quirks on new platforms under the
> > assumption that the BIOS no longer forgets to mark the DSM
> > as not-RAM/whatever. I don't think anything should change
> > there even when we are allowed direct CPU access.
> > 
> > But I don't recall if I double checked the e820 listing on
> > the MTL I was using. I was able to direct access to both DSM
> > and GSM for sure, and the address the GOP handed over to efifb
> > also pointed directly to DSM.
> 
> Up until adl-p/rpl, the PCI config space had the mirror registers for the stolen memory
> base and size, since the stolen meory is carved out of the available physical ram. Starting MTL
> this was removed from pci config space due to the introduction of stolen lmem which should not
> be cpu addressable aperture.
> 
> With the new gop driver allocating the FB memory in dram, should the e820 mark the FB area
> as reserved for the system use? Do we still preserve the efifb after doing a memtest before loading the driver?

While the LMEMBAR is a new thing, nothing else should really 
have changed in the way the BIOS carves out the DSM/GSM
from physical RAM.

On one MTL I see:
[    0.000896] e820: update [mem 0x7a000000-0xffffffff] usable ==> reserved
[    0.036542] [mem 0x7e800000-0xfed1ffff] available for PCI devices
[i915]] Memory region(6): stolen-local: 60 MiB [mem 0x00800000-0x043fffff], io: 60 MiB [mem 0x7a800000-0x7e3fffff]

So we have
 0x7a000000-0x7a800000 GSM
 0x7a800000-0x7e400000 DSM
both are marked as reserved and neither overlaps with that
PCI window. So looks all right to me.

We should probably also dump the GSM range to dmesg just to
have all the information available in one place...

> 
> Thanks,
> Radhakrishna(RK) Sripada 
> > 
> > >
> > >
> > > Thanks,
> > > Radhakrishna(RK) Sripada
> > > 1. https://patchwork.freedesktop.org/series/120683/
> > > 2. https://patchwork.freedesktop.org/series/123329/
> > >
> > > >
> > > > >
> > > > > Regards, Joonas
> > > > >
> > > > > >
> > > > > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 11 ++++++++++-
> > > > > >  drivers/gpu/drm/i915/gt/intel_ggtt.c       | 13 ++++++++++++-
> > > > > >  2 files changed, 22 insertions(+), 2 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > > > b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > > > > > index ee237043c302..252fe5cd6ede 100644
> > > > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > > > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > > > > > @@ -941,7 +941,16 @@ i915_gem_stolen_lmem_setup(struct
> > > > drm_i915_private *i915, u16 type,
> > > > > >                 dsm_size = ALIGN_DOWN(lmem_size - dsm_base, SZ_1M);
> > > > > >         }
> > > > > >
> > > > > > -       if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
> > > > > > +       if (IS_METEORLAKE(i915)) {
> > > > > > +               /*
> > > > > > +                * Workaround: access via BAR can hang MTL, go directly to
> > DSM.
> > > > > > +                *
> > > > > > +                * Normally this would not work but on MTL the system
> > firmware
> > > > > > +                * should have relaxed the access permissions sufficiently.
> > > > > > +                */
> > > > > > +               io_start = intel_uncore_read64(uncore, GEN12_DSMBASE) &
> > > > GEN12_BDSM_MASK;
> > > > > > +               io_size = dsm_size;
> > > > > > +       } else if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
> > > > > >                 io_start = 0;
> > > > > >                 io_size = 0;
> > > > > >         } else {
> > > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > > b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > > > > index 21a7e3191c18..ab71d74ec426 100644
> > > > > > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > > > > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > > > > @@ -24,6 +24,7 @@
> > > > > >  #include "intel_ring.h"
> > > > > >  #include "i915_drv.h"
> > > > > >  #include "i915_pci.h"
> > > > > > +#include "i915_reg.h"
> > > > > >  #include "i915_request.h"
> > > > > >  #include "i915_scatterlist.h"
> > > > > >  #include "i915_utils.h"
> > > > > > @@ -1152,13 +1153,23 @@ static unsigned int gen6_gttadr_offset(struct
> > > > drm_i915_private *i915)
> > > > > >  static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
> > > > > >  {
> > > > > >         struct drm_i915_private *i915 = ggtt->vm.i915;
> > > > > > +       struct intel_uncore *uncore = ggtt->vm.gt->uncore;
> > > > > >         struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> > > > > >         phys_addr_t phys_addr;
> > > > > >         u32 pte_flags;
> > > > > >         int ret;
> > > > > >
> > > > > >         GEM_WARN_ON(pci_resource_len(pdev, GEN4_GTTMMADR_BAR) !=
> > > > gen6_gttmmadr_size(i915));
> > > > > > -       phys_addr = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) +
> > > > gen6_gttadr_offset(i915);
> > > > > > +       /*
> > > > > > +        * Workaround: access via BAR can hang MTL, go directly to GSM.
> > > > > > +        *
> > > > > > +        * Normally this would not work but on MTL the system firmware
> > > > > > +        * should have relaxed the access permissions sufficiently.
> > > > > > +        */
> > > > > > +       if (IS_METEORLAKE(i915))
> > > > > > +               phys_addr = intel_uncore_read64(uncore, GEN12_GSMBASE) &
> > > > GEN12_BDSM_MASK;
> > > > > > +       else
> > > > > > +               phys_addr = pci_resource_start(pdev, GEN4_GTTMMADR_BAR)
> > +
> > > > gen6_gttadr_offset(i915);
> > > > > >
> > > > > >         if (needs_wc_ggtt_mapping(i915))
> > > > > >                 ggtt->gsm = ioremap_wc(phys_addr, size);
> > > > > > --
> > > > > > 2.41.0
> > > > > >
> > > >
> > > > --
> > > > Ville Syrjälä
> > > > Intel
> > 
> > --
> > Ville Syrjälä
> > Intel

-- 
Ville Syrjälä
Intel
