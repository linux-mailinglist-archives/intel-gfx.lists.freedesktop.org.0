Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACB026CFA9
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 01:32:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E7246EB44;
	Wed, 16 Sep 2020 23:32:33 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82B006EB44
 for <Intel-GFX@lists.freedesktop.org>; Wed, 16 Sep 2020 23:32:32 +0000 (UTC)
IronPort-SDR: o8qA0sDxJ53IYOG64h9Fe6MAw3eLCZhnrb4WuSYh0ueslQsFn1vkr2ObRdmVJFAisQO5ooo7N6
 Pwf1tW4yJoNA==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="158887177"
X-IronPort-AV: E=Sophos;i="5.76,434,1592895600"; d="scan'208";a="158887177"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 16:32:31 -0700
IronPort-SDR: u3P+O7HYrJY5oZF6M3I37SLM0Q/xOnn2S9p4XnkktsSzVAKqmRuvUK8M9Don1751+5otwYNLDL
 p9gmlilATGdQ==
X-IronPort-AV: E=Sophos;i="5.76,434,1592895600"; d="scan'208";a="483504645"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.212.88.203])
 ([10.212.88.203])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 16:32:31 -0700
To: John.C.Harrison@Intel.com, Intel-GFX@Lists.FreeDesktop.Org
References: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
 <20200916171653.2021483-5-John.C.Harrison@Intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <f00ac1c2-9fc5-782d-060d-c20f810db521@intel.com>
Date: Wed, 16 Sep 2020 16:32:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200916171653.2021483-5-John.C.Harrison@Intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 04/12] drm/i915/guc: Remove GUC_CTL_CTXINFO
 init param
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



On 9/16/2020 10:16 AM, John.C.Harrison@Intel.com wrote:
> From: Matthew Brost <matthew.brost@intel.com>
>
> The new GuC interface has removed GUC_CTL_CTXINFO from initialization
> params.
>
> Cc: John Harrison <john.c.harrison@intel.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c      | 18 ------------------
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 15 +++++----------
>   2 files changed, 5 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 942c7c187adb..6909da1e1a73 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -213,23 +213,6 @@ static u32 guc_ctl_feature_flags(struct intel_guc *guc)
>   	return flags;
>   }
>   
> -static u32 guc_ctl_ctxinfo_flags(struct intel_guc *guc)
> -{
> -	u32 flags = 0;
> -
> -	if (intel_guc_submission_is_used(guc)) {
> -		u32 ctxnum, base;
> -
> -		base = intel_guc_ggtt_offset(guc, guc->stage_desc_pool);
> -		ctxnum = GUC_MAX_STAGE_DESCRIPTORS / 16;
> -
> -		base >>= PAGE_SHIFT;
> -		flags |= (base << GUC_CTL_BASE_ADDR_SHIFT) |
> -			(ctxnum << GUC_CTL_CTXNUM_IN16_SHIFT);
> -	}
> -	return flags;
> -}
> -
>   static u32 guc_ctl_log_params_flags(struct intel_guc *guc)
>   {
>   	u32 offset = intel_guc_ggtt_offset(guc, guc->log.vma) >> PAGE_SHIFT;
> @@ -291,7 +274,6 @@ static void guc_init_params(struct intel_guc *guc)
>   
>   	BUILD_BUG_ON(sizeof(guc->params) != GUC_CTL_MAX_DWORDS * sizeof(u32));
>   
> -	params[GUC_CTL_CTXINFO] = guc_ctl_ctxinfo_flags(guc);
>   	params[GUC_CTL_LOG_PARAMS] = guc_ctl_log_params_flags(guc);
>   	params[GUC_CTL_FEATURE] = guc_ctl_feature_flags(guc);
>   	params[GUC_CTL_DEBUG] = guc_ctl_debug_flags(guc);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> index fa19c9d248f2..d4e2c32f44cf 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -62,12 +62,7 @@
>   #define GUC_STAGE_DESC_ATTR_PCH		BIT(6)
>   #define GUC_STAGE_DESC_ATTR_TERMINATED	BIT(7)
>   
> -/* New GuC control data */
> -#define GUC_CTL_CTXINFO			0
> -#define   GUC_CTL_CTXNUM_IN16_SHIFT	0
> -#define   GUC_CTL_BASE_ADDR_SHIFT	12
> -
> -#define GUC_CTL_LOG_PARAMS		1
> +#define GUC_CTL_LOG_PARAMS		0
>   #define   GUC_LOG_VALID			(1 << 0)
>   #define   GUC_LOG_NOTIFY_ON_HALF_FULL	(1 << 1)
>   #define   GUC_LOG_ALLOC_IN_MEGABYTE	(1 << 3)
> @@ -79,11 +74,11 @@
>   #define   GUC_LOG_ISR_MASK	        (0x7 << GUC_LOG_ISR_SHIFT)
>   #define   GUC_LOG_BUF_ADDR_SHIFT	12
>   
> -#define GUC_CTL_WA			2
> -#define GUC_CTL_FEATURE			3
> +#define GUC_CTL_WA			1
> +#define GUC_CTL_FEATURE			2
>   #define   GUC_CTL_DISABLE_SCHEDULER	(1 << 14)
>   
> -#define GUC_CTL_DEBUG			4
> +#define GUC_CTL_DEBUG			3
>   #define   GUC_LOG_VERBOSITY_SHIFT	0
>   #define   GUC_LOG_VERBOSITY_LOW		(0 << GUC_LOG_VERBOSITY_SHIFT)
>   #define   GUC_LOG_VERBOSITY_MED		(1 << GUC_LOG_VERBOSITY_SHIFT)
> @@ -97,7 +92,7 @@
>   #define   GUC_LOG_DISABLED		(1 << 6)
>   #define   GUC_PROFILE_ENABLED		(1 << 7)
>   
> -#define GUC_CTL_ADS			5
> +#define GUC_CTL_ADS			4
>   #define   GUC_ADS_ADDR_SHIFT		1
>   #define   GUC_ADS_ADDR_MASK		(0xFFFFF << GUC_ADS_ADDR_SHIFT)
>   

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
