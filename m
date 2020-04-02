Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0023919CC98
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 23:56:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F39289E33;
	Thu,  2 Apr 2020 21:56:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CD2689E33
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 21:56:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20781912-1500050 for multiple; Thu, 02 Apr 2020 22:55:42 +0100
MIME-Version: 1.0
In-Reply-To: <20200402213506.GA2767@duo.ucw.cz>
References: <20200402213253.GA2691@duo.ucw.cz>
 <20200402213506.GA2767@duo.ucw.cz>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Pavel Machek <pavel@ucw.cz>, intel-gfx@lists.freedesktop.org,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 kernel list <linux-kernel@vger.kernel.org>, rodrigo.vivi@intel.com
Message-ID: <158586454333.5852.17002169517772810041@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 02 Apr 2020 22:55:43 +0100
Subject: Re: [Intel-gfx] 5.6-rc7: Xorg hangs, too
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

Quoting Pavel Machek (2020-04-02 22:35:07)
> [258096.980089] 3 locks held by kswapd0/1034:
> [258096.980096]  #0: ffffffff85851c80 (fs_reclaim){....}, at: __fs_reclaim_acquire+0x0/0x30
> [258096.980114]  #1: ffffffff85850b40 (shrinker_rwsem){....}, at: shrink_slab.constprop.79+0x38/0x270
> [258096.980130]  #2: ffff888197278b90 (&vm->mutex){....}, at: i915_vma_unbind+0x90/0xe0
> [258096.980177] 3 locks held by Xorg/3123:
> [258096.980183]  #0: ffff8881972700c8 (&dev->struct_mutex){....}, at: i915_gem_do_execbuffer+0x690/0x1ef0
> [258096.980200]  #1: ffff88819576e950 (&ctx->mutex){....}, at: eb_lookup_vmas+0x7d/0xd10
> [258096.980215]  #2: ffff888197278b90 (&vm->mutex){....}, at: i915_vma_pin+0xb4/0x750

That's the pair that's causing the trouble.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
