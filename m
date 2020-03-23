Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A5518F3E7
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 12:50:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63BD989458;
	Mon, 23 Mar 2020 11:50:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CDAB89458
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 11:50:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20659653-1500050 for multiple; Mon, 23 Mar 2020 11:50:00 +0000
MIME-Version: 1.0
In-Reply-To: <20200323113809.41452-1-matthew.auld@intel.com>
References: <20200323113809.41452-1-matthew.auld@intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158496420007.17851.2271454895738239223@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 23 Mar 2020 11:50:00 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: add some vma_sync
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

Quoting Matthew Auld (2020-03-23 11:38:09)
> The subtest shrink_boom was added as a regression test for some missing
> refcounting on the paging structures, however since the binding is
> potentially async, setting the vm->fault_attr might apply to the purge
> vma, and not the intended explode vma. Also it looks like it might also
> be possible to hit some weird shrinker deadlock where the unbinding of
> one vma allocates memory by flushing and waiting for its
> still-pending-bind operation while holding vm->mutex, which will always
> lands back in the shrinker since we set vm->fault_attr for the selftest.
> 
> References: https://gitlab.freedesktop.org/drm/intel/issues/1493

Ah, you picked the wrong deadlock -- that's the gtt eviction recursion.
:(
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
