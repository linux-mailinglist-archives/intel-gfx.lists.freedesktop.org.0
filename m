Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1602F22C4B7
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 14:06:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CC1E6E959;
	Fri, 24 Jul 2020 12:06:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 552EC6E959
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 12:06:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21918512-1500050 for multiple; Fri, 24 Jul 2020 13:06:16 +0100
MIME-Version: 1.0
In-Reply-To: <87tuxx1610.fsf@gaia.fi.intel.com>
References: <20200723183348.4037-1-chris@chris-wilson.co.uk>
 <159552931718.21069.13813749151778428706@build.alporthouse.com>
 <87tuxx1610.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jul 2020 13:06:15 +0100
Message-ID: <159559237550.21069.11909922893997723896@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Delay tracking the GEM
 context until it is registered
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

Quoting Mika Kuoppala (2020-07-24 12:55:39)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Quoting Chris Wilson (2020-07-23 19:33:48)
> >> Avoid exposing a partially constructed context by deferring the
> >> list_add() from the initial construction to the end of registration.
> >> Otherwise, if we peek into the list of contexts from inside debugfs, we
> >> may see the partially constructed context and change down some dangling
> >
> > s/change/chase/
> 
> that.
> 
> Are you sure about the fixes as it is not the commit that
> actually introduces the registration into context.list?
> 
> For me it looks like it is a4e7ccdac38e.

The one I picked was where we started adding more context setup after
the final step of list_add in __create_context(). More apropos would be
3aa9945a528e ("drm/i915: Separate GEM context construction and registration to userspace")
in the same kernel.

In the other direction, we have
f6e8aa387171 ("drm/i915: Report the number of closed vma held by each context in debugfs")
where we start using the contexts.list in debugfs.

In a4e7ccdac38e we are only moving the list_add(&ctx->link) around in
__create_context().
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
