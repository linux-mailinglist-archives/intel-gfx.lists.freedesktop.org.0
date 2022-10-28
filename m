Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7802B611337
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 15:43:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DCB510E1B8;
	Fri, 28 Oct 2022 13:42:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CFCC10E1B8
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 13:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666964575; x=1698500575;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=+S5fbjftlUfXAc1Z7hRyAeFmVxcIAWsTLGQO1+W3zi4=;
 b=V6uq1giC7senClsFB7Jf/Lv3qTKXFSW0TsXXJfQbZ5PAx9r49mIV5J4U
 26EQPNQIx3olrnFjHxXl4geKAlS9tGKiNcPWYU2/GD7RzFrlQReWoCcvX
 Ul8vMd9ubef/3qscFdtqQvwj6DrWQTvCRNdYcOWBUuSEwvcUswcG070Ix
 5r6rWJEEj/oZmVvCntIRJTGV3NMh1ZhamkQ8NL3ewQPDA3/a+rcinVqHq
 xxsHp+J2Jk7/aBSJ6KAxNXF3YR8nemfQzyYFKA8C27wKcv6F3rJeNjJFN
 NAbGaqcmYA5nvNdpPyaNQENP0dG2iyZpLHblcu0y9uEx/W8isbnAn9amL g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="335133121"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="335133121"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 06:42:55 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="632777691"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="632777691"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.5.162])
 ([10.213.5.162])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 06:42:53 -0700
Message-ID: <2d9e0cdf-4600-53a3-81eb-b8f11ba7af36@intel.com>
Date: Fri, 28 Oct 2022 15:42:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20221013133001.3639326-1-andrzej.hajda@intel.com>
 <20221013133001.3639326-3-andrzej.hajda@intel.com>
 <Y1K9NCH8hiqaS0Zc@ashyti-mobl2.lan>
 <636ac83a-a3d5-b313-0f28-8ad5f4df2630@intel.com>
 <Y1aqcQj/XtTry2M3@ashyti-mobl2.lan>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <Y1aqcQj/XtTry2M3@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: add
 igt_vma_move_to_active_unlocked
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 24.10.2022 17:08, Andi Shyti wrote:
> Hi Andrzej,
> 
> On Mon, Oct 24, 2022 at 04:05:57PM +0200, Andrzej Hajda wrote:
>> On 21.10.2022 17:39, Andi Shyti wrote:
>>> Hi Andrzej,
>>>
>>> [...]
>>>
>>>> +static inline int __must_check
>>>> +igt_vma_move_to_active_unlocked(struct i915_vma *vma, struct i915_request *rq,
>>>> +				unsigned int flags)
>>>> +{
>>>> +	int err;
>>>> +
>>>> +	i915_vma_lock(vma);
>>>> +	err = _i915_vma_move_to_active(vma, rq, &rq->fence, flags);
>>>> +	i915_vma_unlock(vma);
>>>> +	return err;
>>>> +}
>>>> +
>>>
>>> there are calls to i915_vma_move_to_active also outside
>>> selftests, why not having a i915_move_to_active_unlocked() in
>>> i915_vma.h?
>>
>> As I said before, Chris suggested real users of this call should use locking
>> explicitly.
> 
> Yeah, sure... I was just thinking about it... no big opinion,
> besides I don't hink my proposal in Patch 1 makes things easier.
> 
>>> Besides here you break also the bisect, because between patch 1
>>> and 2 the i915_move_to_avtive would also call
>>> i915_request_await_object(). Right or am I getting confused?
>>
>> Hmm, looking at v2, I do not see breakage. Patch 1 moves all occurrences of
>> i915_request_await_object inside i915_vma_move_to_active.
>> Patch 2, just replaces sequence of calls with call to new helper.
> 
> Are you sure?
> 
> I might be getting confused, but in Patch 1
> "i915_vma_move_to_active()" takes "i915_request_await_object()"
> inside. This affects all the calls to "i915_vma_move_to_active()"
> in the selftests that are not actually requesting
> "i915_request_await_object()".

Apparently I've forgot to answer this comment. Let's do it now.
Currently every call to i915_vma_move_to_active is prepended with 
i915_request_await_object, the only exception is 
prepare_shadow_batch_buffer.
And selftests always calls i915_request_await_object before either 
directly, either via move_to_active helpers.
Patch 1 transforms all these calls, so maybe looking at patch2 confuses you?
I have double checked things, did not find any issue.
If I missed sth please let me know.

> 
> We need to wait for Patch 2 in order to have a local redefinition
> of "i915_vma_move_to_active()" for those selftests.

And this does not seems to be true, patch 1 alone is independent.

Regards
Andrzej


> 
> Andi

