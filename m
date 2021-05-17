Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B98383954
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 18:13:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 953966E1FB;
	Mon, 17 May 2021 16:13:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D576F6E1FB
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 16:13:32 +0000 (UTC)
IronPort-SDR: OYd9aruLhJ8Fbk2bhQiwGkx5hiDQMMVEyJxC3MA8g3g5aXpN4iE0yfLNtcgen8p3EFOyozzXUQ
 eF2iEKFIyTLQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="200549994"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="200549994"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 09:13:31 -0700
IronPort-SDR: JUvNUf/7+VWvieD47SYCmA+YTGt5nDv0LDjk3xtexowBp+JtneNVtjVtLen3n+CopSK6vtUyfx
 HtKmCYgdsiKQ==
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="438042594"
Received: from lobrie3x-mobl4.ger.corp.intel.com (HELO [10.213.193.103])
 ([10.213.193.103])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 09:13:29 -0700
To: Maxime Schmitt <maxime.schmitt91@gmail.com>,
 intel-gfx@lists.freedesktop.org
References: <c889265cfdbeb9374ed98b8defed59ef81bc0159.camel@gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <90fa0209-0ce2-7c70-e740-97d6cbe4a10e@linux.intel.com>
Date: Mon, 17 May 2021 17:13:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <c889265cfdbeb9374ed98b8defed59ef81bc0159.camel@gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 0/7] Per client engine busyness
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


Hi,

On 15/05/2021 11:40, Maxime Schmitt wrote:
> Hi,
> 
> Nice to see something like this being worked on.
> 
> I wrote a top-like tool some time back (nvtop).
> I targeted NVIDIA, because it was the GPU I had at the time. Also,
> their driver provides a nice library to retrieve the information from
> (NVML).
> 
> Seeing this thread I think it would be nice to support more vendors now
> that the information is available.
> 
> I took a look at the DRM documentation, but I am only finding the in-
> kernel functions and not what is being exposed to user space. Maybe I
> am searching at the wrong place.
> Is there some documentation, from the user space point of view, on the
> way to discover the GPUs and the metrics that are exposed?
There isn't a common framework yet, its under discussion in this thread.

AMD has some stuff under /proc/<pid>/fdinfo/<fd>, and i915 at the moment 
has only global GPU stats (export as a perf/PMU device, see "perf list | 
grep i915.*/") used by current version of intel_gpu_top.

Regards,

Tvrtko

P.S. I suggest you use reply-to-all when replying on mailing list 
threads so it's easier to spot your message.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
