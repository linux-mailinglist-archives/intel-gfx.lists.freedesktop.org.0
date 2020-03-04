Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42334178CDD
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 09:52:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAE2A6E131;
	Wed,  4 Mar 2020 08:52:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C87E46E131
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 08:52:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 00:52:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,513,1574150400"; d="scan'208";a="234047790"
Received: from jensle-mobl.ger.corp.intel.com (HELO [10.252.41.98])
 ([10.252.41.98])
 by fmsmga008.fm.intel.com with ESMTP; 04 Mar 2020 00:52:35 -0800
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
 <20200303221905.25866-8-umesh.nerlige.ramappa@intel.com>
 <87v9nku0uu.wl-ashutosh.dixit@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <bc369a53-ec87-f459-e798-2212f9a73d90@intel.com>
Date: Wed, 4 Mar 2020 10:52:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <87v9nku0uu.wl-ashutosh.dixit@intel.com>
Content-Language: en-US
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

On 04/03/2020 07:48, Dixit, Ashutosh wrote:
> On Tue, 03 Mar 2020 14:19:05 -0800, Umesh Nerlige Ramappa wrote:
>> From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>>
>> With the currently available parameters for the i915-perf stream,
>> there are still situations that are not well covered :
>>
>> If an application opens the stream with polling disable or at very low
>> frequency and OA interrupt enabled, no data will be available even
>> though somewhere between nothing and half of the OA buffer worth of
>> data might have landed in memory.
>>
>> To solve this issue we have a new flush ioctl on the perf stream that
>> forces the i915-perf driver to look at the state of the buffer when
>> called and makes any data available through both poll() & read() type
>> syscalls.
>>
>> v2: Version the ioctl (Joonas)
>> v3: Rebase (Umesh)
>>
>> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> [snip]
>
>> +/**
>> + * i915_perf_flush_data - handle `I915_PERF_IOCTL_FLUSH_DATA` ioctl
>> + * @stream: An enabled i915 perf stream
>> + *
>> + * The intention is to flush all the data available for reading from the OA
>> + * buffer
>> + */
>> +static void i915_perf_flush_data(struct i915_perf_stream *stream)
>> +{
>> +	stream->pollin = oa_buffer_check(stream, true);
>> +}
> Since this function doesn't actually wake up any thread (which anyway can
> be done by sending a signal to the blocked thread), is the only purpose of
> this function to update OA buffer head/tail? But in that it is not clear
> why a separate ioctl should be created for this, can't the read() call
> itself call oa_buffer_check() to update the OA buffer head/tail?
>
> Again just trying to minimize uapi changes if possible.

Most applications will call read() after being notified by 
poll()/select() that some data is available.

Changing that behavior will break some of the existing perf tests .


If any data is available, this new ioctl will wake up existing waiters 
on poll()/select().


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
