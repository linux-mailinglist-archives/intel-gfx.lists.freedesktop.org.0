Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB672753F1
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 11:05:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D86E6E145;
	Wed, 23 Sep 2020 09:05:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34A806E145
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 09:05:05 +0000 (UTC)
IronPort-SDR: V3wUqs1Ct3Dl7YncECfa5uBOJi6JUORy3hPVk7b84+E6CI/gkbNOt/9jWq0qCHIv71estUIRrO
 WD7loykWjGnA==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="178903659"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="178903659"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 02:04:47 -0700
IronPort-SDR: lwUXVT52PJTdkK520GPJcdg6a9It16VWhoaBTnEKofCKvjUQWDja88G4xC1+uSBKsCewsYZE7y
 WCOMp34+IMHg==
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="309832346"
Received: from bravinar-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.9.250])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 02:04:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Steve Hampson <steven.t.hampson@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <160085149249.27151.12750028761264321987@build.alporthouse.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200923044054.5653-1-steven.t.hampson@intel.com>
 <160085149249.27151.12750028761264321987@build.alporthouse.com>
Date: Wed, 23 Sep 2020 12:04:58 +0300
Message-ID: <87eemsrhhh.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] Fix NULL pointer found by static analysis
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 23 Sep 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Quoting Steve Hampson (2020-09-23 05:40:54)
>> A static analysis tool has reveiled a NULL pointer error in
>> __i915_gem_object_lock.  This appears to be correct as many calls
>> pass a NULL into the ww parameter.
>> 
>> Signed-off-by: Steve Hampson <steven.t.hampson@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gem/i915_gem_object.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> index d46db8d8f38e..9b18ead42991 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> @@ -126,7 +126,7 @@ static inline int __i915_gem_object_lock(struct drm_i915_gem_object *obj,
>>         if (ret == -EALREADY)
>>                 ret = 0;
>>  
>> -       if (ret == -EDEADLK)
>> +       if (ret == -EDEADLK && ww)
>
> EDEADLK is predicated by ww already.

The hard part is that neither the analyzer nor a human who doesn't know
how dma_resv_lock* work can easily deduce that. :(

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
