Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AFC94A718
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 13:40:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC70C10E048;
	Wed,  7 Aug 2024 11:40:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hm33CWoj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 126DB10E048
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2024 11:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723030841; x=1754566841;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=eM/UMSuqXPTfo/uo0PmzAkh7TWrVZLPHbs+KxSwsEpM=;
 b=hm33CWoj12+UHo1aCyyusOjAdkBI4VngZZUcKBecJjcC7N4txPAEeeR2
 yWSZ/W9bULU+xH5xQhMvMjaflNo3ZjL6qXF0e5Ag7fTzXaNxJ7sjhvtbh
 ySrEWOazYut49TtGcc2u9LavAq/QLHXDCWFkUgbOnxK5ua2PZaMsoQWXS
 Yr6Y2JNRFHbiw8JY2Pc2vGsSxhylYHdndWbsuJu3nEQs/gV5/J7kEjQkz
 d2seHnSdStCW85b7xoa2Gm6Zn4UeXYmRp0v/Lb5uKMqIeOp4pxPGF9ZLY
 TfDTUPznY17XJzMkIf2IOBkDbQnNqiU0lOYjeSlMMVb5m+TqJz9x6mvmm Q==;
X-CSE-ConnectionGUID: caSHw1wWRNyMTGGg5/VelA==
X-CSE-MsgGUID: 4tsv1CTBRF+1WtTCGsuNDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="46499302"
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="46499302"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 04:40:40 -0700
X-CSE-ConnectionGUID: iK22zDfUTRC1Bsj8xyd7rQ==
X-CSE-MsgGUID: x7cseHbSRL+YbZ5mk/TigA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="61767700"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.85])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 04:40:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tursulin@ursulin.net>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/i915: remove __i915_printk()
In-Reply-To: <f159371c-d0e5-4d83-b7d5-4d418eecca44@ursulin.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1722951405.git.jani.nikula@intel.com>
 <be9baeab281f75999e96cc7ad1c06c6680494bc1.1722951405.git.jani.nikula@intel.com>
 <f159371c-d0e5-4d83-b7d5-4d418eecca44@ursulin.net>
Date: Wed, 07 Aug 2024 14:40:35 +0300
Message-ID: <87le184l3g.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 07 Aug 2024, Tvrtko Ursulin <tursulin@ursulin.net> wrote:
> On 06/08/2024 14:38, Jani Nikula wrote:
>> With the previous cleanups, the last remaining user of __i915_printk()
>> is i915_probe_error(). Switch that to use drm_dbg() and drm_err()
>> instead, dropping the request to report bugs in the few remaining
>> specific cases.
>
> Aren't those few cases legitimate probe failures, including anything 
> unexpected which results in non-operational GPU (any -EIO from 
> intel_gt_init())?

They are, and they're still logged as such. Functionally, the only
change is removing the bug filing request.

> So it is effectively completely(*) removing the request to file bugs, or 
> I miss something remained? Or the unmentioned goal is to encourage fewer 
> i915 bug reports on top of the code base cleanup?

I should've elaborated this better.

My question is, what makes these cases so special that they warrant
logging a bug filing request? First, I would assume the init paths are
most tested in CI and least likely to trigger a failure on end user
machines. Second, even if they did trigger for the end user, a
non-operational GPU is most likely to lead to a bug report even without
a request.

To me it just seems weird, and I opted to remove them, not least because
it's not common for drivers to do this at all. (And yes, I'd remove the
backlight one too.)

The other option is to embrace logging bug reporting requests. But for
that I'd rather add a separate function, call it at the relevant places,
and not hide it within this complex maze of multi-level debug logging
macros.


BR,
Jani.



>
> Regards,
>
> Tvrtko
>
> *) Apart from display/intel_dp_aux_backlight.c !? :)
>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_utils.c | 41 -------------------------------
>>   drivers/gpu/drm/i915/i915_utils.h | 13 +++++-----
>>   2 files changed, 6 insertions(+), 48 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/i915_utils.c b/drivers/gpu/drm/i915/i915_utils.c
>> index bee32222f0fd..b34a2d3d331d 100644
>> --- a/drivers/gpu/drm/i915/i915_utils.c
>> +++ b/drivers/gpu/drm/i915/i915_utils.c
>> @@ -11,47 +11,6 @@
>>   #include "i915_reg.h"
>>   #include "i915_utils.h"
>>   
>> -#define FDO_BUG_MSG "Please file a bug on drm/i915; see " FDO_BUG_URL " for details."
>> -
>> -void
>> -__i915_printk(struct drm_i915_private *dev_priv, const char *level,
>> -	      const char *fmt, ...)
>> -{
>> -	static bool shown_bug_once;
>> -	struct device *kdev = dev_priv->drm.dev;
>> -	bool is_error = level[1] <= KERN_ERR[1];
>> -	bool is_debug = level[1] == KERN_DEBUG[1];
>> -	struct va_format vaf;
>> -	va_list args;
>> -
>> -	if (is_debug && !drm_debug_enabled(DRM_UT_DRIVER))
>> -		return;
>> -
>> -	va_start(args, fmt);
>> -
>> -	vaf.fmt = fmt;
>> -	vaf.va = &args;
>> -
>> -	if (is_error)
>> -		dev_printk(level, kdev, "%pV", &vaf);
>> -	else
>> -		dev_printk(level, kdev, "[" DRM_NAME ":%ps] %pV",
>> -			   __builtin_return_address(0), &vaf);
>> -
>> -	va_end(args);
>> -
>> -	if (is_error && !shown_bug_once) {
>> -		/*
>> -		 * Ask the user to file a bug report for the error, except
>> -		 * if they may have caused the bug by fiddling with unsafe
>> -		 * module parameters.
>> -		 */
>> -		if (!test_taint(TAINT_USER))
>> -			dev_notice(kdev, "%s", FDO_BUG_MSG);
>> -		shown_bug_once = true;
>> -	}
>> -}
>> -
>>   void add_taint_for_CI(struct drm_i915_private *i915, unsigned int taint)
>>   {
>>   	drm_notice(&i915->drm, "CI tainted: %#x by %pS\n",
>> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
>> index feb078ae246f..71bdc89bd621 100644
>> --- a/drivers/gpu/drm/i915/i915_utils.h
>> +++ b/drivers/gpu/drm/i915/i915_utils.h
>> @@ -45,10 +45,6 @@ struct timer_list;
>>   #define MISSING_CASE(x) WARN(1, "Missing case (%s == %ld)\n", \
>>   			     __stringify(x), (long)(x))
>>   
>> -void __printf(3, 4)
>> -__i915_printk(struct drm_i915_private *dev_priv, const char *level,
>> -	      const char *fmt, ...);
>> -
>>   #if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
>>   
>>   int __i915_inject_probe_error(struct drm_i915_private *i915, int err,
>> @@ -66,9 +62,12 @@ bool i915_error_injected(void);
>>   
>>   #define i915_inject_probe_failure(i915) i915_inject_probe_error((i915), -ENODEV)
>>   
>> -#define i915_probe_error(i915, fmt, ...)				   \
>> -	__i915_printk(i915, i915_error_injected() ? KERN_DEBUG : KERN_ERR, \
>> -		      fmt, ##__VA_ARGS__)
>> +#define i915_probe_error(i915, fmt, ...) ({ \
>> +	if (i915_error_injected()) \
>> +		drm_dbg(&(i915)->drm, fmt, ##__VA_ARGS__); \
>> +	else \
>> +		drm_err(&(i915)->drm, fmt, ##__VA_ARGS__); \
>> +})
>>   
>>   #define range_overflows(start, size, max) ({ \
>>   	typeof(start) start__ = (start); \

-- 
Jani Nikula, Intel
