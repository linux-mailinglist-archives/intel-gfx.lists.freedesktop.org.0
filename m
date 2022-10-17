Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B536008EA
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 10:42:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F7EC10ECF9;
	Mon, 17 Oct 2022 08:42:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C18810ECF9
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 08:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665996166; x=1697532166;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=2xA5+DSXESdwJAdt1yV+UKZ0TvNuOJMMN1zHq8UcAhM=;
 b=Hr26SW0D4kcDw+V8oAxrIrONOLSXcvDam/i47Ej9CzM21UkOrFgg6Ip5
 zi31YV1ibd4yhwDh+bEE02UI9BfjS4NQXxVRY1JfC3UWd2Cnnz2Dl+oOA
 hr+fWJYfw3Ac9uTZh2uShy90cQD5kdUXtY4diSB0349Cf64fDBfY0xB64
 IN1tcO3cCZJwTIb6luLt91QFuRtxgBBBXC9xJpRpPjarErzqY6YJD4T0b
 Dgo7VmCfD4RrCApebk+ShpktjcqNBEW69psL6pDgfdtSQIc8fsoDZIOa0
 StN5t0bOAQkxbS/W2ZqcBnCP2fzIWQeijJ1wnM5s0eZXzc7nIE5pmwt/9 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="293109042"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="293109042"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 01:42:45 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="691274837"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="691274837"
Received: from ggeogheg-mobl.ger.corp.intel.com (HELO [10.213.233.137])
 ([10.213.233.137])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 01:42:42 -0700
Message-ID: <e02ac836-89f4-1734-eacc-73f49ecda323@linux.intel.com>
Date: Mon, 17 Oct 2022 09:42:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221015035952.1741319-1-alan.previn.teres.alexis@intel.com>
 <20221015035952.1741319-2-alan.previn.teres.alexis@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221015035952.1741319-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Add error-capture init
 warnings when needed
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 15/10/2022 04:59, Alan Previn wrote:
> If GuC is being used and we initialized GuC-error-capture,
> we need to be warning if we don't provide an error-capture
> register list in the firmware ADS, for valid GT engines.
> A warning makes sense as this would impact debugability
> without realizing why a reglist wasn't retrieved and reported
> by GuC.> 
> However, depending on the platform, we might have certain
> engines that have a register list for engine instance error state
> but not for engine class. Thus, add a check only to warn if the
> register list was non existent vs an empty list (use the
> empty lists to skip the warning).
> 
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 55 ++++++++++++++++++-
>   1 file changed, 53 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> index 8f1165146013..290c1e1343dd 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> @@ -419,6 +419,44 @@ guc_capture_get_device_reglist(struct intel_guc *guc)
>   	return default_lists;
>   }
>   
> +static const char *
> +__stringify_type(u32 type)
> +{
> +	switch (type) {
> +	case GUC_CAPTURE_LIST_TYPE_GLOBAL:
> +		return "Global";
> +	case GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS:
> +		return "Class";
> +	case GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE:
> +		return "Instance";
> +	default:
> +		return "unknown";
> +	}
> +
> +	return "";

What's the point of these returns? Gcc complains about not returning a type from const char * return function?

> +}
> +
> +static const char *
> +__stringify_engclass(u32 class)
> +{
> +	switch (class) {
> +	case GUC_RENDER_CLASS:
> +		return "Render";
> +	case GUC_VIDEO_CLASS:
> +		return "Video";
> +	case GUC_VIDEOENHANCE_CLASS:
> +		return "VideoEnhance";
> +	case GUC_BLITTER_CLASS:
> +		return "Blitter";
> +	case GUC_COMPUTE_CLASS:
> +		return "Compute";
> +	default:
> +		return "unknown";
> +	}
> +
> +	return "";
> +}
> +
>   static int
>   guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
>   		      struct guc_mmio_reg *ptr, u16 num_entries)
> @@ -487,19 +525,32 @@ intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 cl
>   			      size_t *size)
>   {
>   	struct intel_guc_state_capture *gc = guc->capture;
> +	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>   	struct __guc_capture_ads_cache *cache = &gc->ads_cache[owner][type][classid];
>   	int num_regs;
>   
> -	if (!gc->reglists)
> +	if (!gc->reglists) {
> +		drm_warn(&i915->drm, "GuC-capture: No reglist on this device\n");
>   		return -ENODEV;
> +	}
>   
>   	if (cache->is_valid) {
>   		*size = cache->size;
>   		return cache->status;
>   	}
>   
> +	if (!guc_capture_get_one_list(gc->reglists, owner, type, classid)) {
> +		if (owner == GUC_CAPTURE_LIST_INDEX_PF && type == GUC_CAPTURE_LIST_TYPE_GLOBAL)
> +			drm_warn(&i915->drm, "GuC-capture: missing reglist type-Global\n");
> +		if (owner == GUC_CAPTURE_LIST_INDEX_PF)

GUC_CAPTURE_LIST_INDEX_PF could be made once on the enclosing if statement?

Btw what's with the PF and VF (cover letter) references while SRIOV does not exists upstream?

> +			drm_warn(&i915->drm, "GuC-capture: missing regiist type(%d)-%s : "

reglist

> +				 "%s(%d)-Engine\n", type, __stringify_type(type),
> +				 __stringify_engclass(classid), classid);

One details to consider from Documentation/process/coding-style.rst
"""
However, never break user-visible strings such as printk messages because that breaks the ability to grep for them.
"""

Also commit message you can aim to wrap at 75 chars as per submitting-patches.rst.

> +		return -ENODATA;

Is this a new exit condition or the thing would exit on the !num_regs check below anyway? Just wondering if the series is only about logging changes or there is more to it.

> +	}
> +
>   	num_regs = guc_cap_list_num_regs(gc, owner, type, classid);
> -	if (!num_regs)
> +	if (!num_regs) /* intentional empty lists can exist depending on hw config */
>   		return -ENODATA;
>   
>   	*size = PAGE_ALIGN((sizeof(struct guc_debug_capture_list)) +

Regards,

Tvrtko
