Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91561273783
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 02:33:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D1E789BDB;
	Tue, 22 Sep 2020 00:33:18 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D86E589BDB
 for <Intel-GFX@lists.freedesktop.org>; Tue, 22 Sep 2020 00:33:16 +0000 (UTC)
IronPort-SDR: HtU4Yh3Lhn/5tjXMYmvjA3MfjqsXdKJEqjRFAMUBZKo8zHbGXzIT5LUaLe/gfz7sDH7+nXOlk8
 PCOjeg4fs8Aw==
X-IronPort-AV: E=McAfee;i="6000,8403,9751"; a="160571994"
X-IronPort-AV: E=Sophos;i="5.77,288,1596524400"; d="scan'208";a="160571994"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2020 17:33:16 -0700
IronPort-SDR: AHlOnvqePBADI1nvwz4OVwZocVzMGNvi7xv2teLnPa9+ZzoMyH38BlNBM7Zm4wI/B97arKRTNn
 ksD5edKzBxyA==
X-IronPort-AV: E=Sophos;i="5.77,288,1596524400"; d="scan'208";a="290201930"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.212.26.61])
 ([10.212.26.61])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2020 17:33:15 -0700
To: John.C.Harrison@Intel.com, Intel-GFX@Lists.FreeDesktop.Org
References: <20200921175428.2914478-1-John.C.Harrison@Intel.com>
 <20200921175428.2914478-3-John.C.Harrison@Intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <99e54169-2d26-c9da-59f6-bdd3f68f9faa@intel.com>
Date: Mon, 21 Sep 2020 17:33:13 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200921175428.2914478-3-John.C.Harrison@Intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/guc: Improved reporting when
 GuC fails to load
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



On 9/21/2020 10:54 AM, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
>
> Rather than just saying 'GuC failed to load: -110', actually print out
> the GuC status register and break it down into the individual fields.
>
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c | 27 ++++++++++++++++++-----
>   1 file changed, 22 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> index d4a87f4c9421..eac84baf34e6 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> @@ -74,8 +74,9 @@ static inline bool guc_ready(struct intel_uncore *uncore, u32 *status)
>   		((val & GS_MIA_CORE_STATE) && (uk_val == GS_UKERNEL_LAPIC_DONE));
>   }
>   
> -static int guc_wait_ucode(struct intel_uncore *uncore)
> +static int guc_wait_ucode(struct intel_gt *gt)

No need to pass the GT here, you already have i915 in the uncore 
structure and you don't seem to be using the GT for anything else.

>   {
> +	struct intel_uncore *uncore = gt->uncore;
>   	u32 status;
>   	int ret;
>   
> @@ -91,16 +92,32 @@ static int guc_wait_ucode(struct intel_uncore *uncore)
>   	DRM_DEBUG_DRIVER("GuC status %#x\n", status);
>   
>   	if ((status & GS_BOOTROM_MASK) == GS_BOOTROM_RSA_FAILED) {
> -		DRM_ERROR("GuC firmware signature verification failed\n");
> +		drm_err(&gt->i915->drm, "GuC firmware signature verification failed\n");
>   		ret = -ENOEXEC;
> +		goto out;
>   	}
>   
>   	if ((status & GS_UKERNEL_MASK) == GS_UKERNEL_EXCEPTION) {
> -		DRM_ERROR("GuC firmware exception. EIP: %#x\n",
> -			  intel_uncore_read(uncore, SOFT_SCRATCH(13)));
> +		drm_err(&gt->i915->drm, "GuC firmware exception. EIP: %#x\n",
> +			intel_uncore_read(uncore, SOFT_SCRATCH(13)));
>   		ret = -ENXIO;
> +		goto out;
>   	}
>   
> +	if (ret) {
> +		drm_err(&gt->i915->drm, "GuC load failed: status: Reset = %d, "
> +			"BootROM = 0x%02X, UKernel = 0x%02X, "
> +			"MIA = 0x%02X, Auth = 0x%02X\n",
> +			(status >> GS_RESET_SHIFT) & 1,
> +			(status & GS_BOOTROM_MASK) >> GS_BOOTROM_SHIFT,

Could use the REG_FIELD_GET macro here and below to simplify the code

> +			(status & GS_UKERNEL_MASK) >> GS_UKERNEL_SHIFT,
> +			(status & GS_MIA_MASK) >> GS_MIA_SHIFT,
> +			(status & GS_AUTH_STATUS_MASK) >> GS_AUTH_STATUS_SHIFT);

IMO it'd be worth printing the status breakdown for all failures cases, 
even the 2 above, but not a blocker.

With the function parameter flipped back to uncore, this is:

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> +	}
> +
> +out:
> +	if (ret)
> +		drm_err(&gt->i915->drm, "GuC load failed: status = 0x%08X\n", status);
>   	return ret;
>   }
>   
> @@ -139,7 +156,7 @@ int intel_guc_fw_upload(struct intel_guc *guc)
>   	if (ret)
>   		goto out;
>   
> -	ret = guc_wait_ucode(uncore);
> +	ret = guc_wait_ucode(gt);
>   	if (ret)
>   		goto out;
>   

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
