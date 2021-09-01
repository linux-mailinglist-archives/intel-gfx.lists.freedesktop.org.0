Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3983FE4DF
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Sep 2021 23:24:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7746F6E3A0;
	Wed,  1 Sep 2021 21:24:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C00036E3A0
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Sep 2021 21:24:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="217017491"
X-IronPort-AV: E=Sophos;i="5.84,370,1620716400"; d="scan'208";a="217017491"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 14:24:36 -0700
X-IronPort-AV: E=Sophos;i="5.84,370,1620716400"; d="scan'208";a="446757448"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 14:24:35 -0700
Date: Wed, 1 Sep 2021 14:24:32 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Srinivasan Shanmugam <srinivasan.s@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>
Message-ID: <20210901212432.GC461228@mdroper-desk1.amr.corp.intel.com>
References: <20210830162240.3891502-1-ayaz.siddiqui@intel.com>
 <20210830162240.3891502-3-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210830162240.3891502-3-ayaz.siddiqui@intel.com>
Subject: Re: [Intel-gfx] [PATCH V3 2/8] drm/i915/gt: Add support of mocs
 auxiliary registers programming
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

On Mon, Aug 30, 2021 at 09:52:34PM +0530, Ayaz A Siddiqui wrote:
> From: Srinivasan Shanmugam <srinivasan.s@intel.com>
> 
> Few registers need to be programmed with
> appropriate MOCS indexes for proper functioning.
> As of now, there are two categories of registers that
> need to be programmed, these are engine power domains
> register and engine state context register.

Minor nitpick:  MOCS-related registers are the initial user of this
framework, but isn't the longer-term goal to move other types of
registers over to this as well (e.g., some of the "fake" workarounds we
have today for uapi compatibility)?  I'd avoid mentioning MOCS
specifically in this patch since this is just a general
register-initializing framework.

> 
> A framework is being added to handle programming and
> verification of those registers.
> 
> To add a register in the future we just need to add it
> in build_aux_regs(), the rest will be taken care of by
> the framework.
> 
> V2: (Ayaz)
>  Added CMD_CCTL in guc_mmio_regset_init(), so that this
>  register can restored after engine reset.
> 
> V3: (Ayaz)
>  1. Changed implementation to have a framework only.
>  2. Added register type for proper application.
>  3. Removed CMD_CCTL programming.
> 
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Srinivasan Shanmugam <srinivasan.s@intel.com>
> Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c         |   5 +
>  drivers/gpu/drm/i915/gt/intel_mocs.c       | 184 +++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_mocs.h       |   5 +
>  drivers/gpu/drm/i915/gt/selftest_mocs.c    |  49 ++++++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c |  17 +-
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h |  15 ++
>  6 files changed, 263 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 62d40c9866427..ccb257d5282f4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -21,6 +21,7 @@
>  #include "intel_uncore.h"
>  #include "intel_pm.h"
>  #include "shmem_utils.h"
> +#include "intel_mocs.h"
>  
>  void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
>  {
> @@ -530,6 +531,10 @@ static int __engines_record_defaults(struct intel_gt *gt)
>  		if (err)
>  			goto err_rq;
>  
> +		err  = apply_mocs_aux_regs_ctx(rq);
> +		if (err)
> +			goto err_rq;
> +
>  		err = intel_renderstate_emit(&so, rq);
>  		if (err)
>  			goto err_rq;
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index 10cc508c1a4f6..c52640523c218 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c

The main framework here probably shouldn't be in intel_mocs if we want
to make this generic and usable for multiple purposes.  It would be best
to have most of this infrastructure in its own file.  Then other parts
of the code (e.g., mocs) can call the new functions here to add their
own sets of registers to the aux table.

> @@ -10,6 +10,8 @@
>  #include "intel_lrc_reg.h"
>  #include "intel_mocs.h"
>  #include "intel_ring.h"
> +#include "intel_gpu_commands.h"
> +#include "uc/intel_guc_ads.h"
>  
>  /* structures required */
>  struct drm_i915_mocs_entry {
> @@ -25,6 +27,28 @@ struct drm_i915_mocs_table {
>  	u8 uc_index;
>  };
>  
> +enum register_type {
> +	/*
> +	 * REG_GT: General register - Need to  be re-plied after GT/GPU reset
> +	 * REG_ENGINE: Domain register - needs to be re-applied after
> +	 *	       engine reset
> +	 * REG_ENGINE_CONTEXT: Engine state context register - need to stored
> +	 *		       as part of Golden context.
> +	 */
> +	REG_GT = 0,
> +	REG_ENGINE,
> +	REG_ENGINE_CONTEXT
> +};
> +
> +struct drm_i915_aux_table {
> +	enum register_type type;
> +	const char *name;
> +	i915_reg_t offset;
> +	u32 value;
> +	u32 readmask;
> +	struct drm_i915_aux_table *next;
> +};
> +
>  /* Defines for the tables (XXX_MOCS_0 - XXX_MOCS_63) */
>  #define _LE_CACHEABILITY(value)	((value) << 0)
>  #define _LE_TGT_CACHE(value)	((value) << 2)
> @@ -336,6 +360,78 @@ static bool has_mocs(const struct drm_i915_private *i915)
>  	return !IS_DGFX(i915);
>  }
>  
> +static struct drm_i915_aux_table *
> +add_aux_reg(struct drm_i915_aux_table *aux,
> +	    enum register_type type,
> +	    const char *name,
> +	    i915_reg_t offset,
> +	    u32 value,
> +	    u32 read)
> +{
> +	struct drm_i915_aux_table *x;
> +
> +	x = kmalloc(sizeof(*x), GFP_ATOMIC);
> +	if (!x) {
> +		DRM_ERROR("Failed to allocate aux reg '%s'\n", name);
> +		return aux;
> +	}
> +
> +	x->type = type;
> +	x->name = name;
> +	x->offset = offset;
> +	x->value = value;
> +	x->readmask = read;
> +
> +	x->next = aux;
> +	return x;
> +}
> +
> +static const struct drm_i915_aux_table *
> +build_aux_regs(const struct intel_engine_cs *engine,
> +	       const struct drm_i915_mocs_table *mocs)

It seems like the design you have here at the moment is going to
allocate and fill a new AUX list any time the code needs the list of
registers, and then frees it immediately afterward.  That seems a bit
inefficient to do multiple times at runtime (e.g., in execlist mode
every engine reset would trigger an additional allocation/build/free).

Can we just build the list once at initialization time (with different
parts of the code adding their own sets of registers to the table) and
then free it later when the GT is destroyed?  That's sort of the
approach that our workaround code takes --- decide which registers are
important to deal with a single time during device init, then use that
pre-built list whenever necessary during runtime, and finally free it at
GT teardown.

Also, the function that adds the MOCS-specific registers to the table
can be kept here in intel_mocs.c, but should probably be added in the
next patch that deals with MOCS-specific registers.  This patch should
focus the interfaces to add new registers to the table, and the
application of the table's registers at different parts of the code.


> +{
> +	struct drm_i915_aux_table *aux = NULL;
> +
> +	if (GRAPHICS_VER(engine->i915) >= 12 &&
> +	    !drm_WARN_ONCE(&engine->i915->drm, !mocs->uc_index,
> +	    "Platform that should have UC index defined and does not\n")) {
> +		/*
> +		 * Add Auxiliary register which needs to be programmed with
> +		 * UC MOCS index. We need to call add_aux_reg() to add
> +		 * a entry in drm_i915_aux_table link list.
> +		 */
> +	}
> +	return aux;
> +}
> +
> +static void
> +free_aux_regs(const struct drm_i915_aux_table *aux)
> +{
> +	while (aux) {
> +		struct drm_i915_aux_table *next = aux->next;
> +
> +		kfree(aux);
> +		aux = next;
> +	}
> +}
> +
> +static void apply_aux_regs_engine(struct intel_engine_cs *engine,
> +				  const struct drm_i915_aux_table *aux)
> +{
> +	u32 mmio_reg_offset;
> +
> +	while (aux) {
> +		if (aux->type == REG_ENGINE) {
> +			mmio_reg_offset = i915_mmio_reg_offset(aux->offset);
> +			intel_uncore_write_fw(engine->uncore,
> +					      _MMIO(engine->mmio_base +
> +					      mmio_reg_offset),
> +					      aux->value);
> +		}
> +		aux = aux->next;
> +	}
> +}
> +
>  static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
>  				      struct drm_i915_mocs_table *table)
>  {
> @@ -347,10 +443,12 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
>  		table->size = ARRAY_SIZE(dg1_mocs_table);
>  		table->table = dg1_mocs_table;
>  		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
> +		table->uc_index = 1;
>  	} else if (GRAPHICS_VER(i915) >= 12) {
>  		table->size  = ARRAY_SIZE(tgl_mocs_table);
>  		table->table = tgl_mocs_table;
>  		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
> +		table->uc_index = 3;
>  	} else if (GRAPHICS_VER(i915) == 11) {
>  		table->size  = ARRAY_SIZE(icl_mocs_table);
>  		table->table = icl_mocs_table;
> @@ -395,6 +493,87 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
>  	return flags;
>  }
>  
> +int get_ctx_reg_count(const struct drm_i915_aux_table *aux)

Should this be static?

If we keep the aux table around during runtime, we could probably just
tally up the count as registers are getting added during init, so that
we don't need to re-walk the list to count them later.

> +{
> +	int count = 0;
> +
> +	while (aux) {
> +		if (aux->type == REG_ENGINE_CONTEXT)
> +			count++;
> +		aux = aux->next;
> +	}
> +	return count;
> +}
> +
> +void add_aux_mocs_guc_mmio_regset(struct temp_regset *regset,
> +				  struct intel_engine_cs *engine)

If we're making this framework general, we should probably remove 'mocs'
from the name since it will eventually have other non-mocs registers
included too once we start using it for other things.


> +{
> +	const struct drm_i915_aux_table *aux;
> +	struct drm_i915_mocs_table table;
> +	int ret;
> +
> +	ret = get_mocs_settings(engine->i915, &table);
> +	if (!ret)
> +		return;
> +
> +	aux = build_aux_regs(engine, &table);
> +	if (!aux)
> +		return;
> +
> +	while (aux) {
> +		if (aux->type == REG_ENGINE)
> +			GUC_MMIO_REG_ADD(regset,
> +					 _MMIO(engine->mmio_base
> +					 + i915_mmio_reg_offset(aux->offset)),
> +					 true);
> +		aux = aux->next;
> +	}
> +	free_aux_regs(aux);
> +}
> +
> +int apply_mocs_aux_regs_ctx(struct i915_request *rq)
> +{
> +	const struct drm_i915_aux_table *aux;
> +	struct drm_i915_mocs_table table;
> +	u32 *cs;
> +	int ret, count;
> +
> +	ret = get_mocs_settings(rq->engine->i915, &table);
> +	if (!ret)
> +		return 0;
> +
> +	aux = build_aux_regs(rq->engine, &table);
> +
> +	count = get_ctx_reg_count(aux);
> +	if (!count)
> +		return 0;

With the current init/build/free design, aren't you leaking the table
here?  There might be zero context registers, but there still could have
been some non-context registers on the list we got back.

> +	ret = rq->engine->emit_flush(rq, EMIT_BARRIER);
> +	if (ret)
> +		return ret;
> +
> +	cs = intel_ring_begin(rq, (count * 2 + 2));
> +	if (IS_ERR(cs))
> +		return PTR_ERR(cs);
> +
> +	*cs++ = MI_LOAD_REGISTER_IMM(count);
> +	while (aux) {
> +		if (aux->type == REG_ENGINE_CONTEXT) {
> +			*cs++ = i915_mmio_reg_offset(aux->offset);
> +			*cs++ = aux->value;
> +		}
> +		aux = aux->next;
> +	}
> +	*cs++ = MI_NOOP;
> +
> +	intel_ring_advance(rq, cs);
> +	free_aux_regs(aux);
> +	ret = rq->engine->emit_flush(rq, EMIT_BARRIER);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
>  /*
>   * Get control_value from MOCS entry taking into account when it's not used:
>   * I915_MOCS_PTE's value is returned in this case.
> @@ -484,6 +663,7 @@ static void init_l3cc_table(struct intel_engine_cs *engine,
>  
>  void intel_mocs_init_engine(struct intel_engine_cs *engine)
>  {
> +	const struct drm_i915_aux_table *aux;
>  	struct drm_i915_mocs_table table;
>  	unsigned int flags;
>  
> @@ -500,6 +680,10 @@ void intel_mocs_init_engine(struct intel_engine_cs *engine)
>  
>  	if (flags & HAS_RENDER_L3CC && engine->class == RENDER_CLASS)
>  		init_l3cc_table(engine, &table);
> +
> +	aux = build_aux_regs(engine, &table);
> +	apply_aux_regs_engine(engine, aux);
> +	free_aux_regs(aux);
>  }
>  
>  static u32 global_mocs_offset(void)
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.h b/drivers/gpu/drm/i915/gt/intel_mocs.h
> index d83274f5163bd..0f362a0acc3a3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.h
> @@ -33,8 +33,13 @@
>  
>  struct intel_engine_cs;
>  struct intel_gt;
> +struct i915_request;
> +struct temp_regset;
>  
>  void intel_mocs_init(struct intel_gt *gt);
>  void intel_mocs_init_engine(struct intel_engine_cs *engine);
> +int apply_mocs_aux_regs_ctx(struct i915_request *rq);
> +void add_aux_mocs_guc_mmio_regset(struct temp_regset *regset,
> +				  struct intel_engine_cs *engine);
>  
>  #endif
> diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> index 13d25bf2a94aa..2b0207dfbf21c 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c

If we still want to have selftests that operate on specific subsets of
the aux table after we make it more generic, we could potentially add a
'aux source' field to 'struct drm_i915_aux_table' that represents what
part of the code added the register (MOCS, uapi compat, etc.).  Then we
can easily ignore the registers on the table that aren't relevant to the
specific selftest.

> @@ -155,6 +155,47 @@ static int read_l3cc_table(struct i915_request *rq,
>  	return read_regs(rq, addr, (table->n_entries + 1) / 2, offset);
>  }
>  
> +static int read_aux_regs(struct i915_request *rq,
> +			 const struct drm_i915_aux_table *r,
> +			 u32 *offset)
> +{
> +	int err;
> +
> +	while (r) {
> +		err = read_regs(rq,
> +				rq->engine->mmio_base + i915_mmio_reg_offset(r->offset), 1,
> +				offset);
> +		if (err)
> +			return err;
> +
> +		r = r->next;
> +	}
> +
> +	return 0;
> +}
> +
> +static int check_aux_regs(struct intel_engine_cs *engine,
> +			  const struct drm_i915_aux_table *r,
> +			  u32 **vaddr)

One other concern (which is part of why I didn't really want to see this
framework handled separately from workarounds) is that the aux table
might tell us to program a register with a specific value, but we may
also have a hardware workaround for a platform/stepping that overrides
that with an alternate value.  Our workaround framework is smart enough
to combine multiple entries for the same register into a single
operation (if the set of bits being updated are different), or will warn
if there's two conflicting sets of programming requested for certain
bits.  Right now it's not clear who wins if the aux table wants to
program a register to value 'X' but the workaround lists want to program
the same register to value 'Y.'  In theory the workaround should
overrule the regular programming, but at the moment these selftests
aren't checking to see if that's the case.  We may not have any such
conflicts today (especially since we have so few registers that are
going to be on the aux table initially), but it may come up eventually.


Matt

> +{
> +	while (r) {
> +		u32 expect = r->value & r->readmask;
> +		u32 masked_value = **vaddr & r->readmask;
> +
> +		if (masked_value != expect) {
> +			pr_err("%s: Invalid entry %s[%x]=0x%x, relevant bits were 0x%x vs expected 0x%x\n",
> +			       engine->name, r->name,
> +			       i915_mmio_reg_offset(r->offset), **vaddr,
> +			       masked_value, expect);
> +			return -EINVAL;
> +		}
> +		++*vaddr;
> +		r = r->next;
> +	}
> +
> +	return 0;
> +}
> +
>  static int check_mocs_table(struct intel_engine_cs *engine,
>  			    const struct drm_i915_mocs_table *table,
>  			    u32 **vaddr)
> @@ -216,6 +257,7 @@ static int check_mocs_engine(struct live_mocs *arg,
>  			     struct intel_context *ce)
>  {
>  	struct i915_vma *vma = arg->scratch;
> +	const struct drm_i915_aux_table *aux;
>  	struct i915_request *rq;
>  	u32 offset;
>  	u32 *vaddr;
> @@ -223,6 +265,8 @@ static int check_mocs_engine(struct live_mocs *arg,
>  
>  	memset32(arg->vaddr, STACK_MAGIC, PAGE_SIZE / sizeof(u32));
>  
> +	aux = build_aux_regs(ce->engine, &arg->table);
> +
>  	rq = intel_context_create_request(ce);
>  	if (IS_ERR(rq))
>  		return PTR_ERR(rq);
> @@ -239,6 +283,8 @@ static int check_mocs_engine(struct live_mocs *arg,
>  		err = read_mocs_table(rq, arg->mocs, &offset);
>  	if (!err && ce->engine->class == RENDER_CLASS)
>  		err = read_l3cc_table(rq, arg->l3cc, &offset);
> +	if (!err)
> +		err = read_aux_regs(rq, aux, &offset);
>  	offset -= i915_ggtt_offset(vma);
>  	GEM_BUG_ON(offset > PAGE_SIZE);
>  
> @@ -252,10 +298,13 @@ static int check_mocs_engine(struct live_mocs *arg,
>  		err = check_mocs_table(ce->engine, arg->mocs, &vaddr);
>  	if (!err && ce->engine->class == RENDER_CLASS)
>  		err = check_l3cc_table(ce->engine, arg->l3cc, &vaddr);
> +	if (!err)
> +		err = check_aux_regs(ce->engine, aux, &vaddr);
>  	if (err)
>  		return err;
>  
>  	GEM_BUG_ON(arg->vaddr + offset != vaddr);
> +	free_aux_regs(aux);
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> index 6926919bcac6b..be4cca49abced 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> @@ -12,6 +12,7 @@
>  #include "intel_guc_fwif.h"
>  #include "intel_uc.h"
>  #include "i915_drv.h"
> +#include "gt/intel_mocs.h"
>  
>  /*
>   * The Additional Data Struct (ADS) has pointers for different buffers used by
> @@ -187,11 +188,6 @@ static void guc_mapping_table_init(struct intel_gt *gt,
>   * inside the ADS.
>   */
>  #define MAX_MMIO_REGS	128	/* Arbitrary size, increase as needed */
> -struct temp_regset {
> -	struct guc_mmio_reg *registers;
> -	u32 used;
> -	u32 size;
> -};
>  
>  static int guc_mmio_reg_cmp(const void *a, const void *b)
>  {
> @@ -201,8 +197,8 @@ static int guc_mmio_reg_cmp(const void *a, const void *b)
>  	return (int)ra->offset - (int)rb->offset;
>  }
>  
> -static void guc_mmio_reg_add(struct temp_regset *regset,
> -			     u32 offset, u32 flags)
> +void guc_mmio_reg_add(struct temp_regset *regset,
> +		      u32 offset, u32 flags)
>  {
>  	u32 count = regset->used;
>  	struct guc_mmio_reg reg = {
> @@ -236,11 +232,6 @@ static void guc_mmio_reg_add(struct temp_regset *regset,
>  	}
>  }
>  
> -#define GUC_MMIO_REG_ADD(regset, reg, masked) \
> -	guc_mmio_reg_add(regset, \
> -			 i915_mmio_reg_offset((reg)), \
> -			 (masked) ? GUC_REGSET_MASKED : 0)
> -
>  static void guc_mmio_regset_init(struct temp_regset *regset,
>  				 struct intel_engine_cs *engine)
>  {
> @@ -258,6 +249,8 @@ static void guc_mmio_regset_init(struct temp_regset *regset,
>  	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
>  		GUC_MMIO_REG_ADD(regset, wa->reg, wa->masked_reg);
>  
> +	add_aux_mocs_guc_mmio_regset(regset, engine);
> +
>  	/* Be extra paranoid and include all whitelist registers. */
>  	for (i = 0; i < RING_MAX_NONPRIV_SLOTS; i++)
>  		GUC_MMIO_REG_ADD(regset,
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h
> index 3d85051d57e45..75736c56fa187 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h
> @@ -6,9 +6,24 @@
>  #ifndef _INTEL_GUC_ADS_H_
>  #define _INTEL_GUC_ADS_H_
>  
> +#include <linux/types.h>
> +
> +struct temp_regset {
> +	struct guc_mmio_reg *registers;
> +	u32 used;
> +	u32 size;
> +};
> +
>  struct intel_guc;
>  struct drm_printer;
>  
> +void guc_mmio_reg_add(struct temp_regset *regset,
> +		      u32 offset, u32 flags);
> +#define GUC_MMIO_REG_ADD(regset, reg, masked) \
> +	guc_mmio_reg_add(regset, \
> +			 i915_mmio_reg_offset((reg)), \
> +			 (masked) ? GUC_REGSET_MASKED : 0)
> +
>  int intel_guc_ads_create(struct intel_guc *guc);
>  void intel_guc_ads_destroy(struct intel_guc *guc);
>  void intel_guc_ads_init_late(struct intel_guc *guc);
> -- 
> 2.26.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
