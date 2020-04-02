Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C216419C0B6
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 14:11:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84F9E6EA71;
	Thu,  2 Apr 2020 12:11:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 332BC6EA77
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 12:11:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20775816-1500050 for multiple; Thu, 02 Apr 2020 13:11:43 +0100
MIME-Version: 1.0
In-Reply-To: <20200402115908.24532-1-chris@chris-wilson.co.uk>
References: <20200402115908.24532-1-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Message-ID: <158582950432.5852.6678026765731978107@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 02 Apr 2020 13:11:44 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use per-engine request pools
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

Quoting Chris Wilson (2020-04-02 12:59:08)
> Add a per-engine request mempool so that we should always have a couple
> of requests available for powermanagement allocations from tricky
> contexts. These reserves are expected to be only used for kernel
> contexts when barriers must be emitted [almost] without fail.
> 
> When using the mempool, requests are first allocated from the global
> slab cache (utilising all the per-cpu lockless freelists and caches) and
> only if that is empty and cannot be filled under the gfp_t do we
> fallback to using the per-engine cache of recently freed requests. For
> our use cases, this will never be empty for long as there will always be
> at least the previous powermanagent request to reuse.
> 
> The downside is that this is quite a bulky addition and abstraction to
> use, but it will ensure that we never fail to park the engine due to
> oom.

Strictly speaking, mempool_alloc() does not have the semantics I ascribe
it. Which is annoying.

mempool_alloc() will always dip into the reserves if a NORETRY alloc
fails, and so we should ourselves reserve dipping into the mempool if we
can.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
