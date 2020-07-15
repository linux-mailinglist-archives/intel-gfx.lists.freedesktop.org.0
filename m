Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A92DB221500
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 21:22:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 404156EC04;
	Wed, 15 Jul 2020 19:22:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC2086EC04
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 19:22:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21831549-1500050 for multiple; Wed, 15 Jul 2020 20:22:32 +0100
MIME-Version: 1.0
In-Reply-To: <20200710171001.22935-1-chris@chris-wilson.co.uk>
References: <20200710171001.22935-1-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 20:22:30 +0100
Message-ID: <159484095075.16997.265160492940569086@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Be wary of data races when
 reading the active execlists
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

Quoting Chris Wilson (2020-07-10 18:10:01)
> [ 1413.563200] BUG: KCSAN: data-race in __await_execution+0x217/0x370 [i915]
> [ 1413.563221]
> [ 1413.563236] race at unknown origin, with read to 0xffff88885bb6c478 of 8 bytes by task 9654 on cpu 1:
> [ 1413.563548]  __await_execution+0x217/0x370 [i915]
> [ 1413.563891]  i915_request_await_dma_fence+0x4eb/0x6a0 [i915]
> [ 1413.564235]  i915_request_await_object+0x421/0x490 [i915]
> [ 1413.564577]  i915_gem_do_execbuffer+0x29b7/0x3c40 [i915]
> [ 1413.564967]  i915_gem_execbuffer2_ioctl+0x22f/0x5c0 [i915]
> [ 1413.564998]  drm_ioctl_kernel+0x156/0x1b0
> [ 1413.565022]  drm_ioctl+0x2ff/0x480
> [ 1413.565046]  __x64_sys_ioctl+0x87/0xd0
> [ 1413.565069]  do_syscall_64+0x4d/0x80
> [ 1413.565094]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> 
> To complicate matters, we have to both avoid the read tearing of *active
> and avoid any write tearing as perform the pending[] -> inflight[]
> promotion of the execlists.
> 
> Fixes: b55230e5e800 ("drm/i915: Check for awaits on still currently executing requests")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

KCSAN reminds me this is still possible.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
