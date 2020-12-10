Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D442D695C
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 22:05:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52A116EB59;
	Thu, 10 Dec 2020 21:05:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E25B6EB59
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 21:05:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23286341-1500050 for multiple; Thu, 10 Dec 2020 21:05:45 +0000
MIME-Version: 1.0
In-Reply-To: <20201210191644.GA6255@sdutt-i7>
References: <20201210080240.24529-1-chris@chris-wilson.co.uk>
 <20201210080240.24529-19-chris@chris-wilson.co.uk>
 <20201210191644.GA6255@sdutt-i7>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Brost <matthew.brost@intel.com>
Date: Thu, 10 Dec 2020 21:05:44 +0000
Message-ID: <160763434489.21588.6583586596864510610@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 19/21] drm/i915/gt: Use indices for writing
 into relative timelines
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Brost (2020-12-10 19:16:44)
> On Thu, Dec 10, 2020 at 08:02:38AM +0000, Chris Wilson wrote:
> > Relative timelines are relative to either the global or per-process
> > HWSP, and so we can replace the absolute addressing with store-index
> > variants for position invariance.
> > 
> 
> Can you explain the benifit of relative addressing? Why can't we also
> use absolute? If we can always use absolute, I don't see the point
> complicating the breadcrumb code.

It basically allows a third party to move the contexts between hosts
with far less patching of global state. They want us to avoid all fixed
GGTT addressing.

The breadcrumbs themselves do not notice at all, it's just the timeline
setup and decision to take advantage of the relative commands. The
breadcrumb patches in this series are some outstanding fixes from ~6
months ago.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
