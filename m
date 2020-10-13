Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E59528CFD8
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 16:07:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9546D6E8F7;
	Tue, 13 Oct 2020 14:07:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D564B6E8F7
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 14:07:50 +0000 (UTC)
IronPort-SDR: zG+qNsZKlNRyv1MzMk+ZXSwxIqaZ6kzQH2LXU8uvB6+k2ceC+zN3VD0ICZg67bb/NxLZMjOBtq
 rrvLNZ10T1wA==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="162450305"
X-IronPort-AV: E=Sophos;i="5.77,371,1596524400"; d="scan'208";a="162450305"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 07:07:49 -0700
IronPort-SDR: DxZXxWdnJDWBSjkmIiNbrJc5v8JihFlWUOEG1aYIsacWnmcKwexKmhYfdz+EuxpmYr/wU5ABPe
 IcbUTPfb/XBw==
X-IronPort-AV: E=Sophos;i="5.77,371,1596524400"; d="scan'208";a="521044357"
Received: from jnavarro-mobl3.ger.corp.intel.com (HELO [10.252.3.12])
 ([10.252.3.12])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 07:07:48 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201013111839.96637-1-matthew.auld@intel.com>
 <160259031106.2946.5754638300794869595@build.alporthouse.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <86397c19-8571-ef86-634b-d46c57eaf99e@intel.com>
Date: Tue, 13 Oct 2020 15:07:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <160259031106.2946.5754638300794869595@build.alporthouse.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execbuf: don't allow zero batch_len
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 13/10/2020 12:58, Chris Wilson wrote:
> Quoting Matthew Auld (2020-10-13 12:18:39)
>> As per the ABI batch_len is u32, however if the batch_len is left unset,
>> then the kernel will just assume batch_len is the size of the whole
>> batch object, however since the vma->size is u64, while the batch_len is
>> just u32 we can end up with batch_len = 0 if we are given too large batch
>> object(e.g 1ULL << 32), which doesn't look the intended behaviour and
>> probably leads to explosions on some HW.
>>
>> Testcase: igt/gem_exec_params/larger-than-life-batch
>> Fixes: 0b5372727be3 ("drm/i915/cmdparser: Use cached vmappings")
> 
> Nah. That's setting exec_len used for dispatch, not for parsing, which
> is still using
> 
> i915_gem_execbuffer_parse(engine, &shadow_exec_entry,
> 			  params->batch->obj,
> 			  eb,
> 			  args->batch_start_offset,
> 			  args->batch_len,
> 			  drm_is_current_master(file));
> (and args->batch_len is straight from userspace and passed onwards)
> 
> It's right up until 435e8fc059db ("drm/i915: Allow parsing of unsized batches")
> where we are using the user value of batch_len for allocating the shadow
> object and parsing.
> 
> Fixes: 435e8fc059db ("drm/i915: Allow parsing of unsized batches")

On the topic of that patch, why is it looking at args->batch_len(might 
be zero), even though it looks like it is trying to move the 
eb->batch_len calculation to before we call eb_use_cmdparser(), so it 
can use it(the commit message seems to suggest that?), but then it only 
looks at the args version anyway. I don't get it.


> 
>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 7 ++++++-
>>   1 file changed, 6 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> index 4b09bcd70cf4..80c738c72e6e 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> @@ -869,8 +869,13 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
>>                  return -EINVAL;
>>          }
>>   
>> -       if (eb->batch_len == 0)
>> +       if (eb->batch_len == 0) {
>>                  eb->batch_len = eb->batch->vma->size - eb->batch_start_offset;
> 
> if (overflows_type(eb->batch->vma->size - eb->batch_start_offset, eb->batch_len))
> 
> It should not have caused the cmdparser any trouble though, it should
> have been quite happy to copy nothing and reject the batch for reaching
> the end too early (with a very slim chance of a stale
> MI_BATCH_BUFFER_END to the rescue).
> 
> intel_gt_get_buffer_pool() looks suspect given a size of 0, it will
> either give the largest object it has cached or break upon
> creating/allocating internal pages.
> 
> In terms of HW fail, only gen2 used the parameter and it has a very
> limited batch/GTT size.
> -Chris
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
