Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2126919996A
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 17:17:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A0956E84A;
	Tue, 31 Mar 2020 15:17:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DB9C6E84A
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 15:17:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20753974-1500050 for multiple; Tue, 31 Mar 2020 16:16:38 +0100
MIME-Version: 1.0
In-Reply-To: <CAM0jSHPOY4So442J1O0zW75cBwM4rCPm1CN0YVOMLMJhU=uhfw@mail.gmail.com>
References: <20200331124202.4497-1-chris@chris-wilson.co.uk>
 <CAM0jSHPOY4So442J1O0zW75cBwM4rCPm1CN0YVOMLMJhU=uhfw@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <158566779807.5852.10085468544103922929@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 31 Mar 2020 16:16:38 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Fill all the unused space in
 the GGTT
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
 Matthew Auld <matthew.auld@intel.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2020-03-31 16:07:21)
> On Tue, 31 Mar 2020 at 13:42, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > When we allocate space in the GGTT we may have to allocate a larger
> > region than will be populated by the object to accommodate fencing. Make
> > sure that this space beyond the end of the buffer points safely into
> > scratch space, in case the HW tries to access it anyway (e.g. fenced
> > access to the last tile row).
> >
> > Reported-by: Imre Deak <imre.deak@intel.com>
> > References: https://gitlab.freedesktop.org/drm/intel/-/issues/1554
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Matthew Auld <matthew.auld@intel.com>
> > Cc: Imre Deak <imre.deak@intel.com>
> > Cc: stable@vger.kernel.org
> 
> Do we not need similar treatment for gen6? It seems to also play
> tricks with the nop clear range, or did we disable gen7 ppgtt in the
> end?

Currently disabled. But yes, if we use nop_clear_range we will need
similar clearing. As this method turned out to be much easier than
expected, I guess we should just do it anyway.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
