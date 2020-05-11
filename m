Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF441CD870
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 13:30:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD0EE6E43A;
	Mon, 11 May 2020 11:30:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37E336E43A
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 11:30:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21159360-1500050 for multiple; Mon, 11 May 2020 12:30:19 +0100
MIME-Version: 1.0
In-Reply-To: <875zd24sz0.fsf@gaia.fi.intel.com>
References: <20200511075722.13483-1-chris@chris-wilson.co.uk>
 <20200511075722.13483-4-chris@chris-wilson.co.uk>
 <875zd24sz0.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158919661782.1729.14747834251070520174@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 11 May 2020 12:30:17 +0100
Subject: Re: [Intel-gfx] [PATCH 04/20] drm/i915: Mark the addition of the
 initial-breadcrumb in the request
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

Quoting Mika Kuoppala (2020-05-11 12:21:55)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > The initial-breadcrumb is used to mark the end of the awaiting and the
> > beginning of the user payload. We verify that we do not start the user
> > payload before all signaler are completed, checking our semaphore setup
> > by looking for the initial breadcrumb being written too early. We also
> > want to ensure that we do not add semaphore waits after we have already
> > closed the semaphore section, an issue for later deferred waits.
> >
> 
> I see that you go from timeline property to a per request property.
> But the last sentence in this commit message escapes me. Do we need
> this for proxy fence waiting of is this patch just for enhancing
> the assertion/gem_bug_on resolution on semaphore boundaries?

The immediate improvement is for tidying up the assertion. It opens the
way for out-of-order awaits.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
