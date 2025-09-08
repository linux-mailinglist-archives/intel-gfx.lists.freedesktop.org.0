Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A76B494D7
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 18:11:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4296110E15D;
	Mon,  8 Sep 2025 16:11:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CDDE10E14E;
 Mon,  8 Sep 2025 16:10:59 +0000 (UTC)
Message-ID: <fdcc32f2-c36b-439f-8d15-14b3fb7bd5dc@lankhorst.se>
Date: Mon, 8 Sep 2025 18:10:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] drm/{i915, xe}/fbdev: add intel_fbdev_fb_pitch_align()
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Cc: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>
References: <cover.1756931441.git.jani.nikula@intel.com>
 <ae51d1e224048bdc87bf7a56d8f5ebd0fbb6a383.1756931441.git.jani.nikula@intel.com>
 <aLqsC87Ol_zCXOkN@intel.com>
 <48e0a14d67ba84d64f6589bbdd0090e86be4fd4f@intel.com>
 <7cs3dirtgrypn7xjzmv7rxmkgbrtfxxjmtth576kfwerlydcgx@6zelewdmaukb>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <7cs3dirtgrypn7xjzmv7rxmkgbrtfxxjmtth576kfwerlydcgx@6zelewdmaukb>
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

Den 2025-09-08 kl. 16:19, skrev Lucas De Marchi:
> On Mon, Sep 08, 2025 at 03:55:18PM +0300, Jani Nikula wrote:
>> On Fri, 05 Sep 2025, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
>>> On Wed, Sep 03, 2025 at 11:31:59PM +0300, Jani Nikula wrote:
>>>> Add new helper intel_fbdev_fb_pitch_align() in preparation for further
>>>> refactoring. The alignment is different for i915 and xe.
>>>>
>>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>> ---
>>>>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 8 ++++++--
>>>>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h | 3 +++
>>>>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 8 ++++++--
>>>>  3 files changed, 15 insertions(+), 4 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
>>>> index 9c557917d781..d1c03d7b9bdc 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
>>>> @@ -13,6 +13,11 @@
>>>>  #include "intel_fb.h"
>>>>  #include "intel_fbdev_fb.h"
>>>>
>>>> +u32 intel_fbdev_fb_pitch_align(u32 stride)
>>>> +{
>>>> +    return ALIGN(stride, 64);
>>>> +}
>>>> +
>>>>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>>>>                             struct drm_fb_helper_surface_size *sizes)
>>>>  {
>>>> @@ -30,8 +35,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>>>>      mode_cmd.width = sizes->surface_width;
>>>>      mode_cmd.height = sizes->surface_height;
>>>>
>>>> -    mode_cmd.pitches[0] = ALIGN(mode_cmd.width *
>>>> -                    DIV_ROUND_UP(sizes->surface_bpp, 8), 64);
>>>> +    mode_cmd.pitches[0] = intel_fbdev_fb_pitch_align(mode_cmd.width * DIV_ROUND_UP(sizes->surface_bpp, 8));
>>>>      mode_cmd.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
>>>>                                sizes->surface_depth);
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
>>>> index 668ae355f5e5..caeb543d5efc 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
>>>> @@ -6,6 +6,8 @@
>>>>  #ifndef __INTEL_FBDEV_FB_H__
>>>>  #define __INTEL_FBDEV_FB_H__
>>>>
>>>> +#include <linux/types.h>
>>>> +
>>>>  struct drm_device;
>>>>  struct drm_fb_helper_surface_size;
>>>>  struct drm_gem_object;
>>>> @@ -13,6 +15,7 @@ struct fb_info;
>>>>  struct i915_vma;
>>>>  struct intel_display;
>>>>
>>>> +u32 intel_fbdev_fb_pitch_align(u32 stride);
>>>>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>>>>                             struct drm_fb_helper_surface_size *sizes);
>>>>  int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
>>>> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>>>> index bafca1059a40..fd2c40020eea 100644
>>>> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>>>> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>>>> @@ -15,6 +15,11 @@
>>>>
>>>>  #include <generated/xe_wa_oob.h>
>>>>
>>>> +u32 intel_fbdev_fb_pitch_align(u32 stride)
>>>> +{
>>>> +    return ALIGN(stride, XE_PAGE_SIZE);
>>>
>>> I think someone needs to explain what the heck this extra alignment
>>> is trying to achieve? I suspect it just needs to get nuked.
>>
>> That would indeed be great, and allow even further cleanup. I'm just
>> trying to find the common parts here, and not so much dig into every
>> little detail that differs.
>>
>> I did git blame this while writing the patch, and it's all in the big xe
>> driver enabling commit. I'm not sure where it comes from.
>>
>> Cc: Maarten, any ideas?
> 
> It doesn't help much, but https://lore.kernel.org/intel-xe/20231114110056.2423853-5-jouni.hogander@intel.com/
> was the first time this align got added.
> 
> Adding some people to Cc.
> 
> Lucas De Marchi

If I really recall correctly, it was to ensure size was a multiple of 4k and dumb bo allocation would not fail.
This was at the very start of xe enabling.

i915 bo alloc allows any size, xe is much stricter. If it works with the hack removed and the bo gets 64k aligned 
on discrete, then this probably can be dropped.

Best regards,
~Maarten Lankhorst
