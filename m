Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE06163534
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 22:39:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEB9B6E40B;
	Tue, 18 Feb 2020 21:39:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 410CA6E40B
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 21:39:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20269212-1500050 for multiple; Tue, 18 Feb 2020 21:38:36 +0000
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <8c34e19f-2487-ffff-8407-e2e1be9cff3d@intel.com>
References: <20200218162150.1300405-1-chris@chris-wilson.co.uk>
 <20200218162150.1300405-10-chris@chris-wilson.co.uk>
 <8c34e19f-2487-ffff-8407-e2e1be9cff3d@intel.com>
Message-ID: <158206191555.8112.11424915513570625534@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 18 Feb 2020 21:38:35 +0000
Subject: Re: [Intel-gfx] [PATCH 10/12] drm/i915/gt: Refactor l3cc/mocs
 availability
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

Quoting Daniele Ceraolo Spurio (2020-02-18 21:24:47)
> 
> 
> On 2/18/20 8:21 AM, Chris Wilson wrote:
> > On dgfx, we only use l3cc and not mocs, but we share the table of
> > register definitions with Tigerlake (which includes the mocs). This

-share the table of register definitions
+share the table containing both register definitions
 
> Just a small correction here: the problem is not that the Tigerlake 
> definitions will be shared (which is not necessarily going to happen), 
> but that our table entry definition contains both l3cc and mocs and 
> there is currently no way to know if only one of the 2 is valid. We 
> could split the table, but IMO that'd be overkill and it'll make things 
> messier for integrated platforms that have both, so I prefer the 
> approach in this patch.
> 
> > confuses our selftest that verifies that the registers do contain the
> > values in our tables after various events (idling, reset, activity etc).
> > 
> > When constructing the table of register definitions, also include the
> > flags for which registers are valid so that information is computed
> > centrally and available to all callers.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Brian Welty <brian.welty@intel.com>
> > Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> 
> Was confused for a moment by the uninitialized table passed to 
> read_mocs_table(), but we're ok because we memset it to 0 and therefore 

I did put the memset there to try and reassure :)

> table->n_entries is zero. Maybe worth adding a check to avoid calling 
> ring_begin() and ring_advance() in read_regs() that scenario?

ring_advance is just a debug aide; ring_begin becomes a no-op, after a
few twists and turns. (At worst it is a intel_ring_wrap.)

I liked the simple look of not having to special case 0.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
