Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A0D135CF6
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 16:40:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 352E06E446;
	Thu,  9 Jan 2020 15:40:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B32B26E446
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 15:40:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19822992-1500050 for multiple; Thu, 09 Jan 2020 15:40:14 +0000
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200109153115.GA2717@intel.intel>
References: <20200109085839.873553-1-chris@chris-wilson.co.uk>
 <20200109085839.873553-10-chris@chris-wilson.co.uk>
 <20200109153115.GA2717@intel.intel>
Message-ID: <157858441291.2197.918085554190127260@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 09 Jan 2020 15:40:12 +0000
Subject: Re: [Intel-gfx] [PATCH 10/14] drm/i915: Start chopping up the GPU
 error capture
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

Quoting Andi Shyti (2020-01-09 15:31:15)
> Hi Chris,
> 
> On Thu, Jan 09, 2020 at 08:58:35AM +0000, Chris Wilson wrote:
> > In the near future, we will want to start a GPU error capture from a new
> > context, from inside the softirq region of a forced preemption. To do
> > so requires us to break up the monolithic error capture to provide new
> > entry points with finer control; in particular focusing on one
> > engine/gt, and being able to compose an error state from little pieces
> > of HW capture.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Andi Shyti <andi.shyti@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_engine.h       |    2 +-
> >  drivers/gpu/drm/i915/gt/intel_engine_cs.c    |    6 +-
> >  drivers/gpu/drm/i915/gt/intel_ggtt.c         |    3 +
> >  drivers/gpu/drm/i915/gt/intel_gtt.h          |    1 +
> >  drivers/gpu/drm/i915/gt/intel_reset.c        |    2 +-
> >  drivers/gpu/drm/i915/gt/selftest_hangcheck.c |    2 +-
> >  drivers/gpu/drm/i915/i915_debugfs.c          |   14 +-
> >  drivers/gpu/drm/i915/i915_drv.h              |    2 +-
> >  drivers/gpu/drm/i915/i915_gpu_error.c        | 1169 ++++++++++--------
> >  drivers/gpu/drm/i915/i915_gpu_error.h        |  328 +++--
> >  drivers/gpu/drm/i915/i915_sysfs.c            |    6 +-
> 
> don't we want to have a gt/intel_gt_error.[ch] at some point?

I did give it some thought, and at the moment i915_gpu_error.c exists in
its own little bubble on the outside of the driver. That isn't to say
we couldn't keep gt/error_(engine|gt).c in the same bubble, but it was
easier to keep it where it was and hack it provide an engine capture
interface.

I think it is the direction we want to go in, but I think the first step
is make the output file structured (yaml is my pick) so that we can
rearrange, extend, remove bits and bobs without upsetting consumers. I
was very close to making the transition to yaml, but decided to bluster
through anyway since we dare not release a kernel where error capture is
disabled-by-default. They have their pitchforks at the ready.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
