Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD1916742A
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 09:22:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0754B6EEB3;
	Fri, 21 Feb 2020 08:22:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 377416E22A;
 Fri, 21 Feb 2020 08:22:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20297579-1500050 for multiple; Fri, 21 Feb 2020 08:21:59 +0000
MIME-Version: 1.0
To: Martin Peres <martin.peres@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <023b88f4-7b98-a376-aee1-db09cec21a98@linux.intel.com>
References: <20200220174155.2162242-1-chris@chris-wilson.co.uk>
 <023b88f4-7b98-a376-aee1-db09cec21a98@linux.intel.com>
Message-ID: <158227331733.3099.1298656919493160116@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 21 Feb 2020 08:21:57 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/i915_pm_rpm: Only check for
 suspend failures after each debugfs entry
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Martin Peres (2020-02-21 07:33:59)
> On 2020-02-20 19:41, Chris Wilson wrote:
> > Since we check before and then after each debugfs entry, we do not need
> > to check before each time as well. We will error out as soon as it does
> > fail, at all other times we know the system to be idle.
> > 
> > No impact on runtime for glk (which apparently is one of the better
> > behaving systems).
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Martin Peres <martin.peres@linux.intel.com>
> 
> I don't like this patch because the first read might not have the gpu
> suspended, and there shouldn't be much overhead in checking twice rather
> than once.
> 
> What's your rationale here?

We always do a check before after each file. We start in a known state,
and expect to be able to return to that suspended state, and the _real_
guts of the test is that any device access is accounted for.

assert(suspended) would be a better check for non-interference.
 
> To me, the issue is that some platforms suspend in milliseconds while
> some take seconds, and that might be indicative a real bug in the driver.

Exactly.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
