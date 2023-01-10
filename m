Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76150663D93
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 11:10:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F7C610E582;
	Tue, 10 Jan 2023 10:10:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E44F10E582
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 10:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673345447; x=1704881447;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=/o94SwMHxX/++vsxaLQOjMgG5HoXVRESUqWhw4iuLto=;
 b=FmD9Ib0G0GzfdADG8si+tOaPl6r80VKFRIUOSxwW2Yvxvp3ak/Lpe53E
 9SeFgZGG125McPc6zqVm1c80UBRsshLsyzfA6rXSasUfmzBRswtMbpaEh
 Nvux8CmzeDRF7I3IewpvPmh38W2YXCb0kMjW1dmeAcOCEBPp9q+OnqGy/
 DaII/LZywRwTGbwL7HtR4e+E9FoBAi66mm8T1qUvmZc+Qyx3Nf1ucPLMR
 moOjWiPRQBvBOpFJJXH7v4EeiL3kjI3ZwrLQ28E0+WwM/OP0/4gev8kvt
 AyM/nyq6y7vlL8lGPv+ixaKlkY22Q8FRWaC3y7Alf4/YtzW0Ct5R1+JRk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="303473259"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="303473259"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 02:10:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="799377130"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="799377130"
Received: from jmukumbi-mobl.ger.corp.intel.com (HELO [10.251.220.244])
 ([10.251.220.244])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 02:10:46 -0800
Message-ID: <66321f67-795b-5fd0-b11b-332687a41b74@linux.intel.com>
Date: Tue, 10 Jan 2023 11:10:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20230105203843.30663-1-nirmoy.das@intel.com>
 <Y7wdUnLF0joHySmK@ashyti-mobl2.lan>
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <Y7wdUnLF0joHySmK@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Update docs in intel_wakeref.h
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 1/9/2023 2:57 PM, Andi Shyti wrote:
> Hi Nirmoy,
>
> On Thu, Jan 05, 2023 at 09:38:43PM +0100, Nirmoy Das wrote:
>> Fix docs for __intel_wakeref_put() and intel_wakeref_get() to
>> reflect current behaviour.
>>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Thanks for adding also the change suggested by Ashutosh!
>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>


Thanks for reviewing it, Andi!


Nirmoy

>
> Andi
>
>> ---
>>   drivers/gpu/drm/i915/intel_wakeref.h | 21 ++++++++++-----------
>>   1 file changed, 10 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
>> index 4f4c2e15e736..71b8a63f6f10 100644
>> --- a/drivers/gpu/drm/i915/intel_wakeref.h
>> +++ b/drivers/gpu/drm/i915/intel_wakeref.h
>> @@ -68,11 +68,12 @@ void __intel_wakeref_put_last(struct intel_wakeref *wf, unsigned long flags);
>>    * @wf: the wakeref
>>    *
>>    * Acquire a hold on the wakeref. The first user to do so, will acquire
>> - * the runtime pm wakeref and then call the @fn underneath the wakeref
>> - * mutex.
>> + * the runtime pm wakeref and then call the intel_wakeref_ops->get()
>> + * underneath the wakeref mutex.
>>    *
>> - * Note that @fn is allowed to fail, in which case the runtime-pm wakeref
>> - * will be released and the acquisition unwound, and an error reported.
>> + * Note that intel_wakeref_ops->get() is allowed to fail, in which case
>> + * the runtime-pm wakeref will be released and the acquisition unwound,
>> + * and an error reported.
>>    *
>>    * Returns: 0 if the wakeref was acquired successfully, or a negative error
>>    * code otherwise.
>> @@ -130,19 +131,17 @@ intel_wakeref_might_get(struct intel_wakeref *wf)
>>   }
>>   
>>   /**
>> - * intel_wakeref_put_flags: Release the wakeref
>> + * __intel_wakeref_put: Release the wakeref
>>    * @wf: the wakeref
>>    * @flags: control flags
>>    *
>>    * Release our hold on the wakeref. When there are no more users,
>> - * the runtime pm wakeref will be released after the @fn callback is called
>> - * underneath the wakeref mutex.
>> + * the runtime pm wakeref will be released after the intel_wakeref_ops->put()
>> + * callback is called underneath the wakeref mutex.
>>    *
>> - * Note that @fn is allowed to fail, in which case the runtime-pm wakeref
>> - * is retained and an error reported.
>> + * Note that intel_wakeref_ops->put() is allowed to fail, in which case the
>> + * runtime-pm wakeref is retained.
>>    *
>> - * Returns: 0 if the wakeref was released successfully, or a negative error
>> - * code otherwise.
>>    */
>>   static inline void
>>   __intel_wakeref_put(struct intel_wakeref *wf, unsigned long flags)
>> -- 
>> 2.38.0
