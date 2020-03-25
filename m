Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32EC7193118
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 20:26:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CFB76E434;
	Wed, 25 Mar 2020 19:26:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 815BE6E434
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 19:26:02 +0000 (UTC)
IronPort-SDR: TZWka4h0nCJaDraRUYGGlFVtP+4e2EzsBCsj9hjqV5Ockg8CvXofBYRKKWB+Rm05/S41SWdXKo
 fUW6fapiuFcQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 12:26:01 -0700
IronPort-SDR: byx3NFgbnVB4KEF50TeT6kqqc6aCqakED5CnLD5NtG99iC5cQ9TtMpwn3kI+5KOmQQ9+zXEG8T
 97hWiV/Xjrng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,305,1580803200"; d="scan'208";a="282236540"
Received: from ertle-mobl.ger.corp.intel.com (HELO [10.252.40.22])
 ([10.252.40.22])
 by fmsmga002.fm.intel.com with ESMTP; 25 Mar 2020 12:26:00 -0700
To: Ashutosh Dixit <ashutosh.dixit@intel.com>, intel-gfx@lists.freedesktop.org
References: <98393a3bbd2652886d895e1c3250e43c6e0f1a24.1585160174.git.ashutosh.dixit@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <37f21906-12dd-efbf-6e49-64bd19bf5e23@intel.com>
Date: Wed, 25 Mar 2020 21:25:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <98393a3bbd2652886d895e1c3250e43c6e0f1a24.1585160174.git.ashutosh.dixit@intel.com>
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

On 25/03/2020 20:20, Ashutosh Dixit wrote:
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


Looks like you found a pretty important issue.

Can you write an IGT test case so that we don't run into it again?


Thanks a lot,


-Lionel


>
> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_perf.c | 62 ++++++--------------------------
>   1 file changed, 11 insertions(+), 51 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 3222f6cd8255..c1a47c030941 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -2957,49 +2957,6 @@ void i915_oa_init_reg_state(const struct intel_context *ce,
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
> @@ -3025,6 +2982,8 @@ static ssize_t i915_perf_read(struct file *file,
>   {
>   	struct i915_perf_stream *stream = file->private_data;
>   	struct i915_perf *perf = stream->perf;
> +	size_t offset = 0;
> +	int __ret;
>   	ssize_t ret;
>   
>   	/* To ensure it's handled consistently we simply treat all reads of a
> @@ -3048,16 +3007,18 @@ static ssize_t i915_perf_read(struct file *file,
>   				return ret;
>   
>   			mutex_lock(&perf->lock);
> -			ret = i915_perf_read_locked(stream, file,
> -						    buf, count, ppos);
> +			__ret = stream->ops->read(stream, buf, count, &offset);
>   			mutex_unlock(&perf->lock);
>   		} while (ret == -EAGAIN);
>   	} else {
>   		mutex_lock(&perf->lock);
> -		ret = i915_perf_read_locked(stream, file, buf, count, ppos);
> +		__ret = stream->ops->read(stream, buf, count, &offset);
>   		mutex_unlock(&perf->lock);
>   	}
>   
> +	/* Possible values for __ret are 0, -EFAULT, -ENOSPC, -EAGAIN, ... */
> +	ret = offset ?: (__ret ?: -EAGAIN);
> +
>   	/* We allow the poll checking to sometimes report false positive EPOLLIN
>   	 * events where we might actually report EAGAIN on read() if there's
>   	 * not really any data available. In this situation though we don't
> @@ -3065,13 +3026,12 @@ static ssize_t i915_perf_read(struct file *file,
>   	 * and read() returning -EAGAIN. Clearing the oa.pollin state here
>   	 * effectively ensures we back off until the next hrtimer callback
>   	 * before reporting another EPOLLIN event.
> +	 * The exception to this is if ops->read() returned -ENOSPC which means
> +	 * that more OA data is available than could fit in the user provided
> +	 * buffer. In this case we want the next poll() call to not block.
>   	 */
> -	if (ret >= 0 || ret == -EAGAIN) {
> -		/* Maybe make ->pollin per-stream state if we support multiple
> -		 * concurrent streams in the future.
> -		 */
> +	if ((ret > 0 || ret == -EAGAIN) && __ret != -ENOSPC)
>   		stream->pollin = false;
> -	}
>   
>   	return ret;
>   }


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
