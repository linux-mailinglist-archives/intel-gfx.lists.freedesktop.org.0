Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E30663EB1FE
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 09:53:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CFBC6E54C;
	Fri, 13 Aug 2021 07:53:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 041FA6E54C
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 07:53:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="213671105"
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="213671105"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 00:53:35 -0700
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="517944337"
Received: from cgearing-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.209.226])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 00:53:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Srinivasan Shanmugam <srinivasan.s@intel.com>,
 Ayaz A Siddiqui <ayaz.siddiqui@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <20210812064758.4102925-3-ayaz.siddiqui@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210812064758.4102925-1-ayaz.siddiqui@intel.com>
 <20210812064758.4102925-3-ayaz.siddiqui@intel.com>
Date: Fri, 13 Aug 2021 10:53:29 +0300
Message-ID: <87v949lr0m.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/gt: Use cmd_cctl override for
 platforms >= gen12
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

On Thu, 12 Aug 2021, Ayaz A Siddiqui <ayaz.siddiqui@intel.com> wrote:
> From: Srinivasan Shanmugam <srinivasan.s@intel.com>
>
> Program CMD_CCTL to use a mocs entry for uncached access.
> This controls memory accesses by CS as it reads instructions
> from the ring and batch buffers.
>
> Signed-off-by: Srinivasan Shanmugam <srinivasan.s@intel.com>
> Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_mocs.c    | 96 +++++++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/selftest_mocs.c | 49 +++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h         | 16 +++++
>  3 files changed, 161 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index c66e226e71499..dc3357bc228e1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -25,6 +25,15 @@ struct drm_i915_mocs_table {
>  	u8 uc_index;
>  };
>  
> +struct drm_i915_aux_table {
> +	const char *name;
> +	i915_reg_t offset;
> +	u32 value;
> +	u32 readmask;
> +	bool skip_check;
> +	struct drm_i915_aux_table *next;

Please do not roll your own list implementations. Use list.h.

BR,
Jani.

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
> +	                   "Platform that should have UC index defined and does not\n")) {
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
> index 13d25bf2a94aa..ecadc9686ac01 100644
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
> +		if (!r->skip_check && (masked_value != expect)) {
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

-- 
Jani Nikula, Intel Open Source Graphics Center
