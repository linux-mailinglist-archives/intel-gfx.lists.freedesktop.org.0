Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 927A1191678
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 17:32:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99FC06E180;
	Tue, 24 Mar 2020 16:32:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E92E46E180
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 16:32:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20677464-1500050 for multiple; Tue, 24 Mar 2020 16:32:23 +0000
MIME-Version: 1.0
In-Reply-To: <3bcb551d-2c11-6dbd-cc4b-b60c9a79f6b1@linux.intel.com>
References: <20200324120718.977-1-chris@chris-wilson.co.uk>
 <3bcb551d-2c11-6dbd-cc4b-b60c9a79f6b1@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158506754411.27678.10513135841997409821@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 24 Mar 2020 16:32:24 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/execlists: Pull tasklet
 interrupt-bh local to direct submission
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-03-24 16:11:10)
> 
> On 24/03/2020 12:07, Chris Wilson wrote:
> > We dropped calling process_csb prior to handling direct submission in
> > order to avoid the nesting of spinlocks and lift process_csb() and the
> > majority of the tasklet out of irq-off. However, we do want to avoid
> > ksoftirqd latency in the fast path, so try and pull the interrupt-bh
> > local to direct submission if we can acquire the tasklet's lock.
> 
> Oh and important question - who benefits and how much?

Anything that doesn't want to be deferred to a tasklet like wsim, where
it helps fix a small regression in tip. That and avoiding the worker
where we didn't use to have one. Did not see a difference in syslatency,
so that's still a bone of contention for direction submission.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
