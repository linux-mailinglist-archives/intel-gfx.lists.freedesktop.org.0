Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F631A0837
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 09:26:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FC916E532;
	Tue,  7 Apr 2020 07:26:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE60E6E532
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 07:26:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20823561-1500050 for multiple; Tue, 07 Apr 2020 08:24:27 +0100
MIME-Version: 1.0
In-Reply-To: <20200407072047.GA18532@amd.ucw.cz>
References: <20200407072047.GA18532@amd.ucw.cz>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>, Pavel Machek <pavel@ucw.cz>,
 airlied@redhat.com, intel-gfx@lists.freedesktop.org,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 kernel list <linux-kernel@vger.kernel.org>, matthew.auld@intel.com,
 rodrigo.vivi@intel.com
Message-ID: <158624426770.4794.6070200474948860768@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 07 Apr 2020 08:24:27 +0100
Subject: Re: [Intel-gfx] Linus,
 please revert 7dc8f11437: regression in 5.7-rc0,
 hangs while attempting to run X
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
Cc: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de, hpa@zytor.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Pavel Machek (2020-04-07 08:20:47)
> 
> On Fri 2020-04-03 15:00:31, Pavel Machek wrote:
> > Hi!
> > 
> > 7dc8f1143778a35b190f9413f228b3cf28f67f8d
> > 
> >     drm/i915/gem: Drop relocation slowpath
> >     
> >     Since the relocations are no longer performed under a global
> >     struct_mutex, or any other lock, that is also held by pagefault handlers,
> >     we can relax and allow our fast path to take a fault. As we no longer
> >     need to abort the fast path for lock avoidance, we no longer need the
> >     slow path handling at all.
> > 
> > causes regression on thinkpad x220: instead of starting X, I'm looking
> > at blinking cursor.
> > 
> > Reverting the patch on too of 919dce24701f7b3 fixes things for me.
> 
> I have received no feedback from patch authors, and I believe we don't
> want to break boot in -rc1 on Intel hardware... so the commit should
> be simply reverted.

Beyond the fix already submitted?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
