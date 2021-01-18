Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A78002F9D74
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 12:03:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E52089F71;
	Mon, 18 Jan 2021 11:03:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1924488A36
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 11:03:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23627219-1500050 for multiple; Mon, 18 Jan 2021 11:03:52 +0000
MIME-Version: 1.0
In-Reply-To: <cd9e2de0-8aee-68f8-43df-1ad381faa386@linux.intel.com>
References: <20210115130519.11230-1-chris@chris-wilson.co.uk>
 <cd9e2de0-8aee-68f8-43df-1ad381faa386@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 18 Jan 2021 11:03:51 +0000
Message-ID: <161096783113.27171.18226922433621597311@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gem: Use GEM context tracking
 for i915_gem_objects
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, stable@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2021-01-18 10:38:23)
> 
> On 15/01/2021 13:05, Chris Wilson wrote:
> > Rather than take an indirect jump to the drm midlayer (that introduces a
> > use-after-free in reading the ctx->file backpointer) to find all the vma
> > on objects associated with the ctx->file, walk the LUT table stored in
> > the context that tracks all the objects in use with the context.
> > 
> > The improper serialisation with device closure resulting in a
> > use-after-free is a much older issue, we have also introduced a new
> > incorrect list iteration due to commit a4e7ccdac38e ("drm/i915: Move
> > context management under GEM") as the link is no longer guarded by the
> > context's reference context.
> > 
> > Fixes: a4e7ccdac38e ("drm/i915: Move context management under GEM")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Cc: CQ Tang <cq.tang@intel.com>
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Cc: stable@kernel.org
> 
> Not sure it needs to go to stable since it is only debugfs after all.

I know, but chromeos keeps on hitting bugs in i915_gem_objects.
A quick google only shows the debug capture. Ah, it appeared (once upon
a time, at least) in chrome://system!

> Also, even though it looks fine, given how it is replacing one a bit 
> confusing dump with another, do we really need this data or we could 
> remove it just as well?

I thought per-client was useful at the time, and the overlay tries to
parse it to get the allocations in each context. But that is some
information that I've never focused on and it's utility is
underdeveloped. The binding event tracepoints were more interesting
than overall consumption.

There is a certain appeal to removing it. That would leave just the
number of shrinkable objects being reported.

I think for the moment I'd like to keep client info in there, but I'll
float the alternative patch to remove it for discussion.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
