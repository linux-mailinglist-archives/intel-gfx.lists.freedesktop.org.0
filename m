Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 882AC677C3D
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 14:17:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 138C910E490;
	Mon, 23 Jan 2023 13:17:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1DF310E490
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 13:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674479868; x=1706015868;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=nWKQZMTapXxMXEiSBFmlLeAF/seA0VtrOFwOXi1K0Y4=;
 b=erY0C+9UKgNjmvK5dVOqJVnHOSbosJAADQbGoJkcv9RkfWW55jD3gZv+
 tQN/gXrxAEB2dQL/0jguJybagdno+uNhzU4HjjbZ1/nX4jkpSZj/n4K3v
 kHya1AyYqDPTvLXiw7rE6V+/8i2GNtLeyRwTDzU/doYzw/k08wiNCIPmn
 mGzCA6BXNeU9xprKbW+UkcvVmBQ7n8K+AzBEKS18kiasJFZAgmGMTukWG
 fxiM5d1hTT0HoI+FLT8Gm0hnEiym3DQZTZd/y7WXEJanAUYfn3jY39mA5
 leiMwIZ/L2QD3LwC/8rvigMJP8baiY5secEUEL6RdvdFRckpuxvilPFK2 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="353299519"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="353299519"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 05:17:48 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="804095030"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="804095030"
Received: from possola-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.57.125])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 05:17:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <Y8pwUeDTaoteUmI9@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230118131538.3558599-1-jani.nikula@intel.com>
 <20230118131538.3558599-6-jani.nikula@intel.com>
 <Y8pwUeDTaoteUmI9@intel.com>
Date: Mon, 23 Jan 2023 15:17:44 +0200
Message-ID: <87y1pt75l3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: move I915_COLOR_UNEVICTABLE
 to i915_gem_gtt.h
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 20 Jan 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Wed, Jan 18, 2023 at 03:15:37PM +0200, Jani Nikula wrote:
>> Declutter i915_drv.h.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_drv.h     | 2 --
>>  drivers/gpu/drm/i915/i915_gem_gtt.h | 2 ++
>>  2 files changed, 2 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index eed552e507dc..d12c7932677a 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -68,8 +68,6 @@ struct drm_i915_clock_gating_funcs;
>>  struct vlv_s0ix_state;
>>  struct intel_pxp;
>>  
>> -#define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
>> -
>>  #define GEM_QUIRK_PIN_SWIZZLED_PAGES	BIT(0)
>>  
>>  /* Data Stolen Memory (DSM) aka "i915 stolen memory" */
>> diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.h b/drivers/gpu/drm/i915/i915_gem_gtt.h
>
> same question here... used in gem_evict which does not directly include this

I'd already pushed these by the time you commented. :(

Am I being rude if I say I kind of expect some header cleanup and
#include mess untangling from the gem folks too, and won't follow-up on
this myself?

BR,
Jani.

>
>> index 243419783052..3d77679bf211 100644
>> --- a/drivers/gpu/drm/i915/i915_gem_gtt.h
>> +++ b/drivers/gpu/drm/i915/i915_gem_gtt.h
>> @@ -18,6 +18,8 @@ struct drm_i915_gem_object;
>>  struct i915_address_space;
>>  struct i915_gem_ww_ctx;
>>  
>> +#define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
>> +
>>  int __must_check i915_gem_gtt_prepare_pages(struct drm_i915_gem_object *obj,
>>  					    struct sg_table *pages);
>>  void i915_gem_gtt_finish_pages(struct drm_i915_gem_object *obj,
>> -- 
>> 2.34.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
