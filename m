Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F605461647
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Nov 2021 14:26:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 670116E430;
	Mon, 29 Nov 2021 13:25:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B13F6E237;
 Mon, 29 Nov 2021 13:25:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10182"; a="233458180"
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="233458180"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2021 05:25:50 -0800
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="499329309"
Received: from epaglier-mobl.amr.corp.intel.com (HELO [10.249.36.141])
 ([10.249.36.141])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2021 05:25:48 -0800
Message-ID: <63197a54-511f-e18f-8355-5527215a79bd@linux.intel.com>
Date: Mon, 29 Nov 2021 14:25:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.3.2
Content-Language: en-US
To: Matthew Auld <matthew.william.auld@gmail.com>
References: <20211021103605.735002-1-maarten.lankhorst@linux.intel.com>
 <20211021103605.735002-15-maarten.lankhorst@linux.intel.com>
 <CAM0jSHPq1s9hV2gFmGK0Y9PPbgyTYKiaxzR-+xojbFNzU9EW-A@mail.gmail.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <CAM0jSHPq1s9hV2gFmGK0Y9PPbgyTYKiaxzR-+xojbFNzU9EW-A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 15/28] drm/i915: Add lock for unbinding to
 i915_gem_object_ggtt_pin_ww
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 21-10-2021 19:48, Matthew Auld wrote:
> On Thu, 21 Oct 2021 at 11:37, Maarten Lankhorst
> <maarten.lankhorst@linux.intel.com> wrote:
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Needs a proper commit message.

What about this?


>> ---
>>  drivers/gpu/drm/i915/i915_gem.c | 9 ++++++++-
>>  1 file changed, 8 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
>> index 981e383d1a5d..6aa9e465b48e 100644
>> --- a/drivers/gpu/drm/i915/i915_gem.c
>> +++ b/drivers/gpu/drm/i915/i915_gem.c
>> @@ -931,7 +931,14 @@ i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
>>                         goto new_vma;
>>                 }
>>
>> -               ret = i915_vma_unbind(vma);
>> +               ret = 0;
>> +               if (!ww)
>> +                       ret = i915_gem_object_lock_interruptible(obj, NULL);
>> +               if (!ret) {
>> +                       ret = i915_vma_unbind(vma);
>> +                       if (!ww)
>> +                               i915_gem_object_unlock(obj);
>> +               }
> There is also a wait_for_bind below. Do we need the lock for that also?

Hmm good find.

Not sure if required in this patch series. I have some patches on top that require the lock because of async binding / unbinding, that would need it for sure.

I will fix this function to use WARN_ON(!ww), and add ww handling to i915_gem_object_ggtt_pin(). That should fix all issues without special casing !ww.

~Maarten

