Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2E919A696
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 09:52:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 239786E02B;
	Wed,  1 Apr 2020 07:52:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A42696E02B
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 07:51:58 +0000 (UTC)
IronPort-SDR: DLHaOHSSnZEJhPz6ist/Ja7iX1nz5kCrvVoppDX9fxpxupie4nDmwr8IhBA+KWEf6hiuZnfJ3X
 G8k9VJplARww==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 00:51:58 -0700
IronPort-SDR: IGQqvKHnn8dFSJSMRtHYNcDu+I4lEzatGwIwhQNUio7J5fkX5SCnlXK0syyW9lA7gZg5nQYSiT
 5I0x1n+6wUAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,330,1580803200"; d="scan'208";a="252517830"
Received: from premrein-mobl1.ger.corp.intel.com (HELO [10.252.61.97])
 ([10.252.61.97])
 by orsmga006.jf.intel.com with ESMTP; 01 Apr 2020 00:51:56 -0700
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20200331231432.2850-1-ashutosh.dixit@intel.com>
 <19d7d62f-bb7d-a23c-3e7c-d156b33f0ae2@intel.com>
 <877dyz3b2q.wl-ashutosh.dixit@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <ae15b1a3-2ac7-baea-eef9-b64bf952f207@intel.com>
Date: Wed, 1 Apr 2020 10:51:55 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <877dyz3b2q.wl-ashutosh.dixit@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Do not clear pollin for
 small user read buffers
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 01/04/2020 10:43, Dixit, Ashutosh wrote:
> On Tue, 31 Mar 2020 23:57:57 -0700, Lionel Landwerlin wrote:
>> On 01/04/2020 02:14, Ashutosh Dixit wrote:
>>> It is wrong to block the user thread in the next poll when OA data is
>>> already available which could not fit in the user buffer provided in
>>> the previous read. In several cases the exact user buffer size is not
>>> known. Blocking user space in poll can lead to data loss when the
>>> buffer size used is smaller than the available data.
>>>
>>> This change fixes this issue and allows user space to read all OA data
>>> even when using a buffer size smaller than the available data using
>>> multiple non-blocking reads rather than staying blocked in poll till
>>> the next timer interrupt.
>>>
>>> v2: Fix ret value for blocking reads (Umesh)
>>> v3: Mistake during patch send (Ashutosh)
>>> v4: Remove -EAGAIN from comment (Umesh)
>>> v5: Improve condition for clearing pollin and return (Lionel)
>>> v6: Improve blocking read loop and other cleanups (Lionel)
>>>
>>> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>>> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/i915_perf.c | 61 ++++++--------------------------
>>>    1 file changed, 11 insertions(+), 50 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>>> index 28e3d76fa2e6..2f78b147bb2d 100644
>>> --- a/drivers/gpu/drm/i915/i915_perf.c
>>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>>> @@ -2963,49 +2963,6 @@ void i915_oa_init_reg_state(const struct intel_context *ce,
>>> 		gen8_update_reg_state_unlocked(ce, stream);
>>>    }
>>>    -/**
>>> - * i915_perf_read_locked - &i915_perf_stream_ops->read with error normalisation
>>> - * @stream: An i915 perf stream
>>> - * @file: An i915 perf stream file
>>> - * @buf: destination buffer given by userspace
>>> - * @count: the number of bytes userspace wants to read
>>> - * @ppos: (inout) file seek position (unused)
>>> - *
>>> - * Besides wrapping &i915_perf_stream_ops->read this provides a common place to
>>> - * ensure that if we've successfully copied any data then reporting that takes
>>> - * precedence over any internal error status, so the data isn't lost.
>>> - *
>>> - * For example ret will be -ENOSPC whenever there is more buffered data than
>>> - * can be copied to userspace, but that's only interesting if we weren't able
>>> - * to copy some data because it implies the userspace buffer is too small to
>>> - * receive a single record (and we never split records).
>>> - *
>>> - * Another case with ret == -EFAULT is more of a grey area since it would seem
>>> - * like bad form for userspace to ask us to overrun its buffer, but the user
>>> - * knows best:
>>> - *
>>> - *   http://yarchive.net/comp/linux/partial_reads_writes.html
>>> - *
>>> - * Returns: The number of bytes copied or a negative error code on failure.
>>> - */
>>> -static ssize_t i915_perf_read_locked(struct i915_perf_stream *stream,
>>> -				     struct file *file,
>>> -				     char __user *buf,
>>> -				     size_t count,
>>> -				     loff_t *ppos)
>>> -{
>>> -	/* Note we keep the offset (aka bytes read) separate from any
>>> -	 * error status so that the final check for whether we return
>>> -	 * the bytes read with a higher precedence than any error (see
>>> -	 * comment below) doesn't need to be handled/duplicated in
>>> -	 * stream->ops->read() implementations.
>>> -	 */
>>> -	size_t offset = 0;
>>> -	int ret = stream->ops->read(stream, buf, count, &offset);
>>> -
>>> -	return offset ?: (ret ?: -EAGAIN);
>>> -}
>>> -
>>>    /**
>>>     * i915_perf_read - handles read() FOP for i915 perf stream FDs
>>>     * @file: An i915 perf stream file
>>> @@ -3031,7 +2988,8 @@ static ssize_t i915_perf_read(struct file *file,
>>>    {
>>> 	struct i915_perf_stream *stream = file->private_data;
>>> 	struct i915_perf *perf = stream->perf;
>>> -	ssize_t ret;
>>> +	size_t offset = 0;
>>> +	int ret;
>>> 		/* To ensure it's handled consistently we simply treat all reads of
>>> a
>>> 	 * disabled stream as an error. In particular it might otherwise lead
>>> @@ -3054,13 +3012,12 @@ static ssize_t i915_perf_read(struct file *file,
>>> 				return ret;
>>> 				mutex_lock(&perf->lock);
>>> -			ret = i915_perf_read_locked(stream, file,
>>> -						    buf, count, ppos);
>>> +			ret = stream->ops->read(stream, buf, count, &offset);
>>> 			mutex_unlock(&perf->lock);
>>> -		} while (ret == -EAGAIN);
>>> +		} while (!offset && !ret);
>> This doesn't sound right, !offset means it will stop as soon as some data
>> was written.
>>
>> But for the blocking read we want to fill the buffer up to -ENOSPC.
> I don't think that's true. Here's 'man 2 read': "read() attempts to read
> /up to/ count bytes" and "It is not an error if this number is smaller than
> the number of bytes requested".
>
> The condition (!offset && !ret) is exactly equivalent to the condition (ret
> == -EAGAIN) in the original code (currently on drm-tip). The driver is free
> to unblock the blocking read whenever it determines "there is data". Our
> determination of "there is data" is "we are woken up by the OA timer and
> call ops->read() and offset > 0". (Offset will be equal to min(amount of
> data available, space in the user buffer)). The only constraint seems to be
> that the blocking read cannot return -EAGAIN (0 bytes) and the loop in the
> code guards against that.
>
>> while (ret >= 0) doesn't work?
> Because this is not the logic in the original code and I see no reason to
> change that logic. It will also change the blocking read behavior which
> according to some people is a breakage of the uAPI. The purpose of the
> patch is to fix the non blocking read path (poll + non-blocking read). It
> should not affect blocking read imo.
>
> Thanks!
> --
> Ashutosh

Ah sorry, you're right :)


Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
