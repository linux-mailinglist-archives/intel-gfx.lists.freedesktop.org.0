Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D7C3A8A02
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 22:13:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B766D89CC4;
	Tue, 15 Jun 2021 20:13:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B984789CC4
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 20:13:27 +0000 (UTC)
IronPort-SDR: 1S3gA9vJvSWAxQ8+/oMc7EOqCuoWoavhYooZQo9PG1ejDO42Z9XIeqwcbheEc30QZH/GvCt/2W
 FyXi327JtKHw==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="206097386"
X-IronPort-AV: E=Sophos;i="5.83,276,1616482800"; d="scan'208";a="206097386"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 13:09:26 -0700
IronPort-SDR: C/5zrvM4l0KcCpMy1rdKQg1MixLZi30pLgGjWguGQoFc0BCdWhXQDF/hrs30sKSVd8icSJUpuZ
 F1LOeisjI0Ag==
X-IronPort-AV: E=Sophos;i="5.83,276,1616482800"; d="scan'208";a="553795953"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 13:09:26 -0700
Date: Tue, 15 Jun 2021 13:09:24 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20210615200924.GV951094@mdroper-desk1.amr.corp.intel.com>
References: <20210615033433.1574397-1-matthew.d.roper@intel.com>
 <20210615033433.1574397-3-matthew.d.roper@intel.com>
 <YMhuAblLyaSGE6Ww@intel.com> <YMhuqNEWejrmwWT/@intel.com>
 <20210615153023.GR951094@mdroper-desk1.amr.corp.intel.com>
 <YMkEEB513LdwPuEo@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YMkEEB513LdwPuEo@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Add GT support for multiple
 types of multicast steering
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 15, 2021 at 03:48:32PM -0400, Rodrigo Vivi wrote:
> On Tue, Jun 15, 2021 at 08:30:23AM -0700, Matt Roper wrote:
> > On Tue, Jun 15, 2021 at 05:11:04AM -0400, Rodrigo Vivi wrote:
> > > On Tue, Jun 15, 2021 at 05:08:20AM -0400, Rodrigo Vivi wrote:
> > > > On Mon, Jun 14, 2021 at 08:34:32PM -0700, Matt Roper wrote:
> > > > > Although most of our multicast registers are replicated per-subslice, we
> > > > > also have a small number of multicast registers that are replicated
> > > > > per-l3 bank instead.  For both types of multicast registers we need to
> > > > > make sure we steer reads of these registers to a valid instance.
> > > > > Ideally we'd like to find a specific instance ID that would steer reads
> > > > > of either type of multicast register to a valid instance (i.e., not
> > > > > fused off and not powered down), but sometimes the combination of
> > > > > part-specific fusing and the additional restrictions imposed by Render
> > > > > Power Gating make it impossible to find any overlap between the set of
> > > > > valid subslices and valid l3 banks.  This problem will become even more
> > > > > noticeable on our upcoming platforms since they will be adding
> > > > > additional types of multicast registers with new types of replication
> > > > > and rules for finding valid instances for reads.
> > > > > 
> > > > > To handle this we'll continue to pick a suitable subslice instance at
> > > > > driver startup and program this as the default (sliceid,subsliceid)
> > > > > setting in the steering control register (0xFDC).  In cases where we
> > > > > need to read another type of multicast GT register, but the default
> > > > > subslice steering would not correspond to a valid instance, we'll
> > > > > explicitly re-steer the single read to a valid value, perform the read,
> > > > > and then reset the steering to it's "subslice" default.
> > > > > 
> > > > > This patch adds the general functionality to prepare for this explicit
> > > > > steering of other multicast register types.  We'll plug L3 bank steering
> > > > > into this in the next patch, and then add additional types of multicast
> > > > > registers when the support for our next upcoming platform arrives.
> > > > > 
> > > > > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/gt/intel_gt.c            | 84 +++++++++++++++++++
> > > > >  drivers/gpu/drm/i915/gt/intel_gt.h            |  8 ++
> > > > >  drivers/gpu/drm/i915/gt/intel_gt_types.h      | 22 +++++
> > > > >  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 28 ++++---
> > > > >  .../gpu/drm/i915/gt/selftest_workarounds.c    |  2 +-
> > > > >  5 files changed, 131 insertions(+), 13 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> > > > > index 2161bf01ef8b..f2bea1c20d56 100644
> > > > > --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> > > > > +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> > > > > @@ -697,6 +697,90 @@ void intel_gt_driver_late_release(struct intel_gt *gt)
> > > > >  	intel_engines_free(gt);
> > > > >  }
> > > > >  
> > > > > +/**
> > > > > + * intel_gt_reg_needs_read_steering - determine whether a register read
> > > > > + *     requires explicit steering
> > > > > + * @gt: GT structure
> > > > > + * @reg: the register to check steering requirements for
> > > > > + * @type: type of multicast steering to check
> > > > > + *
> > > > > + * Determines whether @reg needs explicit steering of a specific type for
> > > > > + * reads.
> > > > > + *
> > > > > + * Returns false if @reg does not belong to a register range of the given
> > > > > + * steering type, or if the default (subslice-based) steering IDs are suitable
> > > > > + * for @type steering too.
> > > > > + */
> > > > > +static bool intel_gt_reg_needs_read_steering(struct intel_gt *gt,
> > > > > +					     i915_reg_t reg,
> > > > > +					     enum intel_steering_type type)
> > > > > +{
> > > > > +	const u32 offset = i915_mmio_reg_offset(reg);
> > > > > +	const struct intel_mmio_range *entry;
> > > > > +
> > > > > +	if (likely(!intel_gt_needs_read_steering(gt, type)))
> > > > > +		return false;
> > > > > +
> > > > > +	for (entry = gt->steering_table[type]; entry->start < 0xFFFFFF; entry++) {
> > > > 
> > > > I'm not comfortable with this stop condition...
> > 
> > Is your worry that we'll someday have registers going more than 16MB
> > into the MMIO BAR?
> 
> no no, if this is the case we have bigger problems ;)
> 
> > Or just that we use a terminator entry in general?
> > We have lots of other places in the driver where we use this pattern
> > already (cdclk tables, dbuf tables, etc.).  We're soon going to need to
> > deal with lots of different MCR range tables (which will vary according
> > to platform too), so we don't want to be trying to hardcode table sizes
> > here.
> > 
> > If your concern is just that our MMIO space may eventually become big
> > enough that 0xFFFFFF becomes a valid register, I could switch the
> > condition to looking for 'entry->end == 0' and just make the terminator
> > row a '{}' since an upper bound of 0 will always be invalid.
> 
> okay, what about go like cdclk terminator then and use only {},
> then iterate with
> 
> for (entry = gt->steering_table[type]; entry->start; entry++) {

Yeah.  I'll make this change.  Although I'll make the test for
entry->end instead of entry->start since it's more obvious that that
can't happen for a real register range.

> 
> But well, looking at patch 3 it is indeed minor thing...
> 
> > 
> > 
> > ...
> > > > > +static inline bool intel_gt_needs_read_steering(struct intel_gt *gt,
> > > > > +						enum intel_steering_type type)
> > > > > +{
> > > > > +	return gt->steering_table[type];
> > > > 
> > > > then if we know the right amount we also don't need this function right?!
> > 
> > No, this function is critical.  We still attempt to find an implicit
> > steering value that will work for all steering types.  If we succeed and
> > explicit steering isn't needed, then we set the table pointer to NULL to
> > disable the explicit steering for that type (see patch 3 for where this
> > happens for l3bank).  But we don't know until runtime if/when that will
> > be possible since it all depends on the fuse values for the specific
> > system that you're running on.
> 
> hmm... got it...
> 
> So, my only remaining concern with this patch is if it is bisectable...
> if the checks without the terminators won't blow up any auto bisect
> case...

I think it should be bisectable.  After patch 2, we have zero explicit
steering types so the

        for (type = 0; type < NUM_STEERING_TYPES; type++)

loop in intel_gt_read_register_fw() becomes a noop and the function just
falls through to the traditional intel_uncore_read_fw() without doing
anything steering-related.  We do temporarily have a zero-sized array in
the structure member which is a bit odd, but gcc doesn't mind that as
long as we never access elements of it (which we won't because all
accesses are inside the body of the loop above).


Matt

> 
> > 
> > 
> > Matt
> > 
> > > > 
> > > > > +}
> > > > > +
> > > > > +u32 intel_gt_read_register_fw(struct intel_gt *gt, i915_reg_t reg);
> > > > > +
> > > > >  void intel_gt_info_print(const struct intel_gt_info *info,
> > > > >  			 struct drm_printer *p);
> > > > >  
> > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > > > > index fecfacf551d5..47957837c8c0 100644
> > > > > --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > > > > +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > > > > @@ -31,6 +31,26 @@ struct i915_ggtt;
> > > > >  struct intel_engine_cs;
> > > > >  struct intel_uncore;
> > > > >  
> > > > > +struct intel_mmio_range {
> > > > > +       u32 start;
> > > > > +       u32 end;
> > > > > +};
> > > > > +
> > > > > +/*
> > > > > + * The hardware has multiple kinds of multicast register ranges that need
> > > > > + * special register steering (and future platforms are expected to add
> > > > > + * additional types).
> > > > > + *
> > > > > + * During driver startup, we initialize the steering control register to
> > > > > + * direct reads to a slice/subslice that are valid for the 'subslice' class
> > > > > + * of multicast registers.  If another type of steering does not have any
> > > > > + * overlap in valid steering targets with 'subslice' style registers, we will
> > > > > + * need to explicitly re-steer reads of registers of the other type.
> > > > > + */
> > > > > +enum intel_steering_type {
> > > > > +	NUM_STEERING_TYPES
> > > > > +};
> > > > > +
> > > > >  enum intel_submission_method {
> > > > >  	INTEL_SUBMISSION_RING,
> > > > >  	INTEL_SUBMISSION_ELSP,
> > > > > @@ -145,6 +165,8 @@ struct intel_gt {
> > > > >  
> > > > >  	struct i915_vma *scratch;
> > > > >  
> > > > > +	const struct intel_mmio_range *steering_table[NUM_STEERING_TYPES];
> > > > > +
> > > > >  	struct intel_gt_info {
> > > > >  		intel_engine_mask_t engine_mask;
> > > > >  		u8 num_engines;
> > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > > index b62d1e31a645..689045d3752b 100644
> > > > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > > @@ -1247,8 +1247,9 @@ wa_verify(const struct i915_wa *wa, u32 cur, const char *name, const char *from)
> > > > >  }
> > > > >  
> > > > >  static void
> > > > > -wa_list_apply(struct intel_uncore *uncore, const struct i915_wa_list *wal)
> > > > > +wa_list_apply(struct intel_gt *gt, const struct i915_wa_list *wal)
> > > > >  {
> > > > > +	struct intel_uncore *uncore = gt->uncore;
> > > > >  	enum forcewake_domains fw;
> > > > >  	unsigned long flags;
> > > > >  	struct i915_wa *wa;
> > > > > @@ -1263,13 +1264,16 @@ wa_list_apply(struct intel_uncore *uncore, const struct i915_wa_list *wal)
> > > > >  	intel_uncore_forcewake_get__locked(uncore, fw);
> > > > >  
> > > > >  	for (i = 0, wa = wal->list; i < wal->count; i++, wa++) {
> > > > > -		if (wa->clr)
> > > > > -			intel_uncore_rmw_fw(uncore, wa->reg, wa->clr, wa->set);
> > > > > -		else
> > > > > -			intel_uncore_write_fw(uncore, wa->reg, wa->set);
> > > > > +		u32 val, old = 0;
> > > > > +
> > > > > +		/* open-coded rmw due to steering */
> > > > > +		old = wa->clr ? intel_gt_read_register_fw(gt, wa->reg) : 0;
> > > > > +		val = (old & ~wa->clr) | wa->set;
> > > > > +		if (val != old || !wa->clr)
> > > > > +			intel_uncore_write_fw(uncore, wa->reg, val);
> > > > > +
> > > > >  		if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> > > > > -			wa_verify(wa,
> > > > > -				  intel_uncore_read_fw(uncore, wa->reg),
> > > > > +			wa_verify(wa, intel_gt_read_register_fw(gt, wa->reg),
> > > > >  				  wal->name, "application");
> > > > >  	}
> > > > >  
> > > > > @@ -1279,10 +1283,10 @@ wa_list_apply(struct intel_uncore *uncore, const struct i915_wa_list *wal)
> > > > >  
> > > > >  void intel_gt_apply_workarounds(struct intel_gt *gt)
> > > > >  {
> > > > > -	wa_list_apply(gt->uncore, &gt->i915->gt_wa_list);
> > > > > +	wa_list_apply(gt, &gt->i915->gt_wa_list);
> > > > >  }
> > > > >  
> > > > > -static bool wa_list_verify(struct intel_uncore *uncore,
> > > > > +static bool wa_list_verify(struct intel_gt *gt,
> > > > >  			   const struct i915_wa_list *wal,
> > > > >  			   const char *from)
> > > > >  {
> > > > > @@ -1292,7 +1296,7 @@ static bool wa_list_verify(struct intel_uncore *uncore,
> > > > >  
> > > > >  	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
> > > > >  		ok &= wa_verify(wa,
> > > > > -				intel_uncore_read(uncore, wa->reg),
> > > > > +				intel_gt_read_register_fw(gt, wa->reg),
> > > > >  				wal->name, from);
> > > > >  
> > > > >  	return ok;
> > > > > @@ -1300,7 +1304,7 @@ static bool wa_list_verify(struct intel_uncore *uncore,
> > > > >  
> > > > >  bool intel_gt_verify_workarounds(struct intel_gt *gt, const char *from)
> > > > >  {
> > > > > -	return wa_list_verify(gt->uncore, &gt->i915->gt_wa_list, from);
> > > > > +	return wa_list_verify(gt, &gt->i915->gt_wa_list, from);
> > > > >  }
> > > > >  
> > > > >  __maybe_unused
> > > > > @@ -2081,7 +2085,7 @@ void intel_engine_init_workarounds(struct intel_engine_cs *engine)
> > > > >  
> > > > >  void intel_engine_apply_workarounds(struct intel_engine_cs *engine)
> > > > >  {
> > > > > -	wa_list_apply(engine->uncore, &engine->wa_list);
> > > > > +	wa_list_apply(engine->gt, &engine->wa_list);
> > > > >  }
> > > > >  
> > > > >  struct mcr_range {
> > > > > diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> > > > > index c30754daf4b1..7ebc4edb8ecf 100644
> > > > > --- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> > > > > +++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> > > > > @@ -1147,7 +1147,7 @@ verify_wa_lists(struct intel_gt *gt, struct wa_lists *lists,
> > > > >  	enum intel_engine_id id;
> > > > >  	bool ok = true;
> > > > >  
> > > > > -	ok &= wa_list_verify(gt->uncore, &lists->gt_wa_list, str);
> > > > > +	ok &= wa_list_verify(gt, &lists->gt_wa_list, str);
> > > > >  
> > > > >  	for_each_engine(engine, gt, id) {
> > > > >  		struct intel_context *ce;
> > > > > -- 
> > > > > 2.25.4
> > > > > 
> > > > > _______________________________________________
> > > > > Intel-gfx mailing list
> > > > > Intel-gfx@lists.freedesktop.org
> > > > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > 
> > -- 
> > Matt Roper
> > Graphics Software Engineer
> > VTT-OSGC Platform Enablement
> > Intel Corporation
> > (916) 356-2795
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
