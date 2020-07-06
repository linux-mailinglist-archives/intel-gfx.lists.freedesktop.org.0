Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 449FA2160D9
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 23:08:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBFE78997E;
	Mon,  6 Jul 2020 21:08:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 389968997E
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 21:08:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21733589-1500050 for multiple; Mon, 06 Jul 2020 22:08:17 +0100
MIME-Version: 1.0
In-Reply-To: <159406571422.15644.12191339942286879050@build.alporthouse.com>
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-3-chris@chris-wilson.co.uk>
 <CAM0jSHOuEq_zTC1JF5nPPp_tvWo4tOqk5=pZcGhpwJGEReb5pw@mail.gmail.com>
 <159406571422.15644.12191339942286879050@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 06 Jul 2020 22:08:15 +0100
Message-ID: <159406969534.15644.3057571682657892705@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 02/20] drm/i915: Switch to object
 allocations for page directories
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-07-06 21:01:54)
> Overallocation is pita for having to preallocate; since we basically
> have to have at least 2 PD for each level + actual span. For every vma,
> even when bundling the insertions, as we don't know which entries will
> be used until much later. So we almost certainly overallocate 4 PD
> [16KiB system + 16KiB dma] for every single vma. Even a 15 entry stash
> will be quickly exhausted; oh well.

Just a note to self, a pvec[15] is too quickly exhausted and does not
hide the allocation costs.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
