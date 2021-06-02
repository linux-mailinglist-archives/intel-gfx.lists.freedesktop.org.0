Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5220E398E90
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 17:27:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF01B6E3FE;
	Wed,  2 Jun 2021 15:27:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E2096E3FE;
 Wed,  2 Jun 2021 15:27:28 +0000 (UTC)
IronPort-SDR: eVSZBEcAnCgX38HtPb00i2d04woJV2x4IKhNXXayS7oHo4PUG4ekmoAM1kasUxh9VYpfD0NL0B
 kMWhBqmRYT/Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="267688420"
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="267688420"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 08:27:21 -0700
IronPort-SDR: T5XJiVdO7bx5h3sn7ybJxmgsOwP9WBE0Uxs1mhH4TmBPnOwNvwrh4CFmmGLSvzfjWlL0usie+Y
 33mBQz1lBm2g==
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="447444550"
Received: from tstaplex-mobl1.ger.corp.intel.com (HELO [10.213.195.193])
 ([10.213.195.193])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 08:27:18 -0700
To: Matthew Brost <matthew.brost@intel.com>
References: <20210506191451.77768-1-matthew.brost@intel.com>
 <de3965d8-d997-5685-0399-646d8823a27f@linux.intel.com>
 <20210525164504.GA9971@sdutt-i7>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d76ab0ec-4f0c-19ed-adaa-ed227af63c0e@linux.intel.com>
Date: Wed, 2 Jun 2021 16:27:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210525164504.GA9971@sdutt-i7>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC PATCH 00/97] Basic GuC submission support in
 the i915
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
Cc: jason.ekstrand@intel.com, daniel.vetter@intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 25/05/2021 17:45, Matthew Brost wrote:
> On Tue, May 25, 2021 at 11:32:26AM +0100, Tvrtko Ursulin wrote:
>>
>> On 06/05/2021 20:13, Matthew Brost wrote:
>>> Basic GuC submission support. This is the first bullet point in the
>>> upstreaming plan covered in the following RFC [1].
>>>
>>> At a very high level the GuC is a piece of firmware which sits between
>>> the i915 and the GPU. It offloads some of the scheduling of contexts
>>> from the i915 and programs the GPU to submit contexts. The i915
>>> communicates with the GuC and the GuC communicates with the GPU.
>>>
>>> GuC submission will be disabled by default on all current upstream
>>> platforms behind a module parameter - enable_guc. A value of 3 will
>>> enable submission and HuC loading via the GuC. GuC submission should
>>> work on all gen11+ platforms assuming the GuC firmware is present.
>>>
>>> This is a huge series and it is completely unrealistic to merge all of
>>> these patches at once. Fortunately I believe we can break down the
>>> series into different merges:
>>>
>>> 1. Merge Chris Wilson's patches. These have already been reviewed
>>> upstream and I fully agree with these patches as a precursor to GuC
>>> submission.
>>>
>>> 2. Update to GuC 60.1.2. These are largely Michal's patches.
>>>
>>> 3. Turn on GuC/HuC auto mode by default.
>>>
>>> 4. Additional patches needed to support GuC submission. This is any
>>> patch not covered by 1-3 in the first 34 patches. e.g. 'Engine relative
>>> MMIO'
>>>
>>> 5. GuC submission support. Patches number 35+. These all don't have to
>>> merge at once though as we don't actually allow GuC submission until the
>>> last patch of this series.
>>
>> For the GuC backend/submission part only - it seems to me none of my review
>> comments I made in December 2019 have been implemented. At that point I
> 
> I wouldn't say none of the fixes have done, lots have just not
> everything you wanted.
> 
>> stated, and this was all internally at the time mind you, that I do not
>> think the series is ready and there were several high level issues that
>> would need to be sorted out. I don't think I gave my ack or r-b back then
>> and the promise was a few things would be worked on post (internal) merge.
>> That was supposed to include upstream refactoring to enable GuC better
>> slotting in as a backed. Fast forward a year and a half later and the only
>> progress we had in this area has been deleted.
>>
>>  From the top of my head, and having glanced the series as posted:
>>
>>   * Self-churn factor in the series is too high.
> 
> Not sure what you mean by this? The patches have been reworked
> internally too much?

No, I meant series adds and removes, changes the same code a bit much 
which makes it harder to review. It is much easier when the flow is 
logical and typical, where it starts with refactoring, generalising, 
building infrastructure and then plugging bits in, than it is to review 
patches which add stuff which then get removed or changed significantly 
a few patches down the line.

>>   * Patch ordering issues.
> 
> We are going to clean up some of the ordering as these 97 patches are
> posted in smaller mergeable series but at the end of the day this is a
> bit of a bikeshed. GuC submission can't be turned until patch 97 so IMO
> it really isn't all that big of a deal the order of which patches before
> that land as we are not breaking anything.

Yes some leeway for ordering is fine.

>>   * GuC context state machine is way too dodgy to have any confidence it can
>> be read and race conditions understood.
> 
> I know you don't really like the state machine but no other real way to
> not have DoS on resources and no real way to fairly distribute guc_ids
> without it. I know you have had other suggestions here but none of your
> suggestions either will work or they are no less complicated in the end.
> 
> For what it is worth, the state machine will get simplified when we hook
> into the DRM scheduler as won't have to deal with submitting from IRQ
> contexts in the backend or having more than 1 request in the backend at
> a time.

Dunno. A mix of self-churn, locks, inconsistent naming, verbosity and 
magic makes it super hard to review. States in functions like 
guc_context_ban, guc_context_sched_disable, guc_context_block, .. I find 
it impossible to follow what's going on. Some under lock, some outside, 
jumps, returns, add magic two .. Perhaps it is just me so wait and see 
what other reviewers will think.

>>   * Context pinning code with it's magical two adds, subtract and cmpxchg is
>> dodgy as well.
> 
> Daniele tried to remove this and it proved quite difficult + created
> even more races in the backend code. This was prior to the pre-pin and
> post-unpin code which makes this even more difficult to fix as I believe
> these functions would need to be removed first. Not saying we can't
> revisit this someday but I personally really like it - it is a clever
> way to avoid reentering the pin / unpin code while asynchronous things
> are happening rather than some complex locking scheme. Lastly, this code
> has proved incredibly stable as I don't think we've had to fix a single
> thing in this area since we've been using this code internally.

Pretty much same as above. The code like:

static inline void __intel_context_unpin(struct intel_context *ce)
{
	if (!ce->ops->sched_disable) {
		__intel_context_do_unpin(ce, 1);
	} else {
		while (!atomic_add_unless(&ce->pin_count, -1, 1)) {
			if (atomic_cmpxchg(&ce->pin_count, 1, 2) == 1) {
				ce->ops->sched_disable(ce);
				break;
			}
		}
	}
}

That's pretty much impenetrable for me and the only thing I can think of 
here is **ALARM** must be broken! See what others think..

>>   * Kludgy way of interfacing with rest of the driver instead of refactoring
>> to fit (idling, breadcrumbs, scheduler, tasklets, ...).
>>
> 
> Idling and breadcrumbs seem clean to me. Scheduler + tasklet are going
> away once the DRM scheduler lands. No need rework those as we are just
> going to rework this again.

Well today I read the breadcrumbs patch and there is no way that's 
clean. It goes and creates one object per engine, then deletes them, 
replacing with GuC special one. All in the same engine setup. The same 
pattern of bolting on the GuC repeats too much for my taste.

>> Now perhaps the latest plan is to ignore all these issues and still merge,
>> then follow up with throwing it away, mostly or at least largely, in which
>> case there isn't any point really to review the current state yet again. But
>> it is sad that we got to this state. So just for the record - all this was
>> reviewed in Nov/Dec 2019. By me among other folks and I at least deemed it
>> not ready in this form.
>>
> 
> I personally don't think it is really in that bad of shape. The fact
> that I could put together a PoC more or less fully integrating this
> backend into the DRM scheduler within a few days I think speaks to the
> quality and flexablitiy of this backend compared to execlists.

Or that you are much more familiar with it. Anyway, it's not the line of 
argument I think we should continue.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
