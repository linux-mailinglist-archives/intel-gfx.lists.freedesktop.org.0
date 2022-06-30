Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E53E856152F
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 10:36:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 707D0113611;
	Thu, 30 Jun 2022 08:36:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FFDA113611
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 08:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656578175; x=1688114175;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=3lQnN7Uwh5on6F8QVYuYN4NL8Lo1BuYN98a+z2LEnKA=;
 b=COAIJwb/iRTfRbEnEXbkxSlo5r+AjCNYlGNTdCVRlB5NCjOkUiTsL8k3
 uSpdZgUbXJnmX9w0h8BXf3vg/Lit7QVs+43rOHVm4iUEuXLj+7W0DvZez
 IYrzNx7UKUz+Ot41GjDEO//ShCrS2sBQk2RvMv4p3xsqmmZIFiFruHG5K
 RsTn8Nfs5eKibblyYjSeO25fXsOJvnH9GzdccTbpR/dkXL/Uc5bT4dFeH
 pYL/dvfu+2bp+2IUbOHQu0OUv9C8MoLMxmei37qNo+rS0LhI7BI0tEUv/
 DmOdLig3Ritu5s03bsjHVR4yz0fCqVL0UcBLdyj3Fq12YgohTJFBjtEhe g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="271054535"
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="271054535"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 01:36:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="647795719"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga008.fm.intel.com with ESMTP; 30 Jun 2022 01:36:13 -0700
Received: from [10.249.159.211] (unknown [10.249.159.211])
 by linux.intel.com (Postfix) with ESMTP id 2C6C85806C8;
 Thu, 30 Jun 2022 01:36:11 -0700 (PDT)
Message-ID: <ef577780-fc21-b186-8bef-efb4954b4c17@intel.com>
Date: Thu, 30 Jun 2022 11:36:10 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>
References: <20220627125928.177845-1-lionel.g.landwerlin@intel.com>
 <YrzPKae38BnFCDcU@mdroper-desk1.amr.corp.intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <YrzPKae38BnFCDcU@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dg2: Add performance workaround
 18019455067
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

On 30/06/2022 01:16, Matt Roper wrote:
> On Mon, Jun 27, 2022 at 03:59:28PM +0300, Lionel Landwerlin wrote:
>> The recommended number of stackIDs for Ray Tracing subsystem is 512
>> rather than 2048 (default HW programming).
>>
>> v2: Move the programming to dg2_ctx_gt_tuning_init() (Lucas)
> I'm not sure this is actually the correct move.  As far as I can see on
> bspec 46261, RT_CTRL isn't part of the engine's context, so we need to
> make sure it gets added to engine->wa_list instead of
> engine->ctx_wa_list, otherwise it won't be properly re-applied after
> engine resets and such.  Most of our other tuning values are part of the
> context image, so this one is a bit unusual.
>
> To get it onto the engine->wa_list, the workaround needs to either be
> defined via rcs_engine_wa_init() or general_render_compute_wa_init().
> The latter is the new, preferred location for registers that are part of
> the render/compute reset domain, but that don't live in the RCS engine's
> 0x2xxx MMIO range (since all RCS and CCS engines get reset together, the
> items in general_render_compute_wa_init() will make sure it's dealt with
> as part of the handling for the first RCS/CCS engine, so that we won't
> miss out on applying it if the platform doesn't have an RCS).
>
> At the moment we don't have too many "tuning" values that we need to set
> that aren't part of an engine's context, so we don't yet have a
> dedicated "tuning" function for engine-style workarounds like we do with
> ctx-style workarounds.
>
>
> Matt


Thanks Matt,


I didn't pay attention to the register offset and that it's not 
context/engine specific.

Moving it to general_render_compute_wa_init()


-Lionel


>
>> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 4 ++++
>>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
>>   2 files changed, 9 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> index 07ef111947b8c..12fc87b957425 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> @@ -1112,6 +1112,10 @@
>>   #define   GEN12_PUSH_CONST_DEREF_HOLD_DIS	REG_BIT(8)
>>   
>>   #define RT_CTRL					_MMIO(0xe530)
>> +#define   RT_CTRL_NUMBER_OF_STACKIDS_MASK	REG_GENMASK(6, 5)
>> +#define   NUMBER_OF_STACKIDS_512		2
>> +#define   NUMBER_OF_STACKIDS_1024		1
>> +#define   NUMBER_OF_STACKIDS_2048		0
>>   #define   DIS_NULL_QUERY			REG_BIT(10)
>>   
>>   #define EU_PERF_CNTL1				_MMIO(0xe558)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> index 3213c593a55f4..4d80716b957d4 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -575,6 +575,11 @@ static void dg2_ctx_gt_tuning_init(struct intel_engine_cs *engine,
>>   	       FF_MODE2_TDS_TIMER_MASK,
>>   	       FF_MODE2_TDS_TIMER_128,
>>   	       0, false);
>> +	wa_write_clr_set(wal,
>> +			 RT_CTRL,
>> +			 RT_CTRL_NUMBER_OF_STACKIDS_MASK,
>> +			 REG_FIELD_PREP(RT_CTRL_NUMBER_OF_STACKIDS_MASK,
>> +					NUMBER_OF_STACKIDS_512));
>>   }
>>   
>>   /*
>> -- 
>> 2.34.1
>>

