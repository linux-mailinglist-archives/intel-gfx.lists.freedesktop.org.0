Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E80D3EDF5C
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 23:35:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C655A89E57;
	Mon, 16 Aug 2021 21:35:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D6EF89E57
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Aug 2021 21:35:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="212829107"
X-IronPort-AV: E=Sophos;i="5.84,327,1620716400"; d="scan'208";a="212829107"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 14:35:54 -0700
X-IronPort-AV: E=Sophos;i="5.84,327,1620716400"; d="scan'208";a="470936497"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 14:35:53 -0700
Date: Mon, 16 Aug 2021 14:35:52 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Srinivasan Shanmugam <srinivasan.s@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>
Message-ID: <20210816213552.GL1556418@mdroper-desk1.amr.corp.intel.com>
References: <20210816045229.423234-1-ayaz.siddiqui@intel.com>
 <20210816045229.423234-3-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210816045229.423234-3-ayaz.siddiqui@intel.com>
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

On Mon, Aug 16, 2021 at 10:22:26AM +0530, Ayaz A Siddiqui wrote:
> From: Srinivasan Shanmugam <srinivasan.s@intel.com>
> 
> Program CMD_CCTL to use a mocs entry for uncached access.
> This controls memory accesses by CS as it reads instructions
> from the ring and batch buffers.
> 
> v2: Added CMD_CCTL in guc_mmio_regset_init(), so that this
> register can restored after engine reset.
> 
> Signed-off-by: Srinivasan Shanmugam <srinivasan.s@intel.com>
> Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_mocs.c       | 96 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/selftest_mocs.c    | 49 +++++++++++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c |  1 +
>  drivers/gpu/drm/i915/i915_reg.h            | 16 ++++
>  4 files changed, 162 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index 10cc508c1a4f6..92141cf6f9a79 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -25,6 +25,15 @@ struct drm_i915_mocs_table {
>  	u8 uc_index;
>  };
>  
> +struct drm_i915_aux_table {

It's not clear to me exactly what the term "aux table" refers to here.
I guess it's just extra context registers (that aren't associated with a
workaround) that we want to initialize before the point where the
default context gets recorded?  Maybe calling it something like
"ctx_init_table" would make it more clear what these are for?

However a possibly simpler approach would just be to add these registers
directly to the ctx workaround list with a comment noting that they're
"fake" workarounds and describing what they're for (we already have
other similar context programming for disabling fine-grained preemption,
disabling nested batchbuffer mode, etc.  The benefit of just tossing
these on the workaround list is that the settings get automatically
verified by the workaround checking that we already have without needing
to code up new table management, register readback, value verification,
etc.

> +	const char *name;
> +	i915_reg_t offset;
> +	u32 value;
> +	u32 readmask;
> +	bool skip_check;
> +	struct drm_i915_aux_table *next;
> +};
> +
>  /* Defines for the tables (XXX_MOCS_0 - XXX_MOCS_63) */
>  #define _LE_CACHEABILITY(value)	((value) << 0)
>  #define _LE_TGT_CACHE(value)	((value) << 2)
> @@ -336,6 +345,86 @@ static bool has_mocs(const struct drm_i915_private *i915)
>  	return !IS_DGFX(i915);
>  }
>  
> +static struct drm_i915_aux_table *
> +add_aux_reg(struct drm_i915_aux_table *aux,
> +	    const char *name,
> +	    i915_reg_t offset,
> +	    u32 value,
> +	    u32 read,
> +	    bool skip_check)
> +
> +{
> +	struct drm_i915_aux_table *x;
> +
> +	x = kmalloc(sizeof(*x), GFP_ATOMIC);
> +	if (!x) {
> +		DRM_ERROR("Failed to allocate aux reg '%s'\n", name);

Generic DRM_ERROR() and such are deprecated now; we want to use the
per-device functions like drm_err() now.


Matt

> +		return aux;
> +	}
> +
> +	x->name = name;
> +	x->offset = offset;
> +	x->value = value;
> +	x->readmask = read;
> +	x->skip_check = skip_check;
> +
> +	x->next = aux;
> +	return x;
> +}
> +
> +static struct drm_i915_aux_table *
> +add_cmd_cctl_override(struct drm_i915_aux_table *aux, u8 idx)
> +{
> +	return add_aux_reg(aux,
> +			   "CMD_CCTL",
> +			   RING_CMD_CCTL(0),
> +			   CMD_CCTL_MOCS_OVERRIDE(idx, idx),
> +			   CMD_CCTL_WRITE_OVERRIDE_MASK | CMD_CCTL_READ_OVERRIDE_MASK,
> +			   false);
> +}
> +
> +static const struct drm_i915_aux_table *
> +build_aux_regs(const struct intel_engine_cs *engine,
> +	       const struct drm_i915_mocs_table *mocs)
> +{
> +	struct drm_i915_aux_table *aux = NULL;
> +
> +	if (GRAPHICS_VER(engine->i915) >= 12 &&
> +	    !drm_WARN_ONCE(&engine->i915->drm, !mocs->uc_index,
> +	    "Platform that should have UC index defined and does not\n")) {
> +		/*
> +		 * Index-0 does not operate as an uncached value as believed,
> +		 * but causes invalid write cycles. Steer CMD_CCTL to another
> +		 * uncached index.
> +		 */
> +		aux = add_cmd_cctl_override(aux, mocs->uc_index);
> +	}
> +
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
> +static void apply_aux_regs(struct intel_engine_cs *engine,
> +			   const struct drm_i915_aux_table *aux)
> +{
> +	while (aux) {
> +		intel_uncore_write_fw(engine->uncore,
> +				      _MMIO(engine->mmio_base + i915_mmio_reg_offset(aux->offset)),
> +				      aux->value);
> +		aux = aux->next;
> +	}
> +}
> +
>  static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
>  				      struct drm_i915_mocs_table *table)
>  {
> @@ -347,10 +436,12 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
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
> @@ -484,6 +575,7 @@ static void init_l3cc_table(struct intel_engine_cs *engine,
>  
>  void intel_mocs_init_engine(struct intel_engine_cs *engine)
>  {
> +	const struct drm_i915_aux_table *aux;
>  	struct drm_i915_mocs_table table;
>  	unsigned int flags;
>  
> @@ -500,6 +592,10 @@ void intel_mocs_init_engine(struct intel_engine_cs *engine)
>  
>  	if (flags & HAS_RENDER_L3CC && engine->class == RENDER_CLASS)
>  		init_l3cc_table(engine, &table);
> +
> +	aux = build_aux_regs(engine, &table);
> +	apply_aux_regs(engine, aux);
> +	free_aux_regs(aux);
>  }
>  
>  static u32 global_mocs_offset(void)
> diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> index 13d25bf2a94aa..21fa0a1be28bd 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
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
> +{
> +	while (r) {
> +		u32 expect = r->value & r->readmask;
> +		u32 masked_value = **vaddr & r->readmask;
> +
> +		if (!r->skip_check && masked_value != expect) {
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
> index 6926919bcac6b..99166c82912ca 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> @@ -254,6 +254,7 @@ static void guc_mmio_regset_init(struct temp_regset *regset,
>  	GUC_MMIO_REG_ADD(regset, RING_MODE_GEN7(base), true);
>  	GUC_MMIO_REG_ADD(regset, RING_HWS_PGA(base), false);
>  	GUC_MMIO_REG_ADD(regset, RING_IMR(base), false);
> +	GUC_MMIO_REG_ADD(regset, RING_CMD_CCTL(base), true);
>  
>  	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
>  		GUC_MMIO_REG_ADD(regset, wa->reg, wa->masked_reg);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 664970f2bc62a..c8e2ca1b20796 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2551,6 +2551,22 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  #define RING_HWS_PGA(base)	_MMIO((base) + 0x80)
>  #define RING_ID(base)		_MMIO((base) + 0x8c)
>  #define RING_HWS_PGA_GEN6(base)	_MMIO((base) + 0x2080)
> +
> +#define RING_CMD_CCTL(base)	_MMIO((base) + 0xc4)
> +/*
> + * CMD_CCTL read/write fields take a MOCS value and _not_ a table index.
> + * The lsb of each can be considered a separate enabling bit for encryption.
> + * 6:0 == default MOCS value for reads  =>  6:1 == table index for reads.
> + * 13:7 == default MOCS value for writes => 13:8 == table index for writes.
> + * 15:14 == Reserved => 31:30 are set to 0.
> + */
> +#define CMD_CCTL_WRITE_OVERRIDE_MASK REG_GENMASK(13, 7)
> +#define CMD_CCTL_READ_OVERRIDE_MASK REG_GENMASK(6, 0)
> +#define CMD_CCTL_MOCS_OVERRIDE(write, read)					\
> +	_MASKED_FIELD(CMD_CCTL_WRITE_OVERRIDE_MASK | CMD_CCTL_READ_OVERRIDE_MASK, \
> +		      REG_FIELD_PREP(CMD_CCTL_WRITE_OVERRIDE_MASK, (write) << 1) | \
> +		      REG_FIELD_PREP(CMD_CCTL_READ_OVERRIDE_MASK, (read) << 1))
> +
>  #define RING_RESET_CTL(base)	_MMIO((base) + 0xd0)
>  #define   RESET_CTL_CAT_ERROR	   REG_BIT(2)
>  #define   RESET_CTL_READY_TO_RESET REG_BIT(1)
> -- 
> 2.26.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
