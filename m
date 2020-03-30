Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD9719765E
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 10:23:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C52C6E21B;
	Mon, 30 Mar 2020 08:23:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63F046E215
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 08:23:36 +0000 (UTC)
IronPort-SDR: 2eTj6wulYXWhSY72+ixMvW6uQBC5H2p7jT34rBHAR/wXGy0zha0FvGB2PMiIk02dv4bCZ6o+p+
 QKZsHOSVJ/fw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 01:23:36 -0700
IronPort-SDR: kJmArtGvrQmc0ZuSC8JHr2DNC7yHTQNvbTDmiPRM0e/G8BVGswmsiFk1IJJK+rJt85Jv6bVqdl
 hQNSOuIs17RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,323,1580803200"; d="scan'208";a="283522241"
Received: from weigu-mobl1.ger.corp.intel.com (HELO [10.252.58.134])
 ([10.252.58.134])
 by fmsmga002.fm.intel.com with ESMTP; 30 Mar 2020 01:23:34 -0700
To: Ashutosh Dixit <ashutosh.dixit@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200327231608.68108-1-ashutosh.dixit@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <2570a336-8af6-bfb6-cf2d-93712ab10eed@intel.com>
Date: Mon, 30 Mar 2020 11:23:29 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200327231608.68108-1-ashutosh.dixit@intel.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 28/03/2020 01:16, Ashutosh Dixit wrote:
> It is wrong to block the user thread in the next poll when OA data is
> already available which could not fit in the user buffer provided in
> the previous read. In several cases the exact user buffer size is not
> known. Blocking user space in poll can lead to data loss when the
> buffer size used is smaller than the available data.
>
> This change fixes this issue and allows user space to read all OA data
> even when using a buffer size smaller than the available data using
> multiple non-blocking reads rather than staying blocked in poll till
> the next timer interrupt.
>
> v2: Fix ret value for blocking reads (Umesh)
> v3: Mistake during patch send (Ashutosh)
> v4: Remove -EAGAIN from comment (Umesh)
>
> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>


Looks like you change makes more sense than what I suggested.

I have a few nits below.


Thanks,


-Lionel


> ---
>   drivers/gpu/drm/i915/i915_perf.c | 59 +++++++-------------------------
>   1 file changed, 12 insertions(+), 47 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index c74ebac50015..5f6d9bff99c8 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -2914,49 +2914,6 @@ void i915_oa_init_reg_state(const struct intel_context *ce,
>   		gen8_update_reg_state_unlocked(ce, stream);
>   }
>   
> -/**
> - * i915_perf_read_locked - &i915_perf_stream_ops->read with error normalisation
> - * @stream: An i915 perf stream
> - * @file: An i915 perf stream file
> - * @buf: destination buffer given by userspace
> - * @count: the number of bytes userspace wants to read
> - * @ppos: (inout) file seek position (unused)
> - *
> - * Besides wrapping &i915_perf_stream_ops->read this provides a common place to
> - * ensure that if we've successfully copied any data then reporting that takes
> - * precedence over any internal error status, so the data isn't lost.
> - *
> - * For example ret will be -ENOSPC whenever there is more buffered data than
> - * can be copied to userspace, but that's only interesting if we weren't able
> - * to copy some data because it implies the userspace buffer is too small to
> - * receive a single record (and we never split records).
> - *
> - * Another case with ret == -EFAULT is more of a grey area since it would seem
> - * like bad form for userspace to ask us to overrun its buffer, but the user
> - * knows best:
> - *
> - *   http://yarchive.net/comp/linux/partial_reads_writes.html
> - *
> - * Returns: The number of bytes copied or a negative error code on failure.
> - */
> -static ssize_t i915_perf_read_locked(struct i915_perf_stream *stream,
> -				     struct file *file,
> -				     char __user *buf,
> -				     size_t count,
> -				     loff_t *ppos)
> -{
> -	/* Note we keep the offset (aka bytes read) separate from any
> -	 * error status so that the final check for whether we return
> -	 * the bytes read with a higher precedence than any error (see
> -	 * comment below) doesn't need to be handled/duplicated in
> -	 * stream->ops->read() implementations.
> -	 */
> -	size_t offset = 0;
> -	int ret = stream->ops->read(stream, buf, count, &offset);
> -
> -	return offset ?: (ret ?: -EAGAIN);
> -}
> -
>   /**
>    * i915_perf_read - handles read() FOP for i915 perf stream FDs
>    * @file: An i915 perf stream file
> @@ -2982,6 +2939,8 @@ static ssize_t i915_perf_read(struct file *file,
>   {
>   	struct i915_perf_stream *stream = file->private_data;
>   	struct i915_perf *perf = stream->perf;
> +	size_t offset = 0;
> +	int __ret;
>   	ssize_t ret;
>   
>   	/* To ensure it's handled consistently we simply treat all reads of a
> @@ -3005,16 +2964,19 @@ static ssize_t i915_perf_read(struct file *file,
>   				return ret;
>   
>   			mutex_lock(&perf->lock);
> -			ret = i915_perf_read_locked(stream, file,
> -						    buf, count, ppos);
> +			__ret = stream->ops->read(stream, buf, count, &offset);
> +			ret = offset ?: (__ret ?: -EAGAIN);
I would drop this line above and move it to the end of the function.
>   			mutex_unlock(&perf->lock);
>   		} while (ret == -EAGAIN);
>   	} else {
>   		mutex_lock(&perf->lock);
> -		ret = i915_perf_read_locked(stream, file, buf, count, ppos);
> +		__ret = stream->ops->read(stream, buf, count, &offset);
> +		ret = offset ?: (__ret ?: -EAGAIN);
I would drop this line above and move it to the end of the function.
>   		mutex_unlock(&perf->lock);
>   	}
>   
> +	/* Possible values for __ret are 0, -EFAULT, -ENOSPC, -EIO, ... */
> +
>   	/* We allow the poll checking to sometimes report false positive EPOLLIN
>   	 * events where we might actually report EAGAIN on read() if there's
>   	 * not really any data available. In this situation though we don't
> @@ -3022,8 +2984,11 @@ static ssize_t i915_perf_read(struct file *file,
>   	 * and read() returning -EAGAIN. Clearing the oa.pollin state here
>   	 * effectively ensures we back off until the next hrtimer callback
>   	 * before reporting another EPOLLIN event.
> +	 * The exception to this is if ops->read() returned -ENOSPC which means
> +	 * that more OA data is available than could fit in the user provided
> +	 * buffer. In this case we want the next poll() call to not block.
>   	 */
> -	if (ret >= 0 || ret == -EAGAIN)
> +	if ((ret > 0 || ret == -EAGAIN) && __ret != -ENOSPC)

I guess this could be simplified with

if (__ret != -ENOSPC)


As far as I can see in all other cases (failure of some kind, all data 
read), we should clear pollin.

>   		stream->pollin = false;
>   
>   	return ret;

return offset ?: (__ret ?: -EAGAIN);


You could probably just retain a single ret variable.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
