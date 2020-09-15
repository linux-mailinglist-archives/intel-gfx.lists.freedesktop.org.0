Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C115A26A3BD
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 12:58:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2380C89F2E;
	Tue, 15 Sep 2020 10:58:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B662889F2E
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 10:58:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22432982-1500050 for multiple; Tue, 15 Sep 2020 11:58:08 +0100
MIME-Version: 1.0
In-Reply-To: <CAPM=9txRRjYJAtBRFw5euPtiaoRQCX_57q2v=POsMzB3zBfGPg@mail.gmail.com>
References: <CAPM=9txRRjYJAtBRFw5euPtiaoRQCX_57q2v=POsMzB3zBfGPg@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Dave Airlie <airlied@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Tue, 15 Sep 2020 11:58:08 +0100
Message-ID: <160016748811.3890.7431656923121499596@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] query on gem vma unbinding
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

Quoting Dave Airlie (2020-09-14 07:27:18)
> I've been trying to work out what path invalidate the vmas for the
> following userspace behaviour, seen with iris/X.org but it's a bit of
> a maze.
> 
> (address are fictional)
> userspace allocates bo 1, assigns it a VMA. 0x1000
> userspace allocates bo 2, assigns it a VMA  0x2000
> 
> Submits work with these addresses pinned
> 
> bo 2 is freed in userspace into the userspace cache
> userspace allocates bo 3 in a incompatible VMA space gets 2 from
> cache, frees VMA 0x2000, allocates VMA 0x20000
> userspace alloates bo 4, assign it VMA 0x2000
> 
> When I get to the VMA space for BO 4 in the kernel, the VMA node is
> not allocated so it's misplaced, but if you try and allocate a node,
> the previous node hasn't been unbound, since the NOEVICT flags is set,
> ENOSPC should return, but then does the GEM code then use relocations
> and place the buffer somwhere else?

It takes the slow path, upon vma insert drm_mm_reserve_node() reports
ENOSPC and we then do an evict_for_node, unbind the previous occupants
or report the error back to userspace for trying to use an unevictable
location (which for iris should only be if it specifies the same address
twice in a batch for different objects).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
