Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA661F006A
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 21:28:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 818226E971;
	Fri,  5 Jun 2020 19:28:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6228D6E971
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 19:28:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21411080-1500050 for multiple; Fri, 05 Jun 2020 20:27:37 +0100
MIME-Version: 1.0
In-Reply-To: <CAM0jSHMk1PxtXcXkqZknTtw24tBP+Xv2LCMaZc1teKYAj9ehxg@mail.gmail.com>
References: <20200605184844.24644-1-chris@chris-wilson.co.uk>
 <CAM0jSHMk1PxtXcXkqZknTtw24tBP+Xv2LCMaZc1teKYAj9ehxg@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <159138525558.22562.15325070153859665526@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 05 Jun 2020 20:27:35 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Correct discard i915_vma_compare
 assertion
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2020-06-05 20:05:03)
> On Fri, 5 Jun 2020 at 19:49, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > As a last minute addition, I added an assertion to make sure that the
> > new i915_vma view would be equal to the discard. However, the positive
> > encouragement from CI only goes to show that we rarely take this path,
> > and it wasn't until the post-merge run did we hit the assert.
> >
> > Fixes: 9bdcaa5e3a2f ("drm/i915: Discard a misplaced GGTT vma")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Matthew Auld <matthew.auld@intel.com>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>

Ta, and apologies for the silly typo.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
