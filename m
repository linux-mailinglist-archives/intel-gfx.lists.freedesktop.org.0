Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC78630F28F
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 12:40:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBC546E046;
	Thu,  4 Feb 2021 11:40:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E42576E046
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 11:40:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23785572-1500050 for multiple; Thu, 04 Feb 2021 11:40:15 +0000
MIME-Version: 1.0
In-Reply-To: <ad0639e8-7eab-7d38-1cc2-f93bd1800c6b@linux.intel.com>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-22-chris@chris-wilson.co.uk>
 <ad0639e8-7eab-7d38-1cc2-f93bd1800c6b@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 04 Feb 2021 11:40:14 +0000
Message-ID: <161243881402.1383.5065916427532019010@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 22/57] drm/i915: Move scheduler queue
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

Quoting Tvrtko Ursulin (2021-02-04 11:19:00)
> 
> On 01/02/2021 08:56, Chris Wilson wrote:
> > @@ -252,10 +242,6 @@ struct intel_engine_execlists {
> >        */
> >       int queue_priority_hint;
> >   
> > -     /**
> > -      * @queue: queue of requests, in priority lists
> > -      */
> > -     struct rb_root_cached queue;
> >       struct rb_root_cached virtual;
> 
> Presumably virtual queue will go later in the series since I have seen 
> some patches which improve that algorithm.

There's no commonality yet, so I left it in execlists. All of the
virtual engines do themselves migrate to using the scheduler completely,
but the association between the physical/virtual is still buried inside
execlists.

On the face of it, virtual_requeue() does only talk between the
base scheduler structs, so it looks like it could be easily extracted.
But the guc is going to use a single scheduling channel onto an
out-of-order guc queue, which doesn't allow us to use late greedy virtual
scheduling ourselves (we have no choice on which queue to use).

So not even a second user, let alone a third, to check if the semantics
are general enough.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
