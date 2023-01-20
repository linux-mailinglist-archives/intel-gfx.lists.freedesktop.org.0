Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B916752A8
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 11:39:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0C6310E0EA;
	Fri, 20 Jan 2023 10:39:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90D7210E0EA
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 10:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674211180; x=1705747180;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=MUvLh3K4NVTluseP6s+e6KUvxLlvzedKCjg9VpLyXTE=;
 b=CzTweRo0SeMPV4a47eoCTTYKM18ZqCcz3HngPw6ItnEKKocVS7+Sm3So
 /VMgMA7wGKOPt7qThL5+OROP2htLnT8bm1TtB4YawDu9tc6DBmBPkaR72
 kS2wbk/RePwJ8oSIurhcaij+9hj+RcvQBSPgPd5FA/7C5Ysq1qu7Ynqg8
 WF4t1nC1pO6Er78hCjjADOr95GKP2UomoaJdESlhYFTG53CAX9z0zUSNx
 UR4rdd1HhL45b6G+c3IyaAdsBCEawr3TvMnagx37ZavArLpjOJft5zxt4
 0MQrgaQU3Z2u/0eYi8Obmq3INKeXpyxxi6kmPVlOTo8cAz0RobDIWA69Q A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="325587678"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="325587678"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 02:39:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="834375842"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="834375842"
Received: from shanebyr-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.30.15])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 02:39:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <Y8ptwyLJQqEbhjqy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230118131538.3558599-1-jani.nikula@intel.com>
 <20230118131538.3558599-2-jani.nikula@intel.com>
 <Y8ptwyLJQqEbhjqy@intel.com>
Date: Fri, 20 Jan 2023 12:39:23 +0200
Message-ID: <87v8l18p7o.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: move
 I915_IDLE_ENGINES_TIMEOUT next to its only user
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
> On Wed, Jan 18, 2023 at 03:15:33PM +0200, Jani Nikula wrote:
>> Declutter i915_drv.h. If there's ever a need to use this in more than
>> one place, we can figure out a better spot then. For now, this seems
>> easiest.
>
> why don't we get rid of the single use macro instead?

I thought it had self-documenting value as-is.

In any case, I merged this already, so follow-ups welcome. ;)

BR,
Jani.


>
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_debugfs.c | 3 +++
>>  drivers/gpu/drm/i915/i915_drv.h     | 2 --
>>  2 files changed, 3 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
>> index a356ca490159..51ba9a8369c5 100644
>> --- a/drivers/gpu/drm/i915/i915_debugfs.c
>> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
>> @@ -648,6 +648,9 @@ i915_drop_caches_get(void *data, u64 *val)
>>  
>>  	return 0;
>>  }
>> +
>> +#define I915_IDLE_ENGINES_TIMEOUT (200) /* in ms */
>> +
>>  static int
>>  gt_drop_caches(struct intel_gt *gt, u64 val)
>>  {
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index 8377173e8de5..343e3e568774 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -194,8 +194,6 @@ struct i915_gem_mm {
>>  	u32 shrink_count;
>>  };
>>  
>> -#define I915_IDLE_ENGINES_TIMEOUT (200) /* in ms */
>> -
>>  #define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
>>  
>>  struct i915_virtual_gpu {
>> -- 
>> 2.34.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
