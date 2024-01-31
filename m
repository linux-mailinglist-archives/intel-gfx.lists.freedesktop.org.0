Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D071B843C79
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 11:27:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 463D610F95F;
	Wed, 31 Jan 2024 10:26:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5595110E857;
 Wed, 31 Jan 2024 10:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706696809; x=1738232809;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=IrqcaRDN2s6elfolI+C0c3WGt3R1navvA1bHqolGZ2c=;
 b=jfuG1Or1TvOk6Vk7flolyf8PcItK6Ko3YzaAPWwPJlSASwE5HhYa3J/d
 yPeDcZ9Eyn2S5xUifxsFpZv8dGHhXOkP5+DAUXzcQlOcYmh4i7zCUNNgP
 RnmVDti6gn8diM/v+FTdsKsV414pENDin9C6ke81FlSDb+AnW2zYqiGEY
 ULWgFHkTFEL5wU34HwkTKJPNs4ubvkNWsMwVjRixYenc6naJH04GtHt8V
 gPxMgMSopVux0h77jN01zY5tTMCNUHBCepoNc8nqt25pDLgsQoixKL+M9
 2KBOSYwRoj0KWki7qlfe+zOfbKSSRd98P0TtKNRs/xG8C/BLI2aYT5e1w A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="402411669"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="402411669"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 02:26:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="931798454"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="931798454"
Received: from pvallee-mobl1.ger.corp.intel.com (HELO [10.252.43.13])
 ([10.252.43.13])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 02:26:48 -0800
Message-ID: <d022db40-0ced-4488-8b99-2581ecad4bca@linux.intel.com>
Date: Wed, 31 Jan 2024 11:26:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] drm/xe/xe2: Limit ccs framebuffers to tile4 only
To: juhapekka.heikkila@gmail.com, Matthew Auld <matthew.auld@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
References: <20240126210807.320671-1-juhapekka.heikkila@gmail.com>
 <20240126210807.320671-5-juhapekka.heikkila@gmail.com>
 <1b767441-0ee2-4619-9af0-dd979923b411@intel.com>
 <4cf6939e-f4b5-4515-ba1a-f6d6b505e903@gmail.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <4cf6939e-f4b5-4515-ba1a-f6d6b505e903@gmail.com>
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

Hey,

On 2024-01-30 20:16, Juha-Pekka Heikkila wrote:
> On 29.1.2024 14.02, Matthew Auld wrote:
>> On 26/01/2024 21:08, Juha-Pekka Heikkila wrote:
>>> Display engine support ccs only with tile4, prevent other modifiers
>>> from using compressed memory. Store pin time pat index to xe_bo.
>>>
>>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>>> ---
>>>   drivers/gpu/drm/xe/display/xe_fb_pin.c | 19 +++++++++++++++++++
>>>   1 file changed, 19 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c 
>>> b/drivers/gpu/drm/xe/display/xe_fb_pin.c
>>> index 722c84a56607..b2930a226f54 100644
>>> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
>>> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
>>> @@ -10,9 +10,18 @@
>>>   #include "intel_fb_pin.h"
>>>   #include "xe_ggtt.h"
>>>   #include "xe_gt.h"
>>> +#include "xe_pat.h"
>>>   #include <drm/ttm/ttm_bo.h>
>>> +static bool is_compressed(const struct drm_framebuffer *fb)
>>> +{
>>> +    struct xe_bo *bo = intel_fb_obj(fb);
>>> +    struct xe_device *xe = 
>>> to_xe_device(to_intel_framebuffer(fb)->base.dev);
>>> +
>>> +    return xe_pat_index_has_compression(xe, bo->pat_index);
>>> +}
>>> +
>>>   static void
>>>   write_dpt_rotated(struct xe_bo *bo, struct iosys_map *map, u32 
>>> *dpt_ofs, u32 bo_ofs,
>>>             u32 width, u32 height, u32 src_stride, u32 dst_stride)
>>> @@ -349,12 +358,22 @@ void intel_unpin_fb_vma(struct i915_vma *vma, 
>>> unsigned long flags)
>>>   int intel_plane_pin_fb(struct intel_plane_state *plane_state)
>>>   {
>>>       struct drm_framebuffer *fb = plane_state->hw.fb;
>>> +    struct xe_device *xe = 
>>> to_xe_device(to_intel_framebuffer(fb)->base.dev);
>>>       struct xe_bo *bo = intel_fb_obj(fb);
>>>       struct i915_vma *vma;
>>>       /* We reject creating !SCANOUT fb's, so this is weird.. */
>>>       drm_WARN_ON(bo->ttm.base.dev, !(bo->flags & XE_BO_SCANOUT_BIT));
>>> +    if (GRAPHICS_VER(xe) >= 20) {
>>> +        if (fb->modifier != I915_FORMAT_MOD_4_TILED &&
>>> +            is_compressed(fb)) {
>>> +            drm_warn(&xe->drm, "Cannot create ccs framebuffer with 
>>> other than tile4 mofifier\n");
>>> +            return -EINVAL;
>>> +        }
>>> +        bo->pat_index_scanout = bo->pat_index;
>>> +    }
>>
>> I think this needs to be moved into __xe_pin_fb_vma() after acquiring 
>> the object lock. Also not sure what prevents vm_bind appearing after 
>> we drop the lock? Do we need to prevent modifications until the end of 
>> _xe_unpin_fb_vma()?
> 
> I did now put in __xe_unpin_fb_vma()
> ..
> vma->bo->has_sealed_pat_index = false;
> ..
> 
> as well as moved this above block to correct place.
I'm pretty sure this will fail if the BO is pinned more than once 
simultaneously. Should probably be a refcount protected by bo lock instead.

Is the harm from allowing this only having a garbled display?

If so, we might as well allow it, and avoid complicating the bind code 
even more.

Cheers,
~Maarten
