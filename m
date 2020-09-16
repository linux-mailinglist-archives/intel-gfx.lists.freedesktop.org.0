Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3DE26CFA8
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 01:30:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A9416EB43;
	Wed, 16 Sep 2020 23:30:27 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C9C06EB43
 for <Intel-GFX@lists.freedesktop.org>; Wed, 16 Sep 2020 23:30:25 +0000 (UTC)
IronPort-SDR: IzDbioI68Zar/UTLqg025qgQZU9qtUfmTAFQoqLwr2QviHAi/clx4T9esc0/gq5WDr8ko1/prC
 j8xik3bjt3Rg==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="177664151"
X-IronPort-AV: E=Sophos;i="5.76,434,1592895600"; d="scan'208";a="177664151"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 16:30:01 -0700
IronPort-SDR: /Xt1KAqNoKVBwgCHUDkZUWFqPny0Ss2qv3G4BbRu3oE98EFIcwc7PoBXihAoq/VHh9+FQSv8hz
 aaZZF/Cik/7g==
X-IronPort-AV: E=Sophos;i="5.76,434,1592895600"; d="scan'208";a="483503564"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.212.88.203])
 ([10.212.88.203])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 16:30:00 -0700
To: John.C.Harrison@Intel.com, Intel-GFX@Lists.FreeDesktop.Org
References: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
 <20200916171653.2021483-4-John.C.Harrison@Intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <6600042d-8853-0350-fee3-d75ea942e9c5@intel.com>
Date: Wed, 16 Sep 2020 16:30:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200916171653.2021483-4-John.C.Harrison@Intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 03/12] drm/i915/guc: Setup private_data
 pointer in GuC ADS
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
> The new GuC requires the additional data structure and associated
> 'private_data' pointer to be setup. This is basically a scratch area
> of memory that the GuC owns. The size is read from the CSS header.
>
> Cc: John Harrison <john.c.harrison@intel.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c   | 13 ++++++++++++-
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h  |  3 ++-
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c     |  3 +++
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h     |  2 ++
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h |  6 +++++-
>   5 files changed, 24 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> index 57954c6360e0..7c16ade44b2b 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> @@ -146,6 +146,10 @@ static void __guc_ads_init(struct intel_guc *guc)
>   	blob->ads.gt_system_info = base + ptr_offset(blob, system_info);
>   	blob->ads.clients_info = base + ptr_offset(blob, clients_info);
>   
> +	/* Private Data */
> +	blob->ads.private_data = base +
> +		PAGE_ALIGN(sizeof(struct __guc_ads_blob));
> +
>   	i915_gem_object_flush_map(guc->ads_vma->obj);
>   }
>   
> @@ -158,11 +162,13 @@ static void __guc_ads_init(struct intel_guc *guc)
>    */
>   int intel_guc_ads_create(struct intel_guc *guc)
>   {
> -	const u32 size = PAGE_ALIGN(sizeof(struct __guc_ads_blob));
> +	u32 size = PAGE_ALIGN(sizeof(struct __guc_ads_blob));
>   	int ret;
>   
>   	GEM_BUG_ON(guc->ads_vma);
>   
> +	size += PAGE_ALIGN(guc->fw.private_data_size);
> +
>   	ret = intel_guc_allocate_and_map_vma(guc, size, &guc->ads_vma,
>   					     (void **)&guc->ads_blob);
>   
> @@ -192,4 +198,9 @@ void intel_guc_ads_reset(struct intel_guc *guc)
>   	if (!guc->ads_vma)
>   		return;
>   	__guc_ads_init(guc);
> +
> +	if (guc->fw.private_data_size)
> +		memset((void *)guc->ads_blob +
> +		       PAGE_ALIGN(sizeof(struct __guc_ads_blob)), 0,
> +		       PAGE_ALIGN(guc->fw.private_data_size));
>   }
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> index e283156624b5..fa19c9d248f2 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -419,7 +419,8 @@ struct guc_ads {
>   	u32 control_data;
>   	u32 golden_context_lrca[GUC_MAX_ENGINE_CLASSES];
>   	u32 eng_state_size[GUC_MAX_ENGINE_CLASSES];
> -	u32 reserved[16];
> +	u32 private_data;
> +	u32 reserved[15];
>   } __packed;
>   
>   /* GuC logging structures */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> index 80e8b6c3bc8c..1928ce94faf8 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -371,6 +371,9 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
>   		}
>   	}
>   
> +	if (uc_fw->type == INTEL_UC_FW_TYPE_GUC)
> +		uc_fw->private_data_size = css->private_data_size;
> +
>   	obj = i915_gem_object_create_shmem_from_data(i915, fw->data, fw->size);
>   	if (IS_ERR(obj)) {
>   		err = PTR_ERR(obj);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
> index 23d3a423ac0f..99bb1fe1af66 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
> @@ -88,6 +88,8 @@ struct intel_uc_fw {
>   
>   	u32 rsa_size;
>   	u32 ucode_size;
> +
> +	u32 private_data_size;
>   };
>   
>   #ifdef CONFIG_DRM_I915_DEBUG_GUC
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h
> index 029214cdedd5..e41ffc7a7fbc 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h
> @@ -69,7 +69,11 @@ struct uc_css_header {
>   #define CSS_SW_VERSION_UC_MAJOR		(0xFF << 16)
>   #define CSS_SW_VERSION_UC_MINOR		(0xFF << 8)
>   #define CSS_SW_VERSION_UC_PATCH		(0xFF << 0)
> -	u32 reserved[14];
> +	u32 reserved0[13];
> +	union {
> +		u32 private_data_size; /* only applies to GuC */
> +		u32 reserved1;
> +	};
>   	u32 header_info;
>   } __packed;
>   static_assert(sizeof(struct uc_css_header) == 128);

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
