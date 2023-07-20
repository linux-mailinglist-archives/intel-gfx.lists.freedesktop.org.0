Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B830575AB76
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 11:52:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81CAE10E597;
	Thu, 20 Jul 2023 09:51:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44AB910E597
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 09:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689846716; x=1721382716;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=yE6nFKzEcbtDmVoJ6e3zovjG1cm9x2rlCyyRHz1WsrU=;
 b=n3tALRqYscBSiP0MKLV3Nhhnc9u6EZjATJB5lwlGdIU+iN9q2HJCmlIg
 MblGi8+GTa+VmR+djQJPNM0RRyWEpiMRcEsBcFB5fY+KGYNTd0PLdhdBT
 E6UFw1w2XWo9uEdJhrWtS22fUYOEtuRLkqo/eguQO3QKo81PcXfu4RDqR
 Sx/yWJ/PmzpKFQfWsWKWQb6e6ilLjbZRcPE/Yxas6+F5KqaS7ovHyAXp1
 kjDoSlX7EcUqYMxwTt+92KGwsJjg5njy4xCb9rZEPinourrqWeohCU3Xr
 vtQfty3Gf1ejX35h/rAPjbJEiy/YwJ6RA/z4jRbuseQxpHklDVK5XwSPK A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="397562442"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="397562442"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 02:51:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="898223506"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="898223506"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.47.94])
 ([10.252.47.94])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 02:51:53 -0700
Message-ID: <7cf774d1-626a-f440-543f-7d9daea287d5@linux.intel.com>
Date: Thu, 20 Jul 2023 11:51:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230719150739.1505220-1-andrzej.hajda@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20230719150739.1505220-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: use direct alias for i915 in
 requests
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
Cc: Chris Wilson <chris.p.wilson@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 7/19/2023 5:07 PM, Andrzej Hajda wrote:
> i915_request contains direct alias to i915, there is no point to go via
> rq->engine->i915.
>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Acked-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c |  4 ++--
>   drivers/gpu/drm/i915/gt/gen2_engine_cs.c       |  2 +-
>   drivers/gpu/drm/i915/gt/gen8_engine_cs.c       | 18 +++++++++---------
>   .../drm/i915/gt/intel_execlists_submission.c   |  2 +-
>   drivers/gpu/drm/i915/gt/intel_migrate.c        | 10 +++++-----
>   .../gpu/drm/i915/gt/intel_ring_submission.c    |  2 +-
>   drivers/gpu/drm/i915/gt/intel_workarounds.c    |  4 ++--
>   drivers/gpu/drm/i915/gt/selftest_engine_cs.c   |  2 +-
>   drivers/gpu/drm/i915/gt/selftest_mocs.c        |  2 +-
>   drivers/gpu/drm/i915/gt/selftest_rc6.c         |  2 +-
>   drivers/gpu/drm/i915/gt/selftest_timeline.c    |  4 ++--
>   drivers/gpu/drm/i915/gvt/scheduler.c           |  2 +-
>   drivers/gpu/drm/i915/i915_perf.c               |  2 +-
>   drivers/gpu/drm/i915/i915_request.c            |  2 +-
>   drivers/gpu/drm/i915/i915_trace.h              | 10 +++++-----
>   drivers/gpu/drm/i915/selftests/i915_perf.c     |  2 +-
>   drivers/gpu/drm/i915/selftests/igt_spinner.c   | 14 +++++++-------
>   17 files changed, 42 insertions(+), 42 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index d3208a32561442..5a687a3686bd53 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -2229,8 +2229,8 @@ static int i915_reset_gen7_sol_offsets(struct i915_request *rq)
>   	u32 *cs;
>   	int i;
>   
> -	if (GRAPHICS_VER(rq->engine->i915) != 7 || rq->engine->id != RCS0) {
> -		drm_dbg(&rq->engine->i915->drm, "sol reset is gen7/rcs only\n");
> +	if (GRAPHICS_VER(rq->i915) != 7 || rq->engine->id != RCS0) {
> +		drm_dbg(&rq->i915->drm, "sol reset is gen7/rcs only\n");
>   		return -EINVAL;
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
> index 1c82caf525c346..8fe0499308ffe5 100644
> --- a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
> @@ -76,7 +76,7 @@ int gen4_emit_flush_rcs(struct i915_request *rq, u32 mode)
>   	cmd = MI_FLUSH;
>   	if (mode & EMIT_INVALIDATE) {
>   		cmd |= MI_EXE_FLUSH;
> -		if (IS_G4X(rq->engine->i915) || GRAPHICS_VER(rq->engine->i915) == 5)
> +		if (IS_G4X(rq->i915) || GRAPHICS_VER(rq->i915) == 5)
>   			cmd |= MI_INVALIDATE_ISP;
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index 23857cc08eca1f..3ba20ea030e8d1 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -39,11 +39,11 @@ int gen8_emit_flush_rcs(struct i915_request *rq, u32 mode)
>   		 * On GEN9: before VF_CACHE_INVALIDATE we need to emit a NULL
>   		 * pipe control.
>   		 */
> -		if (GRAPHICS_VER(rq->engine->i915) == 9)
> +		if (GRAPHICS_VER(rq->i915) == 9)
>   			vf_flush_wa = true;
>   
>   		/* WaForGAMHang:kbl */
> -		if (IS_KBL_GRAPHICS_STEP(rq->engine->i915, 0, STEP_C0))
> +		if (IS_KBL_GRAPHICS_STEP(rq->i915, 0, STEP_C0))
>   			dc_flush_wa = true;
>   	}
>   
> @@ -180,8 +180,8 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv
>   static int mtl_dummy_pipe_control(struct i915_request *rq)
>   {
>   	/* Wa_14016712196 */
> -	if (IS_MTL_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, STEP_B0)) {
> +	if (IS_MTL_GRAPHICS_STEP(rq->i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(rq->i915, P, STEP_A0, STEP_B0)) {
>   		u32 *cs;
>   
>   		/* dummy PIPE_CONTROL + depth flush */
> @@ -267,7 +267,7 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>   		else if (engine->class == COMPUTE_CLASS)
>   			flags &= ~PIPE_CONTROL_3D_ENGINE_FLAGS;
>   
> -		if (!HAS_FLAT_CCS(rq->engine->i915))
> +		if (!HAS_FLAT_CCS(rq->i915))
>   			count = 8 + 4;
>   		else
>   			count = 8;
> @@ -285,7 +285,7 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>   
>   		cs = gen8_emit_pipe_control(cs, flags, LRC_PPHWSP_SCRATCH_ADDR);
>   
> -		if (!HAS_FLAT_CCS(rq->engine->i915)) {
> +		if (!HAS_FLAT_CCS(rq->i915)) {
>   			/* hsdes: 1809175790 */
>   			cs = gen12_emit_aux_table_inv(rq->engine->gt,
>   						      cs, GEN12_GFX_CCS_AUX_NV);
> @@ -307,7 +307,7 @@ int gen12_emit_flush_xcs(struct i915_request *rq, u32 mode)
>   	if (mode & EMIT_INVALIDATE) {
>   		cmd += 2;
>   
> -		if (!HAS_FLAT_CCS(rq->engine->i915) &&
> +		if (!HAS_FLAT_CCS(rq->i915) &&
>   		    (rq->engine->class == VIDEO_DECODE_CLASS ||
>   		     rq->engine->class == VIDEO_ENHANCEMENT_CLASS)) {
>   			aux_inv = rq->engine->mask &
> @@ -754,7 +754,7 @@ u32 *gen12_emit_fini_breadcrumb_xcs(struct i915_request *rq, u32 *cs)
>   
>   u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>   {
> -	struct drm_i915_private *i915 = rq->engine->i915;
> +	struct drm_i915_private *i915 = rq->i915;
>   	u32 flags = (PIPE_CONTROL_CS_STALL |
>   		     PIPE_CONTROL_TLB_INVALIDATE |
>   		     PIPE_CONTROL_TILE_CACHE_FLUSH |
> @@ -775,7 +775,7 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>   		/* Wa_1409600907 */
>   		flags |= PIPE_CONTROL_DEPTH_STALL;
>   
> -	if (!HAS_3D_PIPELINE(rq->engine->i915))
> +	if (!HAS_3D_PIPELINE(rq->i915))
>   		flags &= ~PIPE_CONTROL_3D_ARCH_FLAGS;
>   	else if (rq->engine->class == COMPUTE_CLASS)
>   		flags &= ~PIPE_CONTROL_3D_ENGINE_FLAGS;
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index d85b5a6d981f99..8a641bcf777cb4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -2718,7 +2718,7 @@ static int emit_pdps(struct i915_request *rq)
>   	int err, i;
>   	u32 *cs;
>   
> -	GEM_BUG_ON(intel_vgpu_active(rq->engine->i915));
> +	GEM_BUG_ON(intel_vgpu_active(rq->i915));
>   
>   	/*
>   	 * Beware ye of the dragons, this sequence is magic!
> diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
> index 6023288b0e2dd5..576e5ef0289ba5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_migrate.c
> +++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
> @@ -366,7 +366,7 @@ static int emit_pte(struct i915_request *rq,
>   		    u64 offset,
>   		    int length)
>   {
> -	bool has_64K_pages = HAS_64K_PAGES(rq->engine->i915);
> +	bool has_64K_pages = HAS_64K_PAGES(rq->i915);
>   	const u64 encode = rq->context->vm->pte_encode(0, pat_index,
>   						       is_lmem ? PTE_LM : 0);
>   	struct intel_ring *ring = rq->ring;
> @@ -375,7 +375,7 @@ static int emit_pte(struct i915_request *rq,
>   	u32 page_size;
>   	u32 *hdr, *cs;
>   
> -	GEM_BUG_ON(GRAPHICS_VER(rq->engine->i915) < 8);
> +	GEM_BUG_ON(GRAPHICS_VER(rq->i915) < 8);
>   
>   	page_size = I915_GTT_PAGE_SIZE;
>   	dword_length = 0x400;
> @@ -531,7 +531,7 @@ static int emit_copy_ccs(struct i915_request *rq,
>   			 u32 dst_offset, u8 dst_access,
>   			 u32 src_offset, u8 src_access, int size)
>   {
> -	struct drm_i915_private *i915 = rq->engine->i915;
> +	struct drm_i915_private *i915 = rq->i915;
>   	int mocs = rq->engine->gt->mocs.uc_index << 1;
>   	u32 num_ccs_blks;
>   	u32 *cs;
> @@ -581,7 +581,7 @@ static int emit_copy_ccs(struct i915_request *rq,
>   static int emit_copy(struct i915_request *rq,
>   		     u32 dst_offset, u32 src_offset, int size)
>   {
> -	const int ver = GRAPHICS_VER(rq->engine->i915);
> +	const int ver = GRAPHICS_VER(rq->i915);
>   	u32 instance = rq->engine->instance;
>   	u32 *cs;
>   
> @@ -917,7 +917,7 @@ intel_context_migrate_copy(struct intel_context *ce,
>   static int emit_clear(struct i915_request *rq, u32 offset, int size,
>   		      u32 value, bool is_lmem)
>   {
> -	struct drm_i915_private *i915 = rq->engine->i915;
> +	struct drm_i915_private *i915 = rq->i915;
>   	int mocs = rq->engine->gt->mocs.uc_index << 1;
>   	const int ver = GRAPHICS_VER(i915);
>   	int ring_sz;
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 3fd795c3263fd2..92085ffd23de0e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -805,7 +805,7 @@ static int mi_set_context(struct i915_request *rq,
>   static int remap_l3_slice(struct i915_request *rq, int slice)
>   {
>   #define L3LOG_DW (GEN7_L3LOG_SIZE / sizeof(u32))
> -	u32 *cs, *remap_info = rq->engine->i915->l3_parity.remap_info[slice];
> +	u32 *cs, *remap_info = rq->i915->l3_parity.remap_info[slice];
>   	int i;
>   
>   	if (!remap_info)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index b177c588698b08..589d009032fcd3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -3249,7 +3249,7 @@ wa_list_srm(struct i915_request *rq,
>   	    const struct i915_wa_list *wal,
>   	    struct i915_vma *vma)
>   {
> -	struct drm_i915_private *i915 = rq->engine->i915;
> +	struct drm_i915_private *i915 = rq->i915;
>   	unsigned int i, count = 0;
>   	const struct i915_wa *wa;
>   	u32 srm, *cs;
> @@ -3348,7 +3348,7 @@ static int engine_wa_list_verify(struct intel_context *ce,
>   
>   	err = 0;
>   	for (i = 0, wa = wal->list; i < wal->count; i++, wa++) {
> -		if (mcr_range(rq->engine->i915, i915_mmio_reg_offset(wa->reg)))
> +		if (mcr_range(rq->i915, i915_mmio_reg_offset(wa->reg)))
>   			continue;
>   
>   		if (!wa_verify(wal->gt, wa, results[i], wal->name, from))
> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
> index 78cdfc6f315f2a..86cecf7a110540 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
> @@ -62,7 +62,7 @@ static int write_timestamp(struct i915_request *rq, int slot)
>   		return PTR_ERR(cs);
>   
>   	cmd = MI_STORE_REGISTER_MEM | MI_USE_GGTT;
> -	if (GRAPHICS_VER(rq->engine->i915) >= 8)
> +	if (GRAPHICS_VER(rq->i915) >= 8)
>   		cmd++;
>   	*cs++ = cmd;
>   	*cs++ = i915_mmio_reg_offset(timestamp_reg(rq->engine));
> diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> index a8446ab825012f..d73e438fb85fab 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> @@ -137,7 +137,7 @@ static int read_mocs_table(struct i915_request *rq,
>   	if (!table)
>   		return 0;
>   
> -	if (HAS_GLOBAL_MOCS_REGISTERS(rq->engine->i915))
> +	if (HAS_GLOBAL_MOCS_REGISTERS(rq->i915))
>   		addr = global_mocs_offset() + gt->uncore->gsi_offset;
>   	else
>   		addr = mocs_offset(rq->engine);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> index 2ceeadecc639cc..a7189c2d660cc5 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> @@ -140,7 +140,7 @@ static const u32 *__live_rc6_ctx(struct intel_context *ce)
>   	}
>   
>   	cmd = MI_STORE_REGISTER_MEM | MI_USE_GGTT;
> -	if (GRAPHICS_VER(rq->engine->i915) >= 8)
> +	if (GRAPHICS_VER(rq->i915) >= 8)
>   		cmd++;
>   
>   	*cs++ = cmd;
> diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
> index 39c3ec12df1abb..fa36cf920bdee9 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
> @@ -459,12 +459,12 @@ static int emit_ggtt_store_dw(struct i915_request *rq, u32 addr, u32 value)
>   	if (IS_ERR(cs))
>   		return PTR_ERR(cs);
>   
> -	if (GRAPHICS_VER(rq->engine->i915) >= 8) {
> +	if (GRAPHICS_VER(rq->i915) >= 8) {
>   		*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
>   		*cs++ = addr;
>   		*cs++ = 0;
>   		*cs++ = value;
> -	} else if (GRAPHICS_VER(rq->engine->i915) >= 4) {
> +	} else if (GRAPHICS_VER(rq->i915) >= 4) {
>   		*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
>   		*cs++ = 0;
>   		*cs++ = addr;
> diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
> index f4055804aad1fe..a5c8005ec484c3 100644
> --- a/drivers/gpu/drm/i915/gvt/scheduler.c
> +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
> @@ -974,7 +974,7 @@ static void update_guest_context(struct intel_vgpu_workload *workload)
>   	context_page_num = rq->engine->context_size;
>   	context_page_num = context_page_num >> PAGE_SHIFT;
>   
> -	if (IS_BROADWELL(rq->engine->i915) && rq->engine->id == RCS0)
> +	if (IS_BROADWELL(rq->i915) && rq->engine->id == RCS0)
>   		context_page_num = 19;
>   
>   	context_base = (void *) ctx->lrc_reg_state -
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 49c6f1ff11284f..04bc1f4a111504 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -1319,7 +1319,7 @@ __store_reg_to_mem(struct i915_request *rq, i915_reg_t reg, u32 ggtt_offset)
>   	u32 *cs, cmd;
>   
>   	cmd = MI_STORE_REGISTER_MEM | MI_SRM_LRM_GLOBAL_GTT;
> -	if (GRAPHICS_VER(rq->engine->i915) >= 8)
> +	if (GRAPHICS_VER(rq->i915) >= 8)
>   		cmd++;
>   
>   	cs = intel_ring_begin(rq, 4);
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index c5fe199b046d01..9d83f064456cd9 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -1341,7 +1341,7 @@ __i915_request_await_external(struct i915_request *rq, struct dma_fence *fence)
>   {
>   	mark_external(rq);
>   	return i915_sw_fence_await_dma_fence(&rq->submit, fence,
> -					     i915_fence_context_timeout(rq->engine->i915,
> +					     i915_fence_context_timeout(rq->i915,
>   									fence->context),
>   					     I915_FENCE_GFP);
>   }
> diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
> index f6f9228a135185..ce1cbee1b39dd0 100644
> --- a/drivers/gpu/drm/i915/i915_trace.h
> +++ b/drivers/gpu/drm/i915/i915_trace.h
> @@ -277,7 +277,7 @@ TRACE_EVENT(i915_request_queue,
>   			     ),
>   
>   	    TP_fast_assign(
> -			   __entry->dev = rq->engine->i915->drm.primary->index;
> +			   __entry->dev = rq->i915->drm.primary->index;
>   			   __entry->class = rq->engine->uabi_class;
>   			   __entry->instance = rq->engine->uabi_instance;
>   			   __entry->ctx = rq->fence.context;
> @@ -304,7 +304,7 @@ DECLARE_EVENT_CLASS(i915_request,
>   			     ),
>   
>   	    TP_fast_assign(
> -			   __entry->dev = rq->engine->i915->drm.primary->index;
> +			   __entry->dev = rq->i915->drm.primary->index;
>   			   __entry->class = rq->engine->uabi_class;
>   			   __entry->instance = rq->engine->uabi_instance;
>   			   __entry->ctx = rq->fence.context;
> @@ -353,7 +353,7 @@ TRACE_EVENT(i915_request_in,
>   			    ),
>   
>   	    TP_fast_assign(
> -			   __entry->dev = rq->engine->i915->drm.primary->index;
> +			   __entry->dev = rq->i915->drm.primary->index;
>   			   __entry->class = rq->engine->uabi_class;
>   			   __entry->instance = rq->engine->uabi_instance;
>   			   __entry->ctx = rq->fence.context;
> @@ -382,7 +382,7 @@ TRACE_EVENT(i915_request_out,
>   			    ),
>   
>   	    TP_fast_assign(
> -			   __entry->dev = rq->engine->i915->drm.primary->index;
> +			   __entry->dev = rq->i915->drm.primary->index;
>   			   __entry->class = rq->engine->uabi_class;
>   			   __entry->instance = rq->engine->uabi_instance;
>   			   __entry->ctx = rq->fence.context;
> @@ -623,7 +623,7 @@ TRACE_EVENT(i915_request_wait_begin,
>   	     * less desirable.
>   	     */
>   	    TP_fast_assign(
> -			   __entry->dev = rq->engine->i915->drm.primary->index;
> +			   __entry->dev = rq->i915->drm.primary->index;
>   			   __entry->class = rq->engine->uabi_class;
>   			   __entry->instance = rq->engine->uabi_instance;
>   			   __entry->ctx = rq->fence.context;
> diff --git a/drivers/gpu/drm/i915/selftests/i915_perf.c b/drivers/gpu/drm/i915/selftests/i915_perf.c
> index d4608b220123ce..403134a7acec30 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_perf.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_perf.c
> @@ -168,7 +168,7 @@ static int write_timestamp(struct i915_request *rq, int slot)
>   		return PTR_ERR(cs);
>   
>   	len = 5;
> -	if (GRAPHICS_VER(rq->engine->i915) >= 8)
> +	if (GRAPHICS_VER(rq->i915) >= 8)
>   		len++;
>   
>   	*cs++ = GFX_OP_PIPE_CONTROL(len);
> diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> index 618d9386d55494..3c5e0952f1b81b 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> @@ -159,15 +159,15 @@ igt_spinner_create_request(struct igt_spinner *spin,
>   
>   	batch = spin->batch;
>   
> -	if (GRAPHICS_VER(rq->engine->i915) >= 8) {
> +	if (GRAPHICS_VER(rq->i915) >= 8) {
>   		*batch++ = MI_STORE_DWORD_IMM_GEN4;
>   		*batch++ = lower_32_bits(hws_address(hws, rq));
>   		*batch++ = upper_32_bits(hws_address(hws, rq));
> -	} else if (GRAPHICS_VER(rq->engine->i915) >= 6) {
> +	} else if (GRAPHICS_VER(rq->i915) >= 6) {
>   		*batch++ = MI_STORE_DWORD_IMM_GEN4;
>   		*batch++ = 0;
>   		*batch++ = hws_address(hws, rq);
> -	} else if (GRAPHICS_VER(rq->engine->i915) >= 4) {
> +	} else if (GRAPHICS_VER(rq->i915) >= 4) {
>   		*batch++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
>   		*batch++ = 0;
>   		*batch++ = hws_address(hws, rq);
> @@ -179,11 +179,11 @@ igt_spinner_create_request(struct igt_spinner *spin,
>   
>   	*batch++ = arbitration_command;
>   
> -	if (GRAPHICS_VER(rq->engine->i915) >= 8)
> +	if (GRAPHICS_VER(rq->i915) >= 8)
>   		*batch++ = MI_BATCH_BUFFER_START | BIT(8) | 1;
> -	else if (IS_HASWELL(rq->engine->i915))
> +	else if (IS_HASWELL(rq->i915))
>   		*batch++ = MI_BATCH_BUFFER_START | MI_BATCH_PPGTT_HSW;
> -	else if (GRAPHICS_VER(rq->engine->i915) >= 6)
> +	else if (GRAPHICS_VER(rq->i915) >= 6)
>   		*batch++ = MI_BATCH_BUFFER_START;
>   	else
>   		*batch++ = MI_BATCH_BUFFER_START | MI_BATCH_GTT;
> @@ -201,7 +201,7 @@ igt_spinner_create_request(struct igt_spinner *spin,
>   	}
>   
>   	flags = 0;
> -	if (GRAPHICS_VER(rq->engine->i915) <= 5)
> +	if (GRAPHICS_VER(rq->i915) <= 5)
>   		flags |= I915_DISPATCH_SECURE;
>   	err = engine->emit_bb_start(rq, i915_vma_offset(vma), PAGE_SIZE, flags);
>   
