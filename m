Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BFA7B97FC
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 00:27:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDA8F10E13D;
	Wed,  4 Oct 2023 22:27:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B76D210E13D
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 22:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696458464; x=1727994464;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=GDTDLFYQqrJ1ZExq9hIPsC9y49vU7QVqAOpzLgay5DY=;
 b=kaus3zAoXYBFEQbyBHaNAUZTTj2McMDKfG2Q38yZ5AczVJe2NxQdZGCH
 3ai9ngH6BhC8k99luuhJ/NUI+veLvZDz727K3VJRSZNHRqiticPRuNEKn
 jIno8Up+zX5kgIxnSk8IJSxw01o/PUhKt18EV1hC6nXWzW0Wdjst2uB07
 DhAQk8T3aSdqvkCePAt1BOjOAFN1qsKyJ4h7eEfO0QQm//iwPPGG8zyV2
 kyB9122yInGoFX9Ck9L219vT73OgzIUmqm1xTWgs33hQJVl+0E0THjvuA
 RtdCeFeU9kjjmX9xreXb4LLS7v+g52265qGx9x5flpr2U630fs1a4zOgC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="386152636"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="386152636"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 15:27:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="751525251"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="751525251"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga002.jf.intel.com with ESMTP; 04 Oct 2023 15:27:40 -0700
Received: from [10.249.133.82] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.133.82])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2B3AD34942;
 Wed,  4 Oct 2023 23:27:39 +0100 (IST)
Message-ID: <16079d61-0fb7-6f2c-b36c-df2a704a2a98@intel.com>
Date: Thu, 5 Oct 2023 00:27:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231004220739.1313307-1-jonathan.cavitt@intel.com>
 <20231004220739.1313307-2-jonathan.cavitt@intel.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <20231004220739.1313307-2-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
Cc: matthew.d.roper@intel.com, janusz.krzysztofik@intel.com,
 nirmoy.das@intel.com, andi.shyti@intel.com, chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 05.10.2023 00:07, Jonathan Cavitt wrote:
> Add pci (device info) flags for if GuC TLB Invalidation is enabled.

nit: maybe avoid using "PCI flag" term here (and in the title) as this
could be little misleading - better stick to "device info flag"

> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 1 +
>  drivers/gpu/drm/i915/intel_device_info.h | 3 ++-
>  2 files changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index cb60fc9cf8737..c53c5586c40c8 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -801,4 +801,5 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_LMEMBAR_SMEM_STOLEN(i915) (!HAS_LMEM(i915) && \
>  				       GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>  
> +#define HAS_GUC_TLB_INVALIDATION(i915)	(INTEL_INFO(i915)->has_guc_tlb_invalidation)
>  #endif
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 39817490b13fd..ad54db0a22470 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -173,7 +173,8 @@ enum intel_ppgtt_type {
>  	func(has_coherent_ggtt); \
>  	func(tuning_thread_rr_after_dep); \
>  	func(unfenced_needs_alignment); \
> -	func(hws_needs_physical);
> +	func(hws_needs_physical); \
> +	func(has_guc_tlb_invalidation);

nit: there is already another "has_guc_deprivilege" flag so maybe we
want to keep all GuC flags together ?

>  
>  struct intel_ip_version {
>  	u8 ver;
