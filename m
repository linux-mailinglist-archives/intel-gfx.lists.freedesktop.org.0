Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8EA26BF38
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 10:27:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A95AD6E370;
	Wed, 16 Sep 2020 08:27:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3136A6E370
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 08:27:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22442442-1500050 for multiple; Wed, 16 Sep 2020 09:26:57 +0100
MIME-Version: 1.0
In-Reply-To: <20200916063358.GL142621@kroah.com>
References: <20200915124150.12045-1-chris@chris-wilson.co.uk>
 <20200915124150.12045-2-chris@chris-wilson.co.uk>
 <20200916063358.GL142621@kroah.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Greg KH <gregkh@linuxfoundation.org>
Date: Wed, 16 Sep 2020 09:26:58 +0100
Message-ID: <160024481825.2231.4268855132793535750@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/gt: Wait for CSB entries on
 Tigerlake
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Greg KH (2020-09-16 07:33:58)
> On Tue, Sep 15, 2020 at 01:41:48PM +0100, Chris Wilson wrote:
> > On Tigerlake, we are seeing a repeat of commit d8f505311717 ("drm/i915/icl:
> > Forcibly evict stale csb entries") where, presumably, due to a missing
> > Global Observation Point synchronisation, the write pointer of the CSB
> > ringbuffer is updated _prior_ to the contents of the ringbuffer. That is
> > we see the GPU report more context-switch entries for us to parse, but
> > those entries have not been written, leading us to process stale events,
> > and eventually report a hung GPU.
> > 
> > However, this effect appears to be much more severe than we previously
> > saw on Icelake (though it might be best if we try the same approach
> > there as well and measure), and Bruce suggested the good idea of resetting
> > the CSB entry after use so that we can detect when it has been updated by
> > the GPU. By instrumenting how long that may be, we can set a reliable
> > upper bound for how long we should wait for:
> > 
> >     513 late, avg of 61 retries (590 ns), max of 1061 retries (10099 ns)
> > 
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2045
> > References: d8f505311717 ("drm/i915/icl: Forcibly evict stale csb entries")
> 
> What does "References:" mean?  Should that be "Fixes:"?

It's a reference to an earlier w/a for a previous generation for the
same symptoms. This patch should supplement that w/a.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
