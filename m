Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC8A7D3A16
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 16:54:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A91110E208;
	Mon, 23 Oct 2023 14:54:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F05E710E20A
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 14:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698072857; x=1729608857;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=+I1gQtoYuonjr5xa72KR8RGXMq/6TofHItT2+uqWVpE=;
 b=M2Hub20Sa0dptcX5Xtp617xoMrwL4JJN2/tEyuotKOLjcErmgfapJIAl
 ijn6FYRZnjnrxjDugGLloIzUw+oKU2G7xDdmfIQZ8zYOPr3KehYaP7mV9
 QDK07Yf1qxfiv6xWS1NH5K5uGrJAyQpBUvTeZ4d7E2RfcBgg9ZIPSAWWj
 7NtoCKwtkpiHpa512NPLeW4ss4i2f5H5yk2x8KFpAi8wdK5zATnZvwq64
 SwiouhfDtqwb40AF+41ou5VNuvU3nENS8Q9y2rW1xEZste/2NJw0FGoxA
 zHNFi38jW5DkRb0DNu7t7vUJ3K/1IdRCUe9avHntTGM1oq7iWsiDA2hP4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="8412082"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; 
   d="scan'208";a="8412082"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 07:54:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="901823819"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="901823819"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.1.152])
 ([10.213.1.152])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 07:51:57 -0700
Message-ID: <479cf69e-8a58-44e6-bc9b-5a16ede47b87@intel.com>
Date: Mon, 23 Oct 2023 16:54:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@linux.intel.com>, intel-gfx@lists.freedesktop.org
References: <20231023-wabb-v3-0-1a4fbc632440@intel.com>
 <20231023-wabb-v3-1-1a4fbc632440@intel.com>
 <6f87ca66-30ae-2c18-18b8-dd2eb85466f1@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <6f87ca66-30ae-2c18-18b8-dd2eb85466f1@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v3 1/4] drm/i915: Enable NULL PTE support
 for vm scratch
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
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 23.10.2023 14:23, Nirmoy Das wrote:
> 
> On 10/23/2023 9:41 AM, Andrzej Hajda wrote:
>> From: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>
>> Enable NULL PTE support for vm scratch pages.
>>
>> The use of NULL PTEs in vm scratch pages requires us to change how
>> the i915 gem_contexts live selftest perform vm_isolation: instead of
>> checking the scratch pages are isolated and don't affect each other, we
>> check that all changes to the scratch pages are voided.
>>
>> v2: fixed order of definitions
>> v3: fixed typo
>>
>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>> Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 6 ++++++
>>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c                  | 3 +++
>>   drivers/gpu/drm/i915/gt/intel_gtt.h                   | 1 +
>>   drivers/gpu/drm/i915/i915_drv.h                       | 2 ++
>>   drivers/gpu/drm/i915/i915_pci.c                       | 2 ++
>>   drivers/gpu/drm/i915/intel_device_info.h              | 1 +
>>   6 files changed, 15 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c 
>> b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
>> index 7021b6e9b219ef..48fc5990343bc7 100644
>> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
>> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
>> @@ -1751,6 +1751,12 @@ static int check_scratch_page(struct 
>> i915_gem_context *ctx, u32 *out)
>>       if (!vm)
>>           return -ENODEV;
>> +    if (HAS_NULL_PAGE(vm->i915)) {
>> +        if (out)
>> +            *out = 0;
>> +        return 0;
>> +    }
>> +
>>       if (!vm->scratch[0]) {
>>           pr_err("No scratch page!\n");
>>           return -EINVAL;
>> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c 
>> b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>> index 9895e18df0435a..84aa29715e0aca 100644
>> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>> @@ -855,6 +855,9 @@ static int gen8_init_scratch(struct 
>> i915_address_space *vm)
>>                                 I915_CACHE_NONE),
>>                      pte_flags);
>> +    if (HAS_NULL_PAGE(vm->i915))
>> +        vm->scratch[0]->encode |= PTE_NULL_PAGE;
>> +
>>       for (i = 1; i <= vm->top; i++) {
>>           struct drm_i915_gem_object *obj;
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h 
>> b/drivers/gpu/drm/i915/gt/intel_gtt.h
>> index b471edac269920..15c71da14d1d27 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
>> @@ -151,6 +151,7 @@ typedef u64 gen8_pte_t;
>>   #define GEN8_PAGE_PRESENT        BIT_ULL(0)
>>   #define GEN8_PAGE_RW            BIT_ULL(1)
>> +#define PTE_NULL_PAGE            BIT_ULL(9)
>>   #define GEN8_PDE_IPS_64K BIT(11)
>>   #define GEN8_PDE_PS_2M   BIT(7)
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h 
>> b/drivers/gpu/drm/i915/i915_drv.h
>> index cb60fc9cf87373..8f61137deb6cef 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -776,6 +776,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>    */
>>   #define HAS_FLAT_CCS(i915)   (INTEL_INFO(i915)->has_flat_ccs)
>> +#define HAS_NULL_PAGE(dev_priv) (INTEL_INFO(dev_priv)->has_null_page)
>> +
>>   #define HAS_GT_UC(i915)    (INTEL_INFO(i915)->has_gt_uc)
>>   #define HAS_POOLED_EU(i915)    (RUNTIME_INFO(i915)->has_pooled_eu)
>> diff --git a/drivers/gpu/drm/i915/i915_pci.c 
>> b/drivers/gpu/drm/i915/i915_pci.c
>> index 454467cfa52b9d..aa6e4559b0f0c7 100644
>> --- a/drivers/gpu/drm/i915/i915_pci.c
>> +++ b/drivers/gpu/drm/i915/i915_pci.c
>> @@ -642,6 +642,7 @@ static const struct intel_device_info jsl_info = {
>>       GEN(12), \
>>       TGL_CACHELEVEL, \
>>       .has_global_mocs = 1, \
>> +    .has_null_page = 1, \
>>       .has_pxp = 1, \
>>       .max_pat_index = 3
>> @@ -719,6 +720,7 @@ static const struct intel_device_info adl_p_info = {
>>       .has_logical_ring_contexts = 1, \
>>       .has_logical_ring_elsq = 1, \
>>       .has_mslice_steering = 1, \
>> +    .has_null_page = 1, \
>>       .has_oa_bpc_reporting = 1, \
>>       .has_oa_slice_contrib_limits = 1, \
>>       .has_oam = 1, \
> 
> Why only above platforms are picked, it is not clear from the commit 
> message.

This is git issue, it fails to parse #define, and provides incorrect 
owner hints, here we have actually:
1st: #define GEN12_FEATURES
2nd: #define XE_HP_FEATURES, which is included in all later gens.

So IIRC all gen12+.
Just for information - this patch will be dropped anyway.

Regards
Andrzej



> 
> 
> Regards,
> 
> Nirmoy
> 
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.h 
>> b/drivers/gpu/drm/i915/intel_device_info.h
>> index 39817490b13fd4..36e169695cd61b 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.h
>> +++ b/drivers/gpu/drm/i915/intel_device_info.h
>> @@ -160,6 +160,7 @@ enum intel_ppgtt_type {
>>       func(has_logical_ring_elsq); \
>>       func(has_media_ratio_mode); \
>>       func(has_mslice_steering); \
>> +    func(has_null_page); \
>>       func(has_oa_bpc_reporting); \
>>       func(has_oa_slice_contrib_limits); \
>>       func(has_oam); \
>>

