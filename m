Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7839E1A7599
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 10:13:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 636F489CB3;
	Tue, 14 Apr 2020 08:13:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BBAA88E56;
 Tue, 14 Apr 2020 08:13:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20891787-1500050 for multiple; Tue, 14 Apr 2020 09:13:30 +0100
MIME-Version: 1.0
In-Reply-To: <20200407062622.6443-2-sultan@kerneltoast.com>
References: <20200407062622.6443-1-sultan@kerneltoast.com>
 <20200407062622.6443-2-sultan@kerneltoast.com>
To: Sultan Alsawaf <sultan@kerneltoast.com>, stable@vger.kernel.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158685200854.16269.9481176231557533815@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 14 Apr 2020 09:13:28 +0100
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Fix ref->mutex deadlock in
 i915_active_wait()
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Sultan Alsawaf <sultan@kerneltoast.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Sultan Alsawaf (2020-04-07 07:26:22)
> From: Sultan Alsawaf <sultan@kerneltoast.com>
> 
> The following deadlock exists in i915_active_wait() due to a double lock
> on ref->mutex (call chain listed in order from top to bottom):
>  i915_active_wait();
>  mutex_lock_interruptible(&ref->mutex); <-- ref->mutex first acquired
>  i915_active_request_retire();
>  node_retire();
>  active_retire();
>  mutex_lock_nested(&ref->mutex, SINGLE_DEPTH_NESTING); <-- DEADLOCK
> 
> Fix the deadlock by skipping the second ref->mutex lock when
> active_retire() is called through i915_active_request_retire().
> 
> Fixes: 12c255b5dad1 ("drm/i915: Provide an i915_active.acquire callback")
> Cc: <stable@vger.kernel.org> # 5.4.x
> Signed-off-by: Sultan Alsawaf <sultan@kerneltoast.com>

Incorrect. 

You missed that it cannot retire from inside the wait due to the active
reference held on the i915_active for the wait.

The only point it can enter retire from inside i915_active_wait() is via
the terminal __active_retire() which releases the mutex in doing so.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
