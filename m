Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A39E2B93AA
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 14:28:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7904389B06;
	Thu, 19 Nov 2020 13:28:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADF8889B06
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 13:28:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23042138-1500050 for multiple; Thu, 19 Nov 2020 13:28:40 +0000
MIME-Version: 1.0
In-Reply-To: <cf169b86-94dc-0bf6-8502-7b6b98604517@linux.intel.com>
References: <20201119111831.1236-1-chris@chris-wilson.co.uk>
 <20201119122406.32255-1-chris@chris-wilson.co.uk>
 <cf169b86-94dc-0bf6-8502-7b6b98604517@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 13:28:38 +0000
Message-ID: <160579251890.30679.13230010270333551702@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Update request status flags
 for debug pretty-printer
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

Quoting Tvrtko Ursulin (2020-11-19 13:18:10)
> 
> On 19/11/2020 12:24, Chris Wilson wrote:
> > We plan to expand upon the number of available statuses for when we
> > pretty-print the requests along the timelines, and so need a new set of
> > flags. We have settled upon:
> > 
> >       Unready [U]
> >         - initial status after being submitted, the request is not
> >           ready for execution as it is waiting for external fences
> > 
> >       Ready [R]
> >         - all fences the request was waiting on have been signaled,
> >              and the request is now ready for execution and will be
> >           in a backend queue
> > 
> >         - a ready request may still need to wait on semaphores
> >           [internal fences]
> > 
> >       Ready/virtual [V]
> >         - same as ready, but queued over multiple backends
> > 
> 
> You do not like my idea of R/Rv? I think it would be more intuitive, but 
> anyway patch looks good.

Started with Rv, but then thought restricting it to a single character
and constant width was more important for the vertical alignment. That
may not be that much of an issue in practice. ~o~
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
