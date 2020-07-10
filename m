Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 696D421BE67
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 22:25:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5BCF6ED08;
	Fri, 10 Jul 2020 20:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3054B6ED08
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 20:25:28 +0000 (UTC)
IronPort-SDR: 5gk+6speZp8zeZWi7meItOGRD0CVG4i0ymvbUGsKF7uLRpBXIV9RlwzqlvvqqN0B0KU0e5aKQF
 /S3iGCTGq2+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="149769984"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="149769984"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 13:25:27 -0700
IronPort-SDR: vbZAAaRmzvLTqwnD9sPO6aJn1N6+pn5xuRqRbyTdjzEnz9WX/8INbHbj2/GIrwHdo7ul5lo1G1
 whIA1oi13zqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="458388291"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.254.49.62])
 ([10.254.49.62])
 by orsmga005.jf.intel.com with ESMTP; 10 Jul 2020 13:25:27 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200710193239.5419-1-chris@chris-wilson.co.uk>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <9a7072ba-ae74-d5f2-c469-6d8308948a2e@intel.com>
Date: Fri, 10 Jul 2020 13:25:26 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200710193239.5419-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Pull printing GT capabilities on
 error to err_print_gt
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
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 7/10/2020 12:32 PM, Chris Wilson wrote:
> We try not to assume that we captured any information, and so have to
> check that error->gt exists before reporting. This check was missed in
> err_print_capabilities, so lets break up the capability info and push it
> into the GT dump.
>
> We are still a long way from yamlifying this output!
>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Fixes: 792592e72aba ("drm/i915: Move the engine mask to intel_gt_info")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Dan Carpenter <dan.carpenter@oracle.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/i915_gpu_error.c | 13 +++++++++++--
>   1 file changed, 11 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 678ddec3237f..6a3a2ce0b394 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -626,8 +626,6 @@ static void err_print_capabilities(struct drm_i915_error_state_buf *m,
>   
>   	intel_device_info_print_static(&error->device_info, &p);
>   	intel_device_info_print_runtime(&error->runtime_info, &p);
> -	intel_gt_info_print(&error->gt->info, &p);
> -	intel_sseu_print_topology(&error->gt->info.sseu, &p);
>   	intel_driver_caps_print(&error->driver_caps, &p);
>   }
>   
> @@ -678,6 +676,15 @@ static void err_free_sgl(struct scatterlist *sgl)
>   	}
>   }
>   
> +static void err_print_gt_info(struct drm_i915_error_state_buf *m,
> +			      struct intel_gt_coredump *gt)
> +{
> +	struct drm_printer p = i915_error_printer(m);
> +
> +	intel_gt_info_print(&gt->info, &p);
> +	intel_sseu_print_topology(&gt->info.sseu, &p);
> +}
> +
>   static void err_print_gt(struct drm_i915_error_state_buf *m,
>   			 struct intel_gt_coredump *gt)
>   {
> @@ -734,6 +741,8 @@ static void err_print_gt(struct drm_i915_error_state_buf *m,
>   
>   	if (gt->uc)
>   		err_print_uc(m, gt->uc);
> +
> +	err_print_gt_info(m, gt);
>   }
>   
>   static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
