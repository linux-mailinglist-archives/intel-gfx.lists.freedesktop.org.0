Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 445341C61BD
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 22:13:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C2DF6E146;
	Tue,  5 May 2020 20:13:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96DE06E146
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 20:13:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21123847-1500050 for multiple; Tue, 05 May 2020 21:13:17 +0100
MIME-Version: 1.0
In-Reply-To: <20200505200803.GA1633@intel.intel>
References: <20200504044903.7626-1-chris@chris-wilson.co.uk>
 <20200504044903.7626-7-chris@chris-wilson.co.uk>
 <20200505200803.GA1633@intel.intel>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi.shyti@intel.com>
Message-ID: <158870959373.927.10882544492068716630@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 05 May 2020 21:13:13 +0100
Subject: Re: [Intel-gfx] [PATCH 07/22] drm/i915/gt: Stop holding onto the
 pinned_default_state
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

Quoting Andi Shyti (2020-05-05 21:08:03)
> Hi Chris,
> 
> On Mon, May 04, 2020 at 05:48:48AM +0100, Chris Wilson wrote:
> > As we only restore the default context state upon banning a context, we
> > only need enough of the state to run the ring and nothing more. That is
> > we only need our bare protocontext.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Cc: Andi Shyti <andi.shyti@intel.com>
> 
> I don't see any issue, looks correct to me:
> 
> Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Ta. Only time will tell if this makes recovery more stable; I hope it
does.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
