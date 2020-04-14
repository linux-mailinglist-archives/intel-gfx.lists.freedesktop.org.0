Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D38521A851F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 18:36:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FC2E6E10F;
	Tue, 14 Apr 2020 16:36:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DC946E10F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 16:36:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20898028-1500050 for multiple; Tue, 14 Apr 2020 17:35:27 +0100
MIME-Version: 1.0
In-Reply-To: <20200414161423.23830-2-chris@chris-wilson.co.uk>
References: <20200414161423.23830-1-chris@chris-wilson.co.uk>
 <20200414161423.23830-2-chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158688212611.24667.7132327074792389398@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 14 Apr 2020 17:35:26 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Shrink the RPS evalution
 intervals
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-04-14 17:14:23)
> Try to make RPS dramatically more responsive by shrinking the evaluation
> intervales by a factor of 100! The issue is as we now park the GPU
> rapidly upon idling, a short or bursty workload such as the composited
> desktop never sustains enough work to fill and complete an evaluation
> window. As such, the frequency we program remains stuck. This was first
> reported as once boosted, we never relinquished the boost [see commit
> 21abf0bf168d ("drm/i915/gt: Treat idling as a RPS downclock event")] but
> it equally applies in the order direction for bursty workloads that
> *need* low latency, like desktop animations.
> 
> What we could try is preserve the incomplete EI history across idling,
> it is not clear whether that would be effective, nor whether the
> presumption of continuous workloads is accurate. A clearer path seems to
> treat it as symptomatic that we fail to handle bursty workload with the
> current EI, and seek to address that by shrinking the EI so the
> evaluations are run much more often.
> 
> This will likely entail more frequent interrupts, and by the time we
> process the interrupt in the bottom half [from inside a worker], the
> workload on the GPU has changed. To address the changeable nature, in
> the previous patch we compared the previous complete EI with the
> interrupt request and only up/down clock if both agree. The impact of
> asking for, and presumably, receiving more interrupts is still to be
> determined and mitigations sought. The first idea is to differentiate
> between up/down responsivity and make upclocking more responsive than
> downlocking. This should both help thwart jitter on bursty workloads by
> making it easier to increase than it is to decrease frequencies, and
> reduce the number of interrupts we would need to process.

Another worry I'd like to raise, is that by reducing the EI we risk
unstable evaluations. I'm not sure how accurate the HW is, and I worry
about borderline workloads (if that is possible) but mainly the worry is
how the HW is sampling.

The other unmentioned unknown is the latency in reprogramming the
frequency. At what point does it start to become a significant factor?
I'm presuming the RPS evaluation itself is free, until it has to talk
across the chip to send an interrupt.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
