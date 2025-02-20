Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C802A3DEFB
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2025 16:43:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17AF310E9A1;
	Thu, 20 Feb 2025 15:43:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AYLYqytz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 845A310E9A1;
 Thu, 20 Feb 2025 15:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740066218; x=1771602218;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=mY0Qc6I7ZKoaUW24nQi5C4bzbeCysmQj/n42XUV/nZM=;
 b=AYLYqytzt7TTamNktLvSFOCQvDTCDIFt8s1l47CzzE3f8C56hP+Viu0/
 iDQTL8xBcvhjKMlKzm3SkZSCU2I0qI6zWDrZ7t4hFG9uRko0CzZz8ch2S
 JZ6GIUjm4uX1L36ielP3otoWfV4fF0rESqPcY2xbhlph3Pt4JQcjZTCGu
 Nofpu7pfLUYsRBY/xOh61keDu7QOgIsWJSmK9r6F4cwwgbk96xYc5YaOI
 759RMIP+r5iFagnz/JNZeI2kqo2mD+3DKFAfVSKN9kIL+dberpkIlNMaR
 9tZY3t1EtzHWJB/76i3cRySU+fD2JOnjmtLe7O5zGvy/t8K/IQdSFr+jV w==;
X-CSE-ConnectionGUID: WSehU7SwQQmdVGJ+dUol0g==
X-CSE-MsgGUID: qQokTo19TS29xhgZaTjQLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="40775797"
X-IronPort-AV: E=Sophos;i="6.13,302,1732608000"; d="scan'208";a="40775797"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 07:43:37 -0800
X-CSE-ConnectionGUID: 2YHANkaVS9CuMZWSayKJCA==
X-CSE-MsgGUID: V/H1nWt1TNmovv+01lEH9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,302,1732608000"; d="scan'208";a="114912154"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO [10.245.244.161])
 ([10.245.244.161])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 07:43:36 -0800
Message-ID: <9b9afafc-74cf-4899-a655-4765c9fb8f9a@intel.com>
Date: Thu, 20 Feb 2025 15:43:33 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3.1] drm/xe/display: Fix fbdev GGTT mapping handling.
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 Maarten Lankhorst <dev@lankhorst.se>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Matthew Brost <matthew.brost@intel.com>
References: <20250219153441.625352-1-dev@lankhorst.se>
 <dftpyfotba6vxp6pkiircxpm7ok7sowzx6x2fu52hdjug4rzfe@uc7e47olt7uv>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <dftpyfotba6vxp6pkiircxpm7ok7sowzx6x2fu52hdjug4rzfe@uc7e47olt7uv>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

On 20/02/2025 14:22, Lucas De Marchi wrote:
> On Wed, Feb 19, 2025 at 04:34:40PM +0100, Maarten Lankhorst wrote:
>> The fbdev vma is a normal unrotated VMA, so add ane explicit check
>> before re-using.
>>
>> When re-using, we have to restore the GGTT mapping on resume, so add
>> some code to do that too.
>>
>> Fixes: 67a98f7e27ba ("drm/xe/display: Re-use display vmas when possible")
>> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
>> ---
>> drivers/gpu/drm/xe/display/xe_display.c |  6 +++++-
>> drivers/gpu/drm/xe/display/xe_fb_pin.c  | 24 +++++++++++++++++++++++-
>> drivers/gpu/drm/xe/display/xe_fb_pin.h  | 13 +++++++++++++
>> 3 files changed, 41 insertions(+), 2 deletions(-)
>> create mode 100644 drivers/gpu/drm/xe/display/xe_fb_pin.h
>>
>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/ 
>> drm/xe/display/xe_display.c
>> index 02a413a073824..999f25a562c19 100644
>> --- a/drivers/gpu/drm/xe/display/xe_display.c
>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
>> @@ -30,6 +30,7 @@
>> #include "intel_hotplug.h"
>> #include "intel_opregion.h"
>> #include "skl_watermark.h"
>> +#include "xe_fb_pin.h"
>> #include "xe_module.h"
>>
>> /* Xe device functions */
>> @@ -492,8 +493,11 @@ void xe_display_pm_resume(struct xe_device *xe)
>>         intel_display_driver_enable_user_access(display);
>>     }
>>
>> -    if (has_display(xe))
>> +    if (has_display(xe)) {
>> +        xe_fb_pin_resume(xe);
> 
> this looks odd. I remember when we had issues with LNL about pages
> coming with garbage after a resume we talked about marking them as
> "needed" on suspend so they'd be saved by mm. The ggtt afair was one of
> them. Or did we go with a different approach and I'm misremembering?

Hmm, I thought for display fbs we don't use the same pin tracking so it 
is rather skipped by the GGTT save/restore logic. But I thought 
previously the display stuff ensured all fb are unpinned by the time we 
do the suspend, so on resume we would just re-program the GGTT for fb 
when re-pinning it (handled by display code). But I guess issue now 
comes with re-using the vma and its GGTT mapping, since it will now also 
skip re-programming the GGTT on re-pin? But wouldn't we have this same 
issue for all fb, and not just this fbdev stuff or does reuse_vma() 
somehow handle this?

> 
> +Matthew Brost / +Matthew Auld
> I think this was about commit dd886a63d6e2 ("drm/xe: Restore system
> memory GGTT mappings")
> 
> Lucas De Marchi
> 
>> +
>>         intel_hpd_poll_disable(xe);
>> +    }
>>
>>     intel_opregion_resume(display);
>>
>> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/ 
>> xe/display/xe_fb_pin.c
>> index 11a6b996d739b..dee1f6531c849 100644
>> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
>> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
>> @@ -12,6 +12,7 @@
>> #include "intel_fbdev.h"
>> #include "xe_bo.h"
>> #include "xe_device.h"
>> +#include "xe_fb_pin.h"
>> #include "xe_ggtt.h"
>> #include "xe_pm.h"
>>
>> @@ -398,7 +399,8 @@ static bool reuse_vma(struct intel_plane_state 
>> *new_plane_state,
>>         goto found;
>>     }
>>
>> -    if (fb == intel_fbdev_framebuffer(xe->display.fbdev.fbdev)) {
>> +    if (fb == intel_fbdev_framebuffer(xe->display.fbdev.fbdev) &&
>> +        new_plane_state->view.gtt.type == I915_GTT_VIEW_NORMAL) {
>>         vma = intel_fbdev_vma_pointer(xe->display.fbdev.fbdev);
>>         if (vma)
>>             goto found;
>> @@ -444,6 +446,26 @@ void intel_plane_unpin_fb(struct 
>> intel_plane_state *old_plane_state)
>>     old_plane_state->ggtt_vma = NULL;
>> }
>>
>> +void xe_fb_pin_resume(struct xe_device *xe)
>> +{
>> +    struct xe_ggtt *ggtt = xe_device_get_root_tile(xe)->mem.ggtt;
>> +    struct i915_vma *vma = intel_fbdev_vma_pointer(xe- 
>> >display.fbdev.fbdev);
>> +    struct xe_bo *bo;
>> +
>> +    if (!vma)
>> +        return;
>> +
>> +    bo = vma->bo;
>> +
>> +    mutex_lock(&ggtt->lock);
>> +    for (u32 x = 0; x < bo->ttm.base.size; x += XE_PAGE_SIZE) {
>> +        u64 pte = ggtt->pt_ops->pte_encode_bo(bo, x, xe- 
>> >pat.idx[XE_CACHE_NONE]);
>> +
>> +        ggtt->pt_ops->ggtt_set_pte(ggtt, vma->node->base.start + x, 
>> pte);
>> +    }
>> +    mutex_unlock(&ggtt->lock);
>> +}
>> +
>> /*
>>  * For Xe introduce dummy intel_dpt_create which just return NULL,
>>  * intel_dpt_destroy which does nothing, and fake intel_dpt_ofsset 
>> returning 0;
>> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.h b/drivers/gpu/drm/ 
>> xe/display/xe_fb_pin.h
>> new file mode 100644
>> index 0000000000000..39d48ff637002
>> --- /dev/null
>> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.h
>> @@ -0,0 +1,13 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright © 2025 Intel Corporation
>> + */
>> +
>> +#ifndef _XE_FB_PIN_H_
>> +#define _XE_FB_PIN_H_
>> +
>> +struct xe_device;
>> +
>> +void xe_fb_pin_resume(struct xe_device *xe);
>> +
>> +#endif /* _XE_FB_PIN_H_ */
>> -- 
>> 2.47.1
>>

