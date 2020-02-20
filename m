Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B06731661B0
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 17:00:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06B1D88161;
	Thu, 20 Feb 2020 16:00:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96D7B6EDBF;
 Thu, 20 Feb 2020 16:00:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20290486-1500050 for multiple; Thu, 20 Feb 2020 16:00:40 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <9103010.GsyPYnKGBp@jkrzyszt-desk.ger.corp.intel.com>
References: <20191113125240.3781-1-chris@chris-wilson.co.uk>
 <8042207.s0vteSJg9S@jkrzyszt-desk.ger.corp.intel.com>
 <157529875955.27263.14886639874940144583@skylake-alporthouse-com>
 <9103010.GsyPYnKGBp@jkrzyszt-desk.ger.corp.intel.com>
Message-ID: <158221443894.8112.10215153774301281983@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 20 Feb 2020 16:00:38 +0000
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 9/9] i915: Exercise
 I915_CONTEXT_PARAM_RINGSIZE
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Janusz Krzysztofik (2020-02-20 15:57:24)
> Hi Chris,
> 
> On Monday, December 2, 2019 3:59:19 PM CET Chris Wilson wrote:
> > Quoting Janusz Krzysztofik (2019-12-02 14:42:58)
> > > Hi Chris,
> > > 
> > > I have a few questions rather than comments.  I hope they are worth spending 
> > > your time.
> > > 
> > > On Wednesday, November 13, 2019 1:52:40 PM CET Chris Wilson wrote:
> > > > I915_CONTEXT_PARAM_RINGSIZE specifies how large to create the command
> > > > ringbuffer for logical ring contects. This directly affects the number
> > > 
> > > s/contects/contexts/
> > > 
> > > > of batches userspace can submit before blocking waiting for space.
> > > > 
> > > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> Have you got this patch still queued somewhere?  As UMD has accepted the 
> solution and are ready with changes on their side, I think we need to merge it 
> soon, and the kernel side as well.

Link? That's all I need to merge the kernel...
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
