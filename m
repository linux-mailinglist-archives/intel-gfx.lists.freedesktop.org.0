Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A46152C9E3F
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 10:49:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8017D6E4BA;
	Tue,  1 Dec 2020 09:49:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD96C6E4BA
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 09:49:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23172851-1500050 for multiple; Tue, 01 Dec 2020 09:49:06 +0000
MIME-Version: 1.0
In-Reply-To: <160681520037.17248.14426604636080218601@build.alporthouse.com>
References: <20201128184040.20150-1-chris@chris-wilson.co.uk>
 <20201128184040.20150-4-chris@chris-wilson.co.uk>
 <f8856a1a-48ad-9a26-3658-bfbcef1c7a95@linux.intel.com>
 <160674359480.9503.7150298801559341502@build.alporthouse.com>
 <874d8bb0-b4ab-708d-b307-63687c0498ee@linux.intel.com>
 <160675327116.10401.3831761327207987081@build.alporthouse.com>
 <35b3c541-a288-e84a-832e-a8432845e06a@linux.intel.com>
 <160675468418.11893.4948563859403506773@build.alporthouse.com>
 <acabff64-c838-0242-f8e8-fcd0f546b6ac@linux.intel.com>
 <160681520037.17248.14426604636080218601@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 01 Dec 2020 09:49:05 +0000
Message-ID: <160681614513.17248.967014849995724322@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [RFC 4/4] drm/i915/gt: Pipelined page migration
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

Quoting Chris Wilson (2020-12-01 09:33:20)
> Quoting Tvrtko Ursulin (2020-12-01 09:26:05)
> > Now second copy comes and calls emit_pte which again writes to [0, 
> > CHUNK_SZ) virtual range. How does that end up in the PTE backing store 
> > and not previous object backing store?
> 
> It all boils down to the PD being offset.

        /*
         * We construct a very special VM for use by all migration contexts,
         * it is kept pinned so that it can be used at any time. As we need
         * to pre-allocate the page directories for the migration VM, this
         * limits us to only using a small number of prepared vma.
         *
	 * To be able to pipeline and reschedule migration operations while
         * avoiding unnecessary contention on the vm itself, the PTE updates
         * are inline with the blits. All the blits use the same fixed
         * addresses, with the backing store redirection being updated on the
         * fly. Only 2 implicit vma are used for all migration operations.
         *
	 * We lay the ppGTT out as:
         *
         *      [0, CHUNK_SZ) -> first object
         *      [CHUNK_SZ, 2 * CHUNK_SZ) -> second object
         *      [2 * CHUNK_SZ, 2 * CHUNK_SZ + 2 * CHUNK_SZ >> 9] -> PTE
         *
         * By exposing the dma addresses of the page directories themselves
         * within the ppGTT, we are then able to rewrite the PTE prior to use.
         */

-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
