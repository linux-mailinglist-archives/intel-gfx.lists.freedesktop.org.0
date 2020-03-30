Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF86197D84
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 15:51:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B67B6E379;
	Mon, 30 Mar 2020 13:51:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A52B6E379
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 13:51:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20740553-1500050 for multiple; Mon, 30 Mar 2020 14:51:14 +0100
MIME-Version: 1.0
In-Reply-To: <CAM0jSHNdGV2ohbiSb1y0CZrLRHhRVkcjRQQF67P9KDb2adz9xQ@mail.gmail.com>
References: <20200330121644.25277-1-chris@chris-wilson.co.uk>
 <CAM0jSHNdGV2ohbiSb1y0CZrLRHhRVkcjRQQF67P9KDb2adz9xQ@mail.gmail.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158557627296.3228.4686978226916941662@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 30 Mar 2020 14:51:12 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Check timeout before
 flush and cond checks
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

Quoting Matthew Auld (2020-03-30 14:48:52)
> On Mon, 30 Mar 2020 at 13:17, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Allow a bit of leniency for the CPU scheduler to be distracted while we
> > flush the tasklet and so ensure that we always check the status of the
> > request once more before timing out.
> >
> > v2: Wait until the HW acked the submit, and we do any secondary actions
> > for the submit (e.g. timeslices)
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Matthew Auld <matthew.auld@intel.com>
> 
> Rejecting mails again.
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>

But now I've told the list not to remove me from the CC, so at least I'm
now getting the ml copy :(
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
