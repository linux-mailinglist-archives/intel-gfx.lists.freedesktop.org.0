Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CDA745FE3
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jul 2023 17:30:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C13D10E230;
	Mon,  3 Jul 2023 15:30:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3CE510E220
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jul 2023 15:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688398207; x=1719934207;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=uyGwRS+nY7W/8//fBcX/32H/jEj3LS6U/pum37IbKPw=;
 b=ijkeHTvYNVn20SsYcMm4aZw3QCOCVCaR1YL9QZRaQ5OUoGYH/o1/E1c+
 HOUYy7c0Xcx3/HDUfbQBoMGOvImZHyr975PUKO3sYNZIR5FkyLMD27doT
 5ZFrx1LeUz0WJGkad40nYf52wMW3W9eGepUolCpIG8cgW7ZUHVq3moKgU
 UGtx8ade520nV7NYr6AUMdID1czj0dfU5IlGUTx/lW47O5EFvaHY8rkil
 NtxbkXmvqOUhIWEN3K+WcBNsAkRpNONZY6d2dlSOTAuaZsIZQ0qyiNjLw
 kvRpIuaTtAukqkt5eP2KMwUMCwtumzNGQYx4yS6hBxWlV6M/p3wWXcVi4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="366394169"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="366394169"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 08:30:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="892574979"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="892574979"
Received: from dryan13-mobl.ger.corp.intel.com (HELO [10.213.232.206])
 ([10.213.232.206])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 08:30:03 -0700
Message-ID: <5af9b5cb-2342-8de3-07f2-86f2be6201eb@linux.intel.com>
Date: Mon, 3 Jul 2023 16:30:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Paul Gortmaker <paul.gortmaker@windriver.com>
References: <20230630130949.coN0sVU4@linutronix.de>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230630130949.coN0sVU4@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
 Chris Wilson <chris@chris-wilson.co.uk>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi,

On 30/06/2023 14:09, Sebastian Andrzej Siewior wrote:
> On 2023-06-22 20:57:50 [-0400], Paul Gortmaker wrote:
> [ longer report about what is broken.]
> 
> Commit ade8a0f598443 ("drm/i915: Make all GPU resets atomic") introduces
> a preempt_disable() section around the invocation of the reset callback.
> I can't find an explanation why this is needed. There was a comment
> saying
> | * We want to perform per-engine reset from atomic context (e.g.
> | * softirq), which imposes the constraint that we cannot sleep.
> 
> but it does not state the problem with being preempted while waiting for
> the reset. The commit itself does not explain why an atomic reset is
> needed, it just states that it is a requirement now. On !RT we could
> pull packets from a NICs and forward them other NICs for 2ms.
> 
> I've been looking over the reset callbacks and gen8_reset_engines() +
> gen6_reset_engines() acquire a spinlock_t. Since this becomes a sleeping
> lock on PREEMPT_RT it must not be acquired with disabled preemption.
> i915_do_reset() acquires no lock but then has two udelay()s of 50us
> each. Not good latency wise in a preempt-off section.
> 
> Could someone please explain why atomic is needed during reset, what
> problems are introduced by a possible preemption?

Atomic requirement from that commit text is likely referring to removing 
the old big sleeping mutex we had in the reset path. So it looks 
plausible that preempt_disable() section is not strictly needed and 
perhaps motivation simply was, given those 20-50us polls on hw registers 
involved, to make them happen as fast as possible and so minimize visual 
glitching during resets.

Although that reasoning would only apply on some hw generations, where 
the irqsave spinlock is not held across the whole sequence anyway.

And I suspect those same platforms would be the annoying ones, if one 
simply wanted to try without the preempt_disable section, given our 
wait_for_atomic macro will complain loudly if not used from an atomic 
context.

But I think we do have a macro for short register waits which works with 
preempting enabled. I will try and cook up a patch and submit to our CI 
during the week, then see what happens.

Or even moving the preempt_disable down so it just encompasses the 
register write + wait. That would then be under the spinlock which is 
presumable okay on RT? (Yes I know it wouldn't' solve one half of your 
"complaint" but lets just entertain the idea for now.)

Regards,

Tvrtko
