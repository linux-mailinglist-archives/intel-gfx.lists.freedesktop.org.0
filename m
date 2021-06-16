Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EACCC3AA154
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 18:30:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47F4C89DDF;
	Wed, 16 Jun 2021 16:30:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2179989DDF
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jun 2021 16:30:43 +0000 (UTC)
IronPort-SDR: 4ecgF8BFoMOKJZiJ8Gu+a6NNYQF6u4k3LaJbxalCsGPLlXdOB9M4GWnP6FV+M+uWNmSIwnawyj
 TGjJCKhhoUHQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="270061049"
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="270061049"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 09:30:42 -0700
IronPort-SDR: H7/y/X+jE6mDDzSgxHypf5kBGTGHVEY7Ro06oZsTJWdmUZTPnwPHpeesAcigP+95X2VAaznE/n
 j10fzfwrSnvA==
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="640062013"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 09:30:41 -0700
Date: Wed, 16 Jun 2021 09:30:40 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20210616163040.GZ951094@mdroper-desk1.amr.corp.intel.com>
References: <20210616004213.1705079-1-matthew.d.roper@intel.com>
 <20210616004213.1705079-3-matthew.d.roper@intel.com>
 <YMoJsAm3EE3fGVfx@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YMoJsAm3EE3fGVfx@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2.1 2/3] drm/i915: Add GT support for
 multiple types of multicast steering
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

On Wed, Jun 16, 2021 at 10:24:48AM -0400, Rodrigo Vivi wrote:
> On Tue, Jun 15, 2021 at 05:42:12PM -0700, Matt Roper wrote:
> > Although most of our multicast registers are replicated per-subslice, we
> > also have a small number of multicast registers that are replicated
> > per-l3 bank instead.  For both types of multicast registers we need to
> > make sure we steer reads of these registers to a valid instance.
> > Ideally we'd like to find a specific instance ID that would steer reads
> > of either type of multicast register to a valid instance (i.e., not
> > fused off and not powered down), but sometimes the combination of
> > part-specific fusing and the additional restrictions imposed by Render
> > Power Gating make it impossible to find any overlap between the set of
> > valid subslices and valid l3 banks.  This problem will become even more
> > noticeable on our upcoming platforms since they will be adding
> > additional types of multicast registers with new types of replication
> > and rules for finding valid instances for reads.
> > 
> > To handle this we'll continue to pick a suitable subslice instance at
> > driver startup and program this as the default (sliceid,subsliceid)
> > setting in the steering control register (0xFDC).  In cases where we
> > need to read another type of multicast GT register, but the default
> > subslice steering would not correspond to a valid instance, we'll
> > explicitly re-steer the single read to a valid value, perform the read,
> > and then reset the steering to it's "subslice" default.
> > 
> > This patch adds the general functionality to prepare for this explicit
> > steering of other multicast register types.  We'll plug L3 bank steering
> > into this in the next patch, and then add additional types of multicast
> > registers when the support for our next upcoming platform arrives.
> > 
> > v2:
> >  - Use entry->end==0 as table terminator.  (Rodrigo)
> >  - Grab forcewake in wa_list_verify() now that we're using accessors
> >    that assume forcewake is already held.
> > 
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt.c            | 84 +++++++++++++++++++
> >  drivers/gpu/drm/i915/gt/intel_gt.h            |  8 ++
> >  drivers/gpu/drm/i915/gt/intel_gt_types.h      | 22 +++++
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 39 ++++++---
> >  .../gpu/drm/i915/gt/selftest_workarounds.c    |  2 +-
> >  5 files changed, 142 insertions(+), 13 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> > index 2161bf01ef8b..66299105da66 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> > @@ -697,6 +697,90 @@ void intel_gt_driver_late_release(struct intel_gt *gt)
> >  	intel_engines_free(gt);
> >  }
> >  
> > +/**
> > + * intel_gt_reg_needs_read_steering - determine whether a register read
> > + *     requires explicit steering
> > + * @gt: GT structure
> > + * @reg: the register to check steering requirements for
> > + * @type: type of multicast steering to check
> > + *
> > + * Determines whether @reg needs explicit steering of a specific type for
> > + * reads.
> > + *
> > + * Returns false if @reg does not belong to a register range of the given
> > + * steering type, or if the default (subslice-based) steering IDs are suitable
> > + * for @type steering too.
> > + */
> > +static bool intel_gt_reg_needs_read_steering(struct intel_gt *gt,
> > +					     i915_reg_t reg,
> > +					     enum intel_steering_type type)
> > +{
> > +	const u32 offset = i915_mmio_reg_offset(reg);
> > +	const struct intel_mmio_range *entry;
> > +
> > +	if (likely(!intel_gt_needs_read_steering(gt, type)))
> > +		return false;
> > +
> > +	for (entry = gt->steering_table[type]; !entry->end; entry++) {
> 
> shouldn't it be:
> for (entry = gt->steering_table[type]; entry->end; entry++) {
> ?!

Yep, good catch.  I'll fix this.


Matt

> 
> or maybe this is just the proof that the 0xFFFF terminator
> is less confusing?! :)
> 
> with this fixed:
> 
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> > +		if (offset >= entry->start && offset <= entry->end)
> > +			return true;
> > +	}
> > +
> > +	return false;
> > +}
> > +
> > +/**
> > + * intel_gt_get_valid_steering - determines valid IDs for a class of MCR steering
> > + * @gt: GT structure
> > + * @type: multicast register type
> > + * @sliceid: Slice ID returned
> > + * @subsliceid: Subslice ID returned
> > + *
> > + * Determines sliceid and subsliceid values that will steer reads
> > + * of a specific multicast register class to a valid value.
> > + */
> > +static void intel_gt_get_valid_steering(struct intel_gt *gt,
> > +					enum intel_steering_type type,
> > +					u8 *sliceid, u8 *subsliceid)
> > +{
> > +	switch (type) {
> > +	default:
> > +		MISSING_CASE(type);
> > +		*sliceid = 0;
> > +		*subsliceid = 0;
> > +	}
> > +}
> > +
> > +/**
> > + * intel_gt_read_register_fw - reads a GT register with support for multicast
> > + * @gt: GT structure
> > + * @reg: register to read
> > + *
> > + * This function will read a GT register.  If the register is a multicast
> > + * register, the read will be steered to a valid instance (i.e., one that
> > + * isn't fused off or powered down by power gating).
> > + *
> > + * Returns the value from a valid instance of @reg.
> > + */
> > +u32 intel_gt_read_register_fw(struct intel_gt *gt, i915_reg_t reg)
> > +{
> > +	int type;
> > +	u8 sliceid, subsliceid;
> > +
> > +	for (type = 0; type < NUM_STEERING_TYPES; type++) {
> > +		if (intel_gt_reg_needs_read_steering(gt, reg, type)) {
> > +			intel_gt_get_valid_steering(gt, type, &sliceid,
> > +						    &subsliceid);
> > +			return intel_uncore_read_with_mcr_steering_fw(gt->uncore,
> > +								      reg,
> > +								      sliceid,
> > +								      subsliceid);
> > +		}
> > +	}
> > +
> > +	return intel_uncore_read_fw(gt->uncore, reg);
> > +}
> > +
> >  void intel_gt_info_print(const struct intel_gt_info *info,
> >  			 struct drm_printer *p)
> >  {
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> > index 7ec395cace69..e7aabe0cc5bf 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> > @@ -75,6 +75,14 @@ static inline bool intel_gt_is_wedged(const struct intel_gt *gt)
> >  	return unlikely(test_bit(I915_WEDGED, &gt->reset.flags));
> >  }
> >  
> > +static inline bool intel_gt_needs_read_steering(struct intel_gt *gt,
> > +						enum intel_steering_type type)
> > +{
> > +	return gt->steering_table[type];
> > +}
> > +
> > +u32 intel_gt_read_register_fw(struct intel_gt *gt, i915_reg_t reg);
> > +
> >  void intel_gt_info_print(const struct intel_gt_info *info,
> >  			 struct drm_printer *p);
> >  
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > index fecfacf551d5..f2c274eee1e6 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > @@ -31,6 +31,26 @@ struct i915_ggtt;
> >  struct intel_engine_cs;
> >  struct intel_uncore;
> >  
> > +struct intel_mmio_range {
> > +	u32 start;
> > +	u32 end;
> > +};
> > +
> > +/*
> > + * The hardware has multiple kinds of multicast register ranges that need
> > + * special register steering (and future platforms are expected to add
> > + * additional types).
> > + *
> > + * During driver startup, we initialize the steering control register to
> > + * direct reads to a slice/subslice that are valid for the 'subslice' class
> > + * of multicast registers.  If another type of steering does not have any
> > + * overlap in valid steering targets with 'subslice' style registers, we will
> > + * need to explicitly re-steer reads of registers of the other type.
> > + */
> > +enum intel_steering_type {
> > +	NUM_STEERING_TYPES
> > +};
> > +
> >  enum intel_submission_method {
> >  	INTEL_SUBMISSION_RING,
> >  	INTEL_SUBMISSION_ELSP,
> > @@ -145,6 +165,8 @@ struct intel_gt {
> >  
> >  	struct i915_vma *scratch;
> >  
> > +	const struct intel_mmio_range *steering_table[NUM_STEERING_TYPES];
> > +
> >  	struct intel_gt_info {
> >  		intel_engine_mask_t engine_mask;
> >  		u8 num_engines;
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 977a76e648e0..93c74d4cae02 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -1248,8 +1248,9 @@ wa_verify(const struct i915_wa *wa, u32 cur, const char *name, const char *from)
> >  }
> >  
> >  static void
> > -wa_list_apply(struct intel_uncore *uncore, const struct i915_wa_list *wal)
> > +wa_list_apply(struct intel_gt *gt, const struct i915_wa_list *wal)
> >  {
> > +	struct intel_uncore *uncore = gt->uncore;
> >  	enum forcewake_domains fw;
> >  	unsigned long flags;
> >  	struct i915_wa *wa;
> > @@ -1264,13 +1265,16 @@ wa_list_apply(struct intel_uncore *uncore, const struct i915_wa_list *wal)
> >  	intel_uncore_forcewake_get__locked(uncore, fw);
> >  
> >  	for (i = 0, wa = wal->list; i < wal->count; i++, wa++) {
> > -		if (wa->clr)
> > -			intel_uncore_rmw_fw(uncore, wa->reg, wa->clr, wa->set);
> > -		else
> > -			intel_uncore_write_fw(uncore, wa->reg, wa->set);
> > +		u32 val, old = 0;
> > +
> > +		/* open-coded rmw due to steering */
> > +		old = wa->clr ? intel_gt_read_register_fw(gt, wa->reg) : 0;
> > +		val = (old & ~wa->clr) | wa->set;
> > +		if (val != old || !wa->clr)
> > +			intel_uncore_write_fw(uncore, wa->reg, val);
> > +
> >  		if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> > -			wa_verify(wa,
> > -				  intel_uncore_read_fw(uncore, wa->reg),
> > +			wa_verify(wa, intel_gt_read_register_fw(gt, wa->reg),
> >  				  wal->name, "application");
> >  	}
> >  
> > @@ -1280,28 +1284,39 @@ wa_list_apply(struct intel_uncore *uncore, const struct i915_wa_list *wal)
> >  
> >  void intel_gt_apply_workarounds(struct intel_gt *gt)
> >  {
> > -	wa_list_apply(gt->uncore, &gt->i915->gt_wa_list);
> > +	wa_list_apply(gt, &gt->i915->gt_wa_list);
> >  }
> >  
> > -static bool wa_list_verify(struct intel_uncore *uncore,
> > +static bool wa_list_verify(struct intel_gt *gt,
> >  			   const struct i915_wa_list *wal,
> >  			   const char *from)
> >  {
> > +	struct intel_uncore *uncore = gt->uncore;
> >  	struct i915_wa *wa;
> > +	enum forcewake_domains fw;
> > +	unsigned long flags;
> >  	unsigned int i;
> >  	bool ok = true;
> >  
> > +	fw = wal_get_fw_for_rmw(uncore, wal);
> > +
> > +	spin_lock_irqsave(&uncore->lock, flags);
> > +	intel_uncore_forcewake_get__locked(uncore, fw);
> > +
> >  	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
> >  		ok &= wa_verify(wa,
> > -				intel_uncore_read(uncore, wa->reg),
> > +				intel_gt_read_register_fw(gt, wa->reg),
> >  				wal->name, from);
> >  
> > +	intel_uncore_forcewake_put__locked(uncore, fw);
> > +	spin_unlock_irqrestore(&uncore->lock, flags);
> > +
> >  	return ok;
> >  }
> >  
> >  bool intel_gt_verify_workarounds(struct intel_gt *gt, const char *from)
> >  {
> > -	return wa_list_verify(gt->uncore, &gt->i915->gt_wa_list, from);
> > +	return wa_list_verify(gt, &gt->i915->gt_wa_list, from);
> >  }
> >  
> >  __maybe_unused
> > @@ -2084,7 +2099,7 @@ void intel_engine_init_workarounds(struct intel_engine_cs *engine)
> >  
> >  void intel_engine_apply_workarounds(struct intel_engine_cs *engine)
> >  {
> > -	wa_list_apply(engine->uncore, &engine->wa_list);
> > +	wa_list_apply(engine->gt, &engine->wa_list);
> >  }
> >  
> >  struct mcr_range {
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> > index c30754daf4b1..7ebc4edb8ecf 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> > @@ -1147,7 +1147,7 @@ verify_wa_lists(struct intel_gt *gt, struct wa_lists *lists,
> >  	enum intel_engine_id id;
> >  	bool ok = true;
> >  
> > -	ok &= wa_list_verify(gt->uncore, &lists->gt_wa_list, str);
> > +	ok &= wa_list_verify(gt, &lists->gt_wa_list, str);
> >  
> >  	for_each_engine(engine, gt, id) {
> >  		struct intel_context *ce;
> > -- 
> > 2.25.4
> > 
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
