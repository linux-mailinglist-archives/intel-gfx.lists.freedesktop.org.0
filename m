Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C95A27F6CE
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Oct 2020 02:38:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7133889CC1;
	Thu,  1 Oct 2020 00:38:51 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEBDD89CC1
 for <Intel-GFX@lists.freedesktop.org>; Thu,  1 Oct 2020 00:38:49 +0000 (UTC)
IronPort-SDR: sxyML+f9rUfRK3WyZsTlmzccSAT+w8r2vXzIzOmDD2YD7nYYK/EbTj1atGon+ROvPiR3Jph9Ae
 3dtFHHdx+GDg==
X-IronPort-AV: E=McAfee;i="6000,8403,9760"; a="180736038"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="180736038"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 17:38:47 -0700
IronPort-SDR: AN94lmK0SfH/5mBF3MUgaZdoxNetrBt/phaCVAVMkRTdepTdYrWqElQmQ/NR2FqNtokJw46F93
 VyQIQDyP10gw==
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="500394692"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.209.184.141])
 ([10.209.184.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 17:38:46 -0700
To: John.C.Harrison@Intel.com, Intel-GFX@Lists.FreeDesktop.Org
References: <20200925232637.1968039-1-John.C.Harrison@Intel.com>
 <20200925232637.1968039-3-John.C.Harrison@Intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <6e127a5b-822d-b50d-c0be-4cab53ddc4d9@intel.com>
Date: Wed, 30 Sep 2020 17:38:43 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200925232637.1968039-3-John.C.Harrison@Intel.com>
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



On 9/25/2020 4:26 PM, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
>
> Rather than just saying 'GuC failed to load: -110', actually print out
> the GuC status register and break it down into the individual fields.
>
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c | 31 ++++++++++++++++-------
>   1 file changed, 22 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> index d4a87f4c9421..f9d0907ea1a5 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> @@ -76,6 +76,7 @@ static inline bool guc_ready(struct intel_uncore *uncore, u32 *status)
>   
>   static int guc_wait_ucode(struct intel_uncore *uncore)
>   {
> +	struct drm_device *drm = &uncore->i915->drm;
>   	u32 status;
>   	int ret;
>   
> @@ -90,15 +91,27 @@ static int guc_wait_ucode(struct intel_uncore *uncore)
>   	ret = wait_for(guc_ready(uncore, &status), 100);
>   	DRM_DEBUG_DRIVER("GuC status %#x\n", status);
>   
> -	if ((status & GS_BOOTROM_MASK) == GS_BOOTROM_RSA_FAILED) {
> -		DRM_ERROR("GuC firmware signature verification failed\n");
> -		ret = -ENOEXEC;
> -	}
> -
> -	if ((status & GS_UKERNEL_MASK) == GS_UKERNEL_EXCEPTION) {
> -		DRM_ERROR("GuC firmware exception. EIP: %#x\n",
> -			  intel_uncore_read(uncore, SOFT_SCRATCH(13)));
> -		ret = -ENXIO;
> +	if (ret) {
> +		drm_err(drm, "GuC load failed: status = 0x%08X\n", status);
> +		drm_err(drm, "GuC load failed: status: Reset = %d, "
> +			"BootROM = 0x%02X, UKernel = 0x%02X, "
> +			"MIA = 0x%02X, Auth = 0x%02X\n",
> +			REG_FIELD_GET(GS_MIA_IN_RESET, status),
> +			REG_FIELD_GET(GS_BOOTROM_MASK, status),
> +			REG_FIELD_GET(GS_UKERNEL_MASK, status),
> +			REG_FIELD_GET(GS_MIA_MASK, status),
> +			REG_FIELD_GET(GS_AUTH_STATUS_MASK, status));
> +
> +		if ((status & GS_BOOTROM_MASK) == GS_BOOTROM_RSA_FAILED) {
> +			drm_err(drm, "GuC firmware signature verification failed\n");
> +			ret = -ENOEXEC;
> +		}
> +
> +		if ((status & GS_UKERNEL_MASK) == GS_UKERNEL_EXCEPTION) {
> +			drm_err(drm, "GuC firmware exception. EIP: %#x\n",
> +				intel_uncore_read(uncore, SOFT_SCRATCH(13)));
> +			ret = -ENXIO;
> +		}
>   	}
>   
>   	return ret;

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
