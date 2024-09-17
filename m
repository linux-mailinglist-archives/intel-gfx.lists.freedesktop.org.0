Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D47797AFD2
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 13:50:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 594DF10E164;
	Tue, 17 Sep 2024 11:50:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="BYufc599";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="0W9NCMyQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D6E710E164
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2024 11:50:29 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1726573826;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zNebPkkCATOz/8G2Ty+8PI8yqXvC2oGmbRAGfEPpIEQ=;
 b=BYufc599OW5+qnbK4980v4vs8tbQ87dmQIKHUIPm3bX0LdTh0yIimmqTGgpRF4pdPWiMQ/
 9atAPwy9bSVufVu+YVSgJRUcHYhyAZXzi70kAHjGnnew2XCIKo6bSYoarnmjAdCO8coEc+
 nGYLJhoqUfmAsEP1lx4eG7K9Ilf00dKu7Y4/Wv8fktbDVILaQe2r8tZhjww40k8cslhg0+
 vxwi/ZrPIiQuKFeSlDldo1u+YI/eJCpR28+wc0QfOP/DxCzgbjls4tyLRTIT1q6YwvvynM
 xzD5E20+n5g/hImN0kKjIE50A5ZLyfqcK3N4s46/l+BF23pdTEpg8rSLzjDZ/g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1726573826;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zNebPkkCATOz/8G2Ty+8PI8yqXvC2oGmbRAGfEPpIEQ=;
 b=0W9NCMyQ+egH0HM5V0+4TQQneA5B2GzQAI0DJcSHVUfp/Ie0VUkXoSOjbkPqE/A0+QEHRs
 mDGYjLCZ8ngz+7CA==
To: Will Deacon <will@kernel.org>, "Christoph Lameter (Ampere)" <cl@gentwo.org>
Cc: kernel test robot <lkp@intel.com>, Christoph Lameter via B4 Relay
 <devnull+cl.gentwo.org@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Peter Zijlstra <peterz@infradead.org>, Ingo
 Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>, Boqun Feng
 <boqun.feng@gmail.com>, oe-kbuild-all@lists.linux.dev, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-arch@vger.kernel.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v3] Avoid memory barrier in read_seqcount() through load
 acquire
In-Reply-To: <20240917073703.GB27290@willie-the-truck>
References: <20240912-seq_optimize-v3-1-8ee25e04dffa@gentwo.org>
 <202409132135.ki3Mp5EA-lkp@intel.com>
 <766fe92a-13da-f299-0ecf-f8a477d58a79@gentwo.org>
 <20240917073703.GB27290@willie-the-truck>
Date: Tue, 17 Sep 2024 13:50:25 +0200
Message-ID: <87r09i1ou6.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
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

Cc+ i915 people

On Tue, Sep 17 2024 at 08:37, Will Deacon wrote:
> On Mon, Sep 16, 2024 at 10:52:18AM -0700, Christoph Lameter (Ampere) wrote:
>> On Fri, 13 Sep 2024, kernel test robot wrote:
>> 
>> > >> drivers/gpu/drm/i915/gt/intel_tlb.h:21:47: error: macro "seqprop_sequence" requires 2 arguments, but only 1 given
>> 
>> From 15d86bc9589f16947c5fb0f34d2947eacd48f853 Mon Sep 17 00:00:00 2001
>> From: Christoph Lameter <cl@gentwo.org>
>> Date: Mon, 16 Sep 2024 10:44:16 -0700
>> Subject: [PATCH] Update Intel DRM use of seqprop_sequence
>> 
>> One of Intels drivers uses seqprop_sequence() for its tlb sequencing.
>> We added a parameter so that we can use acquire. Its pretty safe to
>> assume that this will work without acquire.
>>
>> Signed-off-by: Christoph Lameter <cl@linux.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_tlb.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.h b/drivers/gpu/drm/i915/gt/intel_tlb.h
>> index 337327af92ac..81998c4cd4fb 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_tlb.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_tlb.h
>> @@ -18,7 +18,7 @@ void intel_gt_fini_tlb(struct intel_gt *gt);
>> 
>>  static inline u32 intel_gt_tlb_seqno(const struct intel_gt *gt)
>>  {
>> -	return seqprop_sequence(&gt->tlb.seqno);
>> +	return seqprop_sequence(&gt->tlb.seqno, false);
>>  }
>
> Yikes, why is the driver using the seqlock internals here? It's a bit of
> a pity, as a quick grep suggest that this is the _only_ user of
> 'seqcount_mutex_t', yet it's still having to work around the API.

Why the hell can't i915 use the proper interfaces and has to bypass the
core code? Just because C allows that does not make it correct.

Can the i915 people please remove this blatant violation of layering?

Thanks,

        tglx

