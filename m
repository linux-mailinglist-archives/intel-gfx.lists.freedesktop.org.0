Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C8926CF97
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 01:27:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FD3C6EB40;
	Wed, 16 Sep 2020 23:27:22 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 958226EB40
 for <Intel-GFX@lists.freedesktop.org>; Wed, 16 Sep 2020 23:27:21 +0000 (UTC)
IronPort-SDR: wOsK7VKyu3UmvcbkE8kBMgonCxYzNxSUh6kgGisCNsGpqaRyu1hLMTFv49FbMz0vOkdBgtrRfI
 BhoQm3YAGing==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="147269956"
X-IronPort-AV: E=Sophos;i="5.76,434,1592895600"; d="scan'208";a="147269956"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 16:27:20 -0700
IronPort-SDR: vrmifV819YvH2hrmdGecJNnLzS9gXidnMOW/x7h2cE8KnoP60hVPjCA3fzggDUwgcgzh4vFXVo
 ++wmgpkt7eFw==
X-IronPort-AV: E=Sophos;i="5.76,434,1592895600"; d="scan'208";a="483502702"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.212.88.203])
 ([10.212.88.203])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 16:27:20 -0700
To: John.C.Harrison@Intel.com, Intel-GFX@Lists.FreeDesktop.Org
References: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
 <20200916171653.2021483-3-John.C.Harrison@Intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <973cb6c0-3286-0c72-216d-2bd32e5d98f9@intel.com>
Date: Wed, 16 Sep 2020 16:27:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200916171653.2021483-3-John.C.Harrison@Intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 02/12] drm/i915/guc: Support logical engine
 mapping table in ADS
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
> The new GuC FW introduces a physical to logical engine mapping table in
> the GuC additional data structures which needs to be configured in order
> for the firmware to load. This patch initializes the table with a 1 to 1
> mapping.
>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> CC: John Harrison <John.C.Harrison@Intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c  | 23 +++++++++++++++++++++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h |  4 +++-
>   2 files changed, 26 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> index d44061033f23..57954c6360e0 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> @@ -48,6 +48,27 @@ static void guc_ct_pool_entries_init(struct guc_ct_pool_entry *pool, u32 num)
>   	memset(pool, 0, num * sizeof(*pool));
>   }
>   
> +static void guc_mapping_table_init(struct intel_gt *gt,
> +				   struct guc_gt_system_info *system_info)
> +{
> +	unsigned int i, j;
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
> +
> +	/* Table must be set to invalid values for entries not used */
> +	for (i = 0; i < GUC_MAX_ENGINE_CLASSES; ++i)
> +		for (j = 0; j < GUC_MAX_INSTANCES_PER_CLASS; ++j)
> +			system_info->mapping_table[i][j] =
> +				GUC_MAX_INSTANCES_PER_CLASS;
> +
> +	for_each_engine(engine, gt, id) {
> +		u8 guc_class = engine->class;
> +
> +		system_info->mapping_table[guc_class][engine->instance] =
> +			engine->instance;
> +	}
> +}
> +
>   /*
>    * The first 80 dwords of the register state context, containing the
>    * execlists and ppgtt registers.
> @@ -107,6 +128,8 @@ static void __guc_ads_init(struct intel_guc *guc)
>   	blob->system_info.vebox_enable_mask = VEBOX_MASK(gt);
>   	blob->system_info.vdbox_sfc_support_mask = gt->info.vdbox_sfc_access;
>   
> +	guc_mapping_table_init(guc_to_gt(guc), &blob->system_info);
> +
>   	base = intel_guc_ggtt_offset(guc, guc->ads_vma);
>   
>   	/* Clients info  */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> index 8b3684c6a9a1..e283156624b5 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -388,7 +388,9 @@ struct guc_gt_system_info {
>   	u32 vdbox_enable_mask;
>   	u32 vdbox_sfc_support_mask;
>   	u32 vebox_enable_mask;
> -	u32 reserved[9];
> +	u32 reserved1;
> +	u8 mapping_table[GUC_MAX_ENGINE_CLASSES][GUC_MAX_INSTANCES_PER_CLASS];
> +	u32 reserved2[8];

I think this patch should be squashed with patch 8 to move directly to 
the v49 version of guc_gt_system_info.
Apart from this the patch LGTM.

Daniele

>   } __packed;
>   
>   /* Clients info */

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
