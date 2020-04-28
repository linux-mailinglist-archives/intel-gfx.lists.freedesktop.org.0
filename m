Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 829F41BCAB5
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 20:52:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D97D96E998;
	Tue, 28 Apr 2020 18:52:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C9C56E998
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 18:52:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21050905-1500050 for multiple; Tue, 28 Apr 2020 19:52:43 +0100
MIME-Version: 1.0
In-Reply-To: <CAJU=AjWyX_zV4PaFNYxzCVz2svsKW3UHr9-R7aqajmj97ZHwcw@mail.gmail.com>
References: <20200428114307.5153-1-chris@chris-wilson.co.uk>
 <CAJU=AjWyX_zV4PaFNYxzCVz2svsKW3UHr9-R7aqajmj97ZHwcw@mail.gmail.com>
To: Alexei Podtelezhnikov <apodtele@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158809996234.18349.12263761511998889923@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 28 Apr 2020 19:52:42 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Tweak the tolerance for
 clock ticks to 12.5%
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

Quoting Alexei Podtelezhnikov (2020-04-28 19:44:13)
> On Tue, Apr 28, 2020 at 7:43 AM Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Give a small bump for our tolerance on comparing the expected vs
> > measured clock ticks/time from 10% to 12.5% to accommodate a bad result
> > on Sandybridge that was off by 10.3%. Hopefully, that is the worst we
> > will see.
> > -                       if (10 * time < 9 * ktime_to_ns(dt) ||
> > -                           10 * time > 11 * ktime_to_ns(dt)) {
> > +                       if (10 * time < 8 * ktime_to_ns(dt) ||
> > +                           8 * time > 10 * ktime_to_ns(dt)) {
> 
> This is actually -25%/+20% and you could have used 5:4. If your goal
> is to cover 10.3% in either direction just barely, use 8:9.

Sigh. Wasn't thinking, but we do need a bit of spare so as to get no
false positives over several thousand runs. I was expecting to have to
bump it beyond 12.5%, but now just wait and see and then reduce it
again. Otherwise, it's back to trying to find the lost time.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
