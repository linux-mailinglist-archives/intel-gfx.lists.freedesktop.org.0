Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 296821CC11B
	for <lists+intel-gfx@lfdr.de>; Sat,  9 May 2020 14:02:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 495926E02C;
	Sat,  9 May 2020 12:02:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CD3A6E02C
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 May 2020 12:02:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21147788-1500050 for multiple; Sat, 09 May 2020 13:02:38 +0100
MIME-Version: 1.0
In-Reply-To: <20200509115217.26853-1-chris@chris-wilson.co.uk>
References: <20200509115217.26853-1-chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158902575439.20071.16532097686934470584@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Sat, 09 May 2020 13:02:34 +0100
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

Quoting Chris Wilson (2020-05-09 12:52:17)
> i915_gem_evict_something() is charged with finding a slot within the GTT
> that we may reuse. Since our goal is not to stall, we first look for a
> slot that only overlaps idle vma. To this end, on the first pass we move
> any active vma to the end of the search list. However, we only stopped
> moving active vma after we see the first active vma twice. If during the
> search, that first active vma completed, we would not notice and keep on
> extending the search list.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1746

Fixes: 2850748ef876 ("drm/i915: Pull i915_vma_pin under the vm->mutex")
Fixes: b1e3177bd1d8 ("drm/i915: Coordinate i915_active with its own mutex")

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: <stable@vger.kernel.org> # v5.5+
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
