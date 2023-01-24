Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD79679392
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 09:58:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D85710E630;
	Tue, 24 Jan 2023 08:58:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CA0D10E630
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 08:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674550689; x=1706086689;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Q1ee2KngcNaEb77Wqy4X6gCLODmnnK2FoQ8OIvcrkLw=;
 b=m17a/CM1xQxFxjJF9R6C/A4hzwuCSSyZQZMYvTgUlAD23ohkLIyeXIXl
 J7eUAVoyOxepQHLj2AW2sU9QcoZiiZg8e29rexjwlw1icUuNYcQpmbk1Y
 YRlyqzBYeNCNObyHaZDm5jI+Y9Vjq3e9LfZVIVzi0HwLeQQAMChyzL5zm
 eEaTAv9EcabUyBhXGVWEoXVHVyD09f+FWL3f5ugLZ3QAFe9izuUYJ9Yhv
 YTuFX7GjDQJmd4PEntJDkerabt+xmWBua00CpClcI3WJJMhFdgOjbsGYp
 rbGTSdXUDag2QEmwylgc2Fbqp3sNuuruAoBZVXnFNT3tQDnBLylvo/t8i Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="390758104"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="390758104"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 00:58:09 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="804509841"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="804509841"
Received: from pesir-mobl.ger.corp.intel.com (HELO localhost) ([10.252.57.197])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 00:58:07 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Radhakrishna Sripada
 <radhakrishna.sripada@intel.com>
In-Reply-To: <Y8pxOlXj3gk0I2Nz@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230120010639.3691331-1-radhakrishna.sripada@intel.com>
 <Y8pxOlXj3gk0I2Nz@intel.com>
Date: Tue, 24 Jan 2023 10:58:05 +0200
Message-ID: <87sfg071ia.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Add workarounds
 Wa_14017066071, Wa_14017654203
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

On Fri, 20 Jan 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Thu, Jan 19, 2023 at 05:06:38PM -0800, Radhakrishna Sripada wrote:
>> This patch add the workaround to disable Sampler-OOO to avoid hang
>> during a benchmark.
>> 
>> Original Author: Madhumitha Tolakanhalli Pradeep
>
> This is not how we handle this. We keep her original authorship email
> and signed-off.

Also, "This patch" is redundant, and once committed, just wrong.

>
>> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
>>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 +++++++
>>  2 files changed, 8 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> index 4a4bab261e66..27b06ff380a9 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> @@ -1145,6 +1145,7 @@
>>  #define   ENABLE_SMALLPL			REG_BIT(15)
>>  #define   SC_DISABLE_POWER_OPTIMIZATION_EBB	REG_BIT(9)
>>  #define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
>> +#define   MTL_DISABLE_SAMPLER_SC_OOO		REG_BIT(3)
>>  
>>  #define GEN9_HALF_SLICE_CHICKEN7		MCR_REG(0xe194)
>>  #define   DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA	REG_BIT(15)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> index 918a271447e2..c52c5f9ad9ce 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -2332,6 +2332,13 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>>  		/* Wa_22014600077 */
>>  		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
>>  				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
>> +
>> +		/*
>> +		 * Wa_14017066071: mtl-p/m[a0]
>> +		 * Wa_14017654203: mtl-p/m[a0]
>> +		 */
>> +		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
>> +				 MTL_DISABLE_SAMPLER_SC_OOO);
>>  	}
>>  
>>  	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>> -- 
>> 2.34.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
