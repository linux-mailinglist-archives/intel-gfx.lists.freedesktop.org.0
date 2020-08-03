Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1851F23A812
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 16:08:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F93889F69;
	Mon,  3 Aug 2020 14:08:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C542889F69
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Aug 2020 14:08:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22018438-1500050 for multiple; Mon, 03 Aug 2020 15:08:40 +0100
MIME-Version: 1.0
In-Reply-To: <20200803140147.316523-4-lionel.g.landwerlin@intel.com>
References: <20200803140147.316523-1-lionel.g.landwerlin@intel.com>
 <20200803140147.316523-4-lionel.g.landwerlin@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 03 Aug 2020 15:08:40 +0100
Message-ID: <159646372073.571.1645434502827672775@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: peel dma-fence-chains wait
 fences
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lionel Landwerlin (2020-08-03 15:01:47)
> To allow faster engine to engine synchronization, peel the layer of
> dma-fence-chain to expose potential i915 fences so that the
> i915-request code can emit HW semaphore wait/signal operations in the
> ring which is faster than waking up the host to submit unblocked
> workloads after interrupt notification.
> 
> v2: Also deal with chains where the last node is not a dma-fence-chain

This is already done by i915_request_await_dma_fence.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
