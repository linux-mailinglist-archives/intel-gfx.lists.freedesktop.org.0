Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D5F262EDD
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Sep 2020 15:03:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D24226EB52;
	Wed,  9 Sep 2020 13:03:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6D1D6EB52
 for <Intel-gfx@lists.freedesktop.org>; Wed,  9 Sep 2020 13:03:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22378572-1500050 for multiple; Wed, 09 Sep 2020 14:03:04 +0100
MIME-Version: 1.0
In-Reply-To: <20200909124457.296845-1-tvrtko.ursulin@linux.intel.com>
References: <20200909124457.296845-1-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Wed, 09 Sep 2020 14:03:03 +0100
Message-ID: <159965658319.2410.1208794152045447402@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix DMA mapped scatterlist walks
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
Cc: Tom Murphy <murphyt7@tcd.ie>, Matthew Auld <matthew.auld@intel.com>,
 Logan Gunthorpe <logang@deltatee.com>, Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-09-09 13:44:57)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> When walking DMA mapped scatterlists sg_dma_len has to be used since it
> can be different (coalesced) from the backing store entry.
> 
> This also means we have to end the walk when encountering a zero length
> DMA entry and cannot rely on the normal sg list end marker.
> 
> Both issues were there in theory for some time but were hidden by the fact
> Intel IOMMU driver was never coalescing entries. As there are ongoing
> efforts to change this we need to start handling it.

Does this change anything if we were already feeding in coalesced
entries? I doubt we made all sg generators compact the lists though.

The change looks reasonable, it seems you have kept the dma and page
iterators distinct, which was the only worry that occurred to me.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
