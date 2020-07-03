Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4123021378F
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 11:24:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85EBD6E1F4;
	Fri,  3 Jul 2020 09:23:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 260606EB4D
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 09:23:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21700353-1500050 for multiple; Fri, 03 Jul 2020 10:23:51 +0100
MIME-Version: 1.0
In-Reply-To: <a49d63ff-a713-215a-303a-89a92cb9503f@linux.intel.com>
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
 <20200702083225.20044-11-chris@chris-wilson.co.uk>
 <a49d63ff-a713-215a-303a-89a92cb9503f@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 03 Jul 2020 10:23:53 +0100
Message-ID: <159376823303.22925.15261498397238764100@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 11/23] drm/i915/gem: Remove the call for
 no-evict i915_vma_pin
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

Quoting Tvrtko Ursulin (2020-07-03 09:59:01)
> 
> On 02/07/2020 09:32, Chris Wilson wrote:
> > Remove the stub i915_vma_pin() used for incrementally pining objects for
> > execbuf (under the severe restriction that they must not wait on a
> > resource as we may have already pinned it) and replace it with a
> > i915_vma_pin_inplace() that is only allowed to reclaim the currently
> > bound location for the vma (and will never wait for a pinned resource).
> 
> Hm I thought the point of the previous patch ("drm/i915/gem: Break apart 
> the early i915_vma_pin from execbuf object lookup") was to move the 
> pinning into a phase under the ww lock, where it will be allowed. I 
> misunderstood something?

Still different locks, and the vm->mutex is still being used for managing
the iova assignments.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
