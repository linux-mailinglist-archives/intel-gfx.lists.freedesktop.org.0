Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E42A716A351
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 10:59:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02AA26E3B2;
	Mon, 24 Feb 2020 09:59:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FAA86E3A8;
 Mon, 24 Feb 2020 09:59:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20328964-1500050 for multiple; Mon, 24 Feb 2020 09:59:23 +0000
MIME-Version: 1.0
To: Martin Peres <martin.peres@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <efbae310-47f4-d774-ccac-31ee30a0f96b@linux.intel.com>
References: <20200220174155.2162242-1-chris@chris-wilson.co.uk>
 <20200221135620.2794706-1-chris@chris-wilson.co.uk>
 <efbae310-47f4-d774-ccac-31ee30a0f96b@linux.intel.com>
Message-ID: <158253836125.15220.2432972756647090698@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 24 Feb 2020 09:59:21 +0000
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

Quoting Martin Peres (2020-02-24 09:16:02)
> On 2020-02-21 15:56, Chris Wilson wrote:
> > Since we check before and then after each debugfs entry, we do not need
> > to check before each time as well. We will error out as soon as it does
> > fail, at all other times we know the system to be idle.
> > 
> > No impact on runtime for glk (which apparently is one of the better
> > behaving systems).
> > 
> > v2: Assert that we are currently suspended prior to opening the file,
> > i.e. that nothing else is waking up the device behind our backs.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Martin Peres <martin.peres@linux.intel.com>
> 
> This changes the purpose of this test, but checking that nothing is
> waking the driver in the background sound like a good test and could
> explain the terribly-slow runtime on some platforms!

Not really changing the underlying purpose, just removing the grace
window for the system to go to sleep by itself. If the system is waking
up behind our backs (hotplug? that we want to address and try to
capture).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
