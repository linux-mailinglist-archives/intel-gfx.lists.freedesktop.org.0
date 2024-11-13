Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 153E69C6D01
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2024 11:38:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB98310E6CA;
	Wed, 13 Nov 2024 10:38:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 460 seconds by postgrey-1.36 at gabe;
 Wed, 13 Nov 2024 10:38:19 UTC
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 667C110E6C7;
 Wed, 13 Nov 2024 10:38:19 +0000 (UTC)
Message-ID: <134aaf30-d86c-469c-aa05-157cb7db7063@lankhorst.se>
Date: Wed, 13 Nov 2024 11:30:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/9] drm/xe/display: Use a single early init call for
 display
To: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
References: <20241107100140.292928-1-maarten.lankhorst@linux.intel.com>
 <20241107100140.292928-5-maarten.lankhorst@linux.intel.com>
 <ZzOg5vyCXepW_t9n@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <ZzOg5vyCXepW_t9n@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

Den 2024-11-12 kl. 19:39, skrev Rodrigo Vivi:
> On Thu, Nov 07, 2024 at 11:01:36AM +0100, Maarten Lankhorst wrote:
>> Instead of 3 different calls, it should be safe to unify to a single
>> call now. This makes the init sequence cleaner, and display less
>> tangled.
>>
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Link: https://patchwork.freedesktop.org/patch/msgid/20241105121857.17389-5-maarten.lankhorst@linux.intel.com
>> Signed-off-by: Maarten Lankhorst,,, <dev@lankhorst.se>
>> ---
>>   drivers/gpu/drm/xe/display/xe_display.c | 72 +++++++------------------
>>   drivers/gpu/drm/xe/display/xe_display.h |  8 +--
>>   drivers/gpu/drm/xe/xe_device.c          | 10 +---
>>   3 files changed, 23 insertions(+), 67 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
>> index b5502f335f531..a9ce4f561e7aa 100644
>> --- a/drivers/gpu/drm/xe/display/xe_display.c
>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> 
> we should make every function in this file only a wrap to the i915
> side with the 	if (!xe->info.probe_display) being the only thing
> extra in here... so we consolidate the display side in a way
> that we could later really split the display to a separate driver.
> 
> I have the feeling that this patch takes display to the other direction...
> 
It should not matter much. I believe i915 had more split because of 
display being more connected to hardware. In Xe the display is from the 
start a separate driver or module on the chip , so we can do the 
different init calls in one go, as there are no interrupts
calling into the display driver yet.

So in Xe we can do a 2-stage init of display, xe_display_init_early 
which initialises everything required before enabling interrupts, 
completed with the takeover of the initial FB, and xe_display_init() for 
the normal init sequence that has to run afterwards.

Because of memirq's performing allocations by design, we really have to 
run the FB handover code without interrupts anyway.

I believe the same thing could be done on i915 on BDW+, but might be 
harder on legacy platforms.

Cheers,
~Maarten
