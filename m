Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A0454F68E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 13:18:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F0CB10F980;
	Fri, 17 Jun 2022 11:18:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D8D510F980
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 11:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655464730; x=1687000730;
 h=message-id:date:mime-version:subject:from:to:references:
 in-reply-to:content-transfer-encoding;
 bh=SThJzBQynSfBCOaaNwO8i+TnReP7RUJDxEqaDahBrQg=;
 b=Qpsb4A5zEAGJ3R/7xP/wzidhkrrUdU66Hhtup7nUJDoKsVieE4Qemzi0
 ylfznXzuu5u6fi7rPjnGB+MsH0NHci17CCwbm0amoKWaOHRLHTSiUtp2C
 p4Pz4Oj344QUc5g27pINddr4knSYZr/QQaV49YNhR2Mpw592V02i9tTB7
 xBBoV7N7ifQhGxCEYhpAyFGrxGZj9qNXNA3IRhNGZvgP5jh8/1fzX+bmC
 obYqlMGhUNRiS2uwaf6V8Yd+I4y7hB0NJ9OxyP0+LIb3d1G8hPp+5U9xZ
 vFvRWPiWGKkoWcIKDOjKLLK4Yz+JayaUA46HMfRvzfSNeuW25gJ1TfXZV A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="280198162"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="280198162"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 04:18:49 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="641997102"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.251.216.190])
 ([10.251.216.190])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 04:18:38 -0700
Message-ID: <f1f66fe2-fa96-834a-d6c4-adca89667786@linux.intel.com>
Date: Fri, 17 Jun 2022 13:18:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
To: priyanka.dandamudi@intel.com, matthew.auld@intel.com,
 intel-gfx@lists.freedesktop.org
References: <20220616151247.1192063-1-priyanka.dandamudi@intel.com>
 <20220616151247.1192063-3-priyanka.dandamudi@intel.com>
 <878ef90b-0e7e-9e07-1a74-43f6bf096392@linux.intel.com>
In-Reply-To: <878ef90b-0e7e-9e07-1a74-43f6bf096392@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Add lmem_bar_size modparam
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


On 6/17/2022 9:54 AM, Das, Nirmoy wrote:
>
> On 6/16/2022 5:12 PM, priyanka.dandamudi@intel.com wrote:
>> From: Priyanka Dandamudi <priyanka.dandamudi@intel.com>
>>
>> For testing purposes, support forcing the lmem_bar_size through a new
>> modparam. In CI we only have a limited number of configurations for DG2,
>> but we still need to be reasonably sure we get a usable device (also
>> verifying we report the correct values for things like
>> probed_cpu_visible_size etc) with all the potential lmem_bar sizes that
>> we might expect see in the wild.
>>
>> v2: Update commit message and a minor modification.(Matt)
>>
>> Cc: Matthew Auld <matthew.auld@intel.com>
>> Signed-off-by: Priyanka Dandamudi <priyanka.dandamudi@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_region_lmem.c |  4 +++
>>   drivers/gpu/drm/i915/i915_driver.c          | 28 ++++++++++++++++++++-
>>   drivers/gpu/drm/i915/i915_params.c          |  2 ++
>>   drivers/gpu/drm/i915/i915_params.h          |  1 +
>>   4 files changed, 34 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c 
>> b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
>> index e9c12e0d6f59..4614c30f878f 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
>> @@ -111,6 +111,10 @@ static struct intel_memory_region 
>> *setup_lmem(struct intel_gt *gt)
>>           flat_ccs_base = intel_gt_read_register(gt, 
>> XEHPSDV_FLAT_CCS_BASE_ADDR);
>>           flat_ccs_base = (flat_ccs_base >> XEHPSDV_CCS_BASE_SHIFT) * 
>> SZ_64K;
>>   +        /* XXX: Remove this once we have small-bar uapi bits */
>> +        if (i915->params.lmem_bar_size > 0)
>> +            lmem_size = pci_resource_len(pdev, 2);
>> +
>>           /* FIXME: Remove this when we have small-bar enabled */
>>           if (pci_resource_len(pdev, 2) < lmem_size) {
>>               drm_err(&i915->drm, "System requires small-BAR support, 
>> which is currently unsupported on this kernel\n");
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c 
>> b/drivers/gpu/drm/i915/i915_driver.c
>> index 4bdb471cb2e2..b2763b032012 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -362,8 +362,34 @@ static void i915_resize_lmem_bar(struct 
>> drm_i915_private *i915)
>>       u32 pci_cmd;
>>       int i;
>>   -    if (!rebar_size)
>> +    if (i915->params.lmem_bar_size > 0) {
>> +        u32 lmem_bar_size;
>> +        u32 set_bit;
>> +        u32 rebar;
>> +        u32 msb;
>> +        int k;
>> +
>> +        lmem_bar_size = i915->params.lmem_bar_size;
>> +        rebar = pci_rebar_get_possible_sizes(pdev, LMEM_BAR_NUM);
>> +        msb = __fls(rebar);
>> +
>> +        for (k = msb; k >= 0; k--) {
>> +            set_bit = (1 << k);
>> +
>> +            if (set_bit & rebar) {
>> +                if (set_bit == lmem_bar_size) {
>> +                    rebar_size = 1ULL << (__fls(lmem_bar_size) +
>> +                            BAR_SIZE_SHIFT);
>
>
> We have pci_rebar_bytes_to_size() helper function for this please use 
> that.


What I mean is: these calculations are confusing(at-least for me).


You could do:

if (i915->params.lmem_bar_size)

     rebar_size = i915->params.lmem_bar_size (in bytes)

else

     rebar_size = device lmem_size; --> we need this to make sure we 
only rebar till roundup_pow_of_two(), not max of 
pci_rebar_get_possible_sizes().


Now validate that  pci_rebar_bytes_to_size(rebar_size) is within 
pci_rebar_get_possible_sizes() range.


Regards,

Nirmoy


>
> Nirmoy
>
>> +
>> +                    if (rebar_size == pci_resource_len(pdev, 
>> LMEM_BAR_NUM))
>> +                        return;
>> +                    break;
>> +                }
>> +            }
>> +        }
>> +    } else if (!rebar_size) {
>>           return;
>> +    }
>>         /* Find out if root bus contains 64bit memory addressing */
>>       while (root->parent)
>> diff --git a/drivers/gpu/drm/i915/i915_params.c 
>> b/drivers/gpu/drm/i915/i915_params.c
>> index 701fbc98afa0..6fc475a5db61 100644
>> --- a/drivers/gpu/drm/i915/i915_params.c
>> +++ b/drivers/gpu/drm/i915/i915_params.c
>> @@ -204,6 +204,8 @@ i915_param_named_unsafe(request_timeout_ms, uint, 
>> 0600,
>>     i915_param_named_unsafe(lmem_size, uint, 0400,
>>               "Set the lmem size(in MiB) for each region. (default: 
>> 0, all memory)");
>> +i915_param_named_unsafe(lmem_bar_size, uint, 0400,
>> +            "Set the lmem bar size(in MiB).");
>>     static __always_inline void _print_param(struct drm_printer *p,
>>                        const char *name,
>> diff --git a/drivers/gpu/drm/i915/i915_params.h 
>> b/drivers/gpu/drm/i915/i915_params.h
>> index b5e7ea45d191..2733cb6cfe09 100644
>> --- a/drivers/gpu/drm/i915/i915_params.h
>> +++ b/drivers/gpu/drm/i915/i915_params.h
>> @@ -74,6 +74,7 @@ struct drm_printer;
>>       param(char *, force_probe, CONFIG_DRM_I915_FORCE_PROBE, 0400) \
>>       param(unsigned int, request_timeout_ms, 
>> CONFIG_DRM_I915_REQUEST_TIMEOUT, CONFIG_DRM_I915_REQUEST_TIMEOUT ? 
>> 0600 : 0) \
>>       param(unsigned int, lmem_size, 0, 0400) \
>> +    param(unsigned int, lmem_bar_size, 0, 0400) \
>>       /* leave bools at the end to not create holes */ \
>>       param(bool, enable_hangcheck, true, 0600) \
>>       param(bool, load_detect_test, false, 0600) \
