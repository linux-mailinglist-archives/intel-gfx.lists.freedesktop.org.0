Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F7C746B64
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 10:02:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1415810E02E;
	Tue,  4 Jul 2023 08:02:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 363F210E02E
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 08:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688457735; x=1719993735;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=tP+dTYYnELZFPkyKxX+WO70adEX3pBnkHE369mwS8fs=;
 b=WIix8S5kTGeAhuNqOC3HAMVnNigCUiyEKmbk3u9DHgLVwaR+0dUucMfE
 9Igvn6Mkg+1OrkhMcAtu5vD+SsL+1JvNr+JwcUS3yPM7sGg7bKNOaUWoy
 +4xBY1FExtCjHbuWp2QbpNVhLcw1iO6r/z2Dxx4YVkaWJiL5/aQIE4/fj
 V9so6ubiPELfmQ1S50mPUqIoIJrQo+MRr1qO8QHTCbOt+WmctcK77rfSS
 Ym95GLnRz1LGn/+x1M8aODp4fo0KHPlc46UxmW+wAffue3Ri4mNlb4V1v
 kBZ5uF+45ZbVYxRapy/7fgn20nHQS8iWNyC/5o7DfRJvSTD1Ya0XYdsKY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="366545873"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="366545873"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 01:02:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="842913550"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="842913550"
Received: from sepalmer-mobl1.ger.corp.intel.com (HELO [10.213.220.73])
 ([10.213.220.73])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 01:02:09 -0700
Message-ID: <bf4658a8-cf10-92c1-5e48-d674ad0e5c46@linux.intel.com>
Date: Tue, 4 Jul 2023 09:02:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
References: <20230630130949.coN0sVU4@linutronix.de>
 <5af9b5cb-2342-8de3-07f2-86f2be6201eb@linux.intel.com>
 <20230703161256.21Qmrm9d@linutronix.de>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230703161256.21Qmrm9d@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [RFC] tentative fix for drm/i915/gt regression on
 preempt-rt
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
Cc: linux-rt-users@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Paul Gortmaker <paul.gortmaker@windriver.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 03/07/2023 17:12, Sebastian Andrzej Siewior wrote:
> On 2023-07-03 16:30:01 [+0100], Tvrtko Ursulin wrote:
>> Hi,
> Hi,
> 
>>
>> Atomic requirement from that commit text is likely referring to removing the
>> old big sleeping mutex we had in the reset path. So it looks plausible that
>> preempt_disable() section is not strictly needed and perhaps motivation
>> simply was, given those 20-50us polls on hw registers involved, to make them
>> happen as fast as possible and so minimize visual glitching during resets.
>>
>> Although that reasoning would only apply on some hw generations, where the
>> irqsave spinlock is not held across the whole sequence anyway.
>>
>> And I suspect those same platforms would be the annoying ones, if one simply
>> wanted to try without the preempt_disable section, given our wait_for_atomic
>> macro will complain loudly if not used from an atomic context.
> 
> It does not complain on RT, I did patch it out.
>     https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-rt-devel.git/tree/patches/0005-drm-i915-Don-t-check-for-atomic-context-on-PREEMPT_R.patch?h=linux-6.4.y-rt-patches

It does not complain when you patch out the complaint, correct. ;)

Only purpose of that complaint is to let developers now they are 
needlessly using the atomic wait_for - the busy looping one intended for 
very short delays. So if those wait_for_atomic are not really needed (in 
code paths which are not under a spinlock) I'll try converting them to 
non-atomic wait_for_us. Or so, will see.

> Interesting, the link there refers to an older posting but this patch is
> not included. For the other I didn't receive feedback at which point I
> stopped pushing and put it on the list for later…
> 
>> But I think we do have a macro for short register waits which works with
>> preempting enabled. I will try and cook up a patch and submit to our CI
>> during the week, then see what happens.
>>
>> Or even moving the preempt_disable down so it just encompasses the register
>> write + wait. That would then be under the spinlock which is presumable okay
>> on RT? (Yes I know it wouldn't' solve one half of your "complaint" but lets
>> just entertain the idea for now.)
> 
> You can't
> 	preempt_disable();
> 	spin_lock();
> 
> You could
> 	spin_lock();
> 	preempt_disable();
> 
> But if there is no need then there is no need ;)
> What I worry a bit the udelays…

Lets make it a two patch series and then see. First patch to see if we 
can really get away without the top level preempt_disable, and then 
second patch to see if we can get away with preemptible short sleeps too.

I guess on RT the top priority is consistent scheduling latency and not 
so much potential UI latency in some edge cases? Saying that because if 
waiting on the hw reset is made preemptible, _in theory_ it can prolong 
the reset completion (as observed by i915), and so result in more UI 
glitching than it normally would. Could be a theoretical point only 
because it requires both CPU over-subscribe and GPU hangs. It could also 
easily be that the reset path is only one path, and not so interesting 
one even, which can cause this on RT.

Regards,

Tvrtko
