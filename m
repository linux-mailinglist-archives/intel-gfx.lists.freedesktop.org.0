Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3E5A4FC5C
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 11:40:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3966610E739;
	Wed,  5 Mar 2025 10:40:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9E2010E736;
 Wed,  5 Mar 2025 10:40:01 +0000 (UTC)
Message-ID: <18de13d0-124c-40dd-b987-7675fd851eeb@lankhorst.se>
Date: Wed, 5 Mar 2025 11:39:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH v3.2] drm/xe/display: Fix fbdev GGTT mapping handling.
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, Matthew Brost <matthew.brost@intel.com>
References: <20250219153441.625352-1-dev@lankhorst.se>
 <dftpyfotba6vxp6pkiircxpm7ok7sowzx6x2fu52hdjug4rzfe@uc7e47olt7uv>
 <9b9afafc-74cf-4899-a655-4765c9fb8f9a@intel.com>
 <4c94aaf7-43da-4c10-b396-2d69445174dc@lankhorst.se>
 <26z7hzbek3llumpshnxuw72c5jxfd6cotf3jpydkatm4ckk2wm@b25hwnctgtf3>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <26z7hzbek3llumpshnxuw72c5jxfd6cotf3jpydkatm4ckk2wm@b25hwnctgtf3>
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



On 2025-03-05 00:09, Lucas De Marchi wrote:
> On Thu, Feb 20, 2025 at 06:17:01PM +0100, Maarten Lankhorst wrote:
>> Hey,
>>
>> On 2025-02-20 16:43, Matthew Auld wrote:
>>> On 20/02/2025 14:22, Lucas De Marchi wrote:
>>>> On Wed, Feb 19, 2025 at 04:34:40PM +0100, Maarten Lankhorst wrote:
>>>>> The fbdev vma is a normal unrotated VMA, so add ane explicit check
>>>>> before re-using.
>>>>>
>>>>> When re-using, we have to restore the GGTT mapping on resume, so add
>>>>> some code to do that too.
>>>>>
>>>>> Fixes: 67a98f7e27ba ("drm/xe/display: Re-use display vmas when possible")
>>>>> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
>>>>> ---
>>>>> drivers/gpu/drm/xe/display/xe_display.c |  6 +++++-
>>>>> drivers/gpu/drm/xe/display/xe_fb_pin.c  | 24 +++++++++++++++++++++++-
>>>>> drivers/gpu/drm/xe/display/xe_fb_pin.h  | 13 +++++++++++++
>>>>> 3 files changed, 41 insertions(+), 2 deletions(-)
>>>>> create mode 100644 drivers/gpu/drm/xe/display/xe_fb_pin.h
>>>>>
>>>>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/ drm/xe/display/xe_display.c
>>>>> index 02a413a073824..999f25a562c19 100644
>>>>> --- a/drivers/gpu/drm/xe/display/xe_display.c
>>>>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
>>>>> @@ -30,6 +30,7 @@
>>>>> #include "intel_hotplug.h"
>>>>> #include "intel_opregion.h"
>>>>> #include "skl_watermark.h"
>>>>> +#include "xe_fb_pin.h"
>>>>> #include "xe_module.h"
>>>>>
>>>>> /* Xe device functions */
>>>>> @@ -492,8 +493,11 @@ void xe_display_pm_resume(struct xe_device *xe)
>>>>>         intel_display_driver_enable_user_access(display);
>>>>>     }
>>>>>
>>>>> -    if (has_display(xe))
>>>>> +    if (has_display(xe)) {
>>>>> +        xe_fb_pin_resume(xe);
>>>>
>>>> this looks odd. I remember when we had issues with LNL about pages
>>>> coming with garbage after a resume we talked about marking them as
>>>> "needed" on suspend so they'd be saved by mm. The ggtt afair was one of
>>>> them. Or did we go with a different approach and I'm misremembering?
>>>
>>> Hmm, I thought for display fbs we don't use the same pin tracking so it is rather skipped by the GGTT save/restore logic. But I thought previously the display stuff ensured all fb are unpinned by the time we do the suspend, so on resume we would just re-program the GGTT for fb when re-pinning it (handled by display code). But I guess issue now comes with re-using the vma and its GGTT mapping, since it will now also skip re-programming the GGTT on re-pin? But wouldn't we have this same issue for all fb, and not just this fbdev stuff or does reuse_vma() somehow handle this?
>>
>> Correct. Display has its own GGTT tracking.
>>
>> In general, all FB's are unpinned during suspend, and suspend will destroy the VMA. A new VMA and re-pinning will be done after resume, so this is not a problem in general.
>>
>> The special case is unfortunately FBDEV vma pin, which we started re-using in the patch series. That one should be preserved across suspend/resume, otherwise we get pipe fault errors after a cycle because the GGTT is wiped.
>>
>> The bug was there before, but never hit because we never used the initial GGTT mapping, it was only there to keep fbdev pinned.
>>
>> I'm honestly wondering how much it's needed, but not doing so likely breaks i915. Perhaps we could make a dummy noop instead.
> 
> I stared at the current code in xe_fb_pin.c and related xe_display.c for
> some time and for me it's hard to understand to suggest a better fix.
> I'd rather use the traking we have instead of adding yet another hook to
> call on resume.
> 
> But if it fixes the pipe fault, maybe better to land it and improve the
> abstraction on top.
> 
> 
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> 
Hmmm....

This should work instead?
---->8------
FBDEV ggtt is not restored correctly, add missing GGTT flag to intel_fbdev_fb_alloc to make it work.
This ensures that the global GGTT mapping is always restored on resume. The GGTT mapping would
otherwise be created in intel_fb_pin_to_ggtt() by intel_fbdev anyway.

This fixes the fbdev device not working after resume.

Fixes: 67a98f7e27ba ("drm/xe/display: Re-use display vmas when possible")
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index ca95fcd098ec7..3a1e505ff1820 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -45,7 +45,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 					   NULL, size,
 					   ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
 					   XE_BO_FLAG_STOLEN |
-					   XE_BO_FLAG_PINNED);
+					   XE_BO_FLAG_GGTT | XE_BO_FLAG_PINNED);
 		if (!IS_ERR(obj))
 			drm_info(&xe->drm, "Allocated fbdev into stolen\n");
 		else
@@ -56,7 +56,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe), NULL, size,
 					   ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
 					   XE_BO_FLAG_VRAM_IF_DGFX(xe_device_get_root_tile(xe)) |
-					   XE_BO_FLAG_PINNED);
+					   XE_BO_FLAG_GGTT | XE_BO_FLAG_PINNED);
 	}
 
 	if (IS_ERR(obj)) {
-- 
2.45.2


