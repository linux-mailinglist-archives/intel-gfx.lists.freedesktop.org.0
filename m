Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1EF27EF38
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 18:30:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA43E89D77;
	Wed, 30 Sep 2020 16:30:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE90C89D77
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 16:30:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22582477-1500050 for multiple; Wed, 30 Sep 2020 17:30:04 +0100
MIME-Version: 1.0
In-Reply-To: <CAM0jSHNwqN=_=mgLpxq0p5O3dS1NSYGJQay6JP=MHGjGRRqPLg@mail.gmail.com>
References: <20200929082859.26652-1-chris@chris-wilson.co.uk>
 <CAM0jSHNwqN=_=mgLpxq0p5O3dS1NSYGJQay6JP=MHGjGRRqPLg@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 30 Sep 2020 17:30:08 +0100
Message-ID: <160148340869.23784.13135562039996340240@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Signal cancelled requests
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

Quoting Matthew Auld (2020-09-30 17:25:35)
> On Tue, 29 Sep 2020 at 09:29, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > After marking the requests on an engine as cancelled upon wedging, send
> > any signals for their completions.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> Fwiw these were all previously reviewed at:
> https://patchwork.freedesktop.org/series/81729/

Ta, I was blind.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
