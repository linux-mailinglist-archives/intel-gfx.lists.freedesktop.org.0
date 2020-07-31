Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C7123485F
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 17:24:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25D906EAE2;
	Fri, 31 Jul 2020 15:24:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EBC86EAE2
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 15:24:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21995072-1500050 for multiple; Fri, 31 Jul 2020 16:24:06 +0100
MIME-Version: 1.0
In-Reply-To: <6c74e04f-cfc7-215c-50f0-2b5be8a0b6c6@linux.intel.com>
References: <20200730093756.16737-1-chris@chris-wilson.co.uk>
 <20200730093756.16737-18-chris@chris-wilson.co.uk>
 <6c74e04f-cfc7-215c-50f0-2b5be8a0b6c6@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jul 2020 16:24:05 +0100
Message-ID: <159620904517.21624.5715729661074588496@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 17/21] drm/i915/gt: Protect context lifetime
 with RCU
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
Cc: thomas.hellstrom@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-07-31 16:15:43)
> 
> On 30/07/2020 10:37, Chris Wilson wrote:
> > Allow a brief period for continued access to a dead intel_context by
> > deferring the release of the struct until after an RCU grace period.
> > As we are using a dedicated slab cache for the contexts, we can defer
> > the release of the slab pages via RCU, with the caveat that individual
> > structs may be reused from the freelist within an RCU grace period. To
> > handle that, we have to avoid clearing members of the zombie struct.
> 
> What was the motivation?

I wanted a window where the pointer was kept alive by RCU after we
called intel_context_put() so I could keep using spinlock for a bit.

If you look closely, you might spot that isn't used any more, but I
liked the ctor so kept it around.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
