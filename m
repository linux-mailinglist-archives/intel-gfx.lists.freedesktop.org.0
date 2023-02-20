Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F241469CBE4
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 14:19:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0651F10E11E;
	Mon, 20 Feb 2023 13:19:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39F6110E11E;
 Mon, 20 Feb 2023 13:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676899195; x=1708435195;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=I/Vd4dD37QqaRtJ/x9db0yXW7xgYyKiXle+ciMwTt54=;
 b=LI+12xbX/LOyfmRVfoL8NKTnL9+RepePeYSUNRO2WNxs3aBv8+xRqD1T
 MZ/oFf1vADxXO1UTYNnBiVeaq8z9KQF04UH0sAKFNOoP9PHE7CpmXydVf
 6z4twzu8Ix70CoKLrmmi2VpsoQwv4A11youBiTB3qYj9EeNjIE45jZ4ER
 rB+szZDSpX1V5m7vEd6dSDNldBfPa/a95AstVXCPZgaPMQv39TroW28Tz
 mPqjGDAci+WkUIimlRxrtIIW3vxXJhWI2dT6YyU/VNs5DnNiOfBhxFPuC
 4AvG3umT0T4uPeCutcsS4ZOqmKC7+zlvokt3E6U5VjrnH89WFFBooTfXN w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="330112163"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="330112163"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 05:19:43 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="703701988"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="703701988"
Received: from mochoamo-mobl.ger.corp.intel.com (HELO [10.213.211.126])
 ([10.213.211.126])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 05:19:42 -0800
Message-ID: <d5914234-4f9d-4495-46b8-29322e758122@linux.intel.com>
Date: Mon, 20 Feb 2023 13:19:40 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>
References: <20230216105921.624960-1-tvrtko.ursulin@linux.intel.com>
 <20230216105921.624960-7-tvrtko.ursulin@linux.intel.com>
 <CAF6AEGuXNCXL5cNy4nS8sd6iVj7E62C93o+HZLVkeqpOcWGdKw@mail.gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <CAF6AEGuXNCXL5cNy4nS8sd6iVj7E62C93o+HZLVkeqpOcWGdKw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RFC 6/9] drm/syncobj: Mark syncobj waits as
 external waiters
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
Cc: Intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 18/02/2023 19:56, Rob Clark wrote:
> On Thu, Feb 16, 2023 at 2:59 AM Tvrtko Ursulin
> <tvrtko.ursulin@linux.intel.com> wrote:
>>
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Use the previously added dma-fence tracking of explicit waiters.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> ---
>>   drivers/gpu/drm/drm_syncobj.c | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/drm_syncobj.c b/drivers/gpu/drm/drm_syncobj.c
>> index 0c2be8360525..776b90774a64 100644
>> --- a/drivers/gpu/drm/drm_syncobj.c
>> +++ b/drivers/gpu/drm/drm_syncobj.c
>> @@ -1065,9 +1065,9 @@ static signed long drm_syncobj_array_wait_timeout(struct drm_syncobj **syncobjs,
>>                          if ((flags & DRM_SYNCOBJ_WAIT_FLAGS_WAIT_AVAILABLE) ||
>>                              dma_fence_is_signaled(fence) ||
>>                              (!entries[i].fence_cb.func &&
>> -                            dma_fence_add_callback(fence,
>> -                                                   &entries[i].fence_cb,
>> -                                                   syncobj_wait_fence_func))) {
>> +                            dma_fence_add_wait_callback(fence,
>> +                                                        &entries[i].fence_cb,
>> +                                                        syncobj_wait_fence_func))) {
> 
> I think this isn't really what you want if count > 1, because you
> wouldn't be notifying the fence signaler of fence n+1 until the wait
> on fence n completed

Are you sure? After some staring all I can see is that all callbacks are 
added before the first sleep.

Regards,

Tvrtko
