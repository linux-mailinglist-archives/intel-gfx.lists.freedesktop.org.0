Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5F03F52EC
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 23:38:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51E0089BF0;
	Mon, 23 Aug 2021 21:38:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF9FE89BF0
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 21:38:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="215343063"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="215343063"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 14:38:24 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="526280508"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 14:38:24 -0700
Date: Mon, 23 Aug 2021 14:38:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "S, Srinivasan" <srinivasan.s@intel.com>
Cc: "Siddiqui, Ayaz A" <ayaz.siddiqui@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Wilson, Chris P" <chris.p.wilson@intel.com>
Message-ID: <20210823213823.GE461228@mdroper-desk1.amr.corp.intel.com>
References: <20210816045229.423234-1-ayaz.siddiqui@intel.com>
 <20210816045229.423234-3-ayaz.siddiqui@intel.com>
 <20210816213552.GL1556418@mdroper-desk1.amr.corp.intel.com>
 <SN6PR11MB3166A4DE6393CE8D1764408796FF9@SN6PR11MB3166.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SN6PR11MB3166A4DE6393CE8D1764408796FF9@SN6PR11MB3166.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH V2 2/5] drm/i915/gt: Use cmd_cctl override
 for platforms >= gen12
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

On Wed, Aug 18, 2021 at 07:45:56AM -0700, S, Srinivasan wrote:
> 
> 
> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Tuesday, August 17, 2021 3:06 AM
> To: Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; S, Srinivasan <srinivasan.s@intel.com>; Wilson, Chris P <chris.p.wilson@intel.com>
> Subject: Re: [PATCH V2 2/5] drm/i915/gt: Use cmd_cctl override for platforms >= gen12
> 
> On Mon, Aug 16, 2021 at 10:22:26AM +0530, Ayaz A Siddiqui wrote:
> > From: Srinivasan Shanmugam <srinivasan.s@intel.com>
> >
> > Program CMD_CCTL to use a mocs entry for uncached access.
> > This controls memory accesses by CS as it reads instructions from the
> > ring and batch buffers.
> >
> > v2: Added CMD_CCTL in guc_mmio_regset_init(), so that this register
> > can restored after engine reset.
> >
> > Signed-off-by: Srinivasan Shanmugam <srinivasan.s@intel.com>
> > Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> > Cc: Chris Wilson <chris.p.wilson@intel.com>
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_mocs.c       | 96 ++++++++++++++++++++++
> >  drivers/gpu/drm/i915/gt/selftest_mocs.c    | 49 +++++++++++
> >  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c |  1 +
> >  drivers/gpu/drm/i915/i915_reg.h            | 16 ++++
> >  4 files changed, 162 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c
> > b/drivers/gpu/drm/i915/gt/intel_mocs.c
> > index 10cc508c1a4f6..92141cf6f9a79 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> > @@ -25,6 +25,15 @@ struct drm_i915_mocs_table {
> >       u8 uc_index;
> >  };
> >
> > +struct drm_i915_aux_table {
> 
> It's not clear to me exactly what the term "aux table" refers to here.
> I guess it's just extra context registers (that aren't associated with a
> workaround) that we want to initialize before the point where the default context gets recorded?  Maybe calling it something like "ctx_init_table" would make it more clear what these are for?
> 
> However a possibly simpler approach would just be to add these registers directly to the ctx workaround list with a comment noting that they're "fake" workarounds and describing what they're for (we already have other similar context programming for disabling fine-grained preemption, disabling nested batchbuffer mode, etc.  The benefit of just tossing these on the workaround list is that the settings get automatically verified by the workaround checking that we already have without needing to code up new table management, register readback, value verification, etc.
> 
> Thanks Matt for comments:
> 
> The aux table is the separate table, which can be easily dynamically expanded (without disturbing any existing tables of mocs entries for legacy platforms starting from >= gen12 onwards), for any new additions of mocs related registers (like for ex: cmd_cctl) & for its debugging purposes & if required for any other parameters in future easily expandable.
> 
> As this cmd_cctl register is kind of a new feature & it doesn't seems to be workaround, where currently we are setting default mocs index value to Uncacheable -
> (which had undefined behavior before programming - where HW team failed to fix this default index to Uncacheable in their hardware & requested for the software driver team) which was meant only for the engines, due to which HW team was seeing some memory related issues, when command streamers where reading instructions from memory & executing.
> 
> Moreover, since this cmd_cctl was mocs related stuffs - I felt like, it's better to keep tidy & all mocs related stuffs inclined in one place ie., in intel_mocs.c, so that we don't go and search for mocs related stuffs in workarounds file.
> 
> Though, currently we are only programming cmd_cctl to default uncached mocs index in driver as per the hardware functional requirements. IMO, may be this can be exposed to userspace (except the undefined behaviour)- to control for ex: cacheability & uncacheability behaviour - when command streamers are executing the instructions from memory.
> 
> And moreover, in the intel_workarounds.c file (as of now , we don't have anything related to mocs related stuffs seen there till so far) - if we still encounter, any mocs related stuffs in future, we can still move from "fake" workarounds to this aux table, so that we don't go and search in the workarounds file for mocs related stuffs.

I'm still not wild about the direction here of creating an alternate
register framework that's independent from the workaround framework but
duplicates a bunch of the same concepts.  But Chris disagrees and he has
a whole lot more experience in this area of the driver than I do, so
I'll withdraw my objection for now; we can go with this design for the
time being and maybe rework it in the future when we have a bit more
time.

There are still a few changes I'd like to see though:

 * Split this patch into two patches:  the first one should add the
   general 'aux table' framework and have a dedicated commit message
   that explains it in detail.  The second patch will then be a trivial
   patch that just adds the CMD_CCTL register as the register tracked by
   the new aux table framework.

 * Drop the skip_check field; as Chris noted, the few broken registers
   that don't have functional readback can be handled through the
   read_mask field instead.  If we need a different kind of verification
   for specific types of registers (e.g., context registers that can
   have different values depending on what context is currently active),
   we can handle that independently (see next bullet).

 * We should probably have a field (enum) that indicates what kind of
   register this is and what the rules are for how/when it needs to be
   applied/reapplied:
     - engine state context register (not to be confused with power
       context) - we don't need to re-apply these ourselves because the
       value will be restored on context switch
     - domain register - needs to be re-applied if the engine/domain is
       reset
     - general register - value survives resets so only needs to be
       applied on init and suspend/resume, although in practice we'll
       probably reapply it on full GPU resets too for simplicity

   In this series the two registers you're adding are different types,
   so it's mostly luck that they're applying properly (since we happen
   to apply the values here before the point the golden context is
   recorded).

 * Given the point above, any registers marked as domain registers
   can probably be automatically added to GuC's save/restore list in
   guc_mmio_regset_init().  I.e., do the same thing for the relevant
   entries in the aux table that we do for the workaround lists already.


...
> > index 6926919bcac6b..99166c82912ca 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> > @@ -254,6 +254,7 @@ static void guc_mmio_regset_init(struct temp_regset *regset,
> >       GUC_MMIO_REG_ADD(regset, RING_MODE_GEN7(base), true);
> >       GUC_MMIO_REG_ADD(regset, RING_HWS_PGA(base), false);
> >       GUC_MMIO_REG_ADD(regset, RING_IMR(base), false);
> > +     GUC_MMIO_REG_ADD(regset, RING_CMD_CCTL(base), true);

You can drop this if you implement my bullet #4 above (which basically
involves doing the equivalent of what the loop right below this does for
the engine's workaround list).


Matt

> >
> >       for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
> >               GUC_MMIO_REG_ADD(regset, wa->reg, wa->masked_reg); diff --git
> > a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 664970f2bc62a..c8e2ca1b20796 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -2551,6 +2551,22 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
> >  #define RING_HWS_PGA(base)   _MMIO((base) + 0x80)
> >  #define RING_ID(base)                _MMIO((base) + 0x8c)
> >  #define RING_HWS_PGA_GEN6(base)      _MMIO((base) + 0x2080)
> > +
> > +#define RING_CMD_CCTL(base)  _MMIO((base) + 0xc4)
> > +/*
> > + * CMD_CCTL read/write fields take a MOCS value and _not_ a table index.
> > + * The lsb of each can be considered a separate enabling bit for encryption.
> > + * 6:0 == default MOCS value for reads  =>  6:1 == table index for reads.
> > + * 13:7 == default MOCS value for writes => 13:8 == table index for writes.
> > + * 15:14 == Reserved => 31:30 are set to 0.
> > + */
> > +#define CMD_CCTL_WRITE_OVERRIDE_MASK REG_GENMASK(13, 7) #define
> > +CMD_CCTL_READ_OVERRIDE_MASK REG_GENMASK(6, 0)
> > +#define CMD_CCTL_MOCS_OVERRIDE(write, read)                                  \
> > +     _MASKED_FIELD(CMD_CCTL_WRITE_OVERRIDE_MASK | CMD_CCTL_READ_OVERRIDE_MASK, \
> > +                   REG_FIELD_PREP(CMD_CCTL_WRITE_OVERRIDE_MASK, (write) << 1) | \
> > +                   REG_FIELD_PREP(CMD_CCTL_READ_OVERRIDE_MASK, (read) << 1))
> > +
> >  #define RING_RESET_CTL(base) _MMIO((base) + 0xd0)
> >  #define   RESET_CTL_CAT_ERROR           REG_BIT(2)
> >  #define   RESET_CTL_READY_TO_RESET REG_BIT(1)
> > --
> > 2.26.2
> >
> 
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
