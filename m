Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6390318AC4
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 13:35:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47D026EE0E;
	Thu, 11 Feb 2021 12:35:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 769446EE0E
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 12:35:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23838165-1500050 for multiple; Thu, 11 Feb 2021 12:35:26 +0000
MIME-Version: 1.0
In-Reply-To: <f0e8e342-f7a3-dc52-b399-3b16ee30e23b@intel.com>
References: <20210211112051.14204-1-chris@chris-wilson.co.uk>
 <f0e8e342-f7a3-dc52-b399-3b16ee30e23b@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Thu, 11 Feb 2021 12:35:25 +0000
Message-ID: <161304692504.7731.16290077698864319804@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Probe system memory regions
 before enabling HW
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

Quoting Matthew Auld (2021-02-11 12:27:56)
> On 11/02/2021 11:20, Chris Wilson wrote:
> > If we want to track system/stolen as memory regions, we need to setup
> > our bookkeeping *before* we want to start allocating and reserving
> > objects in those regions. In particular, in setup up the GGTT we will
> > try to preallocate stolen regions configured by the BIOS, and so should
> > prepare the system-stolen memory region beforehand.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Matthew Auld <matthew.auld@intel.com>
> > ---
> >   drivers/gpu/drm/i915/i915_drv.c | 8 ++++----
> >   1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> > index b708517d3972..139cea4443fd 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.c
> > +++ b/drivers/gpu/drm/i915/i915_drv.c
> > @@ -557,6 +557,10 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
> >   
> >       i915_perf_init(dev_priv);
> >   
> > +     ret = intel_memory_regions_hw_probe(dev_priv);
> > +     if (ret)
> > +             goto err_ggtt;
> 
> Hmmm, adjust_stolen is also peeking at ggtt_total_entries(ggtt) on some 
> old platforms.

A nice catch-22. More splitting required. Maybe a fixup pass from
init_ggtt would work best.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
