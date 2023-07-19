Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC9C758FC0
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 09:57:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49CF310E41F;
	Wed, 19 Jul 2023 07:57:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00F4110E41B
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 07:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689753454; x=1721289454;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=kRYsWMQU7SzbwiVyJiVtNT0sYf9ODEjQAXBcX0X5Xyc=;
 b=ObWVAg3k9ORcZKS9LeNDJiz903hCxgQMw5y03Gaq/WaJ7C6DPBkI4tfo
 WhA3CnuWzE8xB5ZVk21NnSMO6s5AScyXJ8kMTpg3k9NF8WsuvgcQlN+UL
 BnQlLgbTp9qu1/PrFBLAYaJxFyZNjIoq93WAsaxrxvOvf8zvSDbNPx95n
 sWDpQM/x40hbXnSqYHbN48uvLs5k5qisNpE8dRogSjIZOlKfEm6unanqn
 7G3+8NZBwlQ9Sb/loP50E2YYSsVA2PDtmwiFKakLqcd9u7gk/6ibPxX8c
 G7zn5Y5dk9X9mbtyUP5ium+of6AgAZxiEC4ol3cdPPlOFMyL5j88y4qcO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="369958779"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="369958779"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 00:57:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="701214675"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="701214675"
Received: from bcascian-mobl1.ger.corp.intel.com (HELO [10.213.192.119])
 ([10.213.192.119])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 00:57:17 -0700
Message-ID: <6648632e-0b4c-75ff-1b83-cd45b051cbb2@linux.intel.com>
Date: Wed, 19 Jul 2023 08:57:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230718222753.1075713-10-matthew.d.roper@intel.com>
 <20230718222753.1075713-18-matthew.d.roper@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230718222753.1075713-18-matthew.d.roper@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 8/8] drm/i915: Replace several IS_METEORLAKE
 with proper IP version checks
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


On 18/07/2023 23:28, Matt Roper wrote:
> Many of the IS_METEORLAKE conditions throughout the driver are supposed
> to be checks for Xe_LPG and/or Xe_LPM+ IP, not for the MTL platform
> specifically.  Update those checks to ensure that the code will still
> operate properly if/when these IP versions show up on future platforms.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_create.c | 4 ++--
>   drivers/gpu/drm/i915/gem/i915_gem_pages.c  | 4 ++--
>   drivers/gpu/drm/i915/gt/intel_engine_pm.c  | 2 +-
>   drivers/gpu/drm/i915/gt/intel_lrc.c        | 4 ++--
>   drivers/gpu/drm/i915/gt/intel_mocs.c       | 2 +-
>   drivers/gpu/drm/i915/gt/intel_reset.c      | 2 +-
>   drivers/gpu/drm/i915/gt/intel_rps.c        | 2 +-
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c     | 4 ++--
>   drivers/gpu/drm/i915/i915_debugfs.c        | 2 +-
>   drivers/gpu/drm/i915/i915_perf.c           | 8 +++++---
>   10 files changed, 18 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> index d24c0ce8805c..19156ba4b9ef 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> @@ -405,8 +405,8 @@ static int ext_set_pat(struct i915_user_extension __user *base, void *data)
>   	BUILD_BUG_ON(sizeof(struct drm_i915_gem_create_ext_set_pat) !=
>   		     offsetofend(struct drm_i915_gem_create_ext_set_pat, rsvd));
>   
> -	/* Limiting the extension only to Meteor Lake */
> -	if (!IS_METEORLAKE(i915))
> +	/* Limiting the extension only to Xe_LPG and beyond */
> +	if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 70))
>   		return -ENODEV;
>   
>   	if (copy_from_user(&ext, base, sizeof(ext)))
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> index 89fc8ea6bcfc..4b003925cc3e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -470,9 +470,9 @@ enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
>   					  bool always_coherent)
>   {
>   	/*
> -	 * Wa_22016122933: always return I915_MAP_WC for MTL
> +	 * Wa_22016122933: always return I915_MAP_WC for Xe_LPM+
>   	 */
> -	if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(i915))
> +	if (i915_gem_object_is_lmem(obj) || MEDIA_VER_FULL(i915) == IP_VER(13, 0))

The helper is global for the driver/device but this makes the response 
based on just one part of the driver which reads dodgy. There is another 
one in __lrc_alloc_state.

For instance, do these workarounds need to be applied to an object used 
from the render tile? Yes it also was before these change, but now it is 
not obvious to me if and how the ipver of the media tile affects the 
other tile.

Regards,

Tvrtko

>   		return I915_MAP_WC;
>   	if (HAS_LLC(i915) || always_coherent)
>   		return I915_MAP_WB;
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> index 21af0ec52223..24060278e7a2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> @@ -21,7 +21,7 @@ static void intel_gsc_idle_msg_enable(struct intel_engine_cs *engine)
>   {
>   	struct drm_i915_private *i915 = engine->i915;
>   
> -	if (IS_METEORLAKE(i915) && engine->id == GSC0) {
> +	if (MEDIA_VER(i915) >= 13 && engine->id == GSC0) {
>   		intel_uncore_write(engine->gt->uncore,
>   				   RC_PSMI_CTRL_GSCCS,
>   				   _MASKED_BIT_DISABLE(IDLE_MSG_DISABLE));
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 4fefa67d285f..a125c3284bab 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1095,10 +1095,10 @@ __lrc_alloc_state(struct intel_context *ce, struct intel_engine_cs *engine)
>   	if (IS_ERR(obj)) {
>   		obj = i915_gem_object_create_shmem(engine->i915, context_size);
>   		/*
> -		 * Wa_22016122933: For MTL the shared memory needs to be mapped
> +		 * Wa_22016122933: For Xe_LPM+ the shared memory needs to be mapped
>   		 * as WC on CPU side and UC (PAT index 2) on GPU side
>   		 */
> -		if (IS_METEORLAKE(engine->i915))
> +		if (MEDIA_VER_FULL(engine->i915) == IP_VER(13, 0))
>   			i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
>   	}
>   	if (IS_ERR(obj))
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index 2c014407225c..830ad2c10761 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -507,7 +507,7 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
>   	memset(table, 0, sizeof(struct drm_i915_mocs_table));
>   
>   	table->unused_entries_index = I915_MOCS_PTE;
> -	if (IS_METEORLAKE(i915)) {
> +	if (GT_GRAPHICS_RANGE(&i915->gt0, IP_VER(12, 70), IP_VER(12, 71))) {
>   		table->size = ARRAY_SIZE(mtl_mocs_table);
>   		table->table = mtl_mocs_table;
>   		table->n_entries = MTL_NUM_MOCS_ENTRIES;
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 403f0d9caadf..0714584dd83d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -705,7 +705,7 @@ static int __reset_guc(struct intel_gt *gt)
>   
>   static bool needs_wa_14015076503(struct intel_gt *gt, intel_engine_mask_t engine_mask)
>   {
> -	if (!IS_METEORLAKE(gt->i915) || !HAS_ENGINE(gt, GSC0))
> +	if (MEDIA_VER_FULL(gt->i915) != IP_VER(13, 0) || !HAS_ENGINE(gt, GSC0))
>   		return false;
>   
>   	if (!__HAS_ENGINE(engine_mask, GSC0))
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index e92e626d4994..89775328440e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -1160,7 +1160,7 @@ void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *c
>   {
>   	struct drm_i915_private *i915 = rps_to_i915(rps);
>   
> -	if (IS_METEORLAKE(i915))
> +	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>   		return mtl_get_freq_caps(rps, caps);
>   	else
>   		return __gen6_rps_get_freq_caps(rps, caps);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 300b968e6de8..310d12dc7077 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -743,10 +743,10 @@ struct i915_vma *intel_guc_allocate_vma(struct intel_guc *guc, u32 size)
>   		return ERR_CAST(obj);
>   
>   	/*
> -	 * Wa_22016122933: For MTL the shared memory needs to be mapped
> +	 * Wa_22016122933: For Xe_LPM+ the shared memory needs to be mapped
>   	 * as WC on CPU side and UC (PAT index 2) on GPU side
>   	 */
> -	if (IS_METEORLAKE(gt->i915))
> +	if (MEDIA_VER_FULL(gt->i915) == IP_VER(13, 0))
>   		i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
>   
>   	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index 4de44cf1026d..0a0217271b76 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -144,7 +144,7 @@ static const char *i915_cache_level_str(struct drm_i915_gem_object *obj)
>   {
>   	struct drm_i915_private *i915 = obj_to_i915(obj);
>   
> -	if (IS_METEORLAKE(i915)) {
> +	if (GT_GRAPHICS_RANGE(to_gt(i915), IP_VER(12, 70), IP_VER(12, 71))) {
>   		switch (obj->pat_index) {
>   		case 0: return " WB";
>   		case 1: return " WT";
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index ff95f2cdf2b0..cc9592d4de23 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -3227,11 +3227,13 @@ get_sseu_config(struct intel_sseu *out_sseu,
>    */
>   u32 i915_perf_oa_timestamp_frequency(struct drm_i915_private *i915)
>   {
> +	struct intel_gt *gt = to_gt(i915);
> +
>   	/*
>   	 * Wa_18013179988:dg2
> -	 * Wa_14015846243:mtl
> +	 * Wa_14015846243:xelpg
>   	 */
> -	if (IS_DG2(i915) || IS_METEORLAKE(i915)) {
> +	if (IS_DG2(i915) || GT_GRAPHICS_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71))) {
>   		intel_wakeref_t wakeref;
>   		u32 reg, shift;
>   
> @@ -4539,7 +4541,7 @@ static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
>   
>   static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
>   {
> -	if (IS_METEORLAKE(perf->i915))
> +	if (GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 70))
>   		return reg_in_range_table(addr, mtl_oa_mux_regs);
>   	else
>   		return reg_in_range_table(addr, gen12_oa_mux_regs);
