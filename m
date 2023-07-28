Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A5E7666BD
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jul 2023 10:18:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 199BD10E690;
	Fri, 28 Jul 2023 08:18:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A3FE10E690
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 08:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690532293; x=1722068293;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=R6Vw8II83lBoNUmctK8b1kPUsQajyO4YrNqxLGo4NcM=;
 b=PFrYnEoPTSGlpdsX5R+eJAr60OB5ACsW9QRWAKT6VS3uKnQZng8cEjbn
 ATzYssLEYk86ZsSr9t6q7UeEvxH52IscF3AS1TUs2qg6bkp214VGpo95U
 sgcsdt+syHhsA4FXMWKuyV2CSdmp/r1Pmw92smNoYkWokH7pvZH5WWWnM
 n5SIn9FeDZUAWVFbrv/VSeqrjn2YqLFsguw6zI2sFOL2eMpc0oLYhFluN
 PCyCXJhf/VMy1avkkYzmrUy12vAWb3Jo6FHbLSe5Y0fmgai7IB8Zsplzw
 jkPUM+QVN8k7nph2BecvZfNGxdPBThJIzmUDjbyEpvoxbcMyHp4gTjl7G g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="372158912"
X-IronPort-AV: E=Sophos;i="6.01,236,1684825200"; d="scan'208";a="372158912"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 01:18:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="721179572"
X-IronPort-AV: E=Sophos;i="6.01,236,1684825200"; d="scan'208";a="721179572"
Received: from blavena-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.252.58.17])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 01:18:09 -0700
Date: Fri, 28 Jul 2023 10:18:06 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZMN5vjZADKux8YMR@ashyti-mobl2.lan>
References: <20230726155356.1652979-1-jonathan.cavitt@intel.com>
 <20230726155356.1652979-2-jonathan.cavitt@intel.com>
 <c38c4807-6935-7750-d15a-4d6d9c8f137d@linux.intel.com>
 <ZMMbDP8ApqVREQZ3@ashyti-mobl2.lan>
 <ebba4b70-eeee-9f78-9d01-519e5e72d633@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ebba4b70-eeee-9f78-9d01-519e5e72d633@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Make i915_coherent_map_type
 GT-centric
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
Cc: chris.p.wilson@linux.intel.com, intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>, matthew.d.roper@intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 28, 2023 at 09:07:14AM +0100, Tvrtko Ursulin wrote:
> 
> On 28/07/2023 02:34, Andi Shyti wrote:
> > Hi Daniele and John,
> > 
> > On Thu, Jul 27, 2023 at 12:35:02PM +0100, Tvrtko Ursulin wrote:
> > > 
> > > On 26/07/2023 16:53, Jonathan Cavitt wrote:
> > > > Refactor i915_coherent_map_type to be GT-centric rather than
> > > > device-centric.  Each GT may require different coherency
> > > > handling due to hardware workarounds.
> > > > 
> > > > Since the function now takes a GT instead of the i915, the function is
> > > > renamed and moved to the gt folder.
> > > > 
> > > > Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> > > > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > > 
> > > Works for me, thanks!
> > > 
> > > I'd only suggest people familiar with the GuC/HuC/PXP side of things have a
> > > look on whether all the object in those path are shared access (GPU and CPU)
> > > at runtime. Maybe some are one off too. But that can be done later too.
> > 
> > could you please take a look at this patch and if everything
> > looks all right from the GuC side, kindly ack it?
> 
> Me? I can upgrade the "works for me" into an explicit ack if you want.

ehehe... I was asking GuC guys because you wanted a confirmation
from someone familiar with GuC/HuC/PXP :)

Andi

> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Regards,
> 
> Tvrtko
> 
> > Thanks,
> > Andi
> > 
> > > Regards,
> > > 
> > > Tvrtko
> > > 
> > > > ---
> > > >    drivers/gpu/drm/i915/display/intel_hdcp_gsc.c     |  3 ++-
> > > >    drivers/gpu/drm/i915/gem/i915_gem_object.h        |  4 ----
> > > >    drivers/gpu/drm/i915/gem/i915_gem_pages.c         | 15 ---------------
> > > >    .../gpu/drm/i915/gem/selftests/i915_gem_migrate.c | 12 ++++++------
> > > >    drivers/gpu/drm/i915/gt/intel_engine_pm.c         |  2 +-
> > > >    drivers/gpu/drm/i915/gt/intel_gt.c                | 15 +++++++++++++++
> > > >    drivers/gpu/drm/i915/gt/intel_gt.h                |  3 +++
> > > >    drivers/gpu/drm/i915/gt/intel_gtt.c               |  4 ++--
> > > >    drivers/gpu/drm/i915/gt/intel_lrc.c               |  2 +-
> > > >    drivers/gpu/drm/i915/gt/intel_ring.c              |  3 ++-
> > > >    drivers/gpu/drm/i915/gt/selftest_context.c        |  2 +-
> > > >    drivers/gpu/drm/i915/gt/selftest_hangcheck.c      |  4 ++--
> > > >    drivers/gpu/drm/i915/gt/selftest_lrc.c            |  2 +-
> > > >    drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c         |  3 +--
> > > >    drivers/gpu/drm/i915/gt/uc/intel_guc.c            |  2 +-
> > > >    drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c         |  3 +--
> > > >    drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c          |  3 ++-
> > > >    drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c        |  3 ++-
> > > >    drivers/gpu/drm/i915/pxp/intel_pxp_tee.c          |  3 ++-
> > > >    drivers/gpu/drm/i915/selftests/igt_spinner.c      |  2 +-
> > > >    20 files changed, 46 insertions(+), 44 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > > > index ad0405375881..d753db3eef15 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > > > @@ -6,6 +6,7 @@
> > > >    #include <drm/i915_hdcp_interface.h>
> > > >    #include "gem/i915_gem_region.h"
> > > > +#include "gt/intel_gt.h"
> > > >    #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
> > > >    #include "i915_drv.h"
> > > >    #include "i915_utils.h"
> > > > @@ -632,7 +633,7 @@ static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
> > > >    		return PTR_ERR(obj);
> > > >    	}
> > > > -	cmd_in = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(i915, obj, true));
> > > > +	cmd_in = i915_gem_object_pin_map_unlocked(obj, intel_gt_coherent_map_type(gt, obj, true));
> > > >    	if (IS_ERR(cmd_in)) {
> > > >    		drm_err(&i915->drm, "Failed to map gsc message page!\n");
> > > >    		err = PTR_ERR(cmd_in);
> > > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > > index 884a17275b3a..0c695b4c129f 100644
> > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > > @@ -716,10 +716,6 @@ void *__must_check i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
> > > >    void *__must_check i915_gem_object_pin_map_unlocked(struct drm_i915_gem_object *obj,
> > > >    						    enum i915_map_type type);
> > > > -enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
> > > > -					  struct drm_i915_gem_object *obj,
> > > > -					  bool always_coherent);
> > > > -
> > > >    void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
> > > >    				 unsigned long offset,
> > > >    				 unsigned long size);
> > > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> > > > index 89fc8ea6bcfc..6d262d269c71 100644
> > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> > > > @@ -465,21 +465,6 @@ void *i915_gem_object_pin_map_unlocked(struct drm_i915_gem_object *obj,
> > > >    	return ret;
> > > >    }
> > > > -enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
> > > > -					  struct drm_i915_gem_object *obj,
> > > > -					  bool always_coherent)
> > > > -{
> > > > -	/*
> > > > -	 * Wa_22016122933: always return I915_MAP_WC for MTL
> > > > -	 */
> > > > -	if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(i915))
> > > > -		return I915_MAP_WC;
> > > > -	if (HAS_LLC(i915) || always_coherent)
> > > > -		return I915_MAP_WB;
> > > > -	else
> > > > -		return I915_MAP_WC;
> > > > -}
> > > > -
> > > >    void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
> > > >    				 unsigned long offset,
> > > >    				 unsigned long size)
> > > > diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
> > > > index a93a90b15907..d8f4a10d71de 100644
> > > > --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
> > > > +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
> > > > @@ -13,12 +13,12 @@
> > > >    #include "selftests/igt_spinner.h"
> > > >    static int igt_fill_check_buffer(struct drm_i915_gem_object *obj,
> > > > +				 struct intel_gt *gt,
> > > >    				 bool fill)
> > > >    {
> > > > -	struct drm_i915_private *i915 = to_i915(obj->base.dev);
> > > >    	unsigned int i, count = obj->base.size / sizeof(u32);
> > > >    	enum i915_map_type map_type =
> > > > -		i915_coherent_map_type(i915, obj, false);
> > > > +		intel_gt_coherent_map_type(gt, obj, false);
> > > >    	u32 *cur;
> > > >    	int err = 0;
> > > > @@ -66,7 +66,7 @@ static int igt_create_migrate(struct intel_gt *gt, enum intel_region_id src,
> > > >    		if (err)
> > > >    			continue;
> > > > -		err = igt_fill_check_buffer(obj, true);
> > > > +		err = igt_fill_check_buffer(obj, gt, true);
> > > >    		if (err)
> > > >    			continue;
> > > > @@ -86,7 +86,7 @@ static int igt_create_migrate(struct intel_gt *gt, enum intel_region_id src,
> > > >    		if (err)
> > > >    			continue;
> > > > -		err = igt_fill_check_buffer(obj, false);
> > > > +		err = igt_fill_check_buffer(obj, gt, false);
> > > >    	}
> > > >    	i915_gem_object_put(obj);
> > > > @@ -233,7 +233,7 @@ static int __igt_lmem_pages_migrate(struct intel_gt *gt,
> > > >    			continue;
> > > >    		if (!vma) {
> > > > -			err = igt_fill_check_buffer(obj, true);
> > > > +			err = igt_fill_check_buffer(obj, gt, true);
> > > >    			if (err)
> > > >    				continue;
> > > >    		}
> > > > @@ -276,7 +276,7 @@ static int __igt_lmem_pages_migrate(struct intel_gt *gt,
> > > >    		if (err)
> > > >    			goto out_unlock;
> > > >    	} else {
> > > > -		err = igt_fill_check_buffer(obj, false);
> > > > +		err = igt_fill_check_buffer(obj, gt, false);
> > > >    	}
> > > >    out_unlock:
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > > > index 21af0ec52223..b538b5c04948 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > > > @@ -39,7 +39,7 @@ static void dbg_poison_ce(struct intel_context *ce)
> > > >    	if (ce->state) {
> > > >    		struct drm_i915_gem_object *obj = ce->state->obj;
> > > > -		int type = i915_coherent_map_type(ce->engine->i915, obj, true);
> > > > +		int type = intel_gt_coherent_map_type(ce->engine->gt, obj, true);
> > > >    		void *map;
> > > >    		if (!i915_gem_object_trylock(obj, NULL))
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> > > > index 02886c1eb0f1..62eda0ab9bfc 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> > > > @@ -1134,6 +1134,21 @@ void intel_gt_invalidate_tlb(struct intel_gt *gt, u32 seqno)
> > > >    	}
> > > >    }
> > > > +enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
> > > > +					      struct drm_i915_gem_object *obj,
> > > > +					      bool always_coherent)
> > > > +{
> > > > +	/*
> > > > +	 * Wa_22016122933: always return I915_MAP_WC for MTL
> > > > +	 */
> > > > +	if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(gt->i915))
> > > > +		return I915_MAP_WC;
> > > > +	if (HAS_LLC(gt->i915) || always_coherent)
> > > > +		return I915_MAP_WB;
> > > > +	else
> > > > +		return I915_MAP_WC;
> > > > +}
> > > > +
> > > >    #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> > > >    #include "selftest_tlb.c"
> > > >    #endif
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> > > > index d2f4fbde5f9f..adb442aaa522 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> > > > @@ -119,4 +119,7 @@ static inline u32 intel_gt_next_invalidate_tlb_full(const struct intel_gt *gt)
> > > >    void intel_gt_invalidate_tlb(struct intel_gt *gt, u32 seqno);
> > > > +enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
> > > > +					      struct drm_i915_gem_object *obj,
> > > > +					      bool always_coherent);
> > > >    #endif /* __INTEL_GT_H__ */
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> > > > index 731d9f2bbc56..13944a14ea2d 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> > > > @@ -89,7 +89,7 @@ int map_pt_dma(struct i915_address_space *vm, struct drm_i915_gem_object *obj)
> > > >    	enum i915_map_type type;
> > > >    	void *vaddr;
> > > > -	type = i915_coherent_map_type(vm->i915, obj, true);
> > > > +	type = intel_gt_coherent_map_type(vm->gt, obj, true);
> > > >    	vaddr = i915_gem_object_pin_map_unlocked(obj, type);
> > > >    	if (IS_ERR(vaddr))
> > > >    		return PTR_ERR(vaddr);
> > > > @@ -103,7 +103,7 @@ int map_pt_dma_locked(struct i915_address_space *vm, struct drm_i915_gem_object
> > > >    	enum i915_map_type type;
> > > >    	void *vaddr;
> > > > -	type = i915_coherent_map_type(vm->i915, obj, true);
> > > > +	type = intel_gt_coherent_map_type(vm->gt, obj, true);
> > > >    	vaddr = i915_gem_object_pin_map(obj, type);
> > > >    	if (IS_ERR(vaddr))
> > > >    		return PTR_ERR(vaddr);
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > > > index 119deb9f938c..1897cb5aa2a2 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > > > @@ -1191,7 +1191,7 @@ lrc_pre_pin(struct intel_context *ce,
> > > >    	GEM_BUG_ON(!i915_vma_is_pinned(ce->state));
> > > >    	*vaddr = i915_gem_object_pin_map(ce->state->obj,
> > > > -					 i915_coherent_map_type(ce->engine->i915,
> > > > +					 intel_gt_coherent_map_type(ce->engine->gt,
> > > >    								ce->state->obj,
> > > >    								false) |
> > > >    					 I915_MAP_OVERRIDE);
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
> > > > index fb99143be98e..59da4b7bd262 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_ring.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_ring.c
> > > > @@ -13,6 +13,7 @@
> > > >    #include "intel_engine_regs.h"
> > > >    #include "intel_gpu_commands.h"
> > > >    #include "intel_ring.h"
> > > > +#include "intel_gt.h"
> > > >    #include "intel_timeline.h"
> > > >    unsigned int intel_ring_update_space(struct intel_ring *ring)
> > > > @@ -56,7 +57,7 @@ int intel_ring_pin(struct intel_ring *ring, struct i915_gem_ww_ctx *ww)
> > > >    	if (i915_vma_is_map_and_fenceable(vma) && !HAS_LLC(vma->vm->i915)) {
> > > >    		addr = (void __force *)i915_vma_pin_iomap(vma);
> > > >    	} else {
> > > > -		int type = i915_coherent_map_type(vma->vm->i915, vma->obj, false);
> > > > +		int type = intel_gt_coherent_map_type(vma->vm->gt, vma->obj, false);
> > > >    		addr = i915_gem_object_pin_map(vma->obj, type);
> > > >    	}
> > > > diff --git a/drivers/gpu/drm/i915/gt/selftest_context.c b/drivers/gpu/drm/i915/gt/selftest_context.c
> > > > index 76fbae358072..afce036bcaa8 100644
> > > > --- a/drivers/gpu/drm/i915/gt/selftest_context.c
> > > > +++ b/drivers/gpu/drm/i915/gt/selftest_context.c
> > > > @@ -88,7 +88,7 @@ static int __live_context_size(struct intel_engine_cs *engine)
> > > >    		goto err;
> > > >    	vaddr = i915_gem_object_pin_map_unlocked(ce->state->obj,
> > > > -						 i915_coherent_map_type(engine->i915,
> > > > +						 intel_gt_coherent_map_type(engine->gt,
> > > >    									ce->state->obj, false));
> > > >    	if (IS_ERR(vaddr)) {
> > > >    		err = PTR_ERR(vaddr);
> > > > diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> > > > index 8b0d84f2aad2..0dd4d00ee894 100644
> > > > --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> > > > +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> > > > @@ -73,7 +73,7 @@ static int hang_init(struct hang *h, struct intel_gt *gt)
> > > >    	h->seqno = memset(vaddr, 0xff, PAGE_SIZE);
> > > >    	vaddr = i915_gem_object_pin_map_unlocked(h->obj,
> > > > -						 i915_coherent_map_type(gt->i915, h->obj, false));
> > > > +						 intel_gt_coherent_map_type(gt, h->obj, false));
> > > >    	if (IS_ERR(vaddr)) {
> > > >    		err = PTR_ERR(vaddr);
> > > >    		goto err_unpin_hws;
> > > > @@ -119,7 +119,7 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
> > > >    		return ERR_CAST(obj);
> > > >    	}
> > > > -	vaddr = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(gt->i915, obj, false));
> > > > +	vaddr = i915_gem_object_pin_map_unlocked(obj, intel_gt_coherent_map_type(gt, obj, false));
> > > >    	if (IS_ERR(vaddr)) {
> > > >    		i915_gem_object_put(obj);
> > > >    		i915_vm_put(vm);
> > > > diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > > > index a78a3d2c2e16..bc883de02295 100644
> > > > --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > > > +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > > > @@ -1292,7 +1292,7 @@ static int compare_isolation(struct intel_engine_cs *engine,
> > > >    	}
> > > >    	lrc = i915_gem_object_pin_map_unlocked(ce->state->obj,
> > > > -					       i915_coherent_map_type(engine->i915,
> > > > +					       intel_gt_coherent_map_type(engine->gt,
> > > >    								      ce->state->obj,
> > > >    								      false));
> > > >    	if (IS_ERR(lrc)) {
> > > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> > > > index ab1a456f833d..6efb86c93bfc 100644
> > > > --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> > > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> > > > @@ -268,7 +268,6 @@ static int gsc_fw_load(struct intel_gsc_uc *gsc)
> > > >    static int gsc_fw_load_prepare(struct intel_gsc_uc *gsc)
> > > >    {
> > > >    	struct intel_gt *gt = gsc_uc_to_gt(gsc);
> > > > -	struct drm_i915_private *i915 = gt->i915;
> > > >    	void *src;
> > > >    	if (!gsc->local)
> > > > @@ -278,7 +277,7 @@ static int gsc_fw_load_prepare(struct intel_gsc_uc *gsc)
> > > >    		return -ENOSPC;
> > > >    	src = i915_gem_object_pin_map_unlocked(gsc->fw.obj,
> > > > -					       i915_coherent_map_type(i915, gsc->fw.obj, true));
> > > > +					       intel_gt_coherent_map_type(gt, gsc->fw.obj, true));
> > > >    	if (IS_ERR(src))
> > > >    		return PTR_ERR(src);
> > > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > > > index 2eb891b270ae..c0fa9d232205 100644
> > > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > > > @@ -792,7 +792,7 @@ int intel_guc_allocate_and_map_vma(struct intel_guc *guc, u32 size,
> > > >    		return PTR_ERR(vma);
> > > >    	vaddr = i915_gem_object_pin_map_unlocked(vma->obj,
> > > > -						 i915_coherent_map_type(guc_to_gt(guc)->i915,
> > > > +						 intel_gt_coherent_map_type(guc_to_gt(guc),
> > > >    									vma->obj, true));
> > > >    	if (IS_ERR(vaddr)) {
> > > >    		i915_vma_unpin_and_release(&vma, 0);
> > > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
> > > > index 48f506a26e6d..b648238cc675 100644
> > > > --- a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
> > > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
> > > > @@ -27,7 +27,6 @@ struct mtl_huc_auth_msg_out {
> > > >    int intel_huc_fw_auth_via_gsccs(struct intel_huc *huc)
> > > >    {
> > > >    	struct intel_gt *gt = huc_to_gt(huc);
> > > > -	struct drm_i915_private *i915 = gt->i915;
> > > >    	struct drm_i915_gem_object *obj;
> > > >    	struct mtl_huc_auth_msg_in *msg_in;
> > > >    	struct mtl_huc_auth_msg_out *msg_out;
> > > > @@ -43,7 +42,7 @@ int intel_huc_fw_auth_via_gsccs(struct intel_huc *huc)
> > > >    	pkt_offset = i915_ggtt_offset(huc->heci_pkt);
> > > >    	pkt_vaddr = i915_gem_object_pin_map_unlocked(obj,
> > > > -						     i915_coherent_map_type(i915, obj, true));
> > > > +						     intel_gt_coherent_map_type(gt, obj, true));
> > > >    	if (IS_ERR(pkt_vaddr))
> > > >    		return PTR_ERR(pkt_vaddr);
> > > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> > > > index 7aadad5639c3..fc0d05d2df59 100644
> > > > --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> > > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> > > > @@ -11,6 +11,7 @@
> > > >    #include <drm/drm_print.h>
> > > >    #include "gem/i915_gem_lmem.h"
> > > > +#include "gt/intel_gt.h"
> > > >    #include "gt/intel_gt_print.h"
> > > >    #include "intel_gsc_binary_headers.h"
> > > >    #include "intel_gsc_fw.h"
> > > > @@ -1213,7 +1214,7 @@ static int uc_fw_rsa_data_create(struct intel_uc_fw *uc_fw)
> > > >    		return PTR_ERR(vma);
> > > >    	vaddr = i915_gem_object_pin_map_unlocked(vma->obj,
> > > > -						 i915_coherent_map_type(gt->i915, vma->obj, true));
> > > > +						 intel_gt_coherent_map_type(gt, vma->obj, true));
> > > >    	if (IS_ERR(vaddr)) {
> > > >    		i915_vma_unpin_and_release(&vma, 0);
> > > >    		err = PTR_ERR(vaddr);
> > > > diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
> > > > index c7df47364013..2a600184a077 100644
> > > > --- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
> > > > +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
> > > > @@ -6,6 +6,7 @@
> > > >    #include "gem/i915_gem_internal.h"
> > > >    #include "gt/intel_context.h"
> > > > +#include "gt/intel_gt.h"
> > > >    #include "gt/uc/intel_gsc_fw.h"
> > > >    #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
> > > > @@ -336,7 +337,7 @@ gsccs_create_buffer(struct intel_gt *gt,
> > > >    	}
> > > >    	/* return a virtual pointer */
> > > > -	*map = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(i915, obj, true));
> > > > +	*map = i915_gem_object_pin_map_unlocked(obj, intel_gt_coherent_map_type(gt, obj, true));
> > > >    	if (IS_ERR(*map)) {
> > > >    		drm_err(&i915->drm, "Failed to map gsccs backend %s.\n", bufname);
> > > >    		err = PTR_ERR(*map);
> > > > diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> > > > index 1ce07d7e8769..8e0b5d48ddf6 100644
> > > > --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> > > > +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> > > > @@ -11,6 +11,7 @@
> > > >    #include "gem/i915_gem_lmem.h"
> > > >    #include "i915_drv.h"
> > > > +#include "gt/intel_gt.h"
> > > >    #include "intel_pxp.h"
> > > >    #include "intel_pxp_cmd_interface_42.h"
> > > > @@ -245,7 +246,7 @@ static int alloc_streaming_command(struct intel_pxp *pxp)
> > > >    	}
> > > >    	/* map the lmem into the virtual memory pointer */
> > > > -	cmd = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(i915, obj, true));
> > > > +	cmd = i915_gem_object_pin_map_unlocked(obj, intel_gt_coherent_map_type(pxp->ctrl_gt, obj, true));
> > > >    	if (IS_ERR(cmd)) {
> > > >    		drm_err(&i915->drm, "Failed to map gsc message page!\n");
> > > >    		err = PTR_ERR(cmd);
> > > > diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> > > > index 3c5e0952f1b8..0f064930ef11 100644
> > > > --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
> > > > +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> > > > @@ -97,7 +97,7 @@ int igt_spinner_pin(struct igt_spinner *spin,
> > > >    	if (!spin->batch) {
> > > >    		unsigned int mode;
> > > > -		mode = i915_coherent_map_type(spin->gt->i915, spin->obj, false);
> > > > +		mode = intel_gt_coherent_map_type(spin->gt, spin->obj, false);
> > > >    		vaddr = igt_spinner_pin_obj(ce, ww, spin->obj, mode, &spin->batch_vma);
> > > >    		if (IS_ERR(vaddr))
> > > >    			return PTR_ERR(vaddr);
