Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 500C995F37B
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 16:04:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49CD58935C;
	Mon, 26 Aug 2024 14:04:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DBG4XDh5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15170892D3;
 Mon, 26 Aug 2024 14:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724681064; x=1756217064;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ipr9qcNy75burN6qnBnmOqp1NeyrdACJRDoX3kMSFWQ=;
 b=DBG4XDh5VR/flsXjYGQi3W7o7OT4QC19hxjpZkjV0ZMsGvu91qe3UDU0
 Oe0pvUQb6QNVYxVlx+qGbIWF7t2kqM4QkSmPAgeMBnctU6XL1zqVjmyQK
 Cak20efVmIdDFB+pTzb5hIYwnh2as21jgVDJIUR1sHMFtsZUD1iX2x8GK
 dhKh7Tx6odgwwDRs5bEMReIJIzfRZdzUgznGHw9xrYYsAAsgLRAzGsdcA
 yBiSHxegTpVqkVZSDhVv0E+Ki5zjyAZyFvUE7hQYCUkmGA9iiC5H7vW5K
 iaHbFCgmhYZIRfWEK5xic4cFWXB44WXx9kFmdU5rS0O/Bi2h+Kcn3+P6X Q==;
X-CSE-ConnectionGUID: 1XjJAe+SSFWDsgaWNyuc5A==
X-CSE-MsgGUID: Z6cZa9ylSSOZJXkooQOSNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="23259547"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="23259547"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 07:03:48 -0700
X-CSE-ConnectionGUID: EybTZN2oT2uEwrCBAGCfZg==
X-CSE-MsgGUID: D1fLH50wRauNEPeyqHAjMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="67345989"
Received: from fpallare-mobl3.ger.corp.intel.com (HELO [10.245.245.208])
 ([10.245.245.208])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 07:03:43 -0700
Message-ID: <671878e2-701a-4be6-ae56-1b588eb14d6b@linux.intel.com>
Date: Mon, 26 Aug 2024 16:03:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] drm/xe: Align all VRAM scanout buffers to 64k
 physical pages when needed.
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Zbigniew_Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, =?UTF-8?Q?Juha-Pekka_Heikkil=C3=A4?=
 <juha-pekka.heikkila@intel.com>
References: <20240826095041.75416-1-maarten.lankhorst@linux.intel.com>
 <20240826095041.75416-2-maarten.lankhorst@linux.intel.com>
 <842ab9855da28b5556a915d2ac3cf0353e9d7e8f.camel@linux.intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <842ab9855da28b5556a915d2ac3cf0353e9d7e8f.camel@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Hey,

Den 2024-08-26 kl. 16:01, skrev Thomas Hellström:
> On Mon, 2024-08-26 at 11:50 +0200, Maarten Lankhorst wrote:
>> For CCS formats on affected platforms, CCS can be used freely, but
>> display engine requires a multiple of 64k physical pages. No other
>> changes are needed.
>>
>> At the BO creation time we don't know if the BO will be used for CCS
>> or not. If the scanout flag is set, and the BO is a multiple of 64k,
>> we take the safe route and force the physical alignment of 64k pages.
>>
>> If the BO is not a multiple of 64k, or the scanout flag was not set
>> at BO creation, we reject it for usage as CCS in display. The
>> physical
>> pages are likely not aligned correctly, and this will cause
>> corruption
>> when used as FB.
>>
>> The scanout flag and size being a multiple of 64k are used together
>> to enforce 64k physical placement.
>>
>> VM_BIND is completely unaffected, mappings to a VM can still be
>> aligned
>> to 4k, just like for normal buffers.
>>
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Co-developed-by: Zbigniew Kempczyński
>> <zbigniew.kempczynski@intel.com>
>> Cc: Matthew Auld <matthew.auld@intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Cc: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
>> ---
>>  drivers/gpu/drm/xe/display/intel_fb_bo.c |  5 +++++
>>  drivers/gpu/drm/xe/xe_bo.c               |  7 +++++++
>>  drivers/gpu/drm/xe/xe_vm.c               | 11 ++++++++++-
>>  3 files changed, 22 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c
>> b/drivers/gpu/drm/xe/display/intel_fb_bo.c
>> index f835492f73fb4..6775c2557b9df 100644
>> --- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
>> +++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
>> @@ -28,6 +28,11 @@ int intel_fb_bo_framebuffer_init(struct
>> intel_framebuffer *intel_fb,
>>  	struct xe_device *xe = to_xe_device(bo->ttm.base.dev);
>>  	int ret;
>>  
>> +	/* Only this specific format is affected, and it's only
>> available on VRAM */
> 
> A first time reader would wonder "Affected by what". Could we rephrase
> like "This specific format, only available with DGFX needs .." or
> something similar self-contained?
Yeah, I will reorder with next patch, then this comment goes away.

>> +	if (XE_IOCTL_DBG(xe, mode_cmd->modifier[0] ==
>> I915_FORMAT_MOD_4_TILED_BMG_CCS &&
>> +			     !(bo->flags & XE_BO_FLAG_NEEDS_64K)))
>> +		return -EINVAL;
>> +
>>  	xe_bo_get(bo);
>>  
>>  	ret = ttm_bo_reserve(&bo->ttm, true, false, NULL);
>> diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
>> index cbe7bf098970f..41297b5797173 100644
>> --- a/drivers/gpu/drm/xe/xe_bo.c
>> +++ b/drivers/gpu/drm/xe/xe_bo.c
>> @@ -2019,6 +2019,13 @@ int xe_gem_create_ioctl(struct drm_device
>> *dev, void *data,
>>  
>>  	bo_flags |= args->placement << (ffs(XE_BO_FLAG_SYSTEM) - 1);
>>  
>> +	/* CCS formats need physical placement at a 64K alignment in
>> VRAM. */
>> +	if ((bo_flags & XE_BO_FLAG_VRAM_MASK) &&
>> +	    (bo_flags & XE_BO_FLAG_SCANOUT) &&
>> +	    !(xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K) &&
>> +	    !(args->size % SZ_64K))
> 
> This might probably fail on 32-bit compiles? Can we use the IS_ALIGNED
> macro?
Good point!


> 
>> +		bo_flags |= XE_BO_FLAG_NEEDS_64K;
>> +
>>  	if (args->flags & DRM_XE_GEM_CREATE_FLAG_NEEDS_VISIBLE_VRAM)
>> {
>>  		if (XE_IOCTL_DBG(xe, !(bo_flags &
>> XE_BO_FLAG_VRAM_MASK)))
>>  			return -EINVAL;
>> diff --git a/drivers/gpu/drm/xe/xe_vm.c b/drivers/gpu/drm/xe/xe_vm.c
>> index 4cc13eddb6b32..3eb76d874eb28 100644
>> --- a/drivers/gpu/drm/xe/xe_vm.c
>> +++ b/drivers/gpu/drm/xe/xe_vm.c
>> @@ -2878,7 +2878,16 @@ static int xe_vm_bind_ioctl_validate_bo(struct
>> xe_device *xe, struct xe_bo *bo,
>>  		return -EINVAL;
>>  	}
>>  
>> -	if (bo->flags & XE_BO_FLAG_INTERNAL_64K) {
>> +	/*
>> +	 * Some platforms require 64k VM_BIND alignment,
>> +	 * specifically those with XE_VRAM_FLAGS_NEED64K.
>> +	 *
>> +	 * Other platforms may have BO's set to 64k physical
>> placement,
>> +	 * but can be mapped at 4k offsets anyway. This check is
>> only
>> +	 * there for the former case.
>> +	 */
>> +	if ((bo->flags & XE_BO_FLAG_INTERNAL_64K) &&
>> +	    (xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K)) {
>>  		if (XE_IOCTL_DBG(xe, obj_offset &
>>  				 XE_64K_PAGE_MASK) ||
>>  		    XE_IOCTL_DBG(xe, addr & XE_64K_PAGE_MASK) ||
> 
> Otherwise LGTM.
> /Thomas
> 
Thanks,
~Maarten
