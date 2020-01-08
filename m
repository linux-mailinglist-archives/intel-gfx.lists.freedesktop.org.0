Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 454161347F3
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 17:27:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A83F06E8B3;
	Wed,  8 Jan 2020 16:27:39 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 326856E8B3
 for <Intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 16:27:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19811368-1500050 for multiple; Wed, 08 Jan 2020 16:27:22 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20200108161954.29739-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200108161954.29739-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <157850084100.13423.10479098209136206233@skylake-alporthouse-com>
Date: Wed, 08 Jan 2020 16:27:21 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Revert "drm/i915/tgl:
 Wa_1607138340"
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

Quoting Tvrtko Ursulin (2020-01-08 16:19:54)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> This reverts commit 08fff7aeddc9dd72161b4c8fc27fbab12b4b9352.
> 
> For some yet unexplained reason not having this improves stability of some
> media workloads.
> 
> Promise is that the media hang will be root caused properly and in the
> meantime absence of this workaround is unlikely to cause problems.

I suspect this is shooting the messenger. The danger is that we rely on
FORCE_RESTORE for preemption, and so if this bit is triggering the issue,
their problem just becomes more sporadic.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
