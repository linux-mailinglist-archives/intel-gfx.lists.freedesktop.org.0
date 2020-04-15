Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEE71AB0DF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 20:55:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE6DA6EA6D;
	Wed, 15 Apr 2020 18:55:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F5536EA6D
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 18:55:03 +0000 (UTC)
IronPort-SDR: ufcCejq9OMumlFTsW/lO356mEBBOEfLOPCNpIV2xHHCgm//F8OXTsfOpWpr0HThjJ9+lhLPvqB
 gIs0/weWaDnw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 11:55:02 -0700
IronPort-SDR: roJoxRyvIhTANx74fpG/ERtG6Rx1FgU02Ju8tacsv1aeAVocQgdaHtl27eZUJ+4wfZuV7ljZjm
 GjyCiiULJNcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,388,1580803200"; d="scan'208";a="454026764"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by fmsmga005.fm.intel.com with ESMTP; 15 Apr 2020 11:55:02 -0700
Date: Wed, 15 Apr 2020 11:55:02 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20200415185502.GA16071@orsosgc001.amr.corp.intel.com>
References: <20200413154822.11620-1-umesh.nerlige.ramappa@intel.com>
 <20200413154822.11620-2-umesh.nerlige.ramappa@intel.com>
 <6fd2488e-4a76-cb94-12b2-a61ab7f4bfe2@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6fd2488e-4a76-cb94-12b2-a61ab7f4bfe2@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 15, 2020 at 01:00:30PM +0300, Lionel Landwerlin wrote:
>On 13/04/2020 18:48, Umesh Nerlige Ramappa wrote:
>>A condition in wait_event_interruptible seems to be checked twice before
>>waiting on the event to occur. These checks are redundant when hrtimer
>>events will call oa_buffer_check_unlocked to update the oa_buffer tail
>>pointers. The redundant checks add cpu overhead. Simplify the check
>>to reduce cpu overhead when using blocking io to read oa buffer reports.
>>
>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>
>
>I cherry picked this patch alone and it seems to break the 
>disabled-read-error test.

Strange. I don't see it fail on my CFL. I am apply this on the latest 
drm-tip from yesterday.

The patch still checks if reports are available before blocking.  The 
behavior should still be the same w.r.t this test.

What machine did you run it on? I will try on the same. Any chance you 
have the debug output from the test?

Thanks,
Umesh

>
>
>>---
>>  drivers/gpu/drm/i915/i915_perf.c | 28 +++++++++++++++++++++++++++-
>>  1 file changed, 27 insertions(+), 1 deletion(-)
>>
>>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>>index 5cde3e4e7be6..e28a3ab83fde 100644
>>--- a/drivers/gpu/drm/i915/i915_perf.c
>>+++ b/drivers/gpu/drm/i915/i915_perf.c
>>@@ -541,6 +541,32 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>>  	return pollin;
>>  }
>>+/**
>>+ * oa_buffer_check_reports - quick check if reports are available
>>+ * @stream: i915 stream instance
>>+ *
>>+ * The return from this function is used as a condition for
>>+ * wait_event_interruptible in blocking read. This is used to detect
>>+ * available reports.
>>+ *
>>+ * A condition in wait_event_interruptible seems to be checked twice before
>>+ * waiting on an event to occur. These checks are redundant when hrtimer events
>>+ * will call oa_buffer_check_unlocked to update the oa_buffer tail pointers. The
>>+ * redundant checks add cpu overhead. We simplify the check to reduce cpu
>>+ * overhead.
>>+ */
>>+static bool oa_buffer_check_reports(struct i915_perf_stream *stream)
>>+{
>>+	unsigned long flags;
>>+	bool available;
>>+
>>+	spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
>>+	available = stream->oa_buffer.tail != stream->oa_buffer.head;
>>+	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
>>+
>>+	return available;
>>+}
>>+
>>  /**
>>   * append_oa_status - Appends a status record to a userspace read() buffer.
>>   * @stream: An i915-perf stream opened for OA metrics
>>@@ -1150,7 +1176,7 @@ static int i915_oa_wait_unlocked(struct i915_perf_stream *stream)
>>  		return -EIO;
>>  	return wait_event_interruptible(stream->poll_wq,
>>-					oa_buffer_check_unlocked(stream));
>>+					oa_buffer_check_reports(stream));
>>  }
>>  /**
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
