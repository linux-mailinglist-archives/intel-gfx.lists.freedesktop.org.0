Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 648EA4E7452
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 14:39:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6085510EA36;
	Fri, 25 Mar 2022 13:39:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C5B510EA36
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 13:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648215587; x=1679751587;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=qUKT4LzD8LRLHh/7DdWYzRFtFprtRfwqW1A45q2Ufl0=;
 b=Zwqcz6dd96VMcWTfxA/a1HN1f//OdFcN3a8BGLLI1BuYzF8Z4d+CT+Cv
 uBoSdTlBa+Llic4mET0SHcjaR0C4e8ZqoQWjiSbchBPtd/wiSdpp0zckS
 cPL690MtRXlEYHpHcFfwnWB2zskD583f/twIqthUg9O7rMax7+g7INkKO
 AghWl2ukqsdGp6dTTZf6fIexbHzgjqzwNPLI75/8Zro/5UIn7Rf44Qh3c
 MlexpetLknUIcvzMDkcc7U/9Sl4Pb1JkN0exYSeKPuQ1UW/+54+Idd77c
 xVh+mDkRc/4bmCY4LKpSwA++cCwPy1tn+B7Z8jhlielSP+9uSKAQl0J5Q Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="258350385"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="258350385"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 06:39:46 -0700
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="561839238"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.61.27])
 ([10.252.61.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 06:39:45 -0700
Message-ID: <9a700c09-052e-977d-4ae8-333d4540910f@linux.intel.com>
Date: Fri, 25 Mar 2022 14:39:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220324074300.21294-1-animesh.manna@intel.com>
 <176fa37d-3c9a-15ee-bb5d-b75c33d2e498@linux.intel.com>
 <768a2c9eec6e4427984b1d68757902d7@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <768a2c9eec6e4427984b1d68757902d7@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: modified to drm_info in
 dsb_prepare()
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


On 3/25/2022 2:22 PM, Manna, Animesh wrote:
>
>> -----Original Message-----
>> From: Das, Nirmoy <nirmoy.das@linux.intel.com>
>> Sent: Thursday, March 24, 2022 2:39 PM
>> To: Manna, Animesh <animesh.manna@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: modified to drm_info in
>> dsb_prepare()
>>
>>
>> On 3/24/2022 8:43 AM, Animesh Manna wrote:
>>> The request to aqquire gem resources is failing for DSB in rare
>>> scenario where it is busy and the register programming will be done
>>> through mmio fallback path.
>>>
>>> DSB has extra advantage of faster register programming which may go
>>> away through mmio path. Adding wait for gem resource also may not be
>>> right as anyways losing time.
>>>
>>> To make the CI execution happy replaced drm_dbg_kms() to drm_info()
>>> for printing debuf info during dsb buffer preparation.
>>>
>>> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_dsb.c | 8 ++++----
>>>    1 file changed, 4 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
>>> b/drivers/gpu/drm/i915/display/intel_dsb.c
>>> index b34a67309976..b68dd7bd5271 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
>>> @@ -275,7 +275,7 @@ void intel_dsb_prepare(struct intel_crtc_state
>>> *crtc_state)
>>>
>>>    	dsb = kmalloc(sizeof(*dsb), GFP_KERNEL);
>>>    	if (!dsb) {
>>> -		drm_err(&i915->drm, "DSB object creation failed\n");
>>> +		drm_info(&i915->drm, "DSB object creation failed\n");
>>>    		return;
>>>    	}
>>>
>>> @@ -283,14 +283,14 @@ void intel_dsb_prepare(struct intel_crtc_state
>>> *crtc_state)
>>>
>>>    	obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
>>>    	if (IS_ERR(obj)) {
>>> -		drm_err(&i915->drm, "Gem object creation failed\n");
>>> +		drm_info(&i915->drm, "Gem object creation failed\n");
>> If CI is happy with drm_warn then it makes sense to use drm_warn.
> Checked with CI team, seems drm_warn also considered as bug, is it ok to use drm_info?


In that case: don't print anything on each error and at out label,  you 
can print an info about the fallback option.


Nirmoy

>
>>
>>>    		kfree(dsb);
>>>    		goto out;
>>>    	}
>>>
>>>    	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
>>>    	if (IS_ERR(vma)) {
>>> -		drm_err(&i915->drm, "Vma creation failed\n");
>>> +		drm_info(&i915->drm, "Vma creation failed\n");
>>
>> These messages are bit vague, add "DSB VMA creation failed" or something
>> similar.
>>
>> With that Acked-by: Nirmoy Das <nirmoy.das@intel.com>
> Thanks for review, will modify in next version.
>
> Regards,
> Animesh
>   
>>
>> Nirmoy
>>
>>
>>>    		i915_gem_object_put(obj);
>>>    		kfree(dsb);
>>>    		goto out;
>>> @@ -298,7 +298,7 @@ void intel_dsb_prepare(struct intel_crtc_state
>>> *crtc_state)
>>>
>>>    	buf = i915_gem_object_pin_map_unlocked(vma->obj, I915_MAP_WC);
>>>    	if (IS_ERR(buf)) {
>>> -		drm_err(&i915->drm, "Command buffer creation failed\n");
>>> +		drm_info(&i915->drm, "Command buffer creation failed\n");
>>>    		i915_vma_unpin_and_release(&vma,
>> I915_VMA_RELEASE_MAP);
>>>    		kfree(dsb);
>>>    		goto out;
