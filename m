Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C4448746B
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 10:03:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86D2F11B0C2;
	Fri,  7 Jan 2022 09:03:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03C3511B0C2
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 09:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641546210; x=1673082210;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ip1gYFSLlJtQb57ZFWE1YEqZhZIwQPpDONzpLSPFjiw=;
 b=Wg2k8zGghcdj2fIZL9aCExBr2umxjCcdhHyNlMEN7oGuN44QZd5pXMLh
 cKXL+msccX7thE/BLU+7yTg0wv2KrsO13dFd8sjbx3ni3F5B32qUMbzGB
 ag9qaymCNbO5wfzJ4p7QMcj3cCDFx9dzTwATYRDamYiqIatKk3vQUmcDj
 lJgue4gxGeZ9vB41c+Z21FksYbzY6mv6Zv4fNwI7hIYzb4tXRjv2Ralmg
 sio2T5MT1Khpg1oMb2ZRmF/HA5/fSBbLE0PPCQ+7X/8Dvqrz9kGaBzfzX
 F8PvTVi/OXsFaN2qLpja6YcUV7KNOdA3Z/mhcBW7jmu5brdqofJCU9hVK w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="306203711"
X-IronPort-AV: E=Sophos;i="5.88,269,1635231600"; d="scan'208";a="306203711"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 01:03:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,269,1635231600"; d="scan'208";a="557208942"
Received: from phteixe1-mobl1.ger.corp.intel.com (HELO [10.213.231.163])
 ([10.213.231.163])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 01:03:28 -0800
Message-ID: <3bdab0a4-f182-28bb-0206-8d6d4b34c690@linux.intel.com>
Date: Fri, 7 Jan 2022 09:03:26 +0000
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
 <4da5fd63-d74f-2004-082b-a75cbdb024ad@linux.intel.com>
 <798a8740d1692541ee822535dbe880ce17b2bbbc.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <798a8740d1692541ee822535dbe880ce17b2bbbc.camel@intel.com>
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


On 06/01/2022 18:33, Teres Alexis, Alan Previn wrote:
> 
> On Thu, 2022-01-06 at 09:38 +0000, Tvrtko Ursulin wrote:
>> On 05/01/2022 17:30, Teres Alexis, Alan Previn wrote:
>>> On Tue, 2022-01-04 at 13:56 +0000, Tvrtko Ursulin wrote:
>>>>> The flow of events are as below:
>>>>>
>>>>> 1. guc sends notification that an error capture was done and ready to take.
>>>>> 	- at this point we copy the guc error captured dump into an interim store
>>>>> 	  (larger buffer that can hold multiple captures).
>>>>> 2. guc sends notification that a context was reset (after the prior)
>>>>> 	- this triggers a call to i915_gpu_coredump with the corresponding engine-mask
>>>>>              from the context that was reset
>>>>> 	- i915_gpu_coredump proceeds to gather entire gpu state including driver state,
>>>>>              global gpu state, engine state, context vmas and also engine registers. For the
>>>>>              engine registers now call into the guc_capture code which merely needs to verify
>>>>> 	  that GuC had already done a step 1 and we have data ready to be parsed.
>>>>
>>>> What about the time between the actual reset and receiving the context
>>>> reset notification? Latter will contain intel_context->guc_id - can that
>>>> be re-assigned or "retired" in between the two and so cause problems for
>>>> matching the correct (or any) vmas?
>>>>
>>> Not it cannot because its only after the context reset notification that i915 starts
>>> taking action against that cotnext - and even that happens after the i915_gpu_codedump (engine-mask-of-context) happens.
>>> That's what i've observed in the code flow.
>>
>> The fact it is "only after" is exactly why I asked.
>>
>> Reset notification is in a CT queue with other stuff, right? So can be
>> some unrelated time after the actual reset. Could have context be
>> retired in the meantime and guc_id released is the question.
>>
>> Because i915 has no idea there was a reset until this delayed message
>> comes over, but it could see user interrupt signaling end of batch,
>> after the reset has happened, unbeknown to i915, right?
>>
>> Perhaps the answer is guc_id cannot be released via the request retire
>> flows. Or GuC signaling release of guc_id is a thing, which is then
>> ordered via the same CT buffer.
>>
>> I don't know, just asking.
>>
> As long as the context is pinned, the guc-id wont be re-assigned. After a bit of offline brain-dump
> from John Harrison, there are many factors that can keep the context pinned (recounts) including
> new or oustanding requests. So a guc-id can't get re-assigned between a capture-notify and a
> context-reset even if that outstanding request is the only refcount left since it would still
> be considered outstanding by the driver. I also think we may also be talking past each other
> in the sense that the guc-id is something the driver assigns to a context being pinned and only
> the driver can un-assign it (both assigning and unasigning is via H2G interactions).
> I get the sense you are assuming the GuC can un-assign the guc-id's on its own - which isn't
> the case. Apologies if i mis-assumed.

I did not think GuC can re-assign ce->guc_id. I asked about request/context complete/retire happening before reset/capture notification is received.

That would be the time window between the last intel_context_put, so last i915_request_put from retire, at which point AFAICT GuC code releases the guc_id. Execution timeline like:

|------ rq1 ------|------ rq2 ------|
    ^ engine reset		    ^ rq2, rq1 retire, guc id released

                                                           		^ GuC reset notify received - guc_id not known any more?
  
You are saying something is guaranteed to be holding onto the guc_id at the point of receiving the notification? "There are many factors that can keep the context pinned" - what is it in this case? Or the case cannot happen?

Regards,

Tvrtko
