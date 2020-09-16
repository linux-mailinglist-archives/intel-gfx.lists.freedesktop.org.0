Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EEF26CFB7
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 01:46:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A2CE6EB45;
	Wed, 16 Sep 2020 23:46:47 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 609C06EB45
 for <Intel-GFX@lists.freedesktop.org>; Wed, 16 Sep 2020 23:46:46 +0000 (UTC)
IronPort-SDR: HpsSijFxcOtgny25E4smyaqSvVhR7hg1PrE5IgK62pK9zg69i4QoBVSoIf0oTvkKFuP/FISaK/
 aWpGpgvGkAcw==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="159640700"
X-IronPort-AV: E=Sophos;i="5.76,434,1592895600"; d="scan'208";a="159640700"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 16:46:45 -0700
IronPort-SDR: KP7DbniNFixL8a1toBpaIMpzES70gXuZrzZ1+YHjFgOriY0H7ZIPtpP6uwkkG4p42TWRm/DCkE
 OiG4K0rGVyYw==
X-IronPort-AV: E=Sophos;i="5.76,434,1592895600"; d="scan'208";a="483508208"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.212.88.203])
 ([10.212.88.203])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 16:46:45 -0700
To: John.C.Harrison@Intel.com, Intel-GFX@Lists.FreeDesktop.Org
References: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
 <20200916171653.2021483-6-John.C.Harrison@Intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <a7fe8756-a0d0-c9d7-f365-127d84396e0c@intel.com>
Date: Wed, 16 Sep 2020 16:46:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200916171653.2021483-6-John.C.Harrison@Intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/12] drm/i915/guc: Kill
 guc_ads.reg_state_buffer
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
> From: Michal Wajdeczko <michal.wajdeczko@intel.com>
>
> Starting GuC firmware version 40.0 reg_state_buffer is maintained
> internally by the GuC as part of "private data".
>
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c  | 2 --
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 2 +-
>   2 files changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> index 7c16ade44b2b..a662825f67ad 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> @@ -83,7 +83,6 @@ struct __guc_ads_blob {
>   	struct guc_gt_system_info system_info;
>   	struct guc_clients_info clients_info;
>   	struct guc_ct_pool_entry ct_pool[GUC_CT_POOL_SIZE];
> -	u8 reg_state_buffer[GUC_S3_SAVE_SPACE_PAGES * PAGE_SIZE];
>   } __packed;
>   
>   static void __guc_ads_init(struct intel_guc *guc)
> @@ -141,7 +140,6 @@ static void __guc_ads_init(struct intel_guc *guc)
>   
>   	/* ADS */
>   	blob->ads.scheduler_policies = base + ptr_offset(blob, policies);
> -	blob->ads.reg_state_buffer = base + ptr_offset(blob, reg_state_buffer);
>   	blob->ads.reg_state_addr = base + ptr_offset(blob, reg_state);
>   	blob->ads.gt_system_info = base + ptr_offset(blob, system_info);
>   	blob->ads.clients_info = base + ptr_offset(blob, clients_info);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> index d4e2c32f44cf..f375388e8c50 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -407,7 +407,7 @@ struct guc_clients_info {
>   /* GuC Additional Data Struct */
>   struct guc_ads {
>   	u32 reg_state_addr;
> -	u32 reg_state_buffer;
> +	u32 reserved0;
>   	u32 scheduler_policies;
>   	u32 gt_system_info;
>   	u32 clients_info;

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
