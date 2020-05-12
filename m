Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8476D1CF2E1
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 12:51:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC2BD6E0CE;
	Tue, 12 May 2020 10:51:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D30D66E0CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 10:51:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21171647-1500050 for multiple; Tue, 12 May 2020 11:51:24 +0100
MIME-Version: 1.0
In-Reply-To: <87lflx309o.fsf@gaia.fi.intel.com>
References: <20200509115217.26853-1-chris@chris-wilson.co.uk>
 <87lflx309o.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158928068371.21674.17585538612679770949@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 12 May 2020 11:51:23 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Watch out for idling during
 i915_gem_evict_something
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

Quoting Mika Kuoppala (2020-05-12 11:39:31)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > i915_gem_evict_something() is charged with finding a slot within the GTT
> > that we may reuse. Since our goal is not to stall, we first look for a
> > slot that only overlaps idle vma. To this end, on the first pass we move
> > any active vma to the end of the search list. However, we only stopped
> > moving active vma after we see the first active vma twice. If during the
> > search, that first active vma completed, we would not notice and keep on
> > extending the search list.
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1746
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Cc: <stable@vger.kernel.org> # v5.5+
> 
> Only thing I would change is tune up the subject line.
> It fixes a possible busy loop in eviction so I feel 'watch out' is not
> strong enough for my liking.

Duck and cover for the idling is a-coming!
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
