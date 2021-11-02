Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9A14430A9
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 15:41:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97AB16FE91;
	Tue,  2 Nov 2021 14:41:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 004AC6FE91
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Nov 2021 14:41:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="231530535"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="231530535"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 07:40:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="541231496"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 02 Nov 2021 07:40:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Nov 2021 16:40:50 +0200
Date: Tue, 2 Nov 2021 16:40:50 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YYFN8k2x1aFKKt/Z@intel.com>
References: <20211101183551.3580546-1-imre.deak@intel.com>
 <YYFH9qH5ImqS/xVM@intel.com>
 <20211102143245.GE3598655@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211102143245.GE3598655@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Factor out
 i915_ggtt_suspend_vm/i915_ggtt_resume_vm()
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 02, 2021 at 04:32:45PM +0200, Imre Deak wrote:
> On Tue, Nov 02, 2021 at 04:15:18PM +0200, Ville Syrjälä wrote:
> > On Mon, Nov 01, 2021 at 08:35:50PM +0200, Imre Deak wrote:
> > > Factor out functions that are needed by the next patch to suspend/resume
> > > the memory mappings for DPT FBs.
> > > 
> > > No functional change, except reordering during suspend the
> > > ggtt->invalidate(ggtt) call wrt. atomic_set(&ggtt->vm.open, open) and
> > > mutex_unlock(&ggtt->vm.mutex). This shouldn't matter due to the i915
> > > suspend sequence being single threaded.
> > > 
> > > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/intel_ggtt.c | 71 +++++++++++++++++++++-------
> > >  drivers/gpu/drm/i915/gt/intel_gtt.h  |  2 +
> > >  2 files changed, 56 insertions(+), 17 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > index f17383e76eb71..834dc1b6a0729 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > @@ -116,17 +116,26 @@ static bool needs_idle_maps(struct drm_i915_private *i915)
> > >  	return false;
> > >  }
> > >  
> > > -void i915_ggtt_suspend(struct i915_ggtt *ggtt)
> > > +/**
> > > + * i915_ggtt_suspend_vm - Suspend the memory mappings for a GGTT or DPT VM
> > > + * @vm: The VM to suspend the mappings for
> > > + *
> > > + * Suspend the memory mappings for all objects mapped to HW via the GGTT or a
> > > + * DPT page table.
> > > + */
> > > +void i915_ggtt_suspend_vm(struct i915_address_space *vm)
> > >  {
> > >  	struct i915_vma *vma, *vn;
> > >  	int open;
> > >  
> > > -	mutex_lock(&ggtt->vm.mutex);
> > > +	drm_WARN_ON(&vm->i915->drm, !vm->is_ggtt && !vm->is_dpt);
> > > +
> > > +	mutex_lock(&vm->mutex);
> > >  
> > >  	/* Skip rewriting PTE on VMA unbind. */
> > > -	open = atomic_xchg(&ggtt->vm.open, 0);
> > > +	open = atomic_xchg(&vm->open, 0);
> > >  
> > > -	list_for_each_entry_safe(vma, vn, &ggtt->vm.bound_list, vm_link) {
> > > +	list_for_each_entry_safe(vma, vn, &vm->bound_list, vm_link) {
> > >  		GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
> > >  		i915_vma_wait_for_bind(vma);
> > >  
> > > @@ -139,11 +148,17 @@ void i915_ggtt_suspend(struct i915_ggtt *ggtt)
> > >  		}
> > >  	}
> > >  
> > > -	ggtt->vm.clear_range(&ggtt->vm, 0, ggtt->vm.total);
> > > +	vm->clear_range(vm, 0, vm->total);
> > > +
> > > +	atomic_set(&vm->open, open);
> > > +
> > > +	mutex_unlock(&vm->mutex);
> > > +}
> > > +
> > > +void i915_ggtt_suspend(struct i915_ggtt *ggtt)
> > > +{
> > > +	i915_ggtt_suspend_vm(&ggtt->vm);
> > >  	ggtt->invalidate(ggtt);
> > > -	atomic_set(&ggtt->vm.open, open);
> > > -
> > > -	mutex_unlock(&ggtt->vm.mutex);
> > >  
> > >  	intel_gt_check_and_clear_faults(ggtt->vm.gt);
> > >  }
> > > @@ -1253,37 +1268,59 @@ void i915_ggtt_disable_guc(struct i915_ggtt *ggtt)
> > >  	ggtt->invalidate(ggtt);
> > >  }
> > >  
> > > -void i915_ggtt_resume(struct i915_ggtt *ggtt)
> > > +/**
> > > + * i915_ggtt_resume_vm - Restore the memory mappings for a GGTT or DPT VM
> > > + * @vm: The VM to restore the mappings for
> > > + *
> > > + * Restore the memory mappings for all objects mapped to HW via the GGTT or a
> > > + * DPT page table.
> > > + *
> > > + * Returns %true if restoring the mapping for any object that was in a write
> > > + * domain before suspend.
> > > + */
> > > +bool i915_ggtt_resume_vm(struct i915_address_space *vm)
> > >  {
> > >  	struct i915_vma *vma;
> > > -	bool flush = false;
> > > +	bool write_domain_objs = false;
> > >  	int open;
> > >  
> > > -	intel_gt_check_and_clear_faults(ggtt->vm.gt);
> > > +	drm_WARN_ON(&vm->i915->drm, !vm->is_ggtt && !vm->is_dpt);
> > >  
> > >  	/* First fill our portion of the GTT with scratch pages */
> > > -	ggtt->vm.clear_range(&ggtt->vm, 0, ggtt->vm.total);
> > > +	vm->clear_range(vm, 0, vm->total);
> > >  
> > >  	/* Skip rewriting PTE on VMA unbind. */
> > > -	open = atomic_xchg(&ggtt->vm.open, 0);
> > > +	open = atomic_xchg(&vm->open, 0);
> > >  
> > >  	/* clflush objects bound into the GGTT and rebind them. */
> > > -	list_for_each_entry(vma, &ggtt->vm.bound_list, vm_link) {
> > > +	list_for_each_entry(vma, &vm->bound_list, vm_link) {
> > >  		struct drm_i915_gem_object *obj = vma->obj;
> > >  		unsigned int was_bound =
> > >  			atomic_read(&vma->flags) & I915_VMA_BIND_MASK;
> > >  
> > >  		GEM_BUG_ON(!was_bound);
> > > -		vma->ops->bind_vma(&ggtt->vm, NULL, vma,
> > > +		vma->ops->bind_vma(vm, NULL, vma,
> > >  				   obj ? obj->cache_level : 0,
> > >  				   was_bound);
> > 
> > Can we even get here with DPT? Ie. shouldn't everything have been 
> > thrown out during suspend?
> 
> After calling vma->ops->unbind_vma() the DPT object still remains on the
> vm->bound_list, it's only supposed to clear the PTE entries (atm we're
> not doing that for DPT). Here we re-instate the PTEs for the same
> objects still on the bound_list.

Ah, I thought we just evict everything not pinned. But I guess not.

-- 
Ville Syrjälä
Intel
