Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93224933FD6
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2024 17:42:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CDAB10E2C1;
	Wed, 17 Jul 2024 15:42:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ARWQKVlI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9850510E2C0
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2024 15:42:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721230931; x=1752766931;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=FazDZaUpjT+elP5Kx/XrGiEXrwzNhzGHKYX2Zm+J/OA=;
 b=ARWQKVlIGmtAMz3hnMcNcf09kDv5fZr2CQBULAZNrBO+a7AxI2++F4kO
 u44Z0opQJEQTpaPURTwfWn2U6ziQm9/bgpWYTw6YmGpobAJ2uGpog7Ne3
 maUTWM9gIALhrMgLEEayytoqJ8hX7YWPeppQhUgW6DYymjaJxPSrJHo1a
 whBhSsmL/wTvdt4OXhuQn18joOJWMWCdmhC6HSiA/L55xOmNFZO2d3UNp
 Zxmku/J2fSoivxH/XviDAkPqAZDNbdtYnpwKs5SDesbui66OKl3pTgOJW
 E8u5dLBywHfYIrr9Eytie2yspJRyuxBN4jSYxKUEefQqWT2o+76Uj4kxW A==;
X-CSE-ConnectionGUID: 1xuqT/zlSrmlq/svQezwxg==
X-CSE-MsgGUID: kppGLSdiTEqAMbqCoKApsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18697298"
X-IronPort-AV: E=Sophos;i="6.09,215,1716274800"; d="scan'208";a="18697298"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 08:42:10 -0700
X-CSE-ConnectionGUID: oWo1tvY1RCGbfNAl9xr0HA==
X-CSE-MsgGUID: 7SKibyyUT5KvCmAB0wFoBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,215,1716274800"; d="scan'208";a="50324194"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.246.38.191])
 ([10.246.38.191])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 08:42:09 -0700
Message-ID: <f524b27e-7267-4c1d-8984-52bc12759064@linux.intel.com>
Date: Wed, 17 Jul 2024 17:42:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Allow NULL memory region
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, Andi Shyti <andi.shyti@linux.intel.com>
References: <20240712214156.3969584-1-jonathan.cavitt@intel.com>
 <e113ec37-3d8e-49fc-b55b-525ef481f540@linux.intel.com>
 <642adf26-af1c-4c2a-8845-f50dc269a4d5@suswa.mountain>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <642adf26-af1c-4c2a-8845-f50dc269a4d5@suswa.mountain>
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


On 7/17/2024 5:25 PM, Dan Carpenter wrote:
> On Wed, Jul 17, 2024 at 05:05:55PM +0200, Nirmoy Das wrote:
>> On 7/12/2024 11:41 PM, Jonathan Cavitt wrote:
>>> Prevent a NULL pointer access in intel_memory_regions_hw_probe.
>>>
>>> Fixes: 05da7d9f717b ("drm/i915/gem: Downgrade stolen lmem setup warning")
>>> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
>>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/intel_memory_region.c | 6 ++++--
>>>    1 file changed, 4 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
>>> index 172dfa7c3588b..d40ee1b42110a 100644
>>> --- a/drivers/gpu/drm/i915/intel_memory_region.c
>>> +++ b/drivers/gpu/drm/i915/intel_memory_region.c
>>> @@ -368,8 +368,10 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
>>>    			goto out_cleanup;
>>>    		}
>>> -		mem->id = i;
>>> -		i915->mm.regions[i] = mem;
>> There is a check for mem just before that. You could use IS_ERR_OR_NULL(mem)
>> instead of IS_ERR().
> An error pointer return is normally completely different from a NULL
> return in how it's handled.


intel_memory_regions_driver_release() skipped my eyes  in the cleanup path.

>   Here NULL is a special kind of success.  I
> wrote a blog about this.
>
> https://staticthinking.wordpress.com/2022/08/01/mixing-error-pointers-and-null/


I am the perfect target audience for this blog post :)


Thanks,

Nirmoy

>
> regards,
> dan carpenter
