Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A079C28D230
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 18:24:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 960BF6E3DF;
	Tue, 13 Oct 2020 16:24:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC06E6E3DF
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 16:24:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22704771-1500050 for multiple; Tue, 13 Oct 2020 17:24:48 +0100
MIME-Version: 1.0
In-Reply-To: <8c41461201764a0d8a05caba47d1589a@intel.com>
References: <20201013103256.31446-1-chris@chris-wilson.co.uk>
 <8c41461201764a0d8a05caba47d1589a@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Tang, CQ" <cq.tang@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 13 Oct 2020 17:24:48 +0100
Message-ID: <160260628825.2946.16678261690978530238@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Make the GEM reclaim workqueue
 high priority
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

Quoting Tang, CQ (2020-10-13 17:19:27)
> Chris,
>     I tested this patch. It is still not enough, I keep catch running out of lmem.  Every worker invocation takes larger and larger freeing object count.
> 

Was that with the immediate call (not via call_rcu) to
__i915_gem_free_object_rcu?

If this brings the freelist under control, the next item is judicious
use of cond_synchronize_rcu(). We just have to make sure we penalize the
right hog.

Otherwise, we have to shotgun apply i915_gem_flush_free_objects() and
still find somewhere to put the rcu sync.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
