Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C442C671DB8
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 14:28:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 190DD10E753;
	Wed, 18 Jan 2023 13:28:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B436910E753
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 13:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674048485; x=1705584485;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=QDcxEYOLdgadnf8cc14jqP4/MycKlPNsLVLnAb0M2Y0=;
 b=J9jer+e0HjZZR444EBAJuulTHCBzbEqDnoMcmkGzyY+PmvFiRE6AVHuJ
 e0jeyWMzeyDptAY2FTaRQRMLZVS2dWSjs6Ww/19HCc1uI9o+n/Af0Pd7v
 veqPtB2NBeWSBxMaOPUu+2T77VeaMjcPHO8YbnHbrB7QYkKUSMODSdR5p
 8Vmuaownh8n3NjbNt51jQk9iKnJHiNu3fMgMhsHWzsjXGBW4dPcaBF6Zk
 LN14/80i7VFlinKSmJh0RGtpyJHtf2WIknTP3Y8aD3lWyk4Rew/B1U2f0
 hBDQ4U9dPOXppyMSXGR4+ocIO/HOEaga96Cj1wf+vRpkdregh7sZvFaKz g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="308540431"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="308540431"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 05:28:05 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="728198388"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="728198388"
Received: from llvincen-mobl.ger.corp.intel.com (HELO [10.213.215.37])
 ([10.213.215.37])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 05:28:04 -0800
Message-ID: <d12b1c5c-9c43-daa2-08e2-4b02c359bfe4@linux.intel.com>
Date: Wed, 18 Jan 2023 13:28:02 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230118131538.3558599-1-jani.nikula@intel.com>
 <20230118131538.3558599-6-jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230118131538.3558599-6-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: move I915_COLOR_UNEVICTABLE
 to i915_gem_gtt.h
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



On 18/01/2023 13:15, Jani Nikula wrote:
> Declutter i915_drv.h.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_drv.h     | 2 --
>   drivers/gpu/drm/i915/i915_gem_gtt.h | 2 ++
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index eed552e507dc..d12c7932677a 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -68,8 +68,6 @@ struct drm_i915_clock_gating_funcs;
>   struct vlv_s0ix_state;
>   struct intel_pxp;
>   
> -#define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
> -
>   #define GEM_QUIRK_PIN_SWIZZLED_PAGES	BIT(0)
>   
>   /* Data Stolen Memory (DSM) aka "i915 stolen memory" */
> diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.h b/drivers/gpu/drm/i915/i915_gem_gtt.h
> index 243419783052..3d77679bf211 100644
> --- a/drivers/gpu/drm/i915/i915_gem_gtt.h
> +++ b/drivers/gpu/drm/i915/i915_gem_gtt.h
> @@ -18,6 +18,8 @@ struct drm_i915_gem_object;
>   struct i915_address_space;
>   struct i915_gem_ww_ctx;
>   
> +#define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
> +
>   int __must_check i915_gem_gtt_prepare_pages(struct drm_i915_gem_object *obj,
>   					    struct sg_table *pages);
>   void i915_gem_gtt_finish_pages(struct drm_i915_gem_object *obj,

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
