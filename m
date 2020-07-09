Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F4E219E73
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 12:58:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D6D76E04B;
	Thu,  9 Jul 2020 10:58:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A577C6E04B
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 10:58:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21763747-1500050 for multiple; Thu, 09 Jul 2020 11:58:02 +0100
MIME-Version: 1.0
In-Reply-To: <db44ae52-dad5-78c9-bae5-2b9805db4790@linux.intel.com>
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-4-chris@chris-wilson.co.uk>
 <846580f3-4dd4-ed0e-b461-010d7b0ae6be@linux.intel.com>
 <159423173830.30287.17971074477427255070@build.alporthouse.com>
 <db44ae52-dad5-78c9-bae5-2b9805db4790@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 09 Jul 2020 11:57:59 +0100
Message-ID: <159429227972.22162.3283964649173247110@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 03/20] drm/i915/gem: Don't drop the timeline
 lock during execbuf
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

Quoting Tvrtko Ursulin (2020-07-09 11:52:19)
> 
> On 08/07/2020 19:08, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-07-08 17:54:51)
> >>
> >> On 06/07/2020 07:19, Chris Wilson wrote:
> >>> +static struct i915_request *
> >>> +nested_request_create(struct intel_context *ce)
> >>> +{
> >>> +     struct i915_request *rq;
> >>> +
> >>> +     /* XXX This only works once; replace with shared timeline */
> >>
> >> Once as in attempt to use the same local intel_context from another eb
> >> would upset lockdep? It's not a problem I think.
> > 
> > "Once" as in this is the only time we can do this nested locking between
> > engines of the same context in the whole driver, or else lockdep would
> > have been right to complain. [i.e. if we ever do the reserve nesting, we
> > are screwed.]
> > 
> > Fwiw, I have posted patches that will eliminate the need for a nested
> > timeline here :)
> 
> In this series or just on the mailing list?

It's the implement a ring-scheduler for gen6 series, which is currently
sitting at the end of the vdeadline scheduler series.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
