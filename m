Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C4113F984
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 20:30:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E94386EE9F;
	Thu, 16 Jan 2020 19:30:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E61D06EE9F
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 19:30:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19907061-1500050 for multiple; Thu, 16 Jan 2020 19:30:16 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Brian Welty <brian.welty@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200116192047.22303-1-brian.welty@intel.com>
In-Reply-To: <20200116192047.22303-1-brian.welty@intel.com>
Message-ID: <157920301401.7612.15247641307789572716@skylake-alporthouse-com>
Date: Thu, 16 Jan 2020 19:30:14 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Make use of drm_gem_object_release
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

Quoting Brian Welty (2020-01-16 19:20:47)
> As i915 is using drm_gem_private_object_init, it is best to
> use the inverse function for cleanup: drm_gem_object_release.
> This removes need for a shmem_release and phys_release.
> 
> Signed-off-by: Brian Welty <brian.welty@intel.com>
> ---
> Chris, the cleanup sequence in drm_gem_object_release() vs the replaced
> i915 code is different, but should be okay?  Light testing didn't find
> any issues.

commit 0c159ffef628fa94d0f4f9128e7f2b6f2b5e86ef
Author: Chris Wilson <chris@chris-wilson.co.uk>
Date:   Wed Jul 3 19:06:01 2019 +0100

    drm/i915/gem: Defer obj->base.resv fini until RCU callback

    Since reservation_object_fini() does an immediate free, rather than
    kfree_rcu as normal, we have to delay the release until after the RCU
    grace period has elapsed (i.e. from the rcu cleanup callback) so that we
    can rely on the RCU protected access to the fences while the object is a
    zombie.

    i915_gem_busy_ioctl relies on having an RCU barrier to protect the
    reservation in order to avoid having to take a reference and strong
    memory barriers.

    v2: Order is important; only release after putting the pages!

    Fixes: c03467ba40f7 ("drm/i915/gem: Free pages before rcu-freeing the object
")
    Testcase: igt/gem_busy/close-race
    Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
    Cc: Matthew Auld <matthew.auld@intel.com>
    Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
    Link: https://patchwork.freedesktop.org/patch/msgid/20190703180601.10950-1-c
hris@chris-wilson.co.uk
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
