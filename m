Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9457B1C3F
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 14:25:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 624FE10E63C;
	Thu, 28 Sep 2023 12:25:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDBD210E63C
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 12:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695903952; x=1727439952;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=4KnrdSHjforEhtdrY0ft7LJV/CFkidljzn2WRkOB1Hk=;
 b=BENHDZrgtSPMnEhTKTR9FHH8aTQZeLKNLCy7nz6HZqvkvq2CelPU7OWq
 Ml4xl5QERjv/OFf/bEik5ZnR7mb2xh7l3DYb9yuOObMiCohX+7SyQHy+v
 hVWl0OMdihUdGQFLkI3UdlI8gsoUYLiYUA4WBkQCrysz8U03mdONxoWL/
 b3tFUZ0np8asS2VgbDYMkNG0rTRyoZJt1VI3AXBMTz4z/3p0q1HwPlvj6
 KXQAD7dNYJjOz3zDxTmwg8Fyj8KXU82EvgOmMXtjm7Ftax4+NqjgzQdRi
 2OJLkL+su3vyVAoZ7gyWPNLi3PS/6FkB8KTENGNNO+V4AfAN706EEIKG7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="468329105"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="468329105"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 05:23:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="839833167"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="839833167"
Received: from nlachman-mobl.ger.corp.intel.com (HELO [10.213.204.130])
 ([10.213.204.130])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 05:23:50 -0700
Message-ID: <5da7fd51-4253-8b1d-8a3f-37859bbe7173@linux.intel.com>
Date: Thu, 28 Sep 2023 13:23:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
References: <20230914134724.657957-1-dnyaneshwar.bhadane@intel.com>
 <20230914164926.GT2706891@mdroper-desk1.amr.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230914164926.GT2706891@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915: Added Wa_18022495364
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 14/09/2023 17:49, Matt Roper wrote:
> On Thu, Sep 14, 2023 at 07:17:24PM +0530, Dnyaneshwar Bhadane wrote:
>> Set the instruction and state cache invalidate bit using INDIRECT_CTX on
>> every gpu context switch.
>> The goal of this workaround is to actually perform an explicit
>> invalidation of that cache (by re-writing the register) during every GPU
>> context switch, which is accomplished via a "workaround batchbuffer"
>> that's attached to the context via INDIRECT_CTX. (Matt)
>> BSpec: 11354
>>
>> v2:
>> - Removed extra parentheses from the condition (Lucas)
>> - Fixed spacing and new line (Lucas)
>>
>> v3:
>> - Fixed commit message.
>>
>> v4:
>> - Only GEN12 changes are kept  (Matt Ropper)
>> - Fixed the commit message for r-b (Matt Ropper)
>> - Renamed the register bit in define
>>
>> v5:
>> - Moved out the  from golden context init (Matt Roper)
>> - Use INDIRECT_CTX to set bit on each GPU context switch (Matt Roper)
>>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_gt_regs.h |  2 ++
>>   drivers/gpu/drm/i915/gt/intel_lrc.c     | 15 +++++++++++++++
>>   2 files changed, 17 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> index 0e4c638fcbbf..38f02ef8ed01 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> @@ -164,6 +164,8 @@
>>   #define GEN9_CSFE_CHICKEN1_RCS			_MMIO(0x20d4)
>>   #define   GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE	(1 << 2)
>>   #define   GEN11_ENABLE_32_PLANE_MODE		(1 << 7)
>> +#define GEN12_CS_DEBUG_MODE2			_MMIO(0x20d8)
>> +#define   INSTRUCTION_STATE_CACHE_INVALIDATE	REG_BIT(6)
>>   
>>   #define GEN7_FF_SLICE_CS_CHICKEN1		_MMIO(0x20e0)
>>   #define   GEN9_FFSC_PERCTX_PREEMPT_CTRL		(1 << 14)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
>> index 967fe4d77a87..fe98039499c5 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>> @@ -1332,6 +1332,15 @@ dg2_emit_draw_watermark_setting(u32 *cs)
>>   	return cs;
>>   }
>>   
>> +static u32 *
>> +gen12_set_instruction_state_cache_invalid(u32 *cs)
> 
> Minor nitpick:  I'd name this "gen12_invalidate_state_cache."  The
> general terminology with caches is that we "invalidate" them rather than
> "set invalid," and that also matches the terminology used by the
> register bit itself.
> 
>> +{
>> +	*cs++ = MI_LOAD_REGISTER_IMM(1);
>> +	*cs++ = i915_mmio_reg_offset(GEN12_CS_DEBUG_MODE2);
>> +	*cs++ = _MASKED_BIT_ENABLE(INSTRUCTION_STATE_CACHE_INVALIDATE);
>> +	return cs;
>> +}
>> +
>>   static u32 *
>>   gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
>>   {
>> @@ -1345,6 +1354,12 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
>>   
>>   	cs = gen12_emit_aux_table_inv(ce->engine, cs);
>>   
>> +	/* Wa_18022495364 */
>> +	if (IS_ALDERLAKE_P(ce->engine->i915) || IS_ALDERLAKE_P_N(ce->engine->i915) ||
> 
> ADL-N is defined as a subplatform of ADL-P in the driver, so ADL-N
> platforms will automatically be matched by the IS_ALDERLAKE_P; you don't
> need the IS_ALDERLAKE_P_N condition here (that's only for the rare
> places where we want to match ADL-N specifically _without_ matching
> other ADL-P platforms as well).
> 
>> +	    IS_ALDERLAKE_S(ce->engine->i915) || IS_TIGERLAKE(ce->engine->i915) ||
>> +		IS_ROCKETLAKE(ce->engine->i915) || IS_DG1(ce->engine->i915))
> 
> Since this workaround winds up applying to every single gen12lp platform, it's
> probably simpler to just write the condition as
> 
>      if (IS_GFX_GT_IP_RANGE(cs->engine->i915), IP_VER(12, 0), IP_VER(12, 10))

Can we haz a decoder sheet of ip ver to marketing/user platform names? 
It will be harder and harder to know when the thing is read out from the 
GPU register at runtime.

Wishing for platform strings in comments back maybe? :)

Regards,

Tvrtko

> 
> 
> Matt
> 
>> +		cs = gen12_set_instruction_state_cache_invalid(cs);
>> +
>>   	/* Wa_16014892111 */
>>   	if (IS_GFX_GT_IP_STEP(ce->engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>>   	    IS_GFX_GT_IP_STEP(ce->engine->gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
>> -- 
>> 2.34.1
>>
> 
