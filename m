Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B5C1AE89F
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Apr 2020 01:26:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C4F86EC19;
	Fri, 17 Apr 2020 23:26:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FA2C6EC4D
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 23:26:10 +0000 (UTC)
IronPort-SDR: Um4z7qfAS/nKKrU6KLDC80j/UhHYUd8mef7pCvbKptKnYsKGDHyVJa0WREC27cKBwwj5vbf/vX
 +zLfB2ISWpGA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 16:26:09 -0700
IronPort-SDR: 1GroKQZCurqDOPwcvTFP27CDsv8cJdLULg0oj03Lw92ZtdRSpFd5RcZ+qZt27VgOU3qnQt311a
 yhY57BJ/yfMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="455777329"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.134.116.125])
 by fmsmga006.fm.intel.com with ESMTP; 17 Apr 2020 16:26:09 -0700
Date: Fri, 17 Apr 2020 16:26:09 -0700
Message-ID: <87k12du226.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20200413154822.11620-4-umesh.nerlige.ramappa@intel.com>
References: <20200413154822.11620-1-umesh.nerlige.ramappa@intel.com>	<20200413154822.11620-4-umesh.nerlige.ramappa@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL/10.8 EasyPG/1.0.0 Emacs/26
 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/perf: add interrupt enabling
 parameter
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

On Mon, 13 Apr 2020 08:48:22 -0700, Umesh Nerlige Ramappa wrote:
>
> @@ -556,16 +559,23 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>   * waiting on an event to occur. These checks are redundant when hrtimer events
>   * will call oa_buffer_check_unlocked to update the oa_buffer tail pointers. The
>   * redundant checks add cpu overhead. We simplify the check to reduce cpu
> - * overhead.
> + * overhead. For interrupt events, we still need to make sure that
> + * oa_buffer_check_unlocked is called when an interrupt occurs.
>   */
>  static bool oa_buffer_check_reports(struct i915_perf_stream *stream)
>  {
>	unsigned long flags;
>	bool available;
>
> -	spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
> -	available = stream->oa_buffer.tail != stream->oa_buffer.head;
> -	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
> +	if (!stream->oa_interrupt_monitor) {
> +		spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
> +		available = stream->oa_buffer.tail != stream->oa_buffer.head;
> +		spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
> +	} else {
> +		if (stream->half_full_count_last !=
> +		    atomic64_read(&stream->half_full_count))
> +			available = oa_buffer_check_unlocked(stream);
> +	}

This logic is broken if we have both the interrupt and the timer enabled?
Anyway as I said for Patch 1, oa_buffer_check_reports() should not be
needed (and hopefully neither the half_full_count's as per the comment in
Patch 2).

> @@ -3710,13 +3736,16 @@ static int read_properties_unlocked(struct i915_perf *perf,
>			break;
>		}
>		case DRM_I915_PERF_PROP_POLL_OA_PERIOD:
> -			if (value < 100000 /* 100us */) {
> +			if (value > 0 && value < 100000 /* 100us */) {
>				DRM_DEBUG("OA availability timer too small (%lluns < 100us)\n",
>					  value);
>				return -EINVAL;
>			}
>			props->poll_oa_period = value;
>			break;
> +		case DRM_I915_PERF_PROP_OA_ENABLE_INTERRUPT:
> +			props->oa_interrupt_monitor = value != 0;

At one point it was fashionable to write this as '= !!value' but I believe
even that is not needed now and this can be written as '= value'.

> @@ -3725,6 +3754,19 @@ static int read_properties_unlocked(struct i915_perf *perf,
>		uprop += 2;
>	}
>
> +	/*
> +	 * Blocking read need to be waken up by some mechanism. If no polling
> +	 * of the HEAD/TAIL register is done by the kernel and no interrupt is
> +	 * enabled, we'll never be able to wake up.
> +	 */
> +	if ((open_flags & I915_PERF_FLAG_FD_NONBLOCK) == 0 &&
> +	    !props->poll_oa_period &&
> +	    !props->oa_interrupt_monitor) {
> +		DRM_DEBUG("Requesting a blocking stream with no polling period "
> +			  "& no interrupt.\n");
> +		return -EINVAL;
> +	}

Shouldn't this be true for non-blocking reads too since the poll() can
block indefinitely if both timer and interrupt are disabled? I think we
should disallow disabling both in either case.

> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 14b67cd6b54b..947e65b937eb 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -1987,12 +1987,23 @@ enum drm_i915_perf_property_id {
>	 * the driver if this parameter is not specified. Note that larger timer
>	 * values will reduce cpu consumption during OA perf captures. However,
>	 * excessively large values would potentially result in OA buffer
> -	 * overwrites as captures reach end of the OA buffer.
> +	 * overwrites as captures reach end of the OA buffer. A value of 0 means
> +	 * no hrtimer will be started.
>	 *
>	 * This property is available in perf revision 5.
>	 */
>	DRM_I915_PERF_PROP_POLL_OA_PERIOD,
>
> +	/**
> +	 * Specifying this property sets up the interrupt mechanism for the OA
> +	 * buffer in i915. This option in conjunction with a long polling period
> +	 * for avaibility of OA data can reduce CPU load significantly if you
> +	 * do not care about OA data being read as soon as it's available.
> +	 *
> +	 * This property is available in perf revision 6.
> +	 */
> +	DRM_I915_PERF_PROP_OA_ENABLE_INTERRUPT,

I am still torn about exposing this new control to userspace. If we don't
we can have the interrupt always enabled and just document that the timer
can be disabled and when the timer is disabled the the OA sampling will be
driven off the interrupt. Anyway, if we decide that exposing this to user
space is better or more explicit, I'll go with it.

In either case, we need to add to the documentation above that the
interrupt fires when the OA buffer gets half filled so the user can
estimate the time between interrupts and decide if they want to use the
timer together with the interrupt.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
