Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADA87DCD31
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 13:49:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BADCB10E49C;
	Tue, 31 Oct 2023 12:49:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA64C10E49C
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 12:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698756538; x=1730292538;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=/jFB1R6uA+Gh5zPfLH8GtmDfLcFdJ+8pH7dg0NsveVc=;
 b=PDwEL5uIITap4La0WxLF5IlEavNPjIeRcTHUUPw0mRiisf0OZYf43VKh
 s7W+qpbU2eljWbb77Xza942SFGDoDumzEFi4MRPjtZhMC4mqC/bpoozlu
 OwP0uHwFDT5xRWrhZQFOYG2K39YDMt+o+PsSYoPG9FO2K70XazzdU9hX2
 S/VwShSbM4x9+LuoojiOkUbcP6jgCJQPkfcczC2mX2DVs4ZBWwjZuSEWt
 qQL0qblGCpnYsYWISU/8GcS0Mdfrceg+vQy7GLaqyYu4p6oxFzmFS5869
 FxrbtX82M7btFK6cXtRDmzP1/C/IsdXZF3UaI3SQv4dvoEOmADnMVXqy5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="388101870"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="388101870"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 05:48:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; 
   d="scan'208";a="8313981"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.33.135])
 ([10.252.33.135])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 05:48:58 -0700
Message-ID: <4ac1d8f8-d108-9ff4-024f-85bc5394fb5d@linux.intel.com>
Date: Tue, 31 Oct 2023 13:48:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231031124502.1772160-1-jani.nikula@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20231031124502.1772160-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH RESEND 1/3] drm/i915: make some error
 capture functions static
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


On 10/31/2023 1:45 PM, Jani Nikula wrote:
> Not needed outside of i915_gpu_error.c.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_gpu_error.c | 8 ++++----
>   drivers/gpu/drm/i915/i915_gpu_error.h | 5 -----
>   2 files changed, 4 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 8275f9b6a47d..889db834f07d 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -520,7 +520,7 @@ __find_vma(struct i915_vma_coredump *vma, const char *name)
>   	return NULL;
>   }
>   
> -struct i915_vma_coredump *
> +static struct i915_vma_coredump *
>   intel_gpu_error_find_batch(const struct intel_engine_coredump *ee)
>   {
>   	return __find_vma(ee->vma, "batch");
> @@ -609,9 +609,9 @@ void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...)
>   	va_end(args);
>   }
>   
> -void intel_gpu_error_print_vma(struct drm_i915_error_state_buf *m,
> -			       const struct intel_engine_cs *engine,
> -			       const struct i915_vma_coredump *vma)
> +static void intel_gpu_error_print_vma(struct drm_i915_error_state_buf *m,
> +				      const struct intel_engine_cs *engine,
> +				      const struct i915_vma_coredump *vma)
>   {
>   	char out[ASCII85_BUFSZ];
>   	struct page *page;
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
> index 4ce227f7e1e1..8f9cdf056181 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
> @@ -277,11 +277,6 @@ static inline void intel_klog_error_capture(struct intel_gt *gt,
>   
>   __printf(2, 3)
>   void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...);
> -void intel_gpu_error_print_vma(struct drm_i915_error_state_buf *m,
> -			       const struct intel_engine_cs *engine,
> -			       const struct i915_vma_coredump *vma);
> -struct i915_vma_coredump *
> -intel_gpu_error_find_batch(const struct intel_engine_coredump *ee);
>   
>   struct i915_gpu_coredump *i915_gpu_coredump(struct intel_gt *gt,
>   					    intel_engine_mask_t engine_mask, u32 dump_flags);
