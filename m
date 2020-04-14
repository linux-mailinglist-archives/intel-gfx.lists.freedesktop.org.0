Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2A51A7479
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 09:16:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C3C06E488;
	Tue, 14 Apr 2020 07:16:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A46CA6E488
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 07:16:22 +0000 (UTC)
IronPort-SDR: jNun/7OwPhSZXHWRzmH13BoXGOTrFeRBQIWDywaR/EPZKw6G5ED1MCO1cAGJTMsJTxNriJf6RF
 vTuNWUjBvtPg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 00:16:21 -0700
IronPort-SDR: EuarJ07H5VLLyz2JHMXPDxXYN++JlaqhL+htOsKdKi6UphOkjqWKekD/hJXKaeyeBAeNEjeLq2
 hwIotnHV1KVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,381,1580803200"; d="scan'208";a="271317602"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.212.8.3])
 by orsmga002.jf.intel.com with ESMTP; 14 Apr 2020 00:16:20 -0700
Date: Mon, 13 Apr 2020 23:58:18 -0700
Message-ID: <87wo6i4kqd.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
In-Reply-To: <87y2qy4psw.wl-ashutosh.dixit@intel.com>
References: <20200413154822.11620-1-umesh.nerlige.ramappa@intel.com>
 <20200413154822.11620-2-umesh.nerlige.ramappa@intel.com>
 <87y2qy4psw.wl-ashutosh.dixit@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL/10.8 EasyPG/1.0.0 Emacs/26
 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 13 Apr 2020 22:08:47 -0700, Dixit, Ashutosh wrote:
>
> On Mon, 13 Apr 2020 08:48:20 -0700, Umesh Nerlige Ramappa wrote:
> >
> > A condition in wait_event_interruptible seems to be checked twice before
> > waiting on the event to occur. These checks are redundant when hrtimer
> > events will call oa_buffer_check_unlocked to update the oa_buffer tail
> > pointers. The redundant checks add cpu overhead. Simplify the check
> > to reduce cpu overhead when using blocking io to read oa buffer reports.
> >
> > Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_perf.c | 28 +++++++++++++++++++++++++++-
> >  1 file changed, 27 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> > index 5cde3e4e7be6..e28a3ab83fde 100644
> > --- a/drivers/gpu/drm/i915/i915_perf.c
> > +++ b/drivers/gpu/drm/i915/i915_perf.c
> > @@ -541,6 +541,32 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
> >	return pollin;
> >  }
> >
> > +/**
> > + * oa_buffer_check_reports - quick check if reports are available
> > + * @stream: i915 stream instance
> > + *
> > + * The return from this function is used as a condition for
> > + * wait_event_interruptible in blocking read. This is used to detect
> > + * available reports.
> > + *
> > + * A condition in wait_event_interruptible seems to be checked twice before
> > + * waiting on an event to occur. These checks are redundant when hrtimer events
> > + * will call oa_buffer_check_unlocked to update the oa_buffer tail pointers. The
> > + * redundant checks add cpu overhead. We simplify the check to reduce cpu
> > + * overhead.
> > + */
> > +static bool oa_buffer_check_reports(struct i915_perf_stream *stream)
> > +{
> > +	unsigned long flags;
> > +	bool available;
> > +
> > +	spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
> > +	available = stream->oa_buffer.tail != stream->oa_buffer.head;
> > +	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
> > +
> > +	return available;
> > +}
> > +
> >  /**
> >   * append_oa_status - Appends a status record to a userspace read() buffer.
> >   * @stream: An i915-perf stream opened for OA metrics
> > @@ -1150,7 +1176,7 @@ static int i915_oa_wait_unlocked(struct i915_perf_stream *stream)
> >		return -EIO;
> >
> >	return wait_event_interruptible(stream->poll_wq,
> > -					oa_buffer_check_unlocked(stream));
> > +					oa_buffer_check_reports(stream));
> >  }
>
> I think the problem with this patch is that the original code had the
> property that the condition for data availability is checked (and the OA
> tail advanced) /before/ entering the wait. So the tail was advanced and if
> there was data there was no need to wait at all. This change has lost that
> property. With this change we will first always enter the wait and then get
> unblocked after the timer interrupt which will advance the tail and wake us
> up.
>
> I think if we want to do this, it is possible to do without losing the
> original property. Just call oa_buffer_check_unlocked() first (outside
> wait_event) and if there is data just return. If not, put yourself on
> stream->poll_wq from which the timer callback will wake us up. I think this
> is going to be something like prepare_to_wait() / schedule() /
> finish_wait() pattern of which there are numerous examples in the
> kernel. So in this case we won't call wait_event_interruptible() which
> checks the condition upon waking up. No need to define
> oa_buffer_check_reports() either.

If on the other hand we say that this should actually be the desired
behavior of the blocking read, that it should not unblock immediately but
only after the next timer interrupt (so that an app can call the blocking
read repeatedly without worrying about it will return a little bit of data
in each call at a considerable amount of CPU load), then we may be able to
do something like this, but even then we may have to think about what would
be the correct way to do that. Though this may be that correct way and we
may just need to change the commit message, but is that what we want?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
