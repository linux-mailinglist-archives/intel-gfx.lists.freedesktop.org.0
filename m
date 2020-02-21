Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDA31681ED
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 16:38:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D079E6F48C;
	Fri, 21 Feb 2020 15:38:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 356756F489;
 Fri, 21 Feb 2020 15:38:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20304006-1500050 for multiple; Fri, 21 Feb 2020 15:38:34 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <2714492.eSyeoD3iCD@jkrzyszt-desk.ger.corp.intel.com>
References: <20200221111701.30006-1-janusz.krzysztofik@linux.intel.com>
 <20200221111701.30006-3-janusz.krzysztofik@linux.intel.com>
 <158229528380.6499.10205591790332300594@skylake-alporthouse-com>
 <2714492.eSyeoD3iCD@jkrzyszt-desk.ger.corp.intel.com>
Message-ID: <158229951247.7320.6866015757235628790@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 21 Feb 2020 15:38:32 +0000
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t v2 2/2] tests/gem_userptr_blits:
 Exercise mmap-offset mapping to userptr
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Janusz Krzysztofik (2020-02-21 15:36:08)
> Hi Chris,
> 
> Thanks for review.
> 
> On Friday, February 21, 2020 3:28:03 PM CET Chris Wilson wrote:
> > Quoting Janusz Krzysztofik (2020-02-21 11:17:01)
> > > +       /* set object pages in order to activate MMU notifier for it */
> > > +       gem_set_domain(fd, handle, t->domain, t->domain);
> > 
> > I would suggest (a variant?) that also attached a igt_spin_t to the userptr,
> > waited for it to start executing, call igt_spin_set_timeout and then do
> > the munmap.
> 
> OK.  Will that be OK if I prepare a follow up patch with that subtest variant 
> added?

Perfectly acceptable.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
