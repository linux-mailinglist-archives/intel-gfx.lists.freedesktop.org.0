Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2506E8C47EA
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 21:56:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21FE910E809;
	Mon, 13 May 2024 19:56:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jnvrA68t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B069110E809;
 Mon, 13 May 2024 19:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715630213; x=1747166213;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=YPvHg2mJf+vJ4SYgG3UO00NsG8QaB/oqyDKjRrwD8ks=;
 b=jnvrA68twliBT/ZtWY20qrN4MKymAIJHwUePteDkGaAMpI/IIyj/a5oA
 Oh9rIgp1R9a7jup9v7N2XxIDTylrjq4pVpb84ENfCjudlVup06XDbR80N
 Br2bgjVKcl7jBC8SMI8VP9QLWDfP9jBW/risnAX4q6mIwP5fEcSr8Td+Z
 VoBNLOvpb49cmijbN5MHf8MbDiYplaBqtZGrDMA++zNq7w8TknvppbYww
 AMHmW873IlI1Uz64ZXZaeLtosw6Ucm4xnolE++YcAc9oUcCUTTD74YFPb
 4tj3zvgJvaDsHQwfzOaE/Y+bX0TTjgZt5N6fj1BWWJq3sa4PqIeIis6c+ A==;
X-CSE-ConnectionGUID: MBW2T5hgRnmpXLWg5JnH1w==
X-CSE-MsgGUID: oqzdvCQQS3qnwyCBoiiLZA==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="22184934"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="22184934"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 12:56:52 -0700
X-CSE-ConnectionGUID: eOnwb1DeTc+vZXtYVeczeQ==
X-CSE-MsgGUID: Pf2KXqOvTt+pXe6JPk51YQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="35130556"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.52])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 12:56:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 "Ghimiray, Himal Prasad" <himal.prasad.ghimiray@intel.com>
Subject: Re: [PATCH 1/2] drm/xe/display: remove unused xe->enabled_irq_mask
In-Reply-To: <djou7im7ge6emdfqjvev5u24ruhrqwa45a3sxtmbgjp3dra5cz@jtmpz6f3e4fv>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240510094313.3422982-1-jani.nikula@intel.com>
 <87y18dewui.fsf@intel.com>
 <djou7im7ge6emdfqjvev5u24ruhrqwa45a3sxtmbgjp3dra5cz@jtmpz6f3e4fv>
Date: Mon, 13 May 2024 22:56:46 +0300
Message-ID: <87ikzheb9d.fsf@intel.com>
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

On Mon, 13 May 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Mon, May 13, 2024 at 03:10:29PM GMT, Jani Nikula wrote:
>>On Fri, 10 May 2024, Jani Nikula <jani.nikula@intel.com> wrote:
>>> The xe->enabled_irq_mask member has never been used for anything.
>>>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>
>>Lucas, ack for merging these two via drm-intel-next? Even though these
>>touch struct xe_device, I presume any further cleanups touching the
>>surrounding context would have a bigger footprint in drm-intel-next.
>
>
>
> Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
> for both patches

Thanks for the review and acks, pushed to drm-intel-next.

BR,
Jani.


>
> thanks,
> Lucas De Marchi
>
>>
>>BR,
>>Jani.
>>
>>> ---
>>>  drivers/gpu/drm/xe/display/xe_display.c | 1 -
>>>  drivers/gpu/drm/xe/xe_device_types.h    | 2 --
>>>  2 files changed, 3 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
>>> index 0de0566e5b39..fbe2c2eddea9 100644
>>> --- a/drivers/gpu/drm/xe/display/xe_display.c
>>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
>>> @@ -97,7 +97,6 @@ int xe_display_create(struct xe_device *xe)
>>>  	xe->display.hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
>>>
>>>  	drmm_mutex_init(&xe->drm, &xe->sb_lock);
>>> -	xe->enabled_irq_mask = ~0;
>>>
>>>  	return drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
>>>  }
>>> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
>>> index 906b98fb973b..b78223e3baab 100644
>>> --- a/drivers/gpu/drm/xe/xe_device_types.h
>>> +++ b/drivers/gpu/drm/xe/xe_device_types.h
>>> @@ -517,8 +517,6 @@ struct xe_device {
>>>  	/* only to allow build, not used functionally */
>>>  	u32 irq_mask;
>>>
>>> -	u32 enabled_irq_mask;
>>> -
>>>  	struct intel_uncore {
>>>  		spinlock_t lock;
>>>  	} uncore;
>>
>>-- 
>>Jani Nikula, Intel

-- 
Jani Nikula, Intel
