Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9FD1A99C9
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 12:00:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CC5D6E938;
	Wed, 15 Apr 2020 10:00:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 847D66E938
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 10:00:32 +0000 (UTC)
IronPort-SDR: 2+Y3nI3TVl5+zcFfy9I2PylUSKqfZNDKsfsUt6g9qd3kwQkFy0OJ5eNGpbDXCj2Lma7bjRRR9W
 VI9omqY6DUNQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 03:00:32 -0700
IronPort-SDR: QmbIlPA+QXDoNkjYqQCOTfpLAFdsAa4WWeUDkMwFMU5BbcL2vFOWXnu3RmmrRbHrPjCp0sHi2a
 rT2Ty9IGDxXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,386,1580803200"; d="scan'208";a="298952487"
Received: from unknown (HELO [10.249.43.195]) ([10.249.43.195])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Apr 2020 03:00:31 -0700
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org, Ashutosh Dixit <ashutosh.dixit@intel.com>
References: <20200413154822.11620-1-umesh.nerlige.ramappa@intel.com>
 <20200413154822.11620-2-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <6fd2488e-4a76-cb94-12b2-a61ab7f4bfe2@intel.com>
Date: Wed, 15 Apr 2020 13:00:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200413154822.11620-2-umesh.nerlige.ramappa@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/perf: Reduce cpu overhead for
 blocking perf OA reads
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

On 13/04/2020 18:48, Umesh Nerlige Ramappa wrote:
> A condition in wait_event_interruptible seems to be checked twice before
> waiting on the event to occur. These checks are redundant when hrtimer
> events will call oa_buffer_check_unlocked to update the oa_buffer tail
> pointers. The redundant checks add cpu overhead. Simplify the check
> to reduce cpu overhead when using blocking io to read oa buffer reports.
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>


I cherry picked this patch alone and it seems to break the 
disabled-read-error test.


> ---
>   drivers/gpu/drm/i915/i915_perf.c | 28 +++++++++++++++++++++++++++-
>   1 file changed, 27 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 5cde3e4e7be6..e28a3ab83fde 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -541,6 +541,32 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>   	return pollin;
>   }
>   
> +/**
> + * oa_buffer_check_reports - quick check if reports are available
> + * @stream: i915 stream instance
> + *
> + * The return from this function is used as a condition for
> + * wait_event_interruptible in blocking read. This is used to detect
> + * available reports.
> + *
> + * A condition in wait_event_interruptible seems to be checked twice before
> + * waiting on an event to occur. These checks are redundant when hrtimer events
> + * will call oa_buffer_check_unlocked to update the oa_buffer tail pointers. The
> + * redundant checks add cpu overhead. We simplify the check to reduce cpu
> + * overhead.
> + */
> +static bool oa_buffer_check_reports(struct i915_perf_stream *stream)
> +{
> +	unsigned long flags;
> +	bool available;
> +
> +	spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
> +	available = stream->oa_buffer.tail != stream->oa_buffer.head;
> +	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
> +
> +	return available;
> +}
> +
>   /**
>    * append_oa_status - Appends a status record to a userspace read() buffer.
>    * @stream: An i915-perf stream opened for OA metrics
> @@ -1150,7 +1176,7 @@ static int i915_oa_wait_unlocked(struct i915_perf_stream *stream)
>   		return -EIO;
>   
>   	return wait_event_interruptible(stream->poll_wq,
> -					oa_buffer_check_unlocked(stream));
> +					oa_buffer_check_reports(stream));
>   }
>   
>   /**


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
