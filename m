Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5083E164404
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 13:17:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44E016E5C5;
	Wed, 19 Feb 2020 12:17:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72B086E5C5
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 12:17:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20275230-1500050 for multiple; Wed, 19 Feb 2020 12:17:13 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200219120944.21200-1-janusz.krzysztofik@linux.intel.com>
References: <20200219120944.21200-1-janusz.krzysztofik@linux.intel.com>
Message-ID: <158211463293.8112.7903202756518800530@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 19 Feb 2020 12:17:12 +0000
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915/userptr: Don't activate MMU
 notifier if no pages can be acquired
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

Quoting Janusz Krzysztofik (2020-02-19 12:09:44)
> The purpose of userptr MMU notifier is to invalidate object pages as
> soon as someone unpins them from memory.  While doing that,
> obj->mm.lock is acquired.  If the notifier was called with obj->mm.lock
> already held, a lockdep loop would be triggered.  That scenario is
> believed to be possible in several cases, one of which is when the
> userptr object is created from an mmap-offset mapping of another i915
> GEM object.  This patch tries to address this case.
> 
> Even if creating a userptr object on an mmap-offset mapping succeeds,
> trying to pin pages of the mapping in memory always fails because of
> them having a VM_PFNMAP flag set.  However, the notifier can be
> activated for a userptr object even before required pages are found
> already pinned in memory, as soon as a worker expected to get missing
> pages is scheduled successfully.  If the worker then fails to collect
> the pages, it deactivates the notifier.  However, a time window exists
> when the notifier can be called for an object even with no pages set
> yet.

You mean something like
https://patchwork.freedesktop.org/patch/275514/?series=54869&rev=2
to avoid lockdep cross-contamination.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
