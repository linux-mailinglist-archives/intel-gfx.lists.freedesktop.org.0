Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A719F19D357
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 11:17:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 193856EB40;
	Fri,  3 Apr 2020 09:16:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCCB46EB40
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 09:16:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20785495-1500050 for multiple; Fri, 03 Apr 2020 10:16:45 +0100
MIME-Version: 1.0
In-Reply-To: <20200403091430.GA3845@duo.ucw.cz>
References: <20200402213253.GA2691@duo.ucw.cz>
 <20200402213506.GA2767@duo.ucw.cz> <20200403073720.GA23229@duo.ucw.cz>
 <20200403091430.GA3845@duo.ucw.cz>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Pavel Machek <pavel@ucw.cz>, intel-gfx@lists.freedesktop.org,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 kernel list <linux-kernel@vger.kernel.org>, rodrigo.vivi@intel.com
Message-ID: <158590540341.5852.3933814252282882685@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 03 Apr 2020 10:16:43 +0100
Subject: Re: [Intel-gfx] 5.7-rc0: hangs while attempting to run X
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

Quoting Pavel Machek (2020-04-03 10:14:30)
> Hi!
> 
> > > > Hardware is thinkpad x220. I had this crash few days ago. And today I
> > > > have similar-looking one, with slightly newer kernel. (Will post
> > > > as a follow-up).
> > 
> > As part of quest for working system, I tried 5.7-rc0, based on
> > 
> > Merge: 50a5de895dbe b4d8ddf8356d
> > Author: Linus Torvalds <torvalds@linux-foundation.org>
> > Date:   Wed Apr 1 18:18:18 2020 -0700
> > 
> > It hangs in userspace, at a time when X should be starting, and I'm
> > looking at blinking cursor.
> > 
> > 5.6-rcs worked, I'll test 5.6-final.
> 
> 5.6-final works.
> 
> Hmm...
> 
> commit f365ab31efacb70bed1e821f7435626e0b2528a6
> Merge: 4646de87d325 59e7a8cc2dcf
> Author: Linus Torvalds <torvalds@linux-foundation.org>
> Date:   Wed Apr 1 15:24:20 2020 -0700
> 
>     Merge tag 'drm-next-2020-04-01' of git://anongit.freedesktop.org/drm/drm
> 
> Let me test 4646de87d32526ee87b46c2e0130413367fb5362...that one works.
> 
> Ok, so obviously... I should
> test... f365ab31efacb70bed1e821f7435626e0b2528a6
> 
> Now, this is anti-social:
> 
> Busywait for request completion limit (ns)
> (DRM_I915_MAX_REQUEST_BUSYWAIT) [8000] (NEW)
> 
> How should I know what to answer here (or the others)
> 
> Interval between heartbeat pulses (ms) (DRM_I915_HEARTBEAT_INTERVAL) [2500] 2500
> Preempt timeout (ms, jiffy granularity) (DRM_I915_PREEMPT_TIMEOUT) [640] 640
> 
> I just took the defaults.. but... 

It is _deep_ under EXPERT.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
