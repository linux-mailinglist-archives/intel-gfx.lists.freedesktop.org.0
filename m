Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9FA2B629F
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 14:30:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A56ED6E1F3;
	Tue, 17 Nov 2020 13:30:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B2EA6E1F3
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 13:30:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23018169-1500050 for multiple; Tue, 17 Nov 2020 13:30:37 +0000
MIME-Version: 1.0
In-Reply-To: <c13730da-a33f-a0e5-6af3-36e15f8c2254@linux.intel.com>
References: <20201117113103.21480-1-chris@chris-wilson.co.uk>
 <20201117113103.21480-10-chris@chris-wilson.co.uk>
 <c13730da-a33f-a0e5-6af3-36e15f8c2254@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 13:30:39 +0000
Message-ID: <160561983933.22621.18353884936058708051@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 10/28] drm/i915: Show timeline dependencies
 for debug
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

Quoting Tvrtko Ursulin (2020-11-17 13:06:22)
> 
> On 17/11/2020 11:30, Chris Wilson wrote:
> > From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > 
> > Include the signalers each request in the timeline is waiting on, as a
> > means to try and identify the cause of a stall. This can be quite
> > verbose, even as for now we only show each request in the timeline and
> > its immediate antecedents.
> > 
> > This generates output like:
> > 
> > Timeline 886: { count 1, ready: 0, inflight: 0, seqno: { current: 664, last: 666 }, engine: rcs0 }
> 
> Applies to earlier patch:
> 
> I am still tempted to suggest replacing "current: %d, last: %d" with 
> "seqno: %d/%d" for compactness and which is still completely intuitive 
> to me.
> 
> And maybe instead of "engine: %s" just append the engine name direct as tag.
> 
> But up to you.

I trying to indoctrinate myself into using yaml for info dumps. With the
end goal being all the major files being yaml

> >    U 886:29a-  prio=0 @ 134ms: gem_exec_parall<4621>
> >    - U bc1:27a-  prio=0 @ 134ms: gem_exec_parall[4917]

And this admittedly is not yaml. A long way to go before it is second
nature.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
