Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F955192EA2
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 17:49:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDB3A6E0A1;
	Wed, 25 Mar 2020 16:49:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C476B6E0A1
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 16:49:04 +0000 (UTC)
IronPort-SDR: QXIsdSOVO8xqTqWCnht/WCl7Ctm6jOuJTSU94s9qX11KfxmkCYUHy5yYFyECTldveo5VFbNMvp
 5WYI9EQX7ViA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 09:49:04 -0700
IronPort-SDR: o/bp4Xc1iU53fSwm3mPR4lt+d0wzKOk5Zh4u77CYMwt0dlHbdzprzDoxrBpKYELGlqP5v3cD6f
 3jfDoyvfMh/Q==
X-IronPort-AV: E=Sophos;i="5.72,304,1580803200"; d="scan'208";a="446682054"
Received: from johnharr-mobl3.ger.corp.intel.com (HELO [10.212.150.155])
 ([10.212.150.155])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 09:49:03 -0700
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200312011631.15262-1-daniele.ceraolospurio@intel.com>
 <20200312011631.15262-4-daniele.ceraolospurio@intel.com>
From: John Harrison <John.C.Harrison@Intel.com>
Message-ID: <e9bb524e-39fa-19c4-d8a5-f5996f73afb8@Intel.com>
Date: Wed, 25 Mar 2020 09:49:02 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200312011631.15262-4-daniele.ceraolospurio@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 3/6] drm/i915/huc: make "support huc"
 reflect HW capabilities
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

On 3/11/2020 18:16, Daniele Ceraolo Spurio wrote:
> We currently initialize HuC support based on GuC being enabled in
> modparam; this means that huc_is_supported() can return false on HW that
> does have a HuC when enable_guc=0. The rationale for this behavior is
> that HuC requires GuC for authentication and therefore is not supported
> by itself. However, we do not allow defining HuC fw wthout GuC fw and
> selecting HuC in modparam implicitly selects GuC as well, so we can't
> actually hit a scenario where HuC is selected alone. Therefore, we can
> flip the support check to reflect the HW capabilities and fw
> availability, which is more intuitive and will make it cleaner to log
> HuC the difference between not supported in HW and not selected.
>
> Removing the difference between GuC and HuC also allows us to simplify
> the init_early, since we don't need to differentiate the support based
> on the type of uC.
>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>

Looks plausible to me.
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c    |  2 +-
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c | 14 -------------
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fw.h |  1 -
>   drivers/gpu/drm/i915/gt/uc/intel_huc.c    |  2 +-
>   drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c | 17 ---------------
>   drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h |  1 -
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c  | 25 +++++++++++++++--------
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h  |  3 +--
>   8 files changed, 20 insertions(+), 45 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 819f09ef51fc..827d75073879 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -169,7 +169,7 @@ void intel_guc_init_early(struct intel_guc *guc)
>   {
>   	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>   
> -	intel_guc_fw_init_early(guc);
> +	intel_uc_fw_init_early(&guc->fw, INTEL_UC_FW_TYPE_GUC);
>   	intel_guc_ct_init_early(&guc->ct);
>   	intel_guc_log_init_early(&guc->log);
>   	intel_guc_submission_init_early(guc);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> index 3a1c47d600ea..d4a87f4c9421 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> @@ -13,20 +13,6 @@
>   #include "intel_guc_fw.h"
>   #include "i915_drv.h"
>   
> -/**
> - * intel_guc_fw_init_early() - initializes GuC firmware struct
> - * @guc: intel_guc struct
> - *
> - * On platforms with GuC selects firmware for uploading
> - */
> -void intel_guc_fw_init_early(struct intel_guc *guc)
> -{
> -	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
> -
> -	intel_uc_fw_init_early(&guc->fw, INTEL_UC_FW_TYPE_GUC, HAS_GT_UC(i915),
> -			       INTEL_INFO(i915)->platform, INTEL_REVID(i915));
> -}
> -
>   static void guc_prepare_xfer(struct intel_uncore *uncore)
>   {
>   	u32 shim_flags = GUC_DISABLE_SRAM_INIT_TO_ZEROES |
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.h
> index b5ab639d7259..0b4d2a9c9435 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.h
> @@ -8,7 +8,6 @@
>   
>   struct intel_guc;
>   
> -void intel_guc_fw_init_early(struct intel_guc *guc);
>   int intel_guc_fw_upload(struct intel_guc *guc);
>   
>   #endif
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> index a74b65694512..d73dc21686e7 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> @@ -41,7 +41,7 @@ void intel_huc_init_early(struct intel_huc *huc)
>   {
>   	struct drm_i915_private *i915 = huc_to_gt(huc)->i915;
>   
> -	intel_huc_fw_init_early(huc);
> +	intel_uc_fw_init_early(&huc->fw, INTEL_UC_FW_TYPE_HUC);
>   
>   	if (INTEL_GEN(i915) >= 11) {
>   		huc->status.reg = GEN11_HUC_KERNEL_LOAD_INFO;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
> index 9cdf4cbe691c..e5ef509c70e8 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
> @@ -7,23 +7,6 @@
>   #include "intel_huc_fw.h"
>   #include "i915_drv.h"
>   
> -/**
> - * intel_huc_fw_init_early() - initializes HuC firmware struct
> - * @huc: intel_huc struct
> - *
> - * On platforms with HuC selects firmware for uploading
> - */
> -void intel_huc_fw_init_early(struct intel_huc *huc)
> -{
> -	struct intel_gt *gt = huc_to_gt(huc);
> -	struct intel_uc *uc = &gt->uc;
> -	struct drm_i915_private *i915 = gt->i915;
> -
> -	intel_uc_fw_init_early(&huc->fw, INTEL_UC_FW_TYPE_HUC,
> -			       intel_uc_wants_guc(uc),
> -			       INTEL_INFO(i915)->platform, INTEL_REVID(i915));
> -}
> -
>   /**
>    * intel_huc_fw_upload() - load HuC uCode to device
>    * @huc: intel_huc structure
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h
> index b791269ce923..12f264ee3e0b 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h
> @@ -8,7 +8,6 @@
>   
>   struct intel_huc;
>   
> -void intel_huc_fw_init_early(struct intel_huc *huc);
>   int intel_huc_fw_upload(struct intel_huc *huc);
>   
>   #endif
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> index 18c755203688..fa893dd1823c 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -11,16 +11,22 @@
>   #include "intel_uc_fw_abi.h"
>   #include "i915_drv.h"
>   
> -static inline struct intel_gt *__uc_fw_to_gt(struct intel_uc_fw *uc_fw)
> +static inline struct intel_gt *
> +____uc_fw_to_gt(struct intel_uc_fw *uc_fw, enum intel_uc_fw_type type)
>   {
> -	GEM_BUG_ON(uc_fw->status == INTEL_UC_FIRMWARE_UNINITIALIZED);
> -	if (uc_fw->type == INTEL_UC_FW_TYPE_GUC)
> +	if (type == INTEL_UC_FW_TYPE_GUC)
>   		return container_of(uc_fw, struct intel_gt, uc.guc.fw);
>   
> -	GEM_BUG_ON(uc_fw->type != INTEL_UC_FW_TYPE_HUC);
> +	GEM_BUG_ON(type != INTEL_UC_FW_TYPE_HUC);
>   	return container_of(uc_fw, struct intel_gt, uc.huc.fw);
>   }
>   
> +static inline struct intel_gt *__uc_fw_to_gt(struct intel_uc_fw *uc_fw)
> +{
> +	GEM_BUG_ON(uc_fw->status == INTEL_UC_FIRMWARE_UNINITIALIZED);
> +	return ____uc_fw_to_gt(uc_fw, uc_fw->type);
> +}
> +
>   #ifdef CONFIG_DRM_I915_DEBUG_GUC
>   void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
>   			       enum intel_uc_fw_status status)
> @@ -195,9 +201,10 @@ static void __uc_fw_user_override(struct intel_uc_fw *uc_fw)
>    * firmware to fetch and load.
>    */
>   void intel_uc_fw_init_early(struct intel_uc_fw *uc_fw,
> -			    enum intel_uc_fw_type type, bool supported,
> -			    enum intel_platform platform, u8 rev)
> +			    enum intel_uc_fw_type type)
>   {
> +	struct drm_i915_private *i915 = ____uc_fw_to_gt(uc_fw, type)->i915;
> +
>   	/*
>   	 * we use FIRMWARE_UNINITIALIZED to detect checks against uc_fw->status
>   	 * before we're looked at the HW caps to see if we have uc support
> @@ -208,8 +215,10 @@ void intel_uc_fw_init_early(struct intel_uc_fw *uc_fw,
>   
>   	uc_fw->type = type;
>   
> -	if (supported) {
> -		__uc_fw_auto_select(uc_fw, platform, rev);
> +	if (HAS_GT_UC(i915)) {
> +		__uc_fw_auto_select(uc_fw,
> +				    INTEL_INFO(i915)->platform,
> +				    INTEL_REVID(i915));
>   		__uc_fw_user_override(uc_fw);
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
> index 888ff0de0244..23d3a423ac0f 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
> @@ -239,8 +239,7 @@ static inline u32 intel_uc_fw_get_upload_size(struct intel_uc_fw *uc_fw)
>   }
>   
>   void intel_uc_fw_init_early(struct intel_uc_fw *uc_fw,
> -			    enum intel_uc_fw_type type, bool supported,
> -			    enum intel_platform platform, u8 rev);
> +			    enum intel_uc_fw_type type);
>   int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw);
>   void intel_uc_fw_cleanup_fetch(struct intel_uc_fw *uc_fw);
>   int intel_uc_fw_upload(struct intel_uc_fw *uc_fw, u32 offset, u32 dma_flags);

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
