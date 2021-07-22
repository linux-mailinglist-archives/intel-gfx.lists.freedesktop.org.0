Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 397A43D1D21
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 06:47:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21C166E50E;
	Thu, 22 Jul 2021 04:47:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E30C6E50E;
 Thu, 22 Jul 2021 04:47:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="211624936"
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="211624936"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 21:47:15 -0700
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="470402257"
Received: from dut151-iclu.fm.intel.com ([10.105.23.43])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 21:47:15 -0700
Date: Thu, 22 Jul 2021 04:47:14 +0000
From: Matthew Brost <matthew.brost@intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Message-ID: <20210722044714.GA19077@DUT151-ICLU.fm.intel.com>
References: <20210716201724.54804-1-matthew.brost@intel.com>
 <20210716201724.54804-34-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210716201724.54804-34-matthew.brost@intel.com>
Subject: Re: [Intel-gfx] [PATCH 33/51] drm/i915/guc: Provide mmio list to be
 saved/restored on engine reset
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 16, 2021 at 01:17:06PM -0700, Matthew Brost wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> =

> The driver must provide GuC with a list of mmio registers
> that should be saved/restored during a GuC-based engine reset.
> Unfortunately, the list must be dynamically allocated as its size is
> variable. That means the driver must generate the list twice - once to
> work out the size and a second time to actually save it.
> =

> v2:
>  (Alan / CI)
>   - GEN7_GT_MODE -> GEN6_GT_MODE to fix WA selftest failure
> =

> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> Signed-off-by: Fernando Pacheco <fernando.pacheco@intel.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>

Everything looks structurally correct. Feel confident on my below RB but
W/A are not my area of expertise. If any one else wanted to give it a
look, I wouldn't mind.

With that:
Reviewed-by: Matthew Brost <matthew.brost@intel.com>


> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   |  46 ++--
>  .../gpu/drm/i915/gt/intel_workarounds_types.h |   1 +
>  drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   1 +
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    | 199 +++++++++++++++++-
>  drivers/gpu/drm/i915/i915_reg.h               |   1 +
>  5 files changed, 222 insertions(+), 26 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.c
> index 72562c233ad2..34738ccab8bd 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -150,13 +150,14 @@ static void _wa_add(struct i915_wa_list *wal, const=
 struct i915_wa *wa)
>  }
>  =

>  static void wa_add(struct i915_wa_list *wal, i915_reg_t reg,
> -		   u32 clear, u32 set, u32 read_mask)
> +		   u32 clear, u32 set, u32 read_mask, bool masked_reg)
>  {
>  	struct i915_wa wa =3D {
>  		.reg  =3D reg,
>  		.clr  =3D clear,
>  		.set  =3D set,
>  		.read =3D read_mask,
> +		.masked_reg =3D masked_reg,
>  	};
>  =

>  	_wa_add(wal, &wa);
> @@ -165,7 +166,7 @@ static void wa_add(struct i915_wa_list *wal, i915_reg=
_t reg,
>  static void
>  wa_write_clr_set(struct i915_wa_list *wal, i915_reg_t reg, u32 clear, u3=
2 set)
>  {
> -	wa_add(wal, reg, clear, set, clear);
> +	wa_add(wal, reg, clear, set, clear, false);
>  }
>  =

>  static void
> @@ -200,20 +201,20 @@ wa_write_clr(struct i915_wa_list *wal, i915_reg_t r=
eg, u32 clr)
>  static void
>  wa_masked_en(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
>  {
> -	wa_add(wal, reg, 0, _MASKED_BIT_ENABLE(val), val);
> +	wa_add(wal, reg, 0, _MASKED_BIT_ENABLE(val), val, true);
>  }
>  =

>  static void
>  wa_masked_dis(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
>  {
> -	wa_add(wal, reg, 0, _MASKED_BIT_DISABLE(val), val);
> +	wa_add(wal, reg, 0, _MASKED_BIT_DISABLE(val), val, true);
>  }
>  =

>  static void
>  wa_masked_field_set(struct i915_wa_list *wal, i915_reg_t reg,
>  		    u32 mask, u32 val)
>  {
> -	wa_add(wal, reg, 0, _MASKED_FIELD(mask, val), mask);
> +	wa_add(wal, reg, 0, _MASKED_FIELD(mask, val), mask, true);
>  }
>  =

>  static void gen6_ctx_workarounds_init(struct intel_engine_cs *engine,
> @@ -583,10 +584,10 @@ static void icl_ctx_workarounds_init(struct intel_e=
ngine_cs *engine,
>  			     GEN11_BLEND_EMB_FIX_DISABLE_IN_RCC);
>  =

>  	/* WaEnableFloatBlendOptimization:icl */
> -	wa_write_clr_set(wal,
> -			 GEN10_CACHE_MODE_SS,
> -			 0, /* write-only, so skip validation */
> -			 _MASKED_BIT_ENABLE(FLOAT_BLEND_OPTIMIZATION_ENABLE));
> +	wa_add(wal, GEN10_CACHE_MODE_SS, 0,
> +	       _MASKED_BIT_ENABLE(FLOAT_BLEND_OPTIMIZATION_ENABLE),
> +	       0 /* write-only, so skip validation */,
> +	       true);
>  =

>  	/* WaDisableGPGPUMidThreadPreemption:icl */
>  	wa_masked_field_set(wal, GEN8_CS_CHICKEN1,
> @@ -631,7 +632,7 @@ static void gen12_ctx_gt_tuning_init(struct intel_eng=
ine_cs *engine,
>  	       FF_MODE2,
>  	       FF_MODE2_TDS_TIMER_MASK,
>  	       FF_MODE2_TDS_TIMER_128,
> -	       0);
> +	       0, false);
>  }
>  =

>  static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
> @@ -669,7 +670,7 @@ static void gen12_ctx_workarounds_init(struct intel_e=
ngine_cs *engine,
>  	       FF_MODE2,
>  	       FF_MODE2_GS_TIMER_MASK,
>  	       FF_MODE2_GS_TIMER_224,
> -	       0);
> +	       0, false);
>  =

>  	/*
>  	 * Wa_14012131227:dg1
> @@ -847,7 +848,7 @@ hsw_gt_workarounds_init(struct drm_i915_private *i915=
, struct i915_wa_list *wal)
>  	wa_add(wal,
>  	       HSW_ROW_CHICKEN3, 0,
>  	       _MASKED_BIT_ENABLE(HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE),
> -		0 /* XXX does this reg exist? */);
> +	       0 /* XXX does this reg exist? */, true);
>  =

>  	/* WaVSRefCountFullforceMissDisable:hsw */
>  	wa_write_clr(wal, GEN7_FF_THREAD_MODE, GEN7_FF_VS_REF_CNT_FFME);
> @@ -1937,10 +1938,10 @@ rcs_engine_wa_init(struct intel_engine_cs *engine=
, struct i915_wa_list *wal)
>  		 * disable bit, which we don't touch here, but it's good
>  		 * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
>  		 */
> -		wa_add(wal, GEN7_GT_MODE, 0,
> -		       _MASKED_FIELD(GEN6_WIZ_HASHING_MASK,
> -				     GEN6_WIZ_HASHING_16x4),
> -		       GEN6_WIZ_HASHING_16x4);
> +		wa_masked_field_set(wal,
> +				    GEN7_GT_MODE,
> +				    GEN6_WIZ_HASHING_MASK,
> +				    GEN6_WIZ_HASHING_16x4);
>  	}
>  =

>  	if (IS_GRAPHICS_VER(i915, 6, 7))
> @@ -1990,10 +1991,10 @@ rcs_engine_wa_init(struct intel_engine_cs *engine=
, struct i915_wa_list *wal)
>  		 * disable bit, which we don't touch here, but it's good
>  		 * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
>  		 */
> -		wa_add(wal,
> -		       GEN6_GT_MODE, 0,
> -		       _MASKED_FIELD(GEN6_WIZ_HASHING_MASK, GEN6_WIZ_HASHING_16x4),
> -		       GEN6_WIZ_HASHING_16x4);
> +		wa_masked_field_set(wal,
> +				    GEN6_GT_MODE,
> +				    GEN6_WIZ_HASHING_MASK,
> +				    GEN6_WIZ_HASHING_16x4);
>  =

>  		/* WaDisable_RenderCache_OperationalFlush:snb */
>  		wa_masked_dis(wal, CACHE_MODE_0, RC_OP_FLUSH_ENABLE);
> @@ -2014,7 +2015,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, =
struct i915_wa_list *wal)
>  		wa_add(wal, MI_MODE,
>  		       0, _MASKED_BIT_ENABLE(VS_TIMER_DISPATCH),
>  		       /* XXX bit doesn't stick on Broadwater */
> -		       IS_I965G(i915) ? 0 : VS_TIMER_DISPATCH);
> +		       IS_I965G(i915) ? 0 : VS_TIMER_DISPATCH, true);
>  =

>  	if (GRAPHICS_VER(i915) =3D=3D 4)
>  		/*
> @@ -2029,7 +2030,8 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, =
struct i915_wa_list *wal)
>  		 */
>  		wa_add(wal, ECOSKPD,
>  		       0, _MASKED_BIT_ENABLE(ECO_CONSTANT_BUFFER_SR_DISABLE),
> -		       0 /* XXX bit doesn't stick on Broadwater */);
> +		       0 /* XXX bit doesn't stick on Broadwater */,
> +		       true);
>  }
>  =

>  static void
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds_types.h b/drivers/=
gpu/drm/i915/gt/intel_workarounds_types.h
> index c214111ea367..1e873681795d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds_types.h
> @@ -15,6 +15,7 @@ struct i915_wa {
>  	u32		clr;
>  	u32		set;
>  	u32		read;
> +	bool		masked_reg;
>  };
>  =

>  struct i915_wa_list {
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i91=
5/gt/uc/intel_guc.h
> index 7f14e1873010..3897abb59dba 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -59,6 +59,7 @@ struct intel_guc {
>  =

>  	struct i915_vma *ads_vma;
>  	struct __guc_ads_blob *ads_blob;
> +	u32 ads_regset_size;
>  =

>  	struct i915_vma *lrc_desc_pool;
>  	void *lrc_desc_pool_vaddr;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm=
/i915/gt/uc/intel_guc_ads.c
> index b82145652d57..9fd3c911f5fb 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> @@ -3,6 +3,8 @@
>   * Copyright =A9 2014-2019 Intel Corporation
>   */
>  =

> +#include <linux/bsearch.h>
> +
>  #include "gt/intel_gt.h"
>  #include "gt/intel_lrc.h"
>  #include "intel_guc_ads.h"
> @@ -23,7 +25,12 @@
>   *      | guc_policies                          |
>   *      +---------------------------------------+
>   *      | guc_gt_system_info                    |
> - *      +---------------------------------------+
> + *      +---------------------------------------+ <=3D=3D static
> + *      | guc_mmio_reg[countA] (engine 0.0)     |
> + *      | guc_mmio_reg[countB] (engine 0.1)     |
> + *      | guc_mmio_reg[countC] (engine 1.0)     |
> + *      |   ...                                 |
> + *      +---------------------------------------+ <=3D=3D dynamic
>   *      | padding                               |
>   *      +---------------------------------------+ <=3D=3D 4K aligned
>   *      | private data                          |
> @@ -35,16 +42,33 @@ struct __guc_ads_blob {
>  	struct guc_ads ads;
>  	struct guc_policies policies;
>  	struct guc_gt_system_info system_info;
> +	/* From here on, location is dynamic! Refer to above diagram. */
> +	struct guc_mmio_reg regset[0];
>  } __packed;
>  =

> +static u32 guc_ads_regset_size(struct intel_guc *guc)
> +{
> +	GEM_BUG_ON(!guc->ads_regset_size);
> +	return guc->ads_regset_size;
> +}
> +
>  static u32 guc_ads_private_data_size(struct intel_guc *guc)
>  {
>  	return PAGE_ALIGN(guc->fw.private_data_size);
>  }
>  =

> +static u32 guc_ads_regset_offset(struct intel_guc *guc)
> +{
> +	return offsetof(struct __guc_ads_blob, regset);
> +}
> +
>  static u32 guc_ads_private_data_offset(struct intel_guc *guc)
>  {
> -	return PAGE_ALIGN(sizeof(struct __guc_ads_blob));
> +	u32 offset;
> +
> +	offset =3D guc_ads_regset_offset(guc) +
> +		 guc_ads_regset_size(guc);
> +	return PAGE_ALIGN(offset);
>  }
>  =

>  static u32 guc_ads_blob_size(struct intel_guc *guc)
> @@ -83,6 +107,165 @@ static void guc_mapping_table_init(struct intel_gt *=
gt,
>  	}
>  }
>  =

> +/*
> + * The save/restore register list must be pre-calculated to a temporary
> + * buffer of driver defined size before it can be generated in place
> + * inside the ADS.
> + */
> +#define MAX_MMIO_REGS	128	/* Arbitrary size, increase as needed */
> +struct temp_regset {
> +	struct guc_mmio_reg *registers;
> +	u32 used;
> +	u32 size;
> +};
> +
> +static int guc_mmio_reg_cmp(const void *a, const void *b)
> +{
> +	const struct guc_mmio_reg *ra =3D a;
> +	const struct guc_mmio_reg *rb =3D b;
> +
> +	return (int)ra->offset - (int)rb->offset;
> +}
> +
> +static void guc_mmio_reg_add(struct temp_regset *regset,
> +			     u32 offset, u32 flags)
> +{
> +	u32 count =3D regset->used;
> +	struct guc_mmio_reg reg =3D {
> +		.offset =3D offset,
> +		.flags =3D flags,
> +	};
> +	struct guc_mmio_reg *slot;
> +
> +	GEM_BUG_ON(count >=3D regset->size);
> +
> +	/*
> +	 * The mmio list is built using separate lists within the driver.
> +	 * It's possible that at some point we may attempt to add the same
> +	 * register more than once. Do not consider this an error; silently
> +	 * move on if the register is already in the list.
> +	 */
> +	if (bsearch(&reg, regset->registers, count,
> +		    sizeof(reg), guc_mmio_reg_cmp))
> +		return;
> +
> +	slot =3D &regset->registers[count];
> +	regset->used++;
> +	*slot =3D reg;
> +
> +	while (slot-- > regset->registers) {
> +		GEM_BUG_ON(slot[0].offset =3D=3D slot[1].offset);
> +		if (slot[1].offset > slot[0].offset)
> +			break;
> +
> +		swap(slot[1], slot[0]);
> +	}
> +}
> +
> +#define GUC_MMIO_REG_ADD(regset, reg, masked) \
> +	guc_mmio_reg_add(regset, \
> +			 i915_mmio_reg_offset((reg)), \
> +			 (masked) ? GUC_REGSET_MASKED : 0)
> +
> +static void guc_mmio_regset_init(struct temp_regset *regset,
> +				 struct intel_engine_cs *engine)
> +{
> +	const u32 base =3D engine->mmio_base;
> +	struct i915_wa_list *wal =3D &engine->wa_list;
> +	struct i915_wa *wa;
> +	unsigned int i;
> +
> +	regset->used =3D 0;
> +
> +	GUC_MMIO_REG_ADD(regset, RING_MODE_GEN7(base), true);
> +	GUC_MMIO_REG_ADD(regset, RING_HWS_PGA(base), false);
> +	GUC_MMIO_REG_ADD(regset, RING_IMR(base), false);
> +
> +	for (i =3D 0, wa =3D wal->list; i < wal->count; i++, wa++)
> +		GUC_MMIO_REG_ADD(regset, wa->reg, wa->masked_reg);
> +
> +	/* Be extra paranoid and include all whitelist registers. */
> +	for (i =3D 0; i < RING_MAX_NONPRIV_SLOTS; i++)
> +		GUC_MMIO_REG_ADD(regset,
> +				 RING_FORCE_TO_NONPRIV(base, i),
> +				 false);
> +
> +	/* add in local MOCS registers */
> +	for (i =3D 0; i < GEN9_LNCFCMOCS_REG_COUNT; i++)
> +		GUC_MMIO_REG_ADD(regset, GEN9_LNCFCMOCS(i), false);
> +}
> +
> +static int guc_mmio_reg_state_query(struct intel_guc *guc)
> +{
> +	struct intel_gt *gt =3D guc_to_gt(guc);
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
> +	struct temp_regset temp_set;
> +	u32 total;
> +
> +	/*
> +	 * Need to actually build the list in order to filter out
> +	 * duplicates and other such data dependent constructions.
> +	 */
> +	temp_set.size =3D MAX_MMIO_REGS;
> +	temp_set.registers =3D kmalloc_array(temp_set.size,
> +					  sizeof(*temp_set.registers),
> +					  GFP_KERNEL);
> +	if (!temp_set.registers)
> +		return -ENOMEM;
> +
> +	total =3D 0;
> +	for_each_engine(engine, gt, id) {
> +		guc_mmio_regset_init(&temp_set, engine);
> +		total +=3D temp_set.used;
> +	}
> +
> +	kfree(temp_set.registers);
> +
> +	return total * sizeof(struct guc_mmio_reg);
> +}
> +
> +static void guc_mmio_reg_state_init(struct intel_guc *guc,
> +				    struct __guc_ads_blob *blob)
> +{
> +	struct intel_gt *gt =3D guc_to_gt(guc);
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
> +	struct temp_regset temp_set;
> +	struct guc_mmio_reg_set *ads_reg_set;
> +	u32 addr_ggtt, offset;
> +	u8 guc_class;
> +
> +	offset =3D guc_ads_regset_offset(guc);
> +	addr_ggtt =3D intel_guc_ggtt_offset(guc, guc->ads_vma) + offset;
> +	temp_set.registers =3D (struct guc_mmio_reg *) (((u8 *) blob) + offset);
> +	temp_set.size =3D guc->ads_regset_size / sizeof(temp_set.registers[0]);
> +
> +	for_each_engine(engine, gt, id) {
> +		/* Class index is checked in class converter */
> +		GEM_BUG_ON(engine->instance >=3D GUC_MAX_INSTANCES_PER_CLASS);
> +
> +		guc_class =3D engine_class_to_guc_class(engine->class);
> +		ads_reg_set =3D &blob->ads.reg_state_list[guc_class][engine->instance];
> +
> +		guc_mmio_regset_init(&temp_set, engine);
> +		if (!temp_set.used) {
> +			ads_reg_set->address =3D 0;
> +			ads_reg_set->count =3D 0;
> +			continue;
> +		}
> +
> +		ads_reg_set->address =3D addr_ggtt;
> +		ads_reg_set->count =3D temp_set.used;
> +
> +		temp_set.size -=3D temp_set.used;
> +		temp_set.registers +=3D temp_set.used;
> +		addr_ggtt +=3D temp_set.used * sizeof(struct guc_mmio_reg);
> +	}
> +
> +	GEM_BUG_ON(temp_set.size);
> +}
> +
>  /*
>   * The first 80 dwords of the register state context, containing the
>   * execlists and ppgtt registers.
> @@ -121,8 +304,7 @@ static void __guc_ads_init(struct intel_guc *guc)
>  		 */
>  		blob->ads.golden_context_lrca[guc_class] =3D 0;
>  		blob->ads.eng_state_size[guc_class] =3D
> -			intel_engine_context_size(guc_to_gt(guc),
> -						  engine_class) -
> +			intel_engine_context_size(gt, engine_class) -
>  			skipped_size;
>  	}
>  =

> @@ -153,6 +335,9 @@ static void __guc_ads_init(struct intel_guc *guc)
>  	blob->ads.scheduler_policies =3D base + ptr_offset(blob, policies);
>  	blob->ads.gt_system_info =3D base + ptr_offset(blob, system_info);
>  =

> +	/* MMIO save/restore list */
> +	guc_mmio_reg_state_init(guc, blob);
> +
>  	/* Private Data */
>  	blob->ads.private_data =3D base + guc_ads_private_data_offset(guc);
>  =

> @@ -173,6 +358,12 @@ int intel_guc_ads_create(struct intel_guc *guc)
>  =

>  	GEM_BUG_ON(guc->ads_vma);
>  =

> +	/* Need to calculate the reg state size dynamically: */
> +	ret =3D guc_mmio_reg_state_query(guc);
> +	if (ret < 0)
> +		return ret;
> +	guc->ads_regset_size =3D ret;
> +
>  	size =3D guc_ads_blob_size(guc);
>  =

>  	ret =3D intel_guc_allocate_and_map_vma(guc, size, &guc->ads_vma,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 204c95c39353..3584e4d03dc3 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -12309,6 +12309,7 @@ enum skl_power_gate {
>  =

>  /* MOCS (Memory Object Control State) registers */
>  #define GEN9_LNCFCMOCS(i)	_MMIO(0xb020 + (i) * 4)	/* L3 Cache Control */
> +#define GEN9_LNCFCMOCS_REG_COUNT	32
>  =

>  #define __GEN9_RCS0_MOCS0	0xc800
>  #define GEN9_GFX_MOCS(i)	_MMIO(__GEN9_RCS0_MOCS0 + (i) * 4)
> -- =

> 2.28.0
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
