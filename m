Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B76C12EEA8F
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 01:51:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFA5E6E5B4;
	Fri,  8 Jan 2021 00:51:10 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A31406E5B4
 for <Intel-GFX@lists.freedesktop.org>; Fri,  8 Jan 2021 00:51:09 +0000 (UTC)
IronPort-SDR: bAnLIIaF+hnP9Rkq451DLnzJsN1JKj4bXXHCyRL4BofbVx+zjz1Uj9a4lqIQ32QFMv15T19rcR
 IEav4g6Ye+CA==
X-IronPort-AV: E=McAfee;i="6000,8403,9857"; a="176743199"
X-IronPort-AV: E=Sophos;i="5.79,330,1602572400"; d="scan'208";a="176743199"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 16:51:08 -0800
IronPort-SDR: il+UP5mHZVqlEmKv+XB8jVbqqwUfqGEWvett5e9D0V1fjyNetej63QB3/ckVHuGPnhx2gmL+Wr
 23PxU2/DGPFA==
X-IronPort-AV: E=Sophos;i="5.79,330,1602572400"; d="scan'208";a="566315627"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.213.185.10])
 ([10.213.185.10])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 16:51:08 -0800
To: John.C.Harrison@Intel.com, Intel-GFX@Lists.FreeDesktop.Org
References: <20210105211345.6990-1-John.C.Harrison@Intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <eea823a1-a738-d2a1-0b8b-f4501c65d936@intel.com>
Date: Thu, 7 Jan 2021 16:51:05 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210105211345.6990-1-John.C.Harrison@Intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: Add function to define
 defaults for GuC/HuC enable
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



On 1/5/2021 1:13 PM, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
>
> There is a module parameter for controlling what GuC/HuC features are
> enabled. Setting to -1 means 'use the default'. However, the default
> is not well defined, out of date and needs to be different across
> platforms.

I believe this needs a bit more detail about the change in behavior. -1 
used to map to HuC loading on all gen11+ platforms, while after this 
change it will map to disabled on all current platforms and HuC loading 
on dg1 and all future platforms.

> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> CC: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_uc.c    | 28 ++++++++++++++++++++++--
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c |  7 +-----
>   drivers/gpu/drm/i915/i915_params.h       |  1 +
>   3 files changed, 28 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index 6a0452815c41..2c08db58cf12 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -15,6 +15,29 @@
>   static const struct intel_uc_ops uc_ops_off;
>   static const struct intel_uc_ops uc_ops_on;
>   
> +static void uc_expand_default_options(struct intel_uc *uc)
> +{
> +	struct drm_i915_private *i915 = uc_to_gt(uc)->i915;
> +
> +	if (i915->params.enable_guc != -1)
> +		return;
> +
> +	/* Don't enable GuC/HuC on pre-Gen12 */
> +	if (INTEL_GEN(i915) < 12) {
> +		i915->params.enable_guc = 0;
> +		return;
> +	}
> +
> +	/* Don't enable GuC/HuC on older Gen12 platforms */
> +	if (IS_TIGERLAKE(i915) || IS_ROCKETLAKE(i915)) {
> +		i915->params.enable_guc = 0;
> +		return;
> +	}
> +
> +	/* Default: enable HuC authentication only */
> +	i915->params.enable_guc = ENABLE_GUC_LOAD_HUC;
> +}
> +
>   /* Reset GuC providing us with fresh state for both GuC and HuC.
>    */
>   static int __intel_uc_reset_hw(struct intel_uc *uc)
> @@ -79,8 +102,7 @@ static void __confirm_options(struct intel_uc *uc)
>   			 "Incompatible option enable_guc=%d - %s\n",
>   			 i915->params.enable_guc, "GuC submission is N/A");
>   
> -	if (i915->params.enable_guc & ~(ENABLE_GUC_SUBMISSION |
> -					  ENABLE_GUC_LOAD_HUC))
> +	if (i915->params.enable_guc & ~ENABLE_GUC_MASK)
>   		drm_info(&i915->drm,
>   			 "Incompatible option enable_guc=%d - %s\n",
>   			 i915->params.enable_guc, "undocumented flag");
> @@ -88,6 +110,8 @@ static void __confirm_options(struct intel_uc *uc)
>   
>   void intel_uc_init_early(struct intel_uc *uc)
>   {
> +	uc_expand_default_options(uc);
> +
>   	intel_guc_init_early(&uc->guc);
>   	intel_huc_init_early(&uc->huc);

here there is a call to __confirm_options() that has a check for 
enable_guc == -1, which can be dropped since we can't reach here with 
that value anymore.

with these addressed:
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

>   
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> index 602f1a0bc587..67b06fde1225 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -152,16 +152,11 @@ __uc_fw_auto_select(struct drm_i915_private *i915, struct intel_uc_fw *uc_fw)
>   			uc_fw->path = NULL;
>   		}
>   	}
> -
> -	/* We don't want to enable GuC/HuC on pre-Gen11 by default */
> -	if (i915->params.enable_guc == -1 && p < INTEL_ICELAKE)
> -		uc_fw->path = NULL;
>   }
>   
>   static const char *__override_guc_firmware_path(struct drm_i915_private *i915)
>   {
> -	if (i915->params.enable_guc & (ENABLE_GUC_SUBMISSION |
> -				       ENABLE_GUC_LOAD_HUC))
> +	if (i915->params.enable_guc & ENABLE_GUC_MASK)
>   		return i915->params.guc_firmware_path;
>   	return "";
>   }
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
> index 330c03e2b4f7..f031966af5b7 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -32,6 +32,7 @@ struct drm_printer;
>   
>   #define ENABLE_GUC_SUBMISSION		BIT(0)
>   #define ENABLE_GUC_LOAD_HUC		BIT(1)
> +#define ENABLE_GUC_MASK			GENMASK(1, 0)
>   
>   /*
>    * Invoke param, a function-like macro, for each i915 param, with arguments:

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
