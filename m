Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1B375AA7B
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 11:19:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B683910E58A;
	Thu, 20 Jul 2023 09:19:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E50C110E58A
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689844793; x=1721380793;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=cV79B0xfXGjetLfSLyfNOPZ1oS0glsrbDjQny6RsfmQ=;
 b=Yb2W9CbBxZkU1iu/lfE8Z9wS4GJAJUuVe+VVoQAhEtXFlr9hWyvfhi3J
 wmtebwo80HOlOmvY2Raj/CUBO9HI+UVYCJPRioZLVQ7NfpG+HOd0Z96Et
 YVRzTtYcDd3oT1KKkcr9ovQq2IZaRnhIeioo3dxTqkNu0Uc7MGeJIe9qx
 R3gu+cu4F+6PgGeJwQ5fTosLbOwy1Os9wW6UT3grtyHcQC7d3CYVwQGdm
 XN2v2HKpJjZbugkQ9AyNDriYyikB43FYyFWrs7yXndxvXo/5aUgk+3NKm
 NTI64CC/mwv9jBHVJPSGUFLrcv4nngtdPVNpm0pnCQ58nenBiy0fZUayK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="364141588"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="364141588"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 02:19:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="674626516"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="674626516"
Received: from ctuohy-mobl1.ger.corp.intel.com (HELO [10.213.193.21])
 ([10.213.193.21])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 02:19:51 -0700
Message-ID: <ecff2bfa-cb3b-c375-0269-0134da14a3be@linux.intel.com>
Date: Thu, 20 Jul 2023 10:19:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>
References: <20230718222753.1075713-10-matthew.d.roper@intel.com>
 <20230718222753.1075713-18-matthew.d.roper@intel.com>
 <6648632e-0b4c-75ff-1b83-cd45b051cbb2@linux.intel.com>
 <20230719152248.GN138014@mdroper-desk1.amr.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230719152248.GN138014@mdroper-desk1.amr.corp.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 19/07/2023 16:22, Matt Roper wrote:
> On Wed, Jul 19, 2023 at 08:57:15AM +0100, Tvrtko Ursulin wrote:
>>
>> On 18/07/2023 23:28, Matt Roper wrote:
>>> Many of the IS_METEORLAKE conditions throughout the driver are supposed
>>> to be checks for Xe_LPG and/or Xe_LPM+ IP, not for the MTL platform
>>> specifically.  Update those checks to ensure that the code will still
>>> operate properly if/when these IP versions show up on future platforms.
>>>
>>> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gem/i915_gem_create.c | 4 ++--
>>>    drivers/gpu/drm/i915/gem/i915_gem_pages.c  | 4 ++--
>>>    drivers/gpu/drm/i915/gt/intel_engine_pm.c  | 2 +-
>>>    drivers/gpu/drm/i915/gt/intel_lrc.c        | 4 ++--
>>>    drivers/gpu/drm/i915/gt/intel_mocs.c       | 2 +-
>>>    drivers/gpu/drm/i915/gt/intel_reset.c      | 2 +-
>>>    drivers/gpu/drm/i915/gt/intel_rps.c        | 2 +-
>>>    drivers/gpu/drm/i915/gt/uc/intel_guc.c     | 4 ++--
>>>    drivers/gpu/drm/i915/i915_debugfs.c        | 2 +-
>>>    drivers/gpu/drm/i915/i915_perf.c           | 8 +++++---
>>>    10 files changed, 18 insertions(+), 16 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
>>> index d24c0ce8805c..19156ba4b9ef 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
>>> @@ -405,8 +405,8 @@ static int ext_set_pat(struct i915_user_extension __user *base, void *data)
>>>    	BUILD_BUG_ON(sizeof(struct drm_i915_gem_create_ext_set_pat) !=
>>>    		     offsetofend(struct drm_i915_gem_create_ext_set_pat, rsvd));
>>> -	/* Limiting the extension only to Meteor Lake */
>>> -	if (!IS_METEORLAKE(i915))
>>> +	/* Limiting the extension only to Xe_LPG and beyond */
>>> +	if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 70))
>>>    		return -ENODEV;
>>>    	if (copy_from_user(&ext, base, sizeof(ext)))
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>>> index 89fc8ea6bcfc..4b003925cc3e 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>>> @@ -470,9 +470,9 @@ enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
>>>    					  bool always_coherent)
>>>    {
>>>    	/*
>>> -	 * Wa_22016122933: always return I915_MAP_WC for MTL
>>> +	 * Wa_22016122933: always return I915_MAP_WC for Xe_LPM+
>>>    	 */
>>> -	if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(i915))
>>> +	if (i915_gem_object_is_lmem(obj) || MEDIA_VER_FULL(i915) == IP_VER(13, 0))
>>
>> The helper is global for the driver/device but this makes the response based
>> on just one part of the driver which reads dodgy. There is another one in
>> __lrc_alloc_state.
>>
>> For instance, do these workarounds need to be applied to an object used from
>> the render tile? Yes it also was before these change, but now it is not
>> obvious to me if and how the ipver of the media tile affects the other tile.
> 
> The current driver implementation is a bit overkill and goes beyond
> what's actually requested by the workaround.  There are only coherency
> issues between the CPU and media, so if an object is only used on the
> primary GT (which would be the case for a lot of stuff like GuC0 CTBs
> and such), the workaround is not necessary.
> 
> The workaround database marks this one as relevant to Xe_LPM+ and _not_
> relevant to Xe_LPG.  Also, the hardware team's description even
> explicitly notes that this is only necessary for media and that the
> primary GT is not impacted.
> 
> I pointed this out recently in one of the internal reviews for some of
> this code, so I think there may be some optimizations to the
> implementation of this workaround coming soon.

Okay, good to know improvements are on the radar. Would it make sense to 
put a comment in i915_coherent_map_type, explaining the scope is 
currently too wide, I mean in this patch when you replace the check with 
MEDIA_VER_FULL?

Regards,

Tvrtko

> 
> 
> Matt
> 
>>
>> Regards,
>>
>> Tvrtko
>>
>>>    		return I915_MAP_WC;
>>>    	if (HAS_LLC(i915) || always_coherent)
>>>    		return I915_MAP_WB;
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
>>> index 21af0ec52223..24060278e7a2 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
>>> @@ -21,7 +21,7 @@ static void intel_gsc_idle_msg_enable(struct intel_engine_cs *engine)
>>>    {
>>>    	struct drm_i915_private *i915 = engine->i915;
>>> -	if (IS_METEORLAKE(i915) && engine->id == GSC0) {
>>> +	if (MEDIA_VER(i915) >= 13 && engine->id == GSC0) {
>>>    		intel_uncore_write(engine->gt->uncore,
>>>    				   RC_PSMI_CTRL_GSCCS,
>>>    				   _MASKED_BIT_DISABLE(IDLE_MSG_DISABLE));
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
>>> index 4fefa67d285f..a125c3284bab 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>>> @@ -1095,10 +1095,10 @@ __lrc_alloc_state(struct intel_context *ce, struct intel_engine_cs *engine)
>>>    	if (IS_ERR(obj)) {
>>>    		obj = i915_gem_object_create_shmem(engine->i915, context_size);
>>>    		/*
>>> -		 * Wa_22016122933: For MTL the shared memory needs to be mapped
>>> +		 * Wa_22016122933: For Xe_LPM+ the shared memory needs to be mapped
>>>    		 * as WC on CPU side and UC (PAT index 2) on GPU side
>>>    		 */
>>> -		if (IS_METEORLAKE(engine->i915))
>>> +		if (MEDIA_VER_FULL(engine->i915) == IP_VER(13, 0))
>>>    			i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
>>>    	}
>>>    	if (IS_ERR(obj))
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
>>> index 2c014407225c..830ad2c10761 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
>>> @@ -507,7 +507,7 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
>>>    	memset(table, 0, sizeof(struct drm_i915_mocs_table));
>>>    	table->unused_entries_index = I915_MOCS_PTE;
>>> -	if (IS_METEORLAKE(i915)) {
>>> +	if (GT_GRAPHICS_RANGE(&i915->gt0, IP_VER(12, 70), IP_VER(12, 71))) {
>>>    		table->size = ARRAY_SIZE(mtl_mocs_table);
>>>    		table->table = mtl_mocs_table;
>>>    		table->n_entries = MTL_NUM_MOCS_ENTRIES;
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
>>> index 403f0d9caadf..0714584dd83d 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
>>> @@ -705,7 +705,7 @@ static int __reset_guc(struct intel_gt *gt)
>>>    static bool needs_wa_14015076503(struct intel_gt *gt, intel_engine_mask_t engine_mask)
>>>    {
>>> -	if (!IS_METEORLAKE(gt->i915) || !HAS_ENGINE(gt, GSC0))
>>> +	if (MEDIA_VER_FULL(gt->i915) != IP_VER(13, 0) || !HAS_ENGINE(gt, GSC0))
>>>    		return false;
>>>    	if (!__HAS_ENGINE(engine_mask, GSC0))
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
>>> index e92e626d4994..89775328440e 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
>>> @@ -1160,7 +1160,7 @@ void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *c
>>>    {
>>>    	struct drm_i915_private *i915 = rps_to_i915(rps);
>>> -	if (IS_METEORLAKE(i915))
>>> +	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>>>    		return mtl_get_freq_caps(rps, caps);
>>>    	else
>>>    		return __gen6_rps_get_freq_caps(rps, caps);
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>>> index 300b968e6de8..310d12dc7077 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>>> @@ -743,10 +743,10 @@ struct i915_vma *intel_guc_allocate_vma(struct intel_guc *guc, u32 size)
>>>    		return ERR_CAST(obj);
>>>    	/*
>>> -	 * Wa_22016122933: For MTL the shared memory needs to be mapped
>>> +	 * Wa_22016122933: For Xe_LPM+ the shared memory needs to be mapped
>>>    	 * as WC on CPU side and UC (PAT index 2) on GPU side
>>>    	 */
>>> -	if (IS_METEORLAKE(gt->i915))
>>> +	if (MEDIA_VER_FULL(gt->i915) == IP_VER(13, 0))
>>>    		i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
>>>    	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
>>> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
>>> index 4de44cf1026d..0a0217271b76 100644
>>> --- a/drivers/gpu/drm/i915/i915_debugfs.c
>>> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
>>> @@ -144,7 +144,7 @@ static const char *i915_cache_level_str(struct drm_i915_gem_object *obj)
>>>    {
>>>    	struct drm_i915_private *i915 = obj_to_i915(obj);
>>> -	if (IS_METEORLAKE(i915)) {
>>> +	if (GT_GRAPHICS_RANGE(to_gt(i915), IP_VER(12, 70), IP_VER(12, 71))) {
>>>    		switch (obj->pat_index) {
>>>    		case 0: return " WB";
>>>    		case 1: return " WT";
>>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>>> index ff95f2cdf2b0..cc9592d4de23 100644
>>> --- a/drivers/gpu/drm/i915/i915_perf.c
>>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>>> @@ -3227,11 +3227,13 @@ get_sseu_config(struct intel_sseu *out_sseu,
>>>     */
>>>    u32 i915_perf_oa_timestamp_frequency(struct drm_i915_private *i915)
>>>    {
>>> +	struct intel_gt *gt = to_gt(i915);
>>> +
>>>    	/*
>>>    	 * Wa_18013179988:dg2
>>> -	 * Wa_14015846243:mtl
>>> +	 * Wa_14015846243:xelpg
>>>    	 */
>>> -	if (IS_DG2(i915) || IS_METEORLAKE(i915)) {
>>> +	if (IS_DG2(i915) || GT_GRAPHICS_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71))) {
>>>    		intel_wakeref_t wakeref;
>>>    		u32 reg, shift;
>>> @@ -4539,7 +4541,7 @@ static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
>>>    static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
>>>    {
>>> -	if (IS_METEORLAKE(perf->i915))
>>> +	if (GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 70))
>>>    		return reg_in_range_table(addr, mtl_oa_mux_regs);
>>>    	else
>>>    		return reg_in_range_table(addr, gen12_oa_mux_regs);
> 
