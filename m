Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF71486234
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 10:38:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8A1810E6EE;
	Thu,  6 Jan 2022 09:38:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 897BA10E6EE
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jan 2022 09:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641461890; x=1672997890;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=8pmHU8sGdu1tUySz1Ige4haSXF+rYU7QAnDnJZcaTN8=;
 b=PO1ea1Y04HNKVqoFyqDMG5/sTeE6pgxy6RssyvPuY8bEs6q6VMQT25ii
 3qpQxW0rivyfqFXQU7nMV99YmaU0XQMKCaaK4kUxOvzd1Faec58X6KWER
 G8Q9urpfHWbbVCVPreC7V4LGYBe8CDHNUpL1TUZmD8K7FkRUtCRLVVVcU
 2CFYlTeuBv6jecCyg+c/aFkmQguvAAb0KsK6oTmCQnYF42a5z56T482wi
 9d7tq2QFLBG9sEXt7LxAFlprtgutEHENqRL32yoKy7oixqI1cfGMUYliG
 /eRF52nXngDOy1y6pB5u9FxxEnMzEgF8Fv4x17IV5HYbFUCBxFVtr8gCj Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="222623490"
X-IronPort-AV: E=Sophos;i="5.88,266,1635231600"; d="scan'208";a="222623490"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 01:38:09 -0800
X-IronPort-AV: E=Sophos;i="5.88,266,1635231600"; d="scan'208";a="472828497"
Received: from leitchrx-mobl.ger.corp.intel.com (HELO [10.213.202.197])
 ([10.213.202.197])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 01:38:08 -0800
Message-ID: <4da5fd63-d74f-2004-082b-a75cbdb024ad@linux.intel.com>
Date: Thu, 6 Jan 2022 09:38:06 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "Brost, Matthew" <matthew.brost@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-8-alan.previn.teres.alexis@intel.com>
 <20211208002215.GA17960@jons-linux-dev-box>
 <bf9b1af14a700959ca58e615d7d15cb9300ab56f.camel@intel.com>
 <fb0f6eace4bd1c243544a0804ffa9fa5b16159a6.camel@intel.com>
 <c0fa7466-ecdc-4768-0584-6937e7f0d71a@linux.intel.com>
 <baaf6bcf51c487817392142913f31655138b6596.camel@intel.com>
 <8257f42f-7bbd-c033-28f1-f43f21cc81af@linux.intel.com>
 <0267e249fbc650069e4c6d29438ce32289d535cb.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <0267e249fbc650069e4c6d29438ce32289d535cb.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RFC 7/7] drm/i915/guc: Print the GuC error capture
 output register list.
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 05/01/2022 17:30, Teres Alexis, Alan Previn wrote:
> 
> On Tue, 2022-01-04 at 13:56 +0000, Tvrtko Ursulin wrote:
>>
>>> The flow of events are as below:
>>>
>>> 1. guc sends notification that an error capture was done and ready to take.
>>> 	- at this point we copy the guc error captured dump into an interim store
>>> 	  (larger buffer that can hold multiple captures).
>>> 2. guc sends notification that a context was reset (after the prior)
>>> 	- this triggers a call to i915_gpu_coredump with the corresponding engine-mask
>>>             from the context that was reset
>>> 	- i915_gpu_coredump proceeds to gather entire gpu state including driver state,
>>>             global gpu state, engine state, context vmas and also engine registers. For the
>>>             engine registers now call into the guc_capture code which merely needs to verify
>>> 	  that GuC had already done a step 1 and we have data ready to be parsed.
>>
>> What about the time between the actual reset and receiving the context
>> reset notification? Latter will contain intel_context->guc_id - can that
>> be re-assigned or "retired" in between the two and so cause problems for
>> matching the correct (or any) vmas?
>>
> Not it cannot because its only after the context reset notification that i915 starts
> taking action against that cotnext - and even that happens after the i915_gpu_codedump (engine-mask-of-context) happens.
> That's what i've observed in the code flow.

The fact it is "only after" is exactly why I asked.

Reset notification is in a CT queue with other stuff, right? So can be 
some unrelated time after the actual reset. Could have context be 
retired in the meantime and guc_id released is the question.

Because i915 has no idea there was a reset until this delayed message 
comes over, but it could see user interrupt signaling end of batch, 
after the reset has happened, unbeknown to i915, right?

Perhaps the answer is guc_id cannot be released via the request retire 
flows. Or GuC signaling release of guc_id is a thing, which is then 
ordered via the same CT buffer.

I don't know, just asking.

Regards,

Tvrtko
