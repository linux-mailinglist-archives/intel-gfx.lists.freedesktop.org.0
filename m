Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAD830CDF0
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 22:32:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BF526E029;
	Tue,  2 Feb 2021 21:32:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F5726E029
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 21:32:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23777388-1500050 for multiple; Tue, 02 Feb 2021 21:32:21 +0000
MIME-Version: 1.0
In-Reply-To: <161230105652.29124.10262513252353794695@build.alporthouse.com>
References: <20210202151445.20002-1-chris@chris-wilson.co.uk>
 <20210202151445.20002-8-chris@chris-wilson.co.uk>
 <2097da50-efe4-1b23-67b5-9a43a70198c9@linux.intel.com>
 <161228783372.1150.6556483629376691686@build.alporthouse.com>
 <161230047545.28247.13315008950874636165@build.alporthouse.com>
 <161230105652.29124.10262513252353794695@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 02 Feb 2021 21:32:21 +0000
Message-ID: <161230154186.29124.14088562448864454003@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [CI 08/14] drm/i915/selftests: Force a rewind if at
 first we don't succeed
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

Quoting Chris Wilson (2021-02-02 21:24:16)
> Quoting Chris Wilson (2021-02-02 21:14:35)
> > Quoting Chris Wilson (2021-02-02 17:43:53)
> > > Let's see how horrible it is to cycle elements on defer. (Curse the
> > > irqlock pollution.)
> > 
> > While that did work. I do not have a good idea on how to do list
> > rotation on an RCU list. I can see that it must require a pair of
> > synchronize_rcu, and that spells disaster (at least for handling it
> > inline).
> > 
> > Another way might be to randomize the deadlines along each branch to the
> > tree... Except we don't have deadlines at this point and we can't so
> > freely change the priorities.
> 
> Speaking of which, this is 'fixed' by the deadlines as there we will
> reorder ELSP as the test expects. (Which is why I didn't notice this for
> so long.)

And I thinks that's how I am going to handle this, by deferring the dfs
fix for defer_request until we are ready with deadlines.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
