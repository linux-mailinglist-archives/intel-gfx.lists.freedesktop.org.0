Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8642FCC79
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 09:13:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CCA06E14D;
	Wed, 20 Jan 2021 08:13:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC0D86E14D
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 08:13:42 +0000 (UTC)
IronPort-SDR: mlvaaw6dTSwQxjlnItM/aaaBzXuE2pvhTOMf3oDhMdPZ+a2Jg1ZbN7cT2Mf8NPlVaIgsR58URY
 +9i5oH+/BHvw==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="166158092"
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="166158092"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 00:13:41 -0800
IronPort-SDR: CejaFqYtJ9XAhSeXsuxZ/IxgW7oqj81DymdpT/7TrK/QSqyCMobTbSfFY5bC5x0lyQHLCvuSki
 g2balhLYKbXQ==
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="384599622"
Received: from dgravino-mobl1.ger.corp.intel.com (HELO [10.249.41.166])
 ([10.249.41.166])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 00:13:36 -0800
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210120012111.44184-1-umesh.nerlige.ramappa@intel.com>
 <20210120012111.44184-2-umesh.nerlige.ramappa@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f52e1e43-7dc9-e46b-06c5-2db17f73ab09@linux.intel.com>
Date: Wed, 20 Jan 2021 08:13:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210120012111.44184-2-umesh.nerlige.ramappa@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Check for all subplatform bits
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


On 20/01/2021 01:21, Umesh Nerlige Ramappa wrote:
> Current code is checking only 2 bits in the subplatform, but actually 3
> bits are allocated for the field. Check all 3 bits.
> 
> Fixes: 805446c8347c9 (drm/i915: Introduce concept of a sub-platform)
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_drv.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 8376cff5ba86..38eca00c6f09 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1343,7 +1343,7 @@ intel_subplatform(const struct intel_runtime_info *info, enum intel_platform p)
>   {
>   	const unsigned int pi = __platform_mask_index(info, p);
>   
> -	return info->platform_mask[pi] & INTEL_SUBPLATFORM_BITS;
> +	return info->platform_mask[pi] & ((1 << INTEL_SUBPLATFORM_BITS) - 1);
>   }
>   
>   static __always_inline bool
> 

Yep. Luckily it affected only printout in the welcome message and error 
capture metadata.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
