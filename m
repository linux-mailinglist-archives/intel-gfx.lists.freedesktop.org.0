Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE4860AB14
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 15:45:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F3D710E723;
	Mon, 24 Oct 2022 13:45:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2B7610E723
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 13:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666619115; x=1698155115;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=B6uPnRwnRMin0fO2cAehwwKemjnpDMQpq6o4JKD2A+E=;
 b=dH34Lx9aJPQ2ljps9Hjb0AqpVGfyO13jtGtpV3yYb84HBmld9G8hyRSz
 ZGCS9eZP7a7YxaCWRTJhlIhlHSfNvDO5M7zK7BxWGgdjcKM5wz5hqDy1w
 UKuK65kRXyzAAux/SdY5nrGw/rDlexOObCpDoP2lG9SVjJKgyLWPtZylS
 9g0DGOnKsqqUXb0A0PqnNC1/ap9a89z/QSctwrJFXQZE/thTmcPXWR39W
 JqjLPb9vOAPhyqOgGQOSyxsKt8u8tzqfw7wuLm4VspYTxKX8yuMYpltAN
 Y7HugvaBX89E1l52HtBpKdGI8hkUXgLvlp5Uq837cyBUPeGP2isWmjSqQ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="307409127"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="307409127"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 06:45:15 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="773820157"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="773820157"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.4.106])
 ([10.213.4.106])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 06:45:13 -0700
Message-ID: <86357245-8053-29cf-08dd-019fa4224f47@intel.com>
Date: Mon, 24 Oct 2022 15:45:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.3
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20221013133001.3639326-1-andrzej.hajda@intel.com>
 <20221013133001.3639326-2-andrzej.hajda@intel.com>
 <Y1LADqViVzJAIMGe@ashyti-mobl2.lan>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <Y1LADqViVzJAIMGe@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: add wait and lock to
 i915_vma_move_to_active
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

Hi Andi,

Thx for looking at it.

On 21.10.2022 17:51, Andi Shyti wrote:
> Hi Andrzej,
> 
> (at first I r-b'ed this patch, but then I wanted to think on some
> more "simplification" (if it really simplifies things). Please
> read the review in patch 2 first )

This is v1, there is already v2.
I will reply here to your comments with v2 in mind.

> 
>> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
>> index 1cae24349a96fd..80e7fdd5d16427 100644
>> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
>> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
>> @@ -565,10 +565,8 @@ static int make_obj_busy(struct drm_i915_gem_object *obj)
>>   			goto err_unpin;
>>   		}
>>   
>> -		err = i915_request_await_object(rq, vma->obj, true);
>> -		if (err == 0)
>> -			err = i915_vma_move_to_active(vma, rq,
>> -						      EXEC_OBJECT_WRITE);
>> +		err = i915_vma_move_to_active(vma, rq,
>> +					      EXEC_OBJECT_WRITE);
> 
> nit: don't need to break the line here.

Corrected in v2.

> 
>>   
>>   		i915_request_add(rq);
>>   err_unpin:
> 
> [...]
> 
>> @@ -860,9 +854,7 @@ static int read_whitelisted_registers(struct intel_context *ce,
>>   		return PTR_ERR(rq);
>>   
>>   	i915_vma_lock(results);
>> -	err = i915_request_await_object(rq, results->obj, true);
>> -	if (err == 0)
>> -		err = i915_vma_move_to_active(results, rq, EXEC_OBJECT_WRITE);
>> +	err = i915_vma_move_to_active(results, rq, EXEC_OBJECT_WRITE);
>>   	i915_vma_unlock(results);
>>   	if (err)
>>   		goto err_req;
>> @@ -944,9 +936,7 @@ static int scrub_whitelisted_registers(struct intel_context *ce)
>>   	}
>>   
>>   	i915_vma_lock(batch);
>> -	err = i915_request_await_object(rq, batch->obj, false);
>> -	if (err == 0)
>> -		err = i915_vma_move_to_active(batch, rq, 0);
>> +	err = i915_vma_move_to_active(batch, rq, 0);
>>   	i915_vma_unlock(batch);
> 
> The final risult would be:
> 
> 	i915_vma_lock();
> 	i915_vma_move_to_active()
> 	i915_vma_unlock();
> 
> and it's a pattern... as I suggested in patch 2, how about having
> an:
> 
> 	i915_vma_move_to_active_unlocked()


There is igt_vma_move_to_active_unlocked in patch 2. Chris suggested to 
limit this helper to selftests, as this pattern is specific to selftests 
and should not be exposed as 'internal API'.


> 
> and...
> 
>>   	if (err)
>>   		goto err_request;
>> diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
>> index d6fe94cd0fdb61..b49098f045005e 100644
>> --- a/drivers/gpu/drm/i915/gvt/scheduler.c
>> +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
>> @@ -570,9 +570,8 @@ static int prepare_shadow_batch_buffer(struct intel_vgpu_workload *workload)
>>   			if (gmadr_bytes == 8)
>>   				bb->bb_start_cmd_va[2] = 0;
>>   
>> -			ret = i915_vma_move_to_active(bb->vma,
>> -						      workload->req,
>> -						      0);
>> +			ret = _i915_vma_move_to_active(bb->vma, workload->req,
>> +						       &workload->req->fence, 0);
>>   			if (ret)
>>   				goto err;
>>   
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index 15816df916c781..19138e99d2fd03 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -2015,9 +2015,7 @@ emit_oa_config(struct i915_perf_stream *stream,
>>   			goto err_add_request;
>>   	}
>>   
>> -	err = i915_request_await_object(rq, vma->obj, 0);
>> -	if (!err)
>> -		err = i915_vma_move_to_active(vma, rq, 0);
>> +	err = i915_vma_move_to_active(vma, rq, 0);
>>   	if (err)
>>   		goto err_add_request;
>>   
>> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
>> index aecd9c64486b27..47ac5bd1ffcce6 100644
>> --- a/drivers/gpu/drm/i915/i915_vma.h
>> +++ b/drivers/gpu/drm/i915/i915_vma.h
>> @@ -64,7 +64,11 @@ static inline int __must_check
>>   i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *rq,
>>   			unsigned int flags)
>>   {
>> -	return _i915_vma_move_to_active(vma, rq, &rq->fence, flags);
>> +	int err = i915_request_await_object(rq, vma->obj, flags & EXEC_OBJECT_WRITE);
>> +
>> +	if (!err)
>> +		err = _i915_vma_move_to_active(vma, rq, &rq->fence, flags);
>> +	return err;
>>   }
> 
> ... this i915_vma_move_to_active() now it's doing more than just
> moving to active but it's also waiting on dma fences, shall we
> call it i915_vma_move_to_active_async() or silimar? (I'm not good
> at giving names).

I do not feel an expert in this area, but for example 
__i915_vma_move_to_active also calls __i915_request_await_bind and then 
moves to active (so awaits are there anyway).
In v2 this was handled by putting i915_request_await_object to 
_i915_vma_move_to_active and added no_await flag.

Regards
Andrzej

> 
> The above would be i915_vma_move_to_active_async_unlocked(). Too
> long? More complex?
> 
> We would have something like:
> 
> 	i915_vma_move_to_active() /* not used */
> 	i915_vma_move_to_active_unlocked()
> 	i915_vma_move_to_active_async()
> 	i915_vma_move_to_active_async_unlocked()
> 
> Anyway as it is looks good, I didn't spot any error in the
> conversion:
> 
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> 
> Andi
> 
> [...]

