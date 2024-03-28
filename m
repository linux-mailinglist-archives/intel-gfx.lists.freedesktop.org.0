Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6336188FD1E
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 11:33:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFFD910F506;
	Thu, 28 Mar 2024 10:33:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U6G7dt85";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6B7210F4FF;
 Thu, 28 Mar 2024 10:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711621996; x=1743157996;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=y9L2UfGlxkY+8GYuVqiK8/q8eJLu6O7Ibe3SviJ/fbs=;
 b=U6G7dt85WSQStCkGAEHYrElrHbDsYOP9u6sh5XtcjgLEXThJPibGSqfq
 NkJu3rUjyNdCTVrONjHiDyvaeyADTEOtpqy6j909LvoqfjH1gmPqndYdN
 R1gPoS0t1AvK4qeR6eGjC10lOt0kCO0yN3KdNXB4dKzIbtzDeysdRugJH
 2j/eUdM6JwBTi+pPoHI/T/v+7ggZrzIkbucbAgN21eUhUaYTg2lbfCmhF
 ++p4yJ//Fdn7IvmB+tdQGyWVZi/p0K8BZzmnChMLsgA5kCSynTdSDsKmf
 QSdFQAJpyZxm2R+kNjl6akN24kedF/WwSm6P8aWv7n8837eqnN0q77S9X Q==;
X-CSE-ConnectionGUID: /a0V5TQQTg2kPr+E0VvGNg==
X-CSE-MsgGUID: g6ODgvwqTG+OHpTFHG708Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6880307"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; 
   d="scan'208";a="6880307"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 03:33:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="21267840"
Received: from abdulqaf-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.252.57.138])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 03:33:12 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, Arun R Murthy
 <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCHv2] drm/xe/display: check for error on drmm_mutex_init
In-Reply-To: <ZgUq47D313cr2VYp@ashyti-mobl2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240328080005.410961-1-arun.r.murthy@intel.com>
 <ZgUq47D313cr2VYp@ashyti-mobl2.lan>
Date: Thu, 28 Mar 2024 12:33:09 +0200
Message-ID: <87r0fufxy2.fsf@intel.com>
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

On Thu, 28 Mar 2024, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> Hi Arun,
>
> ...
>
>> -	drmm_mutex_init(&xe->drm, &xe->sb_lock);
>> -	drmm_mutex_init(&xe->drm, &xe->display.backlight.lock);
>> -	drmm_mutex_init(&xe->drm, &xe->display.audio.mutex);
>> -	drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex);
>> -	drmm_mutex_init(&xe->drm, &xe->display.pps.mutex);
>> -	drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex);
>> +	if (drmm_mutex_init(&xe->drm, &xe->sb_lock) ||
>> +	    drmm_mutex_init(&xe->drm, &xe->display.backlight.lock) ||
>> +	    drmm_mutex_init(&xe->drm, &xe->display.audio.mutex) ||
>> +	    drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex) ||
>> +	    drmm_mutex_init(&xe->drm, &xe->display.pps.mutex) ||
>> +	    drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex))
>> +		return -ENOMEM;
>
> why not extract the value from drmm_mutex_init()? it would make
> the code a bit more complex, but better than forcing a -ENOMEM
> return.
>
> 	err = drmm_mutex_init(...)
> 	if (err)
> 		return err;
>
> 	err = drmm_mutex_init(...)
> 	if (err)
> 		return err;
>
> 	err = drmm_mutex_init(...)
> 	if (err)
> 		return err;
> 	
> 	...
>
> On the other hand drmm_mutex_init(), as of now returns only
> -ENOMEM, but it's a bad practice to assume it will always do. I'd
> rather prefer not to check the error value at all.

And round and round we go. This is exactly what v1 was [1], but it's not
clear because the patch doesn't have a changelog.

This is all utterly ridiculous compared to *why* we even have or use
drmm_mutex_init(). Managed initialization causes more trouble here than
it gains us. Gah.

BR,
Jani.


[1] https://lore.kernel.org/r/ki4ynsl4nmhavf63vzdlt2xkedjo7p7iouzvcksvki3okgz6ak@twlznnlo3g22


>
> Andi
>
>>  	xe->enabled_irq_mask = ~0;
>>  
>>  	err = drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
>> -- 
>> 2.25.1

-- 
Jani Nikula, Intel
