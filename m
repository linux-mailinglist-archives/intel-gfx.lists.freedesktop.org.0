Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6443145F64
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 00:53:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D7916F940;
	Wed, 22 Jan 2020 23:53:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C1896F940
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 23:53:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 15:53:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; d="scan'208";a="216086201"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 22 Jan 2020 15:52:59 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200122194825.101240-1-michal.wajdeczko@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <67edac14-e319-a1b2-76a1-1404ca5836e2@intel.com>
Date: Wed, 22 Jan 2020 15:52:33 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200122194825.101240-1-michal.wajdeczko@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/huc: Fix error reported by
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



On 1/22/20 11:48 AM, Michal Wajdeczko wrote:
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
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Tony Ye <tony.ye@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Do we need a fixes tag?

Daniele

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_huc.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> index 32a069841c14..ad4d9e16a24e 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> @@ -209,7 +209,7 @@ int intel_huc_check_status(struct intel_huc *huc)
>   	intel_wakeref_t wakeref;
>   	u32 status = 0;
>   
> -	if (!intel_huc_is_supported(huc))
> +	if (!HAS_GT_UC(gt->i915))
>   		return -ENODEV;
>   
>   	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
