Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC761CD6ED
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 12:57:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 153186E029;
	Mon, 11 May 2020 10:57:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6BF76E029
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 10:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=NgxUJK4Gufs1lsI78fSnObijojqUBqcEKYBaQKCWPGk=; b=WMThPhoA7SSSDN8xnuHz+ITH8L
 1+akJTwEnAUroSL1OLxBQD8h9xLQ26kL43J/4NNjfz9p3CiW6hrF2uLPun6C8IiRgKpIYHTNVQDEN
 jZ1vLZ/0GmtfN/DuM3Uu1ZKh6Vl7eN83rnd7jT3Z5dBWfqxwioFtKfAGKC+2BE74ftSkO3aNAjm56
 Pkyv5BF8KB8N+93JReheYxMb/dUppB0XtfhBzds4XUMh0ucbev09clVyR3lQA1o3Wo0Jmr6LdajyV
 oeSAGh/VhqnPWKw1sz6WNEIZjungHWNllHGjKQJnH8P9uv4rwsXU8AlTSjq+um3ghfFqsOU8Pod9S
 Xl8nJVtg==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY67N-0003Oa-6s; Mon, 11 May 2020 10:57:05 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id D82EF3010C8;
 Mon, 11 May 2020 12:57:01 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 9E9EC200FC689; Mon, 11 May 2020 12:57:01 +0200 (CEST)
Date: Mon, 11 May 2020 12:57:01 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Francisco Jerez <currojerez@riseup.net>
Message-ID: <20200511105701.GA2940@hirez.programming.kicks-ass.net>
References: <20200428032258.2518-1-currojerez@riseup.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428032258.2518-1-currojerez@riseup.net>
Subject: Re: [Intel-gfx] [RFC] GPU-bound energy efficiency improvements for
 the intel_pstate driver (v2.99)
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
Cc: amit.kucheria@verdurent.com, linux-pm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, daniel.lezcano@linaro.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, chris.p.wilson@intel.com, "Pandruvada,
 Srinivas" <srinivas.pandruvada@intel.com>, rui.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 27, 2020 at 08:22:47PM -0700, Francisco Jerez wrote:
> This addresses the technical concerns people brought up about my
> previous v2 revision of this series.  Other than a few bug fixes, the
> only major change relative to v2 is that the controller is now exposed
> as a new CPUFREQ generic governor as requested by Rafael (named
> "adaptive" in this RFC though other naming suggestions are welcome).
> Main reason for calling this v2.99 rather than v3 is that I haven't
> yet addressed all the documentation requests from the v2 thread --
> Will spend some time doing that as soon as I have an ACK (ideally from
> Rafael) that things are moving in the right direction.
> 
> You can also find this series along with the WIP code for non-HWP
> platforms in this branch:
> 
> https://github.com/curro/linux/tree/intel_pstate-vlp-v2.99
> 
> Thanks!
> 
> [PATCHv2.99 01/11] PM: QoS: Add CPU_SCALING_RESPONSE global PM QoS limit.
> [PATCHv2.99 02/11] drm/i915: Adjust PM QoS scaling response frequency based on GPU load.
> [PATCHv2.99 03/11] OPTIONAL: drm/i915: Expose PM QoS control parameters via debugfs.
> [PATCHv2.99 04/11] cpufreq: Define ADAPTIVE frequency governor policy.
> [PATCHv2.99 05/11] cpufreq: intel_pstate: Reorder intel_pstate_clear_update_util_hook() and intel_pstate_set_update_util_hook().
> [PATCHv2.99 06/11] cpufreq: intel_pstate: Call intel_pstate_set_update_util_hook() once from the setpolicy hook.
> [PATCHv2.99 07/11] cpufreq: intel_pstate: Implement VLP controller statistics and target range calculation.
> [PATCHv2.99 08/11] cpufreq: intel_pstate: Implement VLP controller for HWP parts.
> [PATCHv2.99 09/11] cpufreq: intel_pstate: Enable VLP controller based on ACPI FADT profile and CPUID.
> [PATCHv2.99 10/11] OPTIONAL: cpufreq: intel_pstate: Add tracing of VLP controller status.
> [PATCHv2.99 11/11] OPTIONAL: cpufreq: intel_pstate: Expose VLP controller parameters via debugfs.

What I'm missing is an explanation for why this isn't using the
infrastructure that was build for these kinds of things? The thermal
framework, was AFAIU, supposed to help with these things, and the IPA
thing in particular is used by ARM to do exactly this GPU/CPU power
budget thing.

If thermal/IPA is found wanting, why aren't we improving that?

How much of that ADAPTIVE crud is actually intel_pstate specific? On a
(really) quick read it appears to me that much of the controller bits
there can be applied more generic, and thus should not be part of any
one governor.

Specifically, I want to use sched_util as cpufreq governor and use the
intel_pstate as a passive driver.


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
