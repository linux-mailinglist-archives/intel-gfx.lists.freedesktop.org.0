Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2F07B9D49
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 15:19:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 624FD10E3FB;
	Thu,  5 Oct 2023 13:19:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E2CF10E3FB
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 13:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696511978; x=1728047978;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=BKEFyXdVUOgzDNXjck1gpnqqCyRLhtcXbZk2cjizE9M=;
 b=c76GXaGSUkdpsMhM3AB6ChfO2y8E/helBNavD3f/RyYYhdNezhEAz4o1
 5+XaIM+MJMSvoao94y5QVOtfURnJxoBgXDoHSoQzRDxs6CLU2uQ+FcMI6
 ziv9I7Hm4MIXDgVQC8qRwoT2sVgR3EplwW3NSWUDYLS4ebCBTnM9yPtru
 E7vkYHYS0y4i3dj+FjQ/HIU39ku9gDhGfY71J8ay+Qtp1Ld4qmmACSMrR
 c7s4Oyf0YPqzIi2aopyb6WxXSpkrLkNNDvTuS7HBH/iUJ256tbe+rfB57
 a82zAebjmIPTfV7FNjBBn1vm0geY172v2LzV/7jYV9wJjFi10J02v7EwX A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="382358814"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="382358814"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 06:15:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="781249044"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="781249044"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 06:15:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <16079d61-0fb7-6f2c-b36c-df2a704a2a98@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231004220739.1313307-1-jonathan.cavitt@intel.com>
 <20231004220739.1313307-2-jonathan.cavitt@intel.com>
 <16079d61-0fb7-6f2c-b36c-df2a704a2a98@intel.com>
Date: Thu, 05 Oct 2023 16:15:29 +0300
Message-ID: <87bkddciry.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH dii-client v6 1/5] drm/i915: Add GuC TLB
 Invalidation pci flags
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
Cc: andi.shyti@intel.com, janusz.krzysztofik@intel.com,
 chris.p.wilson@linux.intel.com, matthew.d.roper@intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 05 Oct 2023, Michal Wajdeczko <michal.wajdeczko@intel.com> wrote:
> On 05.10.2023 00:07, Jonathan Cavitt wrote:
>> Add pci (device info) flags for if GuC TLB Invalidation is enabled.
>
> nit: maybe avoid using "PCI flag" term here (and in the title) as this
> could be little misleading - better stick to "device info flag"
>
>> 
>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_drv.h          | 1 +
>>  drivers/gpu/drm/i915/intel_device_info.h | 3 ++-
>>  2 files changed, 3 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index cb60fc9cf8737..c53c5586c40c8 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -801,4 +801,5 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>  #define HAS_LMEMBAR_SMEM_STOLEN(i915) (!HAS_LMEM(i915) && \
>>  				       GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>>  
>> +#define HAS_GUC_TLB_INVALIDATION(i915)	(INTEL_INFO(i915)->has_guc_tlb_invalidation)
>>  #endif
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
>> index 39817490b13fd..ad54db0a22470 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.h
>> +++ b/drivers/gpu/drm/i915/intel_device_info.h
>> @@ -173,7 +173,8 @@ enum intel_ppgtt_type {
>>  	func(has_coherent_ggtt); \
>>  	func(tuning_thread_rr_after_dep); \
>>  	func(unfenced_needs_alignment); \
>> -	func(hws_needs_physical);
>> +	func(hws_needs_physical); \
>> +	func(has_guc_tlb_invalidation);
>
> nit: there is already another "has_guc_deprivilege" flag so maybe we
> want to keep all GuC flags together ?

	/* Keep has_* in alphabetical order */ \

>
>>  
>>  struct intel_ip_version {
>>  	u8 ver;

-- 
Jani Nikula, Intel
