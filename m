Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 609617BB506
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 12:23:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9686D10E0BB;
	Fri,  6 Oct 2023 10:23:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A331610E0BB
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 10:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696587784; x=1728123784;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ZJmJu/Dy+wS4qIXmt6n6wc3UWVEmhFeFkR7InBV7GL8=;
 b=VDA5G9AEDct7kr9J8DVos3TB/zJxp6dD8Rdtxn6AxzPB43pADuuPyETU
 chCGz1YXpbXYC1qvWzCzjcN7qvgRbuEvsxn5A1t6LTyobiWc++FkpkPvO
 Ibz82X7pr54grpLNbjb4joieqUhIQD2Fmqe1GRIOdCL0VyYYt9iCVh0Ty
 ZD+f5LD2cdvNROZce6S9hvJanptJwxkJewdwG3N4HVAqWMLfXsiExC1jB
 JxoyYWyLemomoNf8qRg8aRZ7ohzsBKwUiiD2Zl3RV+jv/hYteOakwAONf
 LxH7WWUAB9hooiq5AulhgFr6PLMBvILUVYgPFIwkNTTFQHivDIsRsi8gT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="364001856"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="364001856"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 03:23:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="787344009"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="787344009"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.35.45])
 ([10.249.35.45])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 03:23:02 -0700
Message-ID: <67c341a9-852b-f6f8-4635-39ec452bf270@linux.intel.com>
Date: Fri, 6 Oct 2023 12:22:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231005193536.1463159-1-jonathan.cavitt@intel.com>
 <20231005193536.1463159-3-jonathan.cavitt@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20231005193536.1463159-3-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v7 1/5] drm/i915: Add GuC TLB Invalidation
 device info flags
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
Cc: matthew.d.roper@intel.com, janusz.krzysztofik@intel.com,
 nirmoy.das@intel.com, andi.shyti@intel.com, chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/5/2023 9:35 PM, Jonathan Cavitt wrote:
> Add device info flags for if GuC TLB Invalidation is enabled.
>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_drv.h          | 1 +
>   drivers/gpu/drm/i915/intel_device_info.h | 3 ++-
>   2 files changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index cb60fc9cf8737..c53c5586c40c8 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -801,4 +801,5 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   #define HAS_LMEMBAR_SMEM_STOLEN(i915) (!HAS_LMEM(i915) && \
>   				       GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>   
> +#define HAS_GUC_TLB_INVALIDATION(i915)	(INTEL_INFO(i915)->has_guc_tlb_invalidation)
>   #endif
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 39817490b13fd..1cb2beff51835 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -153,6 +153,7 @@ enum intel_ppgtt_type {
>   	func(has_heci_pxp); \
>   	func(has_heci_gscfi); \
>   	func(has_guc_deprivilege); \
> +	func(has_guc_tlb_invalidation); \
>   	func(has_l3_ccs_read); \
>   	func(has_l3_dpf); \
>   	func(has_llc); \
> @@ -173,7 +174,7 @@ enum intel_ppgtt_type {
>   	func(has_coherent_ggtt); \
>   	func(tuning_thread_rr_after_dep); \
>   	func(unfenced_needs_alignment); \
> -	func(hws_needs_physical);
> +	func(hws_needs_physical); \


unrelated to this patch. otherwise this looks good.


Regards,

Nirmo

>   
>   struct intel_ip_version {
>   	u8 ver;
