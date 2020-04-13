Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BC91A6EDA
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 00:05:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BE776E11A;
	Mon, 13 Apr 2020 22:05:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF68B6E11A
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Apr 2020 22:05:20 +0000 (UTC)
IronPort-SDR: l3QEj82t1eRY0xj1KnuJGMBGJ7Ll5WAWONUZDLaxYpfINNzQNFQRS2GTX0lo1aw9Bjwzg9+ip7
 PN5niZJWRNHA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 15:05:20 -0700
IronPort-SDR: cDxI1TnYREc4QtCdFiiRFT32V0FEcGoCbQT60rA1MDfOxN0Ncr37ZTbbJbgjgE+Cgfd6EEtVwr
 s3Seu+BYOfpw==
X-IronPort-AV: E=Sophos;i="5.72,380,1580803200"; d="scan'208";a="426840366"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.202])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 15:05:20 -0700
Date: Mon, 13 Apr 2020 15:05:00 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <20200413220500.GA4008304@intel.com>
References: <20200408234201.32587-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408234201.32587-1-ashutosh.dixit@intel.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 08, 2020 at 04:42:01PM -0700, Ashutosh Dixit wrote:
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

Thanks for providing this.
Pushed to drm-intel-fixes targeting -rc2

> 
> v2: Fix ret value for blocking reads (Umesh)
> v3: Mistake during patch send (Ashutosh)
> v4: Remove -EAGAIN from comment (Umesh)
> v5: Improve condition for clearing pollin and return (Lionel)
> v6: Improve blocking read loop and other cleanups (Lionel)
> v7: Added Cc stable
> 
> Testcase: igt/perf/polling-small-buf
> Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Link: https://patchwork.freedesktop.org/patch/msgid/20200403010120.3067-1-ashutosh.dixit@intel.com
> ---
>  drivers/gpu/drm/i915/i915_perf.c | 65 ++++++--------------------------
>  1 file changed, 11 insertions(+), 54 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 551be589d6f4..66a46e41d5ef 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -2940,49 +2940,6 @@ void i915_oa_init_reg_state(const struct intel_context *ce,
>  		gen8_update_reg_state_unlocked(ce, stream);
>  }
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
>  /**
>   * i915_perf_read - handles read() FOP for i915 perf stream FDs
>   * @file: An i915 perf stream file
> @@ -3008,7 +2965,8 @@ static ssize_t i915_perf_read(struct file *file,
>  {
>  	struct i915_perf_stream *stream = file->private_data;
>  	struct i915_perf *perf = stream->perf;
> -	ssize_t ret;
> +	size_t offset = 0;
> +	int ret;
>  
>  	/* To ensure it's handled consistently we simply treat all reads of a
>  	 * disabled stream as an error. In particular it might otherwise lead
> @@ -3031,13 +2989,12 @@ static ssize_t i915_perf_read(struct file *file,
>  				return ret;
>  
>  			mutex_lock(&perf->lock);
> -			ret = i915_perf_read_locked(stream, file,
> -						    buf, count, ppos);
> +			ret = stream->ops->read(stream, buf, count, &offset);
>  			mutex_unlock(&perf->lock);
> -		} while (ret == -EAGAIN);
> +		} while (!offset && !ret);
>  	} else {
>  		mutex_lock(&perf->lock);
> -		ret = i915_perf_read_locked(stream, file, buf, count, ppos);
> +		ret = stream->ops->read(stream, buf, count, &offset);
>  		mutex_unlock(&perf->lock);
>  	}
>  
> @@ -3048,15 +3005,15 @@ static ssize_t i915_perf_read(struct file *file,
>  	 * and read() returning -EAGAIN. Clearing the oa.pollin state here
>  	 * effectively ensures we back off until the next hrtimer callback
>  	 * before reporting another EPOLLIN event.
> +	 * The exception to this is if ops->read() returned -ENOSPC which means
> +	 * that more OA data is available than could fit in the user provided
> +	 * buffer. In this case we want the next poll() call to not block.
>  	 */
> -	if (ret >= 0 || ret == -EAGAIN) {
> -		/* Maybe make ->pollin per-stream state if we support multiple
> -		 * concurrent streams in the future.
> -		 */
> +	if (ret != -ENOSPC)
>  		stream->pollin = false;
> -	}
>  
> -	return ret;
> +	/* Possible values for ret are 0, -EFAULT, -ENOSPC, -EIO, ... */
> +	return offset ?: (ret ?: -EAGAIN);
>  }
>  
>  static enum hrtimer_restart oa_poll_check_timer_cb(struct hrtimer *hrtimer)
> -- 
> 2.25.2
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
