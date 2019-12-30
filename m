Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D7712D1BF
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 17:14:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1B1889F2A;
	Mon, 30 Dec 2019 16:14:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 045E089F2A
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 16:14:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19727852-1500050 for multiple; Mon, 30 Dec 2019 16:14:08 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191230160112.3838434-4-chris@chris-wilson.co.uk>
References: <20191230160112.3838434-1-chris@chris-wilson.co.uk>
 <20191230160112.3838434-4-chris@chris-wilson.co.uk>
Message-ID: <157772244644.3861.119005626166578333@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 30 Dec 2019 16:14:06 +0000
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/gt: Ignore stale context state
 upon resume
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2019-12-30 16:01:10)
> We leave the kernel_context on the HW as we suspend (and while idle).
> There is no guarantee that is complete in memory, so we try to inhibit
> restoration from the kernel_context. Reinforce the inhibition by
> scrubbing the context.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
