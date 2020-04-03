Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B0819DD4A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 20:00:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92B926EC2A;
	Fri,  3 Apr 2020 18:00:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7BDD6EC2A
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 18:00:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20792506-1500050 for multiple; Fri, 03 Apr 2020 18:59:34 +0100
MIME-Version: 1.0
In-Reply-To: <87369k5uqi.wl-ashutosh.dixit@intel.com>
References: <20200403010120.3067-1-ashutosh.dixit@intel.com>
 <158593063457.5852.4620122096592068466@build.alporthouse.com>
 <87369k5uqi.wl-ashutosh.dixit@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <158593677241.5852.14693193167315314468@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 03 Apr 2020 18:59:32 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Do not clear pollin for
 small user read buffers
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

Quoting Dixit, Ashutosh (2020-04-03 18:45:09)
> On Fri, 03 Apr 2020 09:17:14 -0700, Chris Wilson wrote:
> >
> > Quoting Ashutosh Dixit (2020-04-03 02:01:20)
> > > It is wrong to block the user thread in the next poll when OA data is
> > > already available which could not fit in the user buffer provided in
> > > the previous read. In several cases the exact user buffer size is not
> > > known. Blocking user space in poll can lead to data loss when the
> > > buffer size used is smaller than the available data.
> > >
> > > This change fixes this issue and allows user space to read all OA data
> > > even when using a buffer size smaller than the available data using
> > > multiple non-blocking reads rather than staying blocked in poll till
> > > the next timer interrupt.
> > >
> > > v2: Fix ret value for blocking reads (Umesh)
> > > v3: Mistake during patch send (Ashutosh)
> > > v4: Remove -EAGAIN from comment (Umesh)
> > > v5: Improve condition for clearing pollin and return (Lionel)
> > > v6: Improve blocking read loop and other cleanups (Lionel)
> > > v7: Added Cc stable
> > >
> > > Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> > > Cc: <stable@vger.kernel.org>
> > > Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> > > Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> >
> > Did you manage to devise a test case? It is nice (some might say
> > important) to pair a patch for stable with its regression test.
> 
> Yes there is a test case here:
> 
> https://patchwork.freedesktop.org/series/75100/#rev3
> 
> Lionel verified that it is fails on stable kernels here:
> 
> https://patchwork.freedesktop.org/patch/358873/?series=75100&rev=1

Ta. Pushed both,
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
