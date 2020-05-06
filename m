Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE941C77A3
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 19:17:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 155C66E8B2;
	Wed,  6 May 2020 17:17:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45F546E8B2
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 17:17:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21130094-1500050 for multiple; Wed, 06 May 2020 18:17:33 +0100
MIME-Version: 1.0
In-Reply-To: <158878050724.927.1472476462505554945@build.alporthouse.com>
References: <20200429205446.3259-1-chris@chris-wilson.co.uk>
 <20200429205446.3259-4-chris@chris-wilson.co.uk>
 <20200506144448.GB1219060@intel.com>
 <158878050724.927.1472476462505554945@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <158878544855.927.11295814293184377474@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 06 May 2020 18:17:28 +0100
Subject: Re: [Intel-gfx] [CI 4/6] drm/i915/gt: Switch to manual evaluation
 of RPS
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

Quoting Chris Wilson (2020-05-06 16:55:07)
> Quoting Rodrigo Vivi (2020-05-06 15:44:48)
> > Btw, there are other patches on the list of failed cherry-picks:
> > 
> > 614654abe847 ("drm/i915: Check current i915_vma.pin_count status first on unbind")
> 
> We need that to fix a deadlock.
> 
> > c4e8ba739034 ("drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore")
> 
> That to behave nicely with VkEvents.
> 
> > a95f3ac21d64 ("drm/i915/gem: Remove object_is_locked assertion from unpin_from_display_plane")
> 
> And that's a potential bug in 5.7, so needs fixing.
> 
> > 2632f174a2e1 ("drm/i915/execlists: Avoid reusing the same logical CCID")
> > 5c4a53e3b1cb ("drm/i915/execlists: Track inflight CCID")
> 
> We probably need these based on our presumption of how the HW might
> work.
> > 
> > do you have any updated ickle/dif branch available?
> 
> Will do.

To ssh://people.freedesktop.org/~ickle/linux-2.6
 + f98e2df61ab3...134711240307 dif -> dif (forced update)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
