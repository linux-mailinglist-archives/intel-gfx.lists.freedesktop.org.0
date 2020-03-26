Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE681945FC
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 19:02:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75F116E20F;
	Thu, 26 Mar 2020 18:02:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 791B56E20F
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 18:02:54 +0000 (UTC)
IronPort-SDR: H8w6WhK8NLA0ijT8M/BM3Wl4eAN6DFmAplrc9+07ai4hkuYoxhdE3VdngrNi4aBNSqjbsPdlDv
 cFblwy6z33tw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 11:02:48 -0700
IronPort-SDR: uBnlBdISTueBGMfM7sSDUNcJyvGfDEJRVxAb2Qc4+C6S9pYtDh1lj0uhwWeb4Ysz2SU+P/JfAe
 X4vZkkTDCUyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,309,1580803200"; d="scan'208";a="240744071"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by fmsmga008.fm.intel.com with ESMTP; 26 Mar 2020 11:02:46 -0700
Date: Thu, 26 Mar 2020 11:02:46 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <20200326180246.GB9553@orsosgc001.amr.corp.intel.com>
References: <98393a3bbd2652886d895e1c3250e43c6e0f1a24.1585160174.git.ashutosh.dixit@intel.com>
 <20200326003235.GA9553@orsosgc001.amr.corp.intel.com>
 <877dz7ubkb.wl-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <877dz7ubkb.wl-ashutosh.dixit@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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

On Wed, Mar 25, 2020 at 06:52:52PM -0700, Dixit, Ashutosh wrote:
>On Wed, 25 Mar 2020 17:32:35 -0700, Umesh Nerlige Ramappa wrote:
>>
>> On Wed, Mar 25, 2020 at 11:20:19AM -0700, Ashutosh Dixit wrote:
>> > It is wrong to block the user thread in the next poll when OA data is
>> > already available which could not fit in the user buffer provided in
>> > the previous read. In several cases the exact user buffer size is not
>> > known. Blocking user space in poll can lead to data loss when the
>> > buffer size used is smaller than the available data.
>> >
>> > This change fixes this issue and allows user space to read all OA data
>> > even when using a buffer size smaller than the available data using
>> > multiple non-blocking reads rather than staying blocked in poll till
>> > the next timer interrupt.
>> >
>> > Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> > Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>> > Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>> > ---
>> > drivers/gpu/drm/i915/i915_perf.c | 62 ++++++--------------------------
>> > 1 file changed, 11 insertions(+), 51 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> > index 3222f6cd8255..c1a47c030941 100644
>> > --- a/drivers/gpu/drm/i915/i915_perf.c
>> > +++ b/drivers/gpu/drm/i915/i915_perf.c
>> > @@ -2957,49 +2957,6 @@ void i915_oa_init_reg_state(const struct intel_context *ce,
>> >		gen8_update_reg_state_unlocked(ce, stream);
>> > }
>> >
>> > -/**
>> > - * i915_perf_read_locked - &i915_perf_stream_ops->read with error normalisation
>> > - * @stream: An i915 perf stream
>> > - * @file: An i915 perf stream file
>> > - * @buf: destination buffer given by userspace
>> > - * @count: the number of bytes userspace wants to read
>> > - * @ppos: (inout) file seek position (unused)
>> > - *
>> > - * Besides wrapping &i915_perf_stream_ops->read this provides a common place to
>> > - * ensure that if we've successfully copied any data then reporting that takes
>> > - * precedence over any internal error status, so the data isn't lost.
>> > - *
>> > - * For example ret will be -ENOSPC whenever there is more buffered data than
>> > - * can be copied to userspace, but that's only interesting if we weren't able
>> > - * to copy some data because it implies the userspace buffer is too small to
>> > - * receive a single record (and we never split records).
>> > - *
>> > - * Another case with ret == -EFAULT is more of a grey area since it would seem
>> > - * like bad form for userspace to ask us to overrun its buffer, but the user
>> > - * knows best:
>> > - *
>> > - *   http://yarchive.net/comp/linux/partial_reads_writes.html
>> > - *
>> > - * Returns: The number of bytes copied or a negative error code on failure.
>> > - */
>> > -static ssize_t i915_perf_read_locked(struct i915_perf_stream *stream,
>> > -				     struct file *file,
>> > -				     char __user *buf,
>> > -				     size_t count,
>> > -				     loff_t *ppos)
>> > -{
>> > -	/* Note we keep the offset (aka bytes read) separate from any
>> > -	 * error status so that the final check for whether we return
>> > -	 * the bytes read with a higher precedence than any error (see
>> > -	 * comment below) doesn't need to be handled/duplicated in
>> > -	 * stream->ops->read() implementations.
>> > -	 */
>> > -	size_t offset = 0;
>> > -	int ret = stream->ops->read(stream, buf, count, &offset);
>> > -
>> > -	return offset ?: (ret ?: -EAGAIN);
>> > -}
>> > -
>> > /**
>> >  * i915_perf_read - handles read() FOP for i915 perf stream FDs
>> >  * @file: An i915 perf stream file
>> > @@ -3025,6 +2982,8 @@ static ssize_t i915_perf_read(struct file *file,
>> > {
>> >	struct i915_perf_stream *stream = file->private_data;
>> >	struct i915_perf *perf = stream->perf;
>> > +	size_t offset = 0;
>> > +	int __ret;
>> >	ssize_t ret;
>> >
>> >	/* To ensure it's handled consistently we simply treat all reads of a
>> > @@ -3048,16 +3007,18 @@ static ssize_t i915_perf_read(struct file *file,
>> >				return ret;
>> >
>> >			mutex_lock(&perf->lock);
>> > -			ret = i915_perf_read_locked(stream, file,
>> > -						    buf, count, ppos);
>> > +			__ret = stream->ops->read(stream, buf, count, &offset);
>> >			mutex_unlock(&perf->lock);
>> >		} while (ret == -EAGAIN);
>>
>> ret will never be EAGAIN here in the while. EAGAIN was returned by the
>> deleted function in this patch if offset and ret are both 0.
>
>Good catch, I was so focussed on the non-blocking case that I missed the
>blocking case.
>
>> Although I don't see how that would be true.
>
>As you say above, the old function i915_perf_read_locked() was doing this:
>
>	return offset ?: (__ret ?: -EAGAIN);
>
>So -EAGAIN is returned from i915_perf_read_locked() when there is no data
>to read but otherwise there is no other error. Since this is blocking read
>we cannot return -EAGAIN to user space (since there is no data to read), we
>must go back and block again. That is the purpose of the while loop. I
>broke this logic in this patch and will need to fix this.
>
>>
>> >	} else {
>> >		mutex_lock(&perf->lock);
>> > -		ret = i915_perf_read_locked(stream, file, buf, count, ppos);
>> > +		__ret = stream->ops->read(stream, buf, count, &offset);
>> >		mutex_unlock(&perf->lock);
>> >	}
>> >
>> > +	/* Possible values for __ret are 0, -EFAULT, -ENOSPC, -EAGAIN, ... */
>>
>> __ret may never be EAGAIN either (comment^). I don't see EAGAIN in the read
>> path.
>
>It's here:
>
>gen8_append_oa_reports()
>{
>
>        /*
>         * An invalid tail pointer here means we're still waiting for the poll
>         * hrtimer callback to give us a pointer
>         */
>        if (tail == INVALID_TAIL_PTR)
>                return -EAGAIN;
>}

Oh, you are right, EAGAIN is returned here. I was looking for it with 
the poll period patch series applied and these references are removed in 
that series.

Thanks,
Umesh

>
>> That said, EAGAIN seems to have been introduced in the prior code
>> specifically for retrying the blocking read and may not have much meaning
>> otherwise.
>
>No that's not true. The kernel non-blocking read() function (in fops)
>returns -EAGAIN when there is no data to read (the function never returns 0
>except in case of EOF, in i915 perf code there is no EOF so read never
>returns 0). This logic is the same as that in the previous code and we need
>to preserve it.
>
>Will post a v2 with the fix.
>
>Thanks!
>--
>Ashutosh
>
>
>>
>> Thanks,
>> Umesh
>>
>> > +	ret = offset ?: (__ret ?: -EAGAIN);
>> > +
>> >	/* We allow the poll checking to sometimes report false positive EPOLLIN
>> >	 * events where we might actually report EAGAIN on read() if there's
>> >	 * not really any data available. In this situation though we don't
>> > @@ -3065,13 +3026,12 @@ static ssize_t i915_perf_read(struct file *file,
>> >	 * and read() returning -EAGAIN. Clearing the oa.pollin state here
>> >	 * effectively ensures we back off until the next hrtimer callback
>> >	 * before reporting another EPOLLIN event.
>> > +	 * The exception to this is if ops->read() returned -ENOSPC which means
>> > +	 * that more OA data is available than could fit in the user provided
>> > +	 * buffer. In this case we want the next poll() call to not block.
>> >	 */
>> > -	if (ret >= 0 || ret == -EAGAIN) {
>> > -		/* Maybe make ->pollin per-stream state if we support multiple
>> > -		 * concurrent streams in the future.
>> > -		 */
>> > +	if ((ret > 0 || ret == -EAGAIN) && __ret != -ENOSPC)
>> >		stream->pollin = false;
>> > -	}
>> >
>> >	return ret;
>> > }
>> > --
>> > 2.25.2
>> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
