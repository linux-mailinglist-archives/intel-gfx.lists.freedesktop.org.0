Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B422995F32E
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 15:44:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EEEA10E166;
	Mon, 26 Aug 2024 13:44:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iGbxeC3m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDBDC10E166;
 Mon, 26 Aug 2024 13:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724679893; x=1756215893;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1avlS4otY9lI32ORogV57L12WSTEcTJH03ZIBvo99vQ=;
 b=iGbxeC3mGLYStqjH8Gg5+gyDK22iit0hOP7fBzijaAuA++sHar73H9IU
 mxW/H5U0PxfwkyXMrcl4Z8iqThtNXJIQXbYy9kCWmHn912KH3m7QQxABV
 Yumkw7q3iYGCkuGy6NDM/UbdR1dwmJ7UTZHfUfMRpToRfcmDRNpd9q8by
 t6xdv7gn+FzVqTo5vJqY7KJ/ePohpuAIIJpU2lERJd26TL88uVToaOglk
 gvmXRQeEV4p/Jz0MSxrnco4d9+qoPqfF3+i3z9uD5AYPpqZ2ptnetWNXL
 tHB6x5j89wEr4+OMlIN6clxkSIMbs+cXoV2rn6RFAbEsrH4PwuyylZLNi g==;
X-CSE-ConnectionGUID: 7di+VWkBRBKVu8vJ/EHTQg==
X-CSE-MsgGUID: eqX9ioEiTsOpG0bhde9xCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="22626319"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="22626319"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 06:44:53 -0700
X-CSE-ConnectionGUID: CBtempxcSvyLm5vlJfOSMw==
X-CSE-MsgGUID: FabI0cZLQVS9ygo72pd3cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="85709702"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.157])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 06:44:50 -0700
Date: Mon, 26 Aug 2024 15:44:47 +0200
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Juha-Pekka =?utf-8?B?SGVpa2tpbMOk?= <juha-pekka.heikkila@intel.com>
Subject: Re: [PATCH v5 1/2] drm/xe: Align all VRAM scanout buffers to 64k
 physical pages when needed.
Message-ID: <20240826134447.ssxtznllltnmz2aj@zkempczy-mobl2>
References: <20240826095041.75416-1-maarten.lankhorst@linux.intel.com>
 <20240826095041.75416-2-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240826095041.75416-2-maarten.lankhorst@linux.intel.com>
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

On Mon, Aug 26, 2024 at 11:50:40AM +0200, Maarten Lankhorst wrote:
> For CCS formats on affected platforms, CCS can be used freely, but
> display engine requires a multiple of 64k physical pages. No other
> changes are needed.
> 
> At the BO creation time we don't know if the BO will be used for CCS
> or not. If the scanout flag is set, and the BO is a multiple of 64k,
> we take the safe route and force the physical alignment of 64k pages.
> 
> If the BO is not a multiple of 64k, or the scanout flag was not set
> at BO creation, we reject it for usage as CCS in display. The physical
> pages are likely not aligned correctly, and this will cause corruption
> when used as FB.
> 
> The scanout flag and size being a multiple of 64k are used together
> to enforce 64k physical placement.
> 
> VM_BIND is completely unaffected, mappings to a VM can still be aligned
> to 4k, just like for normal buffers.

For me patch and explanation looks correct. According to submitting
patches rules please add my s-o-b before the merge.

--
Zbigniew


> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Co-developed-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
> ---
>  drivers/gpu/drm/xe/display/intel_fb_bo.c |  5 +++++
>  drivers/gpu/drm/xe/xe_bo.c               |  7 +++++++
>  drivers/gpu/drm/xe/xe_vm.c               | 11 ++++++++++-
>  3 files changed, 22 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c b/drivers/gpu/drm/xe/display/intel_fb_bo.c
> index f835492f73fb4..6775c2557b9df 100644
> --- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
> +++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
> @@ -28,6 +28,11 @@ int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
>  	struct xe_device *xe = to_xe_device(bo->ttm.base.dev);
>  	int ret;
>  
> +	/* Only this specific format is affected, and it's only available on VRAM */
> +	if (XE_IOCTL_DBG(xe, mode_cmd->modifier[0] == I915_FORMAT_MOD_4_TILED_BMG_CCS &&
> +			     !(bo->flags & XE_BO_FLAG_NEEDS_64K)))
> +		return -EINVAL;
> +
>  	xe_bo_get(bo);
>  
>  	ret = ttm_bo_reserve(&bo->ttm, true, false, NULL);
> diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
> index cbe7bf098970f..41297b5797173 100644
> --- a/drivers/gpu/drm/xe/xe_bo.c
> +++ b/drivers/gpu/drm/xe/xe_bo.c
> @@ -2019,6 +2019,13 @@ int xe_gem_create_ioctl(struct drm_device *dev, void *data,
>  
>  	bo_flags |= args->placement << (ffs(XE_BO_FLAG_SYSTEM) - 1);
>  
> +	/* CCS formats need physical placement at a 64K alignment in VRAM. */
> +	if ((bo_flags & XE_BO_FLAG_VRAM_MASK) &&
> +	    (bo_flags & XE_BO_FLAG_SCANOUT) &&
> +	    !(xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K) &&
> +	    !(args->size % SZ_64K))
> +		bo_flags |= XE_BO_FLAG_NEEDS_64K;
> +
>  	if (args->flags & DRM_XE_GEM_CREATE_FLAG_NEEDS_VISIBLE_VRAM) {
>  		if (XE_IOCTL_DBG(xe, !(bo_flags & XE_BO_FLAG_VRAM_MASK)))
>  			return -EINVAL;
> diff --git a/drivers/gpu/drm/xe/xe_vm.c b/drivers/gpu/drm/xe/xe_vm.c
> index 4cc13eddb6b32..3eb76d874eb28 100644
> --- a/drivers/gpu/drm/xe/xe_vm.c
> +++ b/drivers/gpu/drm/xe/xe_vm.c
> @@ -2878,7 +2878,16 @@ static int xe_vm_bind_ioctl_validate_bo(struct xe_device *xe, struct xe_bo *bo,
>  		return -EINVAL;
>  	}
>  
> -	if (bo->flags & XE_BO_FLAG_INTERNAL_64K) {
> +	/*
> +	 * Some platforms require 64k VM_BIND alignment,
> +	 * specifically those with XE_VRAM_FLAGS_NEED64K.
> +	 *
> +	 * Other platforms may have BO's set to 64k physical placement,
> +	 * but can be mapped at 4k offsets anyway. This check is only
> +	 * there for the former case.
> +	 */
> +	if ((bo->flags & XE_BO_FLAG_INTERNAL_64K) &&
> +	    (xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K)) {
>  		if (XE_IOCTL_DBG(xe, obj_offset &
>  				 XE_64K_PAGE_MASK) ||
>  		    XE_IOCTL_DBG(xe, addr & XE_64K_PAGE_MASK) ||
> -- 
> 2.45.2
> 
