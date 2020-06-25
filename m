Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5943A209F9E
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 15:19:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CB946E288;
	Thu, 25 Jun 2020 13:19:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3ABB89C25;
 Thu, 25 Jun 2020 13:18:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21613937-1500050 for multiple; Thu, 25 Jun 2020 14:18:56 +0100
MIME-Version: 1.0
In-Reply-To: <20200625123443.19680-2-lionel.g.landwerlin@intel.com>
References: <20200625123443.19680-1-lionel.g.landwerlin@intel.com>
 <20200625123443.19680-2-lionel.g.landwerlin@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 dri-devel@lists.freedesktop.org
Message-ID: <159309113252.4527.2883585204850736358@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 25 Jun 2020 14:18:52 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] dma-buf: fix dma-fence-chain out of
 order test
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
Cc: intel-gfx@lists.freedesktop.org, christian.koenig@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lionel Landwerlin (2020-06-25 13:34:43)
> There was probably a misunderstand on how the dma-fence-chain is
> supposed to work or what dma_fence_chain_find_seqno() is supposed to
> return.
> 
> dma_fence_chain_find_seqno() is here to give us the fence to wait upon
> for a particular point in the timeline. The timeline progresses only
> when all the points prior to a given number have completed.

Hmm, the question was what point is it supposed to wait for.

For the simple chain of [1, 3], does 1 being signaled imply that all
points up to 3 are signaled, or does 3 not being signaled imply that all
points after 1 are not. If that's mentioned already somewhere, my bad.
If not, could you put the answer somewhere.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
