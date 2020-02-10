Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5475715765D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 13:52:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 613C36EC19;
	Mon, 10 Feb 2020 12:52:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C7676E20A
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 12:52:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20174131-1500050 for multiple; Mon, 10 Feb 2020 12:52:29 +0000
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHPGpkO4TEXCpT7w7DM7kFpMT9+jRL3R=uiaNDGXfz=-XQ@mail.gmail.com>
References: <20200206140948.2491620-1-chris@chris-wilson.co.uk>
 <CAM0jSHPGpkO4TEXCpT7w7DM7kFpMT9+jRL3R=uiaNDGXfz=-XQ@mail.gmail.com>
Message-ID: <158133914671.5235.14899451517100302990@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 10 Feb 2020 12:52:26 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Trim blitter block size
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

Quoting Matthew Auld (2020-02-10 12:47:35)
> On Thu, 6 Feb 2020 at 14:10, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Reduce the amount of work we do to verify client blt correctness as
> > currently our 0.5s subtests takes about 15s on slower devices!
> >
> > v2: Grow the maximum block size until we run out of time
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> Is that bsw-kefka issue(coherency?) something new?

It's something to worry about.

This version is much harsher on the shared-gtt as it doesn't try to
relax our requests to allow parallelism between threads. We can reduce
the per-thread sizes again to sweep the problem under the carpet for a
bit longer.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
