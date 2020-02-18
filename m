Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA64162E76
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 19:26:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5FBD6E391;
	Tue, 18 Feb 2020 18:26:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEB8B6E391
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 18:26:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 10:26:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,456,1574150400"; d="scan'208";a="253809583"
Received: from brianliu-mobl1.amr.corp.intel.com (HELO [10.252.205.69])
 ([10.252.205.69])
 by orsmga002.jf.intel.com with ESMTP; 18 Feb 2020 10:26:40 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200218162150.1300405-1-chris@chris-wilson.co.uk>
 <20200218162150.1300405-10-chris@chris-wilson.co.uk>
From: Brian Welty <brian.welty@intel.com>
Message-ID: <65a3f403-383b-9e07-e6d2-c32ac1874dc8@intel.com>
Date: Tue, 18 Feb 2020 10:26:40 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20200218162150.1300405-10-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 10/12] drm/i915/gt: Refactor l3cc/mocs
 availability
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 2/18/2020 8:21 AM, Chris Wilson wrote:
> On dgfx, we only use l3cc and not mocs, but we share the table of
> register definitions with Tigerlake (which includes the mocs). This
> confuses our selftest that verifies that the registers do contain the
> values in our tables after various events (idling, reset, activity etc).
> 
> When constructing the table of register definitions, also include the
> flags for which registers are valid so that information is computed
> centrally and available to all callers.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Brian Welty <brian.welty@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_mocs.c    | 72 +++++++++++++++++--------
>  drivers/gpu/drm/i915/gt/selftest_mocs.c | 24 ++++++---
>  2 files changed, 67 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index 0afc1eb3c20f..632e08a4592b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -280,9 +280,32 @@ static const struct drm_i915_mocs_entry icl_mocs_table[] = {
>  	GEN11_MOCS_ENTRIES
>  };
>  
> -static bool get_mocs_settings(const struct drm_i915_private *i915,
> -			      struct drm_i915_mocs_table *table)
> +enum {
> +	HAS_GLOBAL_MOCS = BIT(0),
> +	HAS_ENGINE_MOCS = BIT(1),
> +	HAS_RENDER_L3CC = BIT(2),
> +};
> +
> +static bool has_l3cc(const struct drm_i915_private *i915)
>  {
> +	return true;
> +}
> +
> +static bool has_global_mocs(const struct drm_i915_private *i915)
> +{
> +	return HAS_GLOBAL_MOCS_REGISTERS(i915);
> +}
> +
> +static bool has_mocs(const struct drm_i915_private *i915)
> +{
> +	return !IS_DGFX(i915);
> +}
> +
> +static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
> +				      struct drm_i915_mocs_table *table)
> +{
> +	unsigned int flags;
> +
>  	if (INTEL_GEN(i915) >= 12) {
>  		table->size  = ARRAY_SIZE(tgl_mocs_table);
>  		table->table = tgl_mocs_table;
> @@ -302,11 +325,11 @@ static bool get_mocs_settings(const struct drm_i915_private *i915,
>  	} else {
>  		drm_WARN_ONCE(&i915->drm, INTEL_GEN(i915) >= 9,
>  			      "Platform that should have a MOCS table does not.\n");
> -		return false;
> +		return 0;
>  	}
>  
>  	if (GEM_DEBUG_WARN_ON(table->size > table->n_entries))
> -		return false;
> +		return 0;
>  
>  	/* WaDisableSkipCaching:skl,bxt,kbl,glk */
>  	if (IS_GEN(i915, 9)) {
> @@ -315,10 +338,20 @@ static bool get_mocs_settings(const struct drm_i915_private *i915,
>  		for (i = 0; i < table->size; i++)
>  			if (GEM_DEBUG_WARN_ON(table->table[i].l3cc_value &
>  					      (L3_ESC(1) | L3_SCC(0x7))))
> -				return false;
> +				return 0;
>  	}
>  
> -	return true;
> +	flags = 0;
> +	if (has_mocs(i915)) {
> +		if (has_global_mocs(i915))
> +			flags |= HAS_GLOBAL_MOCS;
> +		else
> +			flags |= HAS_ENGINE_MOCS;
> +	}
> +	if (has_l3cc(i915))
> +		flags |= HAS_RENDER_L3CC;
> +
> +	return flags;
>  }
>  
>  /*
> @@ -411,18 +444,20 @@ static void init_l3cc_table(struct intel_engine_cs *engine,
>  void intel_mocs_init_engine(struct intel_engine_cs *engine)
>  {
>  	struct drm_i915_mocs_table table;
> +	unsigned int flags;
>  
>  	/* Called under a blanket forcewake */
>  	assert_forcewakes_active(engine->uncore, FORCEWAKE_ALL);
>  
> -	if (!get_mocs_settings(engine->i915, &table))
> +	flags = get_mocs_settings(engine->i915, &table);
> +	if (!flags)
>  		return;
>  
>  	/* Platforms with global MOCS do not need per-engine initialization. */
> -	if (!HAS_GLOBAL_MOCS_REGISTERS(engine->i915))
> +	if (flags & HAS_ENGINE_MOCS)
>  		init_mocs_table(engine, &table);
>  
> -	if (engine->class == RENDER_CLASS)
> +	if (flags & HAS_RENDER_L3CC && engine->class == RENDER_CLASS)
>  		init_l3cc_table(engine, &table);
>  }
>  
> @@ -431,26 +466,17 @@ static u32 global_mocs_offset(void)
>  	return i915_mmio_reg_offset(GEN12_GLOBAL_MOCS(0));
>  }
>  
> -static void init_global_mocs(struct intel_gt *gt)
> +void intel_mocs_init(struct intel_gt *gt)
>  {
>  	struct drm_i915_mocs_table table;
> +	unsigned int flags;
>  
>  	/*
>  	 * LLC and eDRAM control values are not applicable to dgfx
>  	 */
> -	if (IS_DGFX(gt->i915))
> -		return;
> -
> -	if (!get_mocs_settings(gt->i915, &table))
> -		return;
> -
> -	__init_mocs_table(gt->uncore, &table, global_mocs_offset());
> -}
> -
> -void intel_mocs_init(struct intel_gt *gt)
> -{
> -	if (HAS_GLOBAL_MOCS_REGISTERS(gt->i915))
> -		init_global_mocs(gt);
> +	flags = get_mocs_settings(gt->i915, &table);
> +	if (flags & HAS_GLOBAL_MOCS)
> +		__init_mocs_table(gt->uncore, &table, global_mocs_offset());
>  }
>  
>  #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> index de1f83100fb6..8831ffee2061 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> @@ -12,7 +12,8 @@
>  #include "selftests/igt_spinner.h"
>  
>  struct live_mocs {
> -	struct drm_i915_mocs_table table;
> +	struct drm_i915_mocs_table mocs;
> +	struct drm_i915_mocs_table l3cc;
>  	struct i915_vma *scratch;
>  	void *vaddr;
>  };
> @@ -70,11 +71,22 @@ static struct i915_vma *create_scratch(struct intel_gt *gt)
>  
>  static int live_mocs_init(struct live_mocs *arg, struct intel_gt *gt)
>  {
> +	struct drm_i915_mocs_table table;
> +	unsigned int flags;
>  	int err;
>  
> -	if (!get_mocs_settings(gt->i915, &arg->table))
> +	memset(arg, 0, sizeof(*arg));
> +
> +	flags = get_mocs_settings(gt->i915, &table);
> +	if (!flags)
>  		return -EINVAL;
>  
> +	if (flags & HAS_RENDER_L3CC)
> +		arg->l3cc = table;
> +
> +	if (flags & (HAS_GLOBAL_MOCS | HAS_ENGINE_MOCS))
> +		arg->mocs = table;
> +
>  	arg->scratch = create_scratch(gt);
>  	if (IS_ERR(arg->scratch))
>  		return PTR_ERR(arg->scratch);
> @@ -223,9 +235,9 @@ static int check_mocs_engine(struct live_mocs *arg,
>  	/* Read the mocs tables back using SRM */
>  	offset = i915_ggtt_offset(vma);
>  	if (!err)
> -		err = read_mocs_table(rq, &arg->table, &offset);
> +		err = read_mocs_table(rq, &arg->mocs, &offset);
>  	if (!err && ce->engine->class == RENDER_CLASS)
> -		err = read_l3cc_table(rq, &arg->table, &offset);
> +		err = read_l3cc_table(rq, &arg->l3cc, &offset);


Above functions will call read_regs().
I thought we'd still want to avoid this.  Shouldn't you test flags here?
Maybe store flags in the struct live_mocs and something like:

 	if (!err && (arg->flags & (HAS_GLOBAL_MOCS | HAS_ENGINE_MOCS)))
		err = read_mocs_table(rq, &arg->mocs, &offset);
 	if (!err && (arg->flags & HAS_RENDER_L3CC) && ce->engine->class == RENDER_CLASS)
		err = read_l3cc_table(rq, &arg->l3cc, &offset);


>  	offset -= i915_ggtt_offset(vma);
>  	GEM_BUG_ON(offset > PAGE_SIZE);
>  
> @@ -236,9 +248,9 @@ static int check_mocs_engine(struct live_mocs *arg,
>  	/* Compare the results against the expected tables */
>  	vaddr = arg->vaddr;
>  	if (!err)
> -		err = check_mocs_table(ce->engine, &arg->table, &vaddr);
> +		err = check_mocs_table(ce->engine, &arg->mocs, &vaddr);
>  	if (!err && ce->engine->class == RENDER_CLASS)
> -		err = check_l3cc_table(ce->engine, &arg->table, &vaddr);
> +		err = check_l3cc_table(ce->engine, &arg->l3cc, &vaddr);
>  	if (err)
>  		return err;
>  
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
