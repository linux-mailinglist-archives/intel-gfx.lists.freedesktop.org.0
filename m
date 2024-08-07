Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0413794AA07
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 16:25:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3507210E541;
	Wed,  7 Aug 2024 14:25:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="rCmbktMx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2A2310E53D
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2024 14:25:10 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id
 ffacd0b85a97d-3687f8fcab5so897873f8f.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Aug 2024 07:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1723040709; x=1723645509;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id:from
 :to:cc:subject:date:message-id:reply-to;
 bh=mcJ+tjljryJvH5wKVJX6St8zSDi2eyqiqQYAyNUri70=;
 b=rCmbktMx6p8Bixgy3ONyDSv5tEuUSKh3mDL1mzxklQAZ8lVxGyq+kJSvJtlDFG37sD
 YPleA6O0QwkHmAfgFQLfSHtM6U+mqkVXjLJKk/RJuAloRkKa8oDBn5sAJKPg7Ki6zWDV
 QM+rKfK2LPkytCcG5gG4xJXTRhGEvy0YrIJN6UD0lfuDW4dmduC2HQSyq+0L5sc7g5Bi
 WCfpT/B3g75c2VnleDOq6YDsfVW1PQMRhzn1phKrj782xz5dovQKixocjw/TbPrUcPqm
 0hdk9ejGOY0EJYULsoktrXEyfpW2wjuYBAQy4wzQGEJsdp5S2wYBM0QeAlFlk8FG1mob
 RI5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723040709; x=1723645509;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=mcJ+tjljryJvH5wKVJX6St8zSDi2eyqiqQYAyNUri70=;
 b=s49ZPmP7GI3Mxi8wOiri7VC8n/TZcrdtHcN2o+8gBqSf22A1CQs6Vcce+l5BsgYL+v
 6HubtPQ7VEQijwWXtfGe/ypo6tMwGOA+u0krxL5TCgs6ZSugv5662wXuBn+6KTFPmXCk
 eaRkpbCDwawWe4LVLDAgPu5nD/2aqGSkqdoIaO37ZN1kLxlobw06HtO34aXn5wcD+nLn
 zHj70FCrvPwSuDs7v86y8Y/R4Wko4fAXXhREPvkuq7X6wRtRRRNBuH5rFCw34cNQv/Ns
 24hslc98AXwxpXZ4meakonIS99ENhdrE1Sj2b2PFHLfkKgzQQ656P/W7+LlBHY+TL2iK
 Q4uw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWfL9LegbaQwKX4KT4JAC3vyuVtzJsmOjUhJYDPAcBkchXO5NlYlQBnn2KAqeVPeN/junpLUAwEkY0FecJ7178l/FRdMlSJAIm5zN7wOLhO
X-Gm-Message-State: AOJu0YxdpqZS/sh6IlIJ5mgmpz/DLsFUgUUBNB3TPDjyCqTytgXXEsp7
 YrZKycplwa8i3APipFlltkD5IPN6MH36ip0UFcoAGo8VmyrFWgrQQMAx8bAz62o=
X-Google-Smtp-Source: AGHT+IFZ3oPJmMIzkmyuH1UGqcbq8ZSzuq+q5bNvfqrKSYyKWodDQUtR94k6BMmfcdabkZ+ai5qflw==
X-Received: by 2002:adf:e008:0:b0:367:9d82:8370 with SMTP id
 ffacd0b85a97d-36bbc152c97mr10834122f8f.45.1723040708765; 
 Wed, 07 Aug 2024 07:25:08 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-36bbd05b4c0sm16437688f8f.71.2024.08.07.07.25.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 07 Aug 2024 07:25:08 -0700 (PDT)
Message-ID: <9cac83c8-69de-49d4-8f7a-394d1584ea81@ursulin.net>
Date: Wed, 7 Aug 2024 15:25:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] drm/i915: remove __i915_printk()
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1722951405.git.jani.nikula@intel.com>
 <be9baeab281f75999e96cc7ad1c06c6680494bc1.1722951405.git.jani.nikula@intel.com>
 <f159371c-d0e5-4d83-b7d5-4d418eecca44@ursulin.net> <87le184l3g.fsf@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <87le184l3g.fsf@intel.com>
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


On 07/08/2024 12:40, Jani Nikula wrote:
> On Wed, 07 Aug 2024, Tvrtko Ursulin <tursulin@ursulin.net> wrote:
>> On 06/08/2024 14:38, Jani Nikula wrote:
>>> With the previous cleanups, the last remaining user of __i915_printk()
>>> is i915_probe_error(). Switch that to use drm_dbg() and drm_err()
>>> instead, dropping the request to report bugs in the few remaining
>>> specific cases.
>>
>> Aren't those few cases legitimate probe failures, including anything
>> unexpected which results in non-operational GPU (any -EIO from
>> intel_gt_init())?
> 
> They are, and they're still logged as such. Functionally, the only
> change is removing the bug filing request.
> 
>> So it is effectively completely(*) removing the request to file bugs, or
>> I miss something remained? Or the unmentioned goal is to encourage fewer
>> i915 bug reports on top of the code base cleanup?
> 
> I should've elaborated this better.
> 
> My question is, what makes these cases so special that they warrant
> logging a bug filing request? First, I would assume the init paths are
> most tested in CI and least likely to trigger a failure on end user
> machines. Second, even if they did trigger for the end user, a
> non-operational GPU is most likely to lead to a bug report even without
> a request.

Yeah I tend to agree. Just wanted to probe a bit more on the motivation.

Error captures aside, other places which can fail and which we are 
discussing here are a bit too varied and I agree it is better to 
simplify, rather than pretend some are more important than the others.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

Regards,

Tvrtko

> To me it just seems weird, and I opted to remove them, not least because
> it's not common for drivers to do this at all. (And yes, I'd remove the
> backlight one too.)
> 
> The other option is to embrace logging bug reporting requests. But for
> that I'd rather add a separate function, call it at the relevant places,
> and not hide it within this complex maze of multi-level debug logging
> macros.
> 
> 
> BR,
> Jani.
> 
> 
> 
>>
>> Regards,
>>
>> Tvrtko
>>
>> *) Apart from display/intel_dp_aux_backlight.c !? :)
>>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/i915_utils.c | 41 -------------------------------
>>>    drivers/gpu/drm/i915/i915_utils.h | 13 +++++-----
>>>    2 files changed, 6 insertions(+), 48 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_utils.c b/drivers/gpu/drm/i915/i915_utils.c
>>> index bee32222f0fd..b34a2d3d331d 100644
>>> --- a/drivers/gpu/drm/i915/i915_utils.c
>>> +++ b/drivers/gpu/drm/i915/i915_utils.c
>>> @@ -11,47 +11,6 @@
>>>    #include "i915_reg.h"
>>>    #include "i915_utils.h"
>>>    
>>> -#define FDO_BUG_MSG "Please file a bug on drm/i915; see " FDO_BUG_URL " for details."
>>> -
>>> -void
>>> -__i915_printk(struct drm_i915_private *dev_priv, const char *level,
>>> -	      const char *fmt, ...)
>>> -{
>>> -	static bool shown_bug_once;
>>> -	struct device *kdev = dev_priv->drm.dev;
>>> -	bool is_error = level[1] <= KERN_ERR[1];
>>> -	bool is_debug = level[1] == KERN_DEBUG[1];
>>> -	struct va_format vaf;
>>> -	va_list args;
>>> -
>>> -	if (is_debug && !drm_debug_enabled(DRM_UT_DRIVER))
>>> -		return;
>>> -
>>> -	va_start(args, fmt);
>>> -
>>> -	vaf.fmt = fmt;
>>> -	vaf.va = &args;
>>> -
>>> -	if (is_error)
>>> -		dev_printk(level, kdev, "%pV", &vaf);
>>> -	else
>>> -		dev_printk(level, kdev, "[" DRM_NAME ":%ps] %pV",
>>> -			   __builtin_return_address(0), &vaf);
>>> -
>>> -	va_end(args);
>>> -
>>> -	if (is_error && !shown_bug_once) {
>>> -		/*
>>> -		 * Ask the user to file a bug report for the error, except
>>> -		 * if they may have caused the bug by fiddling with unsafe
>>> -		 * module parameters.
>>> -		 */
>>> -		if (!test_taint(TAINT_USER))
>>> -			dev_notice(kdev, "%s", FDO_BUG_MSG);
>>> -		shown_bug_once = true;
>>> -	}
>>> -}
>>> -
>>>    void add_taint_for_CI(struct drm_i915_private *i915, unsigned int taint)
>>>    {
>>>    	drm_notice(&i915->drm, "CI tainted: %#x by %pS\n",
>>> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
>>> index feb078ae246f..71bdc89bd621 100644
>>> --- a/drivers/gpu/drm/i915/i915_utils.h
>>> +++ b/drivers/gpu/drm/i915/i915_utils.h
>>> @@ -45,10 +45,6 @@ struct timer_list;
>>>    #define MISSING_CASE(x) WARN(1, "Missing case (%s == %ld)\n", \
>>>    			     __stringify(x), (long)(x))
>>>    
>>> -void __printf(3, 4)
>>> -__i915_printk(struct drm_i915_private *dev_priv, const char *level,
>>> -	      const char *fmt, ...);
>>> -
>>>    #if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
>>>    
>>>    int __i915_inject_probe_error(struct drm_i915_private *i915, int err,
>>> @@ -66,9 +62,12 @@ bool i915_error_injected(void);
>>>    
>>>    #define i915_inject_probe_failure(i915) i915_inject_probe_error((i915), -ENODEV)
>>>    
>>> -#define i915_probe_error(i915, fmt, ...)				   \
>>> -	__i915_printk(i915, i915_error_injected() ? KERN_DEBUG : KERN_ERR, \
>>> -		      fmt, ##__VA_ARGS__)
>>> +#define i915_probe_error(i915, fmt, ...) ({ \
>>> +	if (i915_error_injected()) \
>>> +		drm_dbg(&(i915)->drm, fmt, ##__VA_ARGS__); \
>>> +	else \
>>> +		drm_err(&(i915)->drm, fmt, ##__VA_ARGS__); \
>>> +})
>>>    
>>>    #define range_overflows(start, size, max) ({ \
>>>    	typeof(start) start__ = (start); \
> 
