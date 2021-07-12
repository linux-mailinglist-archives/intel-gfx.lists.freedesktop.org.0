Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 597013C64CA
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 22:12:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F59189EB8;
	Mon, 12 Jul 2021 20:11:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55CDF899AB;
 Mon, 12 Jul 2021 20:11:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10043"; a="209864507"
X-IronPort-AV: E=Sophos;i="5.84,234,1620716400"; d="scan'208";a="209864507"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 13:11:56 -0700
X-IronPort-AV: E=Sophos;i="5.84,234,1620716400"; d="scan'208";a="412701272"
Received: from johnharr-mobl1.amr.corp.intel.com (HELO [10.209.125.18])
 ([10.209.125.18])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 13:11:56 -0700
To: Matthew Brost <matthew.brost@intel.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
References: <20210624070516.21893-1-matthew.brost@intel.com>
 <20210624070516.21893-34-matthew.brost@intel.com>
From: John Harrison <john.c.harrison@intel.com>
Message-ID: <36f5cf81-ccc5-e4b5-a7c1-65af4e30c5b6@intel.com>
Date: Mon, 12 Jul 2021 13:11:55 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210624070516.21893-34-matthew.brost@intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH 33/47] drm/i915/guc: Add disable interrupts
 to guc sanitize
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 6/24/2021 00:05, Matthew Brost wrote:
> Add disable GuC interrupts to intel_guc_sanitize(). Part of this
> requires moving the guc_*_interrupt wrapper function into header file
> intel_guc.h.
>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h | 16 ++++++++++++++++
>   drivers/gpu/drm/i915/gt/uc/intel_uc.c  | 21 +++------------------
>   2 files changed, 19 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 40c9868762d7..85ef6767f13b 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -217,9 +217,25 @@ static inline bool intel_guc_is_ready(struct intel_guc *guc)
>   	return intel_guc_is_fw_running(guc) && intel_guc_ct_enabled(&guc->ct);
>   }
>   
> +static inline void intel_guc_reset_interrupts(struct intel_guc *guc)
> +{
> +	guc->interrupts.reset(guc);
> +}
> +
> +static inline void intel_guc_enable_interrupts(struct intel_guc *guc)
> +{
> +	guc->interrupts.enable(guc);
> +}
> +
> +static inline void intel_guc_disable_interrupts(struct intel_guc *guc)
> +{
> +	guc->interrupts.disable(guc);
> +}
> +
>   static inline int intel_guc_sanitize(struct intel_guc *guc)
>   {
>   	intel_uc_fw_sanitize(&guc->fw);
> +	intel_guc_disable_interrupts(guc);
>   	intel_guc_ct_sanitize(&guc->ct);
>   	guc->mmio_msg = 0;
>   
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index f0b02200aa01..ab11fe731ee7 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -207,21 +207,6 @@ static void guc_handle_mmio_msg(struct intel_guc *guc)
>   	spin_unlock_irq(&guc->irq_lock);
>   }
>   
> -static void guc_reset_interrupts(struct intel_guc *guc)
> -{
> -	guc->interrupts.reset(guc);
> -}
> -
> -static void guc_enable_interrupts(struct intel_guc *guc)
> -{
> -	guc->interrupts.enable(guc);
> -}
> -
> -static void guc_disable_interrupts(struct intel_guc *guc)
> -{
> -	guc->interrupts.disable(guc);
> -}
> -
>   static int guc_enable_communication(struct intel_guc *guc)
>   {
>   	struct intel_gt *gt = guc_to_gt(guc);
> @@ -242,7 +227,7 @@ static int guc_enable_communication(struct intel_guc *guc)
>   	guc_get_mmio_msg(guc);
>   	guc_handle_mmio_msg(guc);
>   
> -	guc_enable_interrupts(guc);
> +	intel_guc_enable_interrupts(guc);
>   
>   	/* check for CT messages received before we enabled interrupts */
>   	spin_lock_irq(&gt->irq_lock);
> @@ -265,7 +250,7 @@ static void guc_disable_communication(struct intel_guc *guc)
>   	 */
>   	guc_clear_mmio_msg(guc);
>   
> -	guc_disable_interrupts(guc);
> +	intel_guc_disable_interrupts(guc);
>   
>   	intel_guc_ct_disable(&guc->ct);
>   
> @@ -463,7 +448,7 @@ static int __uc_init_hw(struct intel_uc *uc)
>   	if (ret)
>   		goto err_out;
>   
> -	guc_reset_interrupts(guc);
> +	intel_guc_reset_interrupts(guc);
>   
>   	/* WaEnableuKernelHeaderValidFix:skl */
>   	/* WaEnableGuCBootHashCheckNotSet:skl,bxt,kbl */

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
