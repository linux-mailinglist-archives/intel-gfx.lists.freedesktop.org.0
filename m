Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEE89EBFB9
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 01:00:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E08B110EA0D;
	Wed, 11 Dec 2024 00:00:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f1DYDUDT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7819210EA0D;
 Wed, 11 Dec 2024 00:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733875248; x=1765411248;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LuygsJojapZ3qBWYFPssV1LYQDlwLpvn1iOfh5weznw=;
 b=f1DYDUDTSxW+N9oo1zS1gP0KGZ9p4nQRZ5/9EBy+xp1jJdwVJhDCRTXI
 hSSBmGAZWc0F7Ze8U8KZvQgi+5eZ0ixXuvXzfo1cftYBqQbg976wtXqyl
 c44nS+4TSEIfFKvNt3RpFDuZ6wUFgbkJFwzjrtbLh3I6cE1W+0XkCTH2F
 AfKKCdOyMqfNLY1PP/bUHGt+fygPbsApueKVEpiOg6r/p57tfMXf76Q3Q
 AXx8FoJKT4YQPpM1foHE6iCzd/ykVnM7iKArKZilnNBepLt5Z0JDfkA68
 Q5LTM9r9pokTe7TNRat3Vj0JlkB3Y/H/wW7UbOmkodhzH59dXzamhfFvL A==;
X-CSE-ConnectionGUID: RHxLV3vJQeKScCG/NZSJ1A==
X-CSE-MsgGUID: 3JDJE1XoQ6ieaP099bh1Lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="56720469"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="56720469"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 16:00:47 -0800
X-CSE-ConnectionGUID: niJVfmm5TY+avYEetcNHIg==
X-CSE-MsgGUID: kCCrWKLRQjSxpifzgbXPBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="95922340"
Received: from ldmartin-desk2.corp.intel.com (HELO ldmartin-desk2)
 ([10.125.109.223])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 16:00:44 -0800
Date: Tue, 10 Dec 2024 18:00:33 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Luca Coelho <luciano.coelho@intel.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.saarinen@intel.com, 
 Jani Nikula <jani.nikula@linux.intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org
Subject: Re: [RFT] Revert "lockdep: Enable PROVE_RAW_LOCK_NESTING with
 PROVE_LOCKING."
Message-ID: <c5r46che35oqieotvytdfj2utelhtidnbjgyfijfik64mtgmlt@6mi42dmtz2wh>
References: <20241209135602.2716023-1-luciano.coelho@intel.com>
 <djny2tqz7mck5omsadowtn7flnegizoxgmpymyyfr3gvw4x7vf@67pbgkqftwxf>
 <Z1jG53Hy0PZKdJG2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z1jG53Hy0PZKdJG2@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+Peter and Thomas, for question below about the use of raw_spinlock_t in perf

[ Note that the patch by itself is not proposing this revert to be merged in
   any tree going to Linus - that would just shoot the messenger - it's
   just a temporary stop gap to get our CI running again. Below I'm
   looking for a real solution... ]

On Tue, Dec 10, 2024 at 05:55:35PM -0500, Rodrigo Vivi wrote:
>On Tue, Dec 10, 2024 at 09:00:13AM -0800, Lucas De Marchi wrote:
>> On Mon, Dec 09, 2024 at 03:53:51PM +0200, Luca Coelho wrote:
>> > This reverts commit 560af5dc839eef08a273908f390cfefefb82aa04.
>> >
>> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
>> > ---
>> >
>> > It seems that we have a few issues with this configuration in xe and
>> > in i915.  Let's try to revert it to see if the problems we're seeing
>> > go away.
>> >
>> > Note, these are _real_ issues, but only if CONFIG_RT is enabled, so the actual issues need to be solved properly, but we can revert this change until then, to avoid regressions.
>>
>> +Jani Nikula, +Rodrigo
>>
>> I'm thinking about landing this in topic/core-for-CI.  It seems we have
>> quite a few locks to revisit - we are taking spinlocks while holding
>> raw_spinlocks and until now there's no warning about this bug.
>
>could you point to one case? I don't see us using the raw_spinlocks...

main entrypoint is perf pmu. All these purple results:
https://intel-gfx-ci.01.org/tree/drm-tip/shards-all.html?testfilter=perf

Example:

<4> [96.732915] =============================
<4> [96.732950] [ BUG: Invalid wait context ]
<4> [96.732982] 6.13.0-rc2-CI_DRM_15816-g2223c2c738ec+ #1 Not tainted
<4> [96.733026] -----------------------------
<4> [96.733056] swapper/0/0 is trying to lock:
<4> [96.733088] ffff888129513910 (&pmu->lock){....}-{3:3}, at: i915_pmu_enable+0x48/0x3a0 [i915]
<4> [96.733485] other info that might help us debug this:
<4> [96.733536] context-{5:5}
<4> [96.733565] 1 lock held by swapper/0/0:
<4> [96.733606]  #0: ffff88885f432038 (&cpuctx_lock){....}-{2:2}, at: __perf_install_in_context+0x3f/0x360
<4> [96.733710] stack backtrace:
<4> [96.733742] CPU: 0 UID: 0 PID: 0 Comm: swapper/0 Not tainted 6.13.0-rc2-CI_DRM_15816-g2223c2c738ec+ #1
<4> [96.733841] Hardware name: Intel Corporation Meteor Lake Client Platform/MTL-P LP5x T3 RVP, BIOS MTLPFWI1.R00.3471.D91.2401310918 01/31/2024
<4> [96.733971] Call Trace:
<4> [96.734002]  <TASK>
<4> [96.734029]  dump_stack_lvl+0x91/0xf0
<4> [96.734078]  dump_stack+0x10/0x20
<4> [96.734118]  __lock_acquire+0x990/0x2820
<4> [96.734177]  lock_acquire+0xc9/0x300
<4> [96.734222]  ? i915_pmu_enable+0x48/0x3a0 [i915]
<4> [96.734533]  _raw_spin_lock_irqsave+0x49/0x80
<4> [96.734568]  ? i915_pmu_enable+0x48/0x3a0 [i915]
<4> [96.734800]  i915_pmu_enable+0x48/0x3a0 [i915]
<4> [96.735031]  i915_pmu_event_add+0x71/0x90 [i915]

I started converting the pmu->lock innside i915_pmu.c. I´t be great if
it was only that, but it's clear it's not sufficient. I tried to move a few locks
around to avoid having to convert uncore->lock, but ultimately couldn't avoid
it, which leads to converting a few more. So far:

	raw_spin_lock_init(&guc->timestamp.lock);
	raw_spin_lock_init(&pmu->lock);
	raw_spin_lock_init(&i915->mmio_debug.lock);
	raw_spin_lock_init(&uncore->lock);

And it's still not sufficient, because intel_ref_tracker tries to
allocate while holding one of those and I'm not confident on making that
pass GFP_ATOMIC. Maybe that allocation could be moved to init, but I ran out
of time for this and will try again later.

[  204.706501] swapper/0/0 is trying to lock:
[  204.710565] ffff88810005ead8 (&n->list_lock){-.-.}-{3:3}, at: get_partial_node.part.0+0x27/0x3a0
[  204.719278] other info that might help us debug this:
[  204.724285] context-{5:5}
[  204.726891] 2 locks held by swapper/0/0:
[  204.730785]  #0: ffff88888cc32038 (&cpuctx_lock){....}-{2:2}, at: __perf_install_in_context+0x3f/0x360
[  204.739995]  #1: ffff88815265cf40 (&guc->timestamp.lock){....}-{2:2}, at: guc_engine_busyness+0x45/0x2c0 [i915]
[  204.750171] stack backtrace:
[  204.753038] CPU: 0 UID: 0 PID: 0 Comm: swapper/0 Tainted: G     U             6.13.0-rc2-xe+ #13
[  204.761729] Tainted: [U]=USER
[  204.764678] Hardware name: Intel Corporation Raptor Lake Client Platform/RPL-S ADP-S DDR5 UDIMM CRB, BIOS RPLSFWI1.R00.5045.A00.2401260733 01/26/2024
[  204.777913] Call Trace:
[  204.780355]  <TASK>
[  204.782450]  dump_stack_lvl+0x91/0xf0
[  204.786090]  dump_stack+0x10/0x20
[  204.789383]  __lock_acquire+0x990/0x2820
[  204.793276]  ? lock_acquire+0x29c/0x300
[  204.797088]  lock_acquire+0xc9/0x300
[  204.800642]  ? get_partial_node.part.0+0x27/0x3a0
[  204.805310]  _raw_spin_lock_irqsave+0x49/0x80
[  204.809635]  ? get_partial_node.part.0+0x27/0x3a0
[  204.814302]  get_partial_node.part.0+0x27/0x3a0
[  204.818794]  ___slab_alloc+0x792/0x12f0
[  204.822600]  ? ref_tracker_alloc+0xd7/0x270
[  204.826754]  ? __lock_acquire+0x11a1/0x2820
[  204.830906]  ? ref_tracker_alloc+0xd7/0x270
[  204.835058]  __kmalloc_cache_noprof+0x277/0x480
[  204.839554]  ? __kmalloc_cache_noprof+0x277/0x480
[  204.844221]  ref_tracker_alloc+0xd7/0x270
[  204.848206]  ? ref_tracker_alloc+0xd7/0x270
[  204.852357]  guc_engine_busyness+0x122/0x2c0 [i915]


>
>>
>> It's a real problem only for PREEMPT_RT since otherwise there's
>> no difference between the 2 lock types. However fixing this may involve
>> quite a few changes: if we convert the lock to raw we may need to
>> cascade the conversions to additional locks.  The ones I identified are:
>> pmu->lock, which would also need to have uncore->lock converted, which
>> would then probably cascade to quite a few others :-/. I'm not sure
>> converting uncore->lock will actually be a good thing.
>
>hmm raw_spinlocks for the lowlevel might not be a bad idea, but perhaps
>we need to convert the other way around the upper levels?

that would mean:

<4> [96.733606]  #0: ffff88885f432038 (&cpuctx_lock){....}-{2:2}, at: __perf_install_in_context+0x3f/0x360

so inside the perf event infra, that has been using raw_spinlock_t
since forever. I'm surprised we got this only 10 years later :-/.
I don't think perf can sleep in that context, but Cc'ing a few people
and lkml for that question.

thanks
Lucas De Marchi

>
>>
>> I will keep digging.
>
>Ack on getting this to topic/core-for-CI so we don't block our
>CI while we investigate and fix this.
>
>Thanks,
>Rodrigo.
>
>>
>>
>> Lucas De Marchi
>>
>>
>> >
>> >
>> > lib/Kconfig.debug | 12 ++++++++++--
>> > 1 file changed, 10 insertions(+), 2 deletions(-)
>> >
>> > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
>> > index f3d723705879..de4ffe09323b 100644
>> > --- a/lib/Kconfig.debug
>> > +++ b/lib/Kconfig.debug
>> > @@ -1397,14 +1397,22 @@ config PROVE_LOCKING
>> > 	 For more details, see Documentation/locking/lockdep-design.rst.
>> >
>> > config PROVE_RAW_LOCK_NESTING
>> > -	bool
>> > +	bool "Enable raw_spinlock - spinlock nesting checks"
>> > 	depends on PROVE_LOCKING
>> > -	default y
>> > +	default n
>> > 	help
>> > 	 Enable the raw_spinlock vs. spinlock nesting checks which ensure
>> > 	 that the lock nesting rules for PREEMPT_RT enabled kernels are
>> > 	 not violated.
>> >
>> > +	 NOTE: There are known nesting problems. So if you enable this
>> > +	 option expect lockdep splats until these problems have been fully
>> > +	 addressed which is work in progress. This config switch allows to
>> > +	 identify and analyze these problems. It will be removed and the
>> > +	 check permanently enabled once the main issues have been fixed.
>> > +
>> > +	 If unsure, select N.
>> > +
>> > config LOCK_STAT
>> > 	bool "Lock usage statistics"
>> > 	depends on DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT
>> > --
>> > 2.45.2
>> >
