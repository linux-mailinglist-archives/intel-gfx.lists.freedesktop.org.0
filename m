Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C15308AF9
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 18:09:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E8656EB1D;
	Fri, 29 Jan 2021 17:09:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE11D6EB1D
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 17:09:52 +0000 (UTC)
IronPort-SDR: 1Mdp5n9mDb6kA8hjvN8VET6a/p8iFywuoTaVbkVVMsCXx/OuAlqJgEhaO32ma/dLOXld4VsZtP
 bDkaUjWwkqEw==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="179675130"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="179675130"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 09:09:51 -0800
IronPort-SDR: ljK7OJx3JCGnHAqqnF6kbpnRrn72wNX34ZZilKaydRYezIrtcjC1U9RvXjBfPMIINQJsC+8rbi
 gypjZcXYwcIw==
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="574103528"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 09:09:51 -0800
Date: Fri, 29 Jan 2021 09:01:01 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20210129170101.GA29614@sdutt-i7>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
 <20210125140136.10494-20-chris@chris-wilson.co.uk>
 <20210128225604.GA20650@sdutt-i7>
 <161191625882.867.12917284563227933093@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161191625882.867.12917284563227933093@build.alporthouse.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 20/41] drm/i915: Replace priolist rbtree
 with a skiplist
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
Cc: intel-gfx@lists.freedesktop.org, thomas.hellstrom@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 29, 2021 at 10:30:58AM +0000, Chris Wilson wrote:
> Quoting Matthew Brost (2021-01-28 22:56:04)
> > On Mon, Jan 25, 2021 at 02:01:15PM +0000, Chris Wilson wrote:
> > > Replace the priolist rbtree with a skiplist. The crucial difference is
> > > that walking and removing the first element of a skiplist is O(1), but
> > > O(lgN) for an rbtree, as we need to rebalance on remove. This is a
> > > hindrance for submission latency as it occurs between picking a request
> > > for the priolist and submitting it to hardware, as well effectively
> > > trippling the number of O(lgN) operations required under the irqoff lock.
> > > This is critical to reducing the latency jitter with multiple clients.
> > > 
> > > The downsides to skiplists are that lookup/insertion is only
> > > probablistically O(lgN) and there is a significant memory penalty to
> > > as each skip node is larger than the rbtree equivalent. Furthermore, we
> > > don't use dynamic arrays for the skiplist, so the allocation is fixed,
> > > and imposes an upper bound on the scalability wrt to the number of
> > > inflight requests.
> > > 
> > 
> > This is a fun data structure but IMO might be overkill to maintain this
> > code in the i915. The UMDs have effectively agreed to use only 3 levels,
> > is O(lgN) where N == 3 really a big deal? With GuC submission we will
> > statically map all user levels into 3 buckets. If we are doing that, do
> > we even need a complex data structure? i.e. Could use just use can
> > array of linked lists?
> 
> Because we need to scale the bst to handle a unqiue key per request with
> thousands of requests [this is not only about priorities]. And as you
> will see from the results, even with just a single priority in the system
> (so one entry in either the skiplist or rbtree), the skiplist is beating 
> the rbtree as measured by the lock hold time around insert/dequeue of
> requests. That surprised me.

Ok, seems reasonable. Skips list are pretty cool, wondering if at some
point we should make skip list code a bit more generic so it can
possibly be levered in other parts of the i915 / kernel.

Matt

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
