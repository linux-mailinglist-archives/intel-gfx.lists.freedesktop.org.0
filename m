Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D26223B8E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 14:45:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7858B6ED9D;
	Fri, 17 Jul 2020 12:45:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4ECC6EC74
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 12:45:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21849713-1500050 for multiple; Fri, 17 Jul 2020 13:45:34 +0100
MIME-Version: 1.0
In-Reply-To: <173d852e-045a-86aa-a030-4bf564bcd6b3@linux.intel.com>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-6-chris@chris-wilson.co.uk>
 <173d852e-045a-86aa-a030-4bf564bcd6b3@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jul 2020 13:45:34 +0100
Message-ID: <159498993456.13677.10695414817035509543@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 06/66] drm/i915: Export a preallocate
 variant of i915_active_acquire()
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

Quoting Tvrtko Ursulin (2020-07-17 13:21:54)
> 
> On 15/07/2020 12:50, Chris Wilson wrote:
> > Sometimes we have to be very careful not to allocate underneath a mutex
> > (or spinlock) and yet still want to track activity. Enter
> > i915_active_acquire_for_context(). This raises the activity counter on
> > i915_active prior to use and ensures that the fence-tree contains a slot
> > for the context.
> 
> Changelog?

"Time spent with perf trying to reduce holdtime of certain mutexes we
will introduce, in particular focusing on reducing the number of atomics
required for typical i915_active lookups"
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
