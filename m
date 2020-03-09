Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FF817E93D
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 20:51:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C6606E0E2;
	Mon,  9 Mar 2020 19:51:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB97F6E0E2
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 19:51:42 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 12:51:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,534,1574150400"; d="scan'208";a="388669801"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by orsmga004.jf.intel.com with ESMTP; 09 Mar 2020 12:51:41 -0700
Date: Mon, 9 Mar 2020 12:51:41 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <20200309195141.GA9651@orsosgc001.amr.corp.intel.com>
References: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
 <20200303221905.25866-8-umesh.nerlige.ramappa@intel.com>
 <87v9nku0uu.wl-ashutosh.dixit@intel.com>
 <bc369a53-ec87-f459-e798-2212f9a73d90@intel.com>
 <87o8tb2vlf.wl-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87o8tb2vlf.wl-ashutosh.dixit@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/perf: add flushing ioctl
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

On Wed, Mar 04, 2020 at 09:56:28PM -0800, Dixit, Ashutosh wrote:
>On Wed, 04 Mar 2020 00:52:34 -0800, Lionel Landwerlin wrote:
>>
>> On 04/03/2020 07:48, Dixit, Ashutosh wrote:
>> > On Tue, 03 Mar 2020 14:19:05 -0800, Umesh Nerlige Ramappa wrote:
>> >> From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>> >>
>> >> With the currently available parameters for the i915-perf stream,
>> >> there are still situations that are not well covered :
>> >>
>> >> If an application opens the stream with polling disable or at very low
>> >> frequency and OA interrupt enabled, no data will be available even
>> >> though somewhere between nothing and half of the OA buffer worth of
>> >> data might have landed in memory.
>> >>
>> >> To solve this issue we have a new flush ioctl on the perf stream that
>> >> forces the i915-perf driver to look at the state of the buffer when
>> >> called and makes any data available through both poll() & read() type
>> >> syscalls.
>> >>
>> >> v2: Version the ioctl (Joonas)
>> >> v3: Rebase (Umesh)
>> >>
>> >> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>> >> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> > [snip]
>> >
>> >> +/**
>> >> + * i915_perf_flush_data - handle `I915_PERF_IOCTL_FLUSH_DATA` ioctl
>> >> + * @stream: An enabled i915 perf stream
>> >> + *
>> >> + * The intention is to flush all the data available for reading from the OA
>> >> + * buffer
>> >> + */
>> >> +static void i915_perf_flush_data(struct i915_perf_stream *stream)
>> >> +{
>> >> +	stream->pollin = oa_buffer_check(stream, true);
>> >> +}
>> > Since this function doesn't actually wake up any thread (which anyway can
>> > be done by sending a signal to the blocked thread), is the only purpose of
>> > this function to update OA buffer head/tail? But in that it is not clear
>> > why a separate ioctl should be created for this, can't the read() call
>> > itself call oa_buffer_check() to update the OA buffer head/tail?
>> >
>> > Again just trying to minimize uapi changes if possible.
>>
>> Most applications will call read() after being notified by poll()/select()
>> that some data is available.
>
>Correct this is the standard non blocking read behavior.
>
>> Changing that behavior will break some of the existing perf tests .
>
>I am not suggesting changing that (that standard non blocking read
>behavior).
>
>> If any data is available, this new ioctl will wake up existing waiters on
>> poll()/select().
>
>The issue is we are not calling wake_up() in the above function to wake up
>any blocked waiters. The ioctl will just update the OA buffer head/tail so
>that (a) a subsequent blocking read will not block, or (b) a subsequent non
>blocking read will return valid data (not -EAGAIN), or (c) a poll/select
>will not block but return immediately saying data is available.
>
>That is why it seems to me the ioctl is not required, updating the OA
>buffer head/tail can be done as part of the read() (and the poll/select)
>calls themselves.
>
>We will investigate if this can be done and update the patches in the next
>revision accordingly. Thanks!

In this case, where we are trying to determine if there is any data in 
the oa buffer before the next interrupt has fired, user could call poll 
with a reasonable timeout to determine if data is available or not.  
That would eliminate the need for the flush ioctl. Thoughts?

Thanks,
Umesh
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
