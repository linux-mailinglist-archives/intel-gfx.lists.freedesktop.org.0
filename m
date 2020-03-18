Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73ECA189E02
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 15:37:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDF186E905;
	Wed, 18 Mar 2020 14:37:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BEFF6E905
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 14:37:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20604113-1500050 for multiple; Wed, 18 Mar 2020 14:37:14 +0000
MIME-Version: 1.0
In-Reply-To: <20200318141313.GF27848@jack.zhora.eu>
References: <20200318135837.79467-1-andi@etezian.org>
 <158454036744.6873.6457313387180453751@build.alporthouse.com>
 <20200318141313.GF27848@jack.zhora.eu>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>
Message-ID: <158454223257.6873.15027654396716965491@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 18 Mar 2020 14:37:12 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: move files more files into
 debugfs
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Andi Shyti (2020-03-18 14:13:13)
> Hi Chris,
> 
> On Wed, Mar 18, 2020 at 02:06:07PM +0000, Chris Wilson wrote:
> > Quoting Andi Shyti (2020-03-18 13:58:37)
> > > From: Andi Shyti <andi.shyti@intel.com>
> > > 
> > > The following interfaces:
> > > 
> > > i915_wedged
> > > i915_forcewake_user
> > 
> > Ok.
> > 
> > > i915_gem_interrupt
> > 
> > More display really, not actually the primary info dump for GEM or GT.
> > s/gem/ or just delete it, if we're not using, and display isn't, it's
> > pretty pointless.
> 
> The original is left in the main directory, I isolated the engine
> related information and printed just them withot any display
> information.

Boooring. :)

We put the interrupt state in with the various features we want to
debug.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
