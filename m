Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F4616BB38
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 08:49:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41A656E9F8;
	Tue, 25 Feb 2020 07:49:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9387C6E9F8
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 07:49:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 23:49:12 -0800
X-IronPort-AV: E=Sophos;i="5.70,483,1574150400"; d="scan'208";a="230939826"
Received: from zye4-mobl1.amr.corp.intel.com (HELO [10.254.213.43])
 ([10.254.213.43])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 24 Feb 2020 23:49:10 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200221153209.268712-1-michal.wajdeczko@intel.com>
From: "Ye, Tony" <tony.ye@intel.com>
Message-ID: <c71b8087-9159-20ce-51c7-a862fb26b386@intel.com>
Date: Tue, 25 Feb 2020 15:49:04 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200221153209.268712-1-michal.wajdeczko@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/huc: Fix error reported by
 I915_PARAM_HUC_STATUS
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



On 2/21/2020 11:32 PM, Michal Wajdeczko wrote:
>  From commit 84b1ca2f0e68 ("drm/i915/uc: prefer intel_gt over i915
> in GuC/HuC paths") we stopped using HUC_STATUS error -ENODEV only
> to indicate lack of HuC hardware and we started to use this error
> also for all other cases when HuC was not in use or supported.
> 
> Fix that by relying again on HAS_GT_UC macro, since currently
> used function intel_huc_is_supported() is based on HuC firmware
> support which could be unsupported also due to force disabled
> GuC firmware.
> 
> v2: use 0 only for disabled, add more error codes for other failures
> 
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Tony Ye <tony.ye@intel.com>
> Cc: Robert M. Fosha <robert.m.fosha@intel.com>
> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> #v1
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_huc.c | 29 +++++++++++++++++++++-----
>   1 file changed, 24 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> index a74b65694512..301bb5d5e59a 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> @@ -200,9 +200,13 @@ int intel_huc_auth(struct intel_huc *huc)
>    * This function reads status register to verify if HuC
>    * firmware was successfully loaded.
>    *
> - * Returns: 1 if HuC firmware is loaded and verified,
> - * 0 if HuC firmware is not loaded and -ENODEV if HuC
> - * is not present on this platform.
> + * Returns:
> + *  * 1 if HuC firmware is loaded and verified,
> + *  * 0 if HuC firmware was disabled,
> + *  * -ENODEV if HuC is not present on this platform,
> + *  * -ENOPKG if HuC firmware was not installed,
> + *  * -ENOEXEC if HuC firmware is invalid,
> + *  * -EACCES if HuC firmware was not authenticated.
>    */
>   int intel_huc_check_status(struct intel_huc *huc)
>   {
> @@ -210,11 +214,26 @@ int intel_huc_check_status(struct intel_huc *huc)
>   	intel_wakeref_t wakeref;
>   	u32 status = 0;
>   
> -	if (!intel_huc_is_supported(huc))
> +	if (!HAS_GT_UC(gt->i915))
>   		return -ENODEV;
>   
> +	switch (__intel_uc_fw_status(&huc->fw)) {
> +	case INTEL_UC_FIRMWARE_NOT_SUPPORTED:
> +	case INTEL_UC_FIRMWARE_DISABLED:
> +		return 0;
> +	case INTEL_UC_FIRMWARE_MISSING:
> +		return -ENOPKG;
> +	case INTEL_UC_FIRMWARE_ERROR:
> +		return -ENOEXEC;

What about INTEL_UC_FIRMWARE_FAIL?

Regards,
Tony

> +	default:
> +		break;
> +	}
> +
>   	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
>   		status = intel_uncore_read(gt->uncore, huc->status.reg);
>   
> -	return (status & huc->status.mask) == huc->status.value;
> +	if ((status & huc->status.mask) != huc->status.value)
> +		return -EACCES;
> +
> +	return 1;
>   }
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
