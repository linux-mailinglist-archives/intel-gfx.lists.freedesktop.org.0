Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 649EBA3E20E
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2025 18:17:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9B5110E9BF;
	Thu, 20 Feb 2025 17:17:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AC9A10E4D5;
 Thu, 20 Feb 2025 17:17:04 +0000 (UTC)
Message-ID: <4c94aaf7-43da-4c10-b396-2d69445174dc@lankhorst.se>
Date: Thu, 20 Feb 2025 18:17:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3.1] drm/xe/display: Fix fbdev GGTT mapping handling.
To: Matthew Auld <matthew.auld@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Matthew Brost <matthew.brost@intel.com>
References: <20250219153441.625352-1-dev@lankhorst.se>
 <dftpyfotba6vxp6pkiircxpm7ok7sowzx6x2fu52hdjug4rzfe@uc7e47olt7uv>
 <9b9afafc-74cf-4899-a655-4765c9fb8f9a@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <9b9afafc-74cf-4899-a655-4765c9fb8f9a@intel.com>
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

On 2025-02-20 16:43, Matthew Auld wrote:
> On 20/02/2025 14:22, Lucas De Marchi wrote:
>> On Wed, Feb 19, 2025 at 04:34:40PM +0100, Maarten Lankhorst wrote:
>>> The fbdev vma is a normal unrotated VMA, so add ane explicit check
>>> before re-using.
>>>
>>> When re-using, we have to restore the GGTT mapping on resume, so add
>>> some code to do that too.
>>>
>>> Fixes: 67a98f7e27ba ("drm/xe/display: Re-use display vmas when 
>>> possible")
>>> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
>>> ---
>>> drivers/gpu/drm/xe/display/xe_display.c |  6 +++++-
>>> drivers/gpu/drm/xe/display/xe_fb_pin.c  | 24 +++++++++++++++++++++++-
>>> drivers/gpu/drm/xe/display/xe_fb_pin.h  | 13 +++++++++++++
>>> 3 files changed, 41 insertions(+), 2 deletions(-)
>>> create mode 100644 drivers/gpu/drm/xe/display/xe_fb_pin.h
>>>
>>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/ 
>>> drm/xe/display/xe_display.c
>>> index 02a413a073824..999f25a562c19 100644
>>> --- a/drivers/gpu/drm/xe/display/xe_display.c
>>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
>>> @@ -30,6 +30,7 @@
>>> #include "intel_hotplug.h"
>>> #include "intel_opregion.h"
>>> #include "skl_watermark.h"
>>> +#include "xe_fb_pin.h"
>>> #include "xe_module.h"
>>>
>>> /* Xe device functions */
>>> @@ -492,8 +493,11 @@ void xe_display_pm_resume(struct xe_device *xe)
>>>         intel_display_driver_enable_user_access(display);
>>>     }
>>>
>>> -    if (has_display(xe))
>>> +    if (has_display(xe)) {
>>> +        xe_fb_pin_resume(xe);
>>
>> this looks odd. I remember when we had issues with LNL about pages
>> coming with garbage after a resume we talked about marking them as
>> "needed" on suspend so they'd be saved by mm. The ggtt afair was one of
>> them. Or did we go with a different approach and I'm misremembering?
> 
> Hmm, I thought for display fbs we don't use the same pin tracking so it 
> is rather skipped by the GGTT save/restore logic. But I thought 
> previously the display stuff ensured all fb are unpinned by the time we 
> do the suspend, so on resume we would just re-program the GGTT for fb 
> when re-pinning it (handled by display code). But I guess issue now 
> comes with re-using the vma and its GGTT mapping, since it will now also 
> skip re-programming the GGTT on re-pin? But wouldn't we have this same 
> issue for all fb, and not just this fbdev stuff or does reuse_vma() 
> somehow handle this?

Correct. Display has its own GGTT tracking.

In general, all FB's are unpinned during suspend, and suspend will 
destroy the VMA. A new VMA and re-pinning will be done after resume, so 
this is not a problem in general.

The special case is unfortunately FBDEV vma pin, which we started 
re-using in the patch series. That one should be preserved across 
suspend/resume, otherwise we get pipe fault errors after a cycle because 
the GGTT is wiped.

The bug was there before, but never hit because we never used the 
initial GGTT mapping, it was only there to keep fbdev pinned.

I'm honestly wondering how much it's needed, but not doing so likely 
breaks i915. Perhaps we could make a dummy noop instead.

Cheers,
~Maarten
