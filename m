Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E946614A5E4
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 15:20:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE3F46E507;
	Mon, 27 Jan 2020 14:20:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E095E6E506
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 14:20:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20023327-1500050 for multiple; Mon, 27 Jan 2020 14:20:24 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200126102346.1877661-1-chris@chris-wilson.co.uk>
 <20200126102346.1877661-2-chris@chris-wilson.co.uk>
 <6ca9947e-e4ec-5d0b-86b7-df03f9f0646f@linux.intel.com>
In-Reply-To: <6ca9947e-e4ec-5d0b-86b7-df03f9f0646f@linux.intel.com>
Message-ID: <158013482195.25356.13240595860114309859@skylake-alporthouse-com>
Date: Mon, 27 Jan 2020 14:20:21 +0000
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Check current
 i915_vma.pin_count status first on unbind
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

Quoting Tvrtko Ursulin (2020-01-27 14:15:57)
> 
> On 26/01/2020 10:23, Chris Wilson wrote:
> > Do an early rejection of a i915_vma_unbind() attempt if the i915_vma is
> > currently pinned, without waiting to see if the inflight operations may
> > unpin it. We see this problem with the shrinker trying to unbind the
> > active vma from inside its bind worker:
> 
> What is the actual problem? flush_work from a worker?

We hit the shrinker from the inside the worker (which is intended). But
what is not intended is for the shrinker to wait on any of the workers,
because of the potential recursion of waiting on one's self. The
intention was that we avoid the shrinker waiting on the vma by keeping
the vma pinned... But I only pinned the pages to prevent them being
freed and not the worker to prevent the recursive wait.

Heh.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
