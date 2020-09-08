Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA13262298
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Sep 2020 00:23:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36A7C6E083;
	Tue,  8 Sep 2020 22:23:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 437D06E083
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 22:23:23 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 316341C0B87; Wed,  9 Sep 2020 00:23:19 +0200 (CEST)
Date: Wed, 9 Sep 2020 00:23:18 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200908222318.GD1005@bug>
References: <20200819103952.19083-1-chris@chris-wilson.co.uk>
 <20200819172331.GA4796@amd>
 <159785861047.667.10730572472834322633@build.alporthouse.com>
 <20200819193326.p62h2dj7jpzfkeyy@duo.ucw.cz>
 <159790897155.667.4491040035549523476@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159790897155.667.4491040035549523476@build.alporthouse.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
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

Hi!

> > > > Thanks for the patches. I assume this should fix problem from
> > > > "5.9-rc1: graphics regression moved from -next to mainline" thread.
> > > > 
> > > > I have applied them over current -next, and my machine seems to be
> > > > working so far (but uptime is less than 30 minutes).
> > > > 
> > > > If the machine still works tommorow, I'll assume problem is solved.
> > > 
> > > Aye, best wait until we have to start competing with Chromium for
> > > memory... The suspicion is that it was the resource allocation failure
> > > path.
> > 
> > Yep, my machines are low on memory.
> > 
> > But ... test did not work that well. I have dead X and blinking
> > screen. Machine still works reasonably well over ssh, so I guess
> > that's an improvement.
> 
> Well my last remaining 32bit gen3 device is currently pushing up the
> daises, so could you try removing the attempt to use WC? Something like
> 
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -955,10 +955,7 @@ static u32 *__reloc_gpu_map(struct reloc_cache *cache,
>  {
>         u32 *map;
> 
> -       map = i915_gem_object_pin_map(pool->obj,
> -                                     cache->has_llc ?
> -                                     I915_MAP_FORCE_WB :
> -                                     I915_MAP_FORCE_WC);
> +       map = i915_gem_object_pin_map(pool->obj, I915_MAP_FORCE_WB);
> 
> on top of the previous patch. Faultinjection didn't turn up anything in
> eb_relocate_vma, so we need to dig deeper.

With this on top of other patches, it works.

Tested-by: Pavel Machek <pavel@ucw.cz>

Best regards,
									Pavel

-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
