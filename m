Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C63F424B03A
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 09:36:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEC816E8B4;
	Thu, 20 Aug 2020 07:36:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B176D6E8B4
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Aug 2020 07:36:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22181544-1500050 for multiple; Thu, 20 Aug 2020 08:36:13 +0100
MIME-Version: 1.0
In-Reply-To: <20200819193326.p62h2dj7jpzfkeyy@duo.ucw.cz>
References: <20200819103952.19083-1-chris@chris-wilson.co.uk>
 <20200819172331.GA4796@amd>
 <159785861047.667.10730572472834322633@build.alporthouse.com>
 <20200819193326.p62h2dj7jpzfkeyy@duo.ucw.cz>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Pavel Machek <pavel@ucw.cz>
Date: Thu, 20 Aug 2020 08:36:11 +0100
Message-ID: <159790897155.667.4491040035549523476@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gem: Replace reloc chain with
 terminator on error unwind
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Pavel Machek (2020-08-19 20:33:26)
> Hi!
> 
> > > > If we hit an error during construction of the reloc chain, we need to
> > > > replace the chain into the next batch with the terminator so that upon
> > > > flushing the relocations so far, we do not execute a hanging batch.
> > > 
> > > Thanks for the patches. I assume this should fix problem from
> > > "5.9-rc1: graphics regression moved from -next to mainline" thread.
> > > 
> > > I have applied them over current -next, and my machine seems to be
> > > working so far (but uptime is less than 30 minutes).
> > > 
> > > If the machine still works tommorow, I'll assume problem is solved.
> > 
> > Aye, best wait until we have to start competing with Chromium for
> > memory... The suspicion is that it was the resource allocation failure
> > path.
> 
> Yep, my machines are low on memory.
> 
> But ... test did not work that well. I have dead X and blinking
> screen. Machine still works reasonably well over ssh, so I guess
> that's an improvement.

Well my last remaining 32bit gen3 device is currently pushing up the
daises, so could you try removing the attempt to use WC? Something like

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 44df98d85b38..b26f7de913c3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -955,10 +955,7 @@ static u32 *__reloc_gpu_map(struct reloc_cache *cache,
 {
        u32 *map;

-       map = i915_gem_object_pin_map(pool->obj,
-                                     cache->has_llc ?
-                                     I915_MAP_FORCE_WB :
-                                     I915_MAP_FORCE_WC);
+       map = i915_gem_object_pin_map(pool->obj, I915_MAP_FORCE_WB);

on top of the previous patch. Faultinjection didn't turn up anything in
eb_relocate_vma, so we need to dig deeper.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
