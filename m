Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7EB211C13F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 01:23:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E5E06EC1B;
	Thu, 12 Dec 2019 00:23:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59CDE6EC1B
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 00:23:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 16:23:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="388117701"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga005.jf.intel.com with ESMTP; 11 Dec 2019 16:23:24 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191210204744.65276-1-michal.wajdeczko@intel.com>
 <20191210204744.65276-2-michal.wajdeczko@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <0623f63e-372d-1047-896c-379e428ec6da@intel.com>
Date: Wed, 11 Dec 2019 16:23:33 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191210204744.65276-2-michal.wajdeczko@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 1/4] drm/i915/uc: Add ops to intel_uc
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



On 12/10/19 12:47 PM, Michal Wajdeczko wrote:
> Instead of spreading multiple conditionals across the uC code
> to find out current mode of uC operation, start using predefined
> set of function pointers that reflect that mode.
> 
> Begin with pair of init_hw/fini_hw functions that are responsible
> for uC hardware initialization and cleanup.
> 
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_uc.c | 49 +++++++++++++++++++++++----
>   drivers/gpu/drm/i915/gt/uc/intel_uc.h | 23 +++++++++++--
>   2 files changed, 63 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index c6519066a0f6..e3d1359f9719 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -12,6 +12,10 @@
>   
>   #include "i915_drv.h"
>   
> +extern const struct intel_uc_ops uc_ops_none;
> +extern const struct intel_uc_ops uc_ops_off;
> +extern const struct intel_uc_ops uc_ops_on;
> +
>   /* Reset GuC providing us with fresh state for both GuC and HuC.
>    */
>   static int __intel_uc_reset_hw(struct intel_uc *uc)
> @@ -89,6 +93,13 @@ void intel_uc_init_early(struct intel_uc *uc)
>   	intel_huc_init_early(&uc->huc);
>   
>   	__confirm_options(uc);
> +
> +	if (intel_uc_uses_guc(uc))
> +		uc->ops = &uc_ops_on;
> +	else if (intel_uc_supports_guc(uc))
> +		uc->ops = &uc_ops_off;
> +	else
> +		uc->ops = &uc_ops_none;
>   }
>   
>   void intel_uc_driver_late_release(struct intel_uc *uc)
> @@ -413,24 +424,36 @@ static bool uc_is_wopcm_locked(struct intel_uc *uc)
>   	       (intel_uncore_read(uncore, DMA_GUC_WOPCM_OFFSET) & GUC_WOPCM_OFFSET_VALID);
>   }
>   
> -int intel_uc_init_hw(struct intel_uc *uc)
> +static int __uc_check_hw(struct intel_uc *uc)
> +{
> +	GEM_BUG_ON(!intel_uc_supports_guc(uc));
> +
> +	/*
> +	 * We can silently continue without GuC only if it was never enabled
> +	 * before on this system after reboot, otherwise we risk GPU hangs.
> +	 * To check if GuC was loaded before we look at WOPCM registers.
> +	 */
> +	if (uc_is_wopcm_locked(uc))
> +		return -EIO;
> +
> +	return 0;
> +}
> +
> +static int __uc_init_hw(struct intel_uc *uc)
>   {
>   	struct drm_i915_private *i915 = uc_to_gt(uc)->i915;
>   	struct intel_guc *guc = &uc->guc;
>   	struct intel_huc *huc = &uc->huc;
>   	int ret, attempts;
>   
> -	if (!intel_uc_supports_guc(uc))
> -		return 0;
> +	GEM_BUG_ON(!intel_uc_supports_guc(uc));
> +	GEM_BUG_ON(!intel_uc_uses_guc(uc));
>   
>   	/*
>   	 * We can silently continue without GuC only if it was never enabled
>   	 * before on this system after reboot, otherwise we risk GPU hangs.
>   	 * To check if GuC was loaded before we look at WOPCM registers.
>   	 */
> -	if (!intel_uc_uses_guc(uc) && !uc_is_wopcm_locked(uc))
> -		return 0;
> -
>   	if (!intel_uc_fw_is_available(&guc->fw)) {
>   		ret = uc_is_wopcm_locked(uc) ||
>   		      intel_uc_fw_is_overridden(&guc->fw) ||
> @@ -528,7 +551,7 @@ int intel_uc_init_hw(struct intel_uc *uc)
>   	return -EIO;
>   }
>   
> -void intel_uc_fini_hw(struct intel_uc *uc)
> +static void __uc_fini_hw(struct intel_uc *uc)
>   {
>   	struct intel_guc *guc = &uc->guc;
>   
> @@ -628,3 +651,15 @@ int intel_uc_runtime_resume(struct intel_uc *uc)
>   	 */
>   	return __uc_resume(uc, true);
>   }
> +
> +const struct intel_uc_ops uc_ops_none = {
> +};
> +
> +const struct intel_uc_ops uc_ops_off = {
> +	.init_hw = __uc_check_hw,
> +};
> +

I'm not sold on having both uc_ops_off and uc_ops_none and I'd prefer 
them to be merged into one.
AFAICS, the only things you  do in uc_ops_off are __intel_uc_reset_hw 
and __uc_check_hw. __intel_uc_reset_hw shouldn't be needed, we do a GT 
reset when we come up and we're not touching the microcontrollers if 
intel_uc_uses_guc is false, so there should be no need to reset them. 
for __uc_check_hw, we can add an early return if !intel_uc_supports_guc 
so it is callable on all platforms and add it to uc_ops_none.

Daniele

> +const struct intel_uc_ops uc_ops_on = {
> +	.init_hw = __uc_init_hw,
> +	.fini_hw = __uc_fini_hw,
> +};
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
> index 527995c21196..36643e17a09e 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
> @@ -10,7 +10,15 @@
>   #include "intel_huc.h"
>   #include "i915_params.h"
>   
> +struct intel_uc;
> +
> +struct intel_uc_ops {
> +	int (*init_hw)(struct intel_uc *uc);
> +	void (*fini_hw)(struct intel_uc *uc);
> +};
> +
>   struct intel_uc {
> +	struct intel_uc_ops const *ops;
>   	struct intel_guc guc;
>   	struct intel_huc huc;
>   
> @@ -25,8 +33,6 @@ void intel_uc_fetch_firmwares(struct intel_uc *uc);
>   void intel_uc_cleanup_firmwares(struct intel_uc *uc);
>   void intel_uc_sanitize(struct intel_uc *uc);
>   void intel_uc_init(struct intel_uc *uc);
> -int intel_uc_init_hw(struct intel_uc *uc);
> -void intel_uc_fini_hw(struct intel_uc *uc);
>   void intel_uc_fini(struct intel_uc *uc);
>   void intel_uc_reset_prepare(struct intel_uc *uc);
>   void intel_uc_suspend(struct intel_uc *uc);
> @@ -64,4 +70,17 @@ static inline bool intel_uc_uses_huc(struct intel_uc *uc)
>   	return intel_huc_is_enabled(&uc->huc);
>   }
>   
> +static inline int intel_uc_init_hw(struct intel_uc *uc)
> +{
> +	if (uc->ops->init_hw)
> +		return uc->ops->init_hw(uc);
> +	return 0;
> +}
> +
> +static inline void intel_uc_fini_hw(struct intel_uc *uc)
> +{
> +	if (uc->ops->fini_hw)
> +		uc->ops->fini_hw(uc);
> +}
> +
>   #endif
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
